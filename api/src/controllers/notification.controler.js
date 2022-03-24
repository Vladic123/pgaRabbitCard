const db = require("../config/database");
var sendNotification = require('../notification/notification.config')
const weekend =  require('../datagrab/weekend');


module.exports.everymonth = async (req, res) => {

    let currentDate = new Date();
    let futureTournaments = await db.query(`SELECT name FROM tournaments_completed where start_date > $1`, [currentDate]);
    let user_device_tokens = await db.query(`SELECT device_token FROM users WHERE device_token IS NOT null`);

    var names = "";
    futureTournaments.rows.map(function (item) {

        names = names + ',' + item['name']

    });
    names = names.substring(1);

    if (futureTournaments && futureTournaments.rows && futureTournaments.rows.length > 0) {
        user_device_tokens.rows.forEach(async el => {
            let title = 'Following Tournaments are Started Soon Please make Selection'
            
            await sendNotification.sendFirstDayOfMonthNotification(el.device_token, names, title, 'A')
        });
    }
}

module.exports.startTournamentNotification = async (req, res) => {
    let date_ob = new Date();
    let date = ("0" + date_ob.getDate()).slice(-2);
    let month = ("0" + (date_ob.getMonth() + 1)).slice(-2);
    let year = date_ob.getFullYear();
    let hours = date_ob.getHours();
    let minutes = date_ob.getMinutes();
    let seconds = date_ob.getSeconds();
    let d = year + "-" + month + "-" + date + " " + hours + ":" + minutes + ":" + seconds;
    // console.log(d);
    let currentTournaments = await db.query(`SELECT t_id, name, start_date FROM tournaments_completed where start_date = $1`, [d]);
    let user_device_tokens = await db.query(`SELECT device_token FROM users WHERE device_token IS NOT null`);


    if (currentTournaments && currentTournaments.rows && currentTournaments.rows.length > 0) {
        currentTournaments.rows.forEach(async el1 => {
            if (user_device_tokens && user_device_tokens.rows && user_device_tokens.rows.length > 0) {

                user_device_tokens.rows.forEach(async el2 => {
                    let title = 'Tournament Started Now'
                    await sendNotification.sendFirstDayOfMonthNotification(el2.device_token, el1.name, title, 'B')
                });
            }
        });
    }
}

module.exports.countDownEndNotification = async (req, res) => {  
    // let user = await db.query(`SELECT * FROM users WHERE device_token IS NOT null AND id =64`);
    // if(user.rows.length >0) {
    //     let token  = user.rows[0].device_token
    //     let name = user.rows[0].first_name + " " + user.rows[0].last_name
    //     console.log(name, token);
    //     await sendNotification.sendFirstDayOfMonthNotification(token, name, "Tournament Count Down was finished", 'B')
    // }
    // console.log("========================")

    const response = await db.query(`SELECT Distinct id, a.t_id, a.round,a.state,a.user_id, b.start_date
    FROM user_rabbitcards a left join tournaments_completed b on a.t_id=b.t_id WHERE
    DATE_PART('day', CURRENT_DATE - b.start_date) - a.round <= 4 AND a.state = 1`);
    const getStartDate = (startDate, round) => {
        let dt = new Date(startDate);
        dt.setUTCDate(dt.getUTCDate() + round - 1);
        return dt
      }
      response.rows.forEach(async card => {
       
        var _startDate = getStartDate(card.start_date , card.round)   
        const start = new Date(_startDate.getTime());
        const total = Date.parse(start) - Date.parse(new Date());
        const start_weekday = _startDate.getDay()
        var tmpST = start;
        var newST;

        var first = _startDate.getUTCDate() - _startDate.getUTCDay(); // First day is the day of the month - the day of the week
        if( card.round === 1 ||  card.round === 2){
            var curr = new Date();
            curr.setUTCHours(13)
            curr.setMinutes(0)
            curr.setSeconds(0)
            curr.setMonth(_startDate.getMonth())
            newST = new Date(curr.setUTCDate(first + 2))
        
        }else if( card.round === 3){
            var curr = new Date();
            curr.setUTCHours(2)
            curr.setMinutes(0)
            curr.setSeconds(0)
            curr.setMonth(_startDate.getMonth())
            newST = new Date(curr.setUTCDate(first + 6))

        }else if(card.round === 4){
            var curr = new Date();
            var second = curr.getUTCDate() - curr.getUTCDay(); // First day is the day of the month - the day of the week
        
            curr.setUTCHours(2)
            curr.setMinutes(0)
            curr.setSeconds(0)     
            curr.setMonth(_startDate.getMonth())   
            if(first === second+7){
                newST = new Date(curr.setUTCDate(second+7))
            }else{
                newST = new Date(curr.setUTCDate(first))            
            }
          }
      
        const newDST = new Date(newST);
      
        var dateFuture = new Date(newDST.getTime());
        var dateNow = new Date();
      
        var seconds = Math.floor((dateFuture - (dateNow)) / 1000);
        var minutes = Math.floor(seconds / 60);
        var hours = Math.floor(minutes / 60);
        var days = Math.floor(hours / 24);
      
        hours = hours - (days * 24);
        minutes = minutes - (days * 24 * 60) - (hours * 60);
        seconds = seconds - (days * 24 * 60 * 60) - (hours * 60 * 60) - (minutes * 60);
      
        seconds = seconds; 
        minutes = minutes;
        hours = hours+(days*24);
        days = days;

        if(hours === 0 && minutes === 0 && seconds === 0){
                var message = "Tournament Count Down was finished";          
                let user = await db.query(`SELECT * FROM users WHERE device_token IS NOT null AND id =$1`, [card.user_id]);
                if(user.rows.length >0) {
                    let token  = user.rows[0].device_token
                    let name = user.rows[0].first_name + " " + user.rows[0].last_name
                    await sendNotification.sendFirstDayOfMonthNotification(token, card.title, message, 'B')
                }
                
        }
        _startDate.setUTCHours(13)
        var currentDate = new Date();
        const currentMilionSecond = currentDate.valueOf();        
        if (parseInt((currentMilionSecond -  _startDate.valueOf())/1000) === 46800){

            var message = "All results are in! Check out the winners!";          
            let user = await db.query(`SELECT * FROM users WHERE device_token IS NOT null AND id =$1`, [card.user_id]);
            if(user.rows.length >0) {
                let token  = user.rows[0].device_token
                let name = user.rows[0].first_name + " " + user.rows[0].last_name
                await sendNotification.sendFirstDayOfMonthNotification(token, card.title, message, 'B')
            }
        }
        // console.log(hours + " hour" + minutes + "min" + seconds + "     " + card.user_id + "   " + card.t_id + "   " + card.round + "  "  + parseInt((currentMilionSecond -  _startDate.valueOf())/1000) )

      })

}

module.exports.completeround = async (req, res) => {

    const response = await db.query(`SELECT Distinct  a.t_id, a.round,
    CASE                                              
            WHEN DATE_PART('day', CURRENT_DATE - b.start_date) - a.round > -1 THEN 'played'
            ELSE null END status
    FROM user_rabbitcards a left join tournaments_completed b on a.t_id=b.t_id `);

    
    let data = response.rows.forEach(async element => {

        if (element.status != null) {
            const filterdata = await db.query(`select user_id,t_id,round from user_rabbitcards where t_id = $1 and round = $2 and notification = false `, [element.t_id, element.round])

            const name = await db.query(`select name from tournaments_completed where t_id = $1`, [element.t_id]);
            
            var names = "";
            name.rows.map(function (item) {

                names = names + ',' + item['name']

            });
            names = names.substring(1);

            filterdata.rows.forEach(async filter => {
                const userfilter = await db.query(`select id,device_token from users where id = $1`, [filter.user_id]);
                
                let card = {'t_id': filter.t_id, 'round': filter.round};

                userfilter.rows.forEach(async token => {
  
                    let title = 'Round Completed';
                    await sendNotification.sendFirstDayOfMonthNotification(token.device_token,names, title,  'C' ,card)
                   const chnageflag = await db.query(`update user_rabbitcards set notification = true where t_id = $1 and round = $2`, [element.t_id, element.round]);
                });
            });
        }
    });

   







    // let data = response.rows.forEach(async element => {

    //     if (element.status != null) {
    //         const filterdata = await db.query(`select user_id from user_rabbitcards where t_id = $1 and round = $2 and notification = false `, [element.t_id, element.round])

    //         const name = await db.query(`select name from tournaments_completed where t_id = $1`, [element.t_id]);
    //         var names = "";
    //         name.rows.map(function (item) {

    //             names = names + ',' + item['name']

    //         });
    //         names = names.substring(1);

    //         filterdata.rows.forEach(async filter => {
    //             const userfilter = await db.query(`select id,device_token from users where id = $1`, [filter.user_id]);
    //             userfilter.rows.forEach(async token => {

    //                 let title = 'Round Completed'
    //                 await sendNotification.sendFirstDayOfMonthNotification(token.device_token, names, title, 'C')
    //                 const chnageflag = await db.query(`update user_rabbitcards set notification = true where t_id = $1 and round = $2`, [element.t_id, element.round]);
    //             });
    //         });
    //     }
    // });
}