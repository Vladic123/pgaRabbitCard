const router = require('express-promise-router')();
const { authJwt } = require("../middleware");
const rabbitcardController = require('../controllers/rabbitcard.controller');

router.get('/rabbitcards', [authJwt.verifyToken], rabbitcardController.listAllRabbitCards);
router.get('/rabbitcardsMOD', [authJwt.verifyToken], rabbitcardController.listAllRabbitCardsMOD);
router.get('/rabbitcards/:id', [authJwt.verifyToken], rabbitcardController.getRabbitCardById);
router.get('/rabbitcards/:t_id/:round', [authJwt.verifyToken], rabbitcardController.tournamentRabbitCardsInfo);
router.post('/rabbitcards', [authJwt.verifyToken], rabbitcardController.createRabbitCard);
router.delete('/rabbitcards/:id', [authJwt.verifyToken], rabbitcardController.deleteRabbitCard);
router.post('/rabbitcards/:id/feet/:feet/inche/:inche', [authJwt.verifyToken], rabbitcardController.addTieBreaker);


router.post('/rabbitcards/myrabbitPurse', [authJwt.verifyToken], rabbitcardController.rabbitPurse);

module.exports = router;