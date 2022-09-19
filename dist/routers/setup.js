"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const express_validator_1 = require("express-validator");
const middlewares_1 = require("../middlewares");
const test_conection_1 = require("../controllers/test-conection");
const router = (0, express_1.Router)();
router.post("/", [
    (0, express_validator_1.check)("usuario")
        .not()
        .isEmpty()
        .withMessage("El username de la DB es obligatorio"),
    (0, express_validator_1.check)("password")
        .not()
        .isEmpty()
        .withMessage("El password de la DB es obligatorio"),
    (0, express_validator_1.check)("serverAdress")
        .not()
        .isEmpty()
        .withMessage("El serverAdress de la DB es obligatorio"),
    (0, express_validator_1.check)("database").not().isEmpty().withMessage("La database es obligatorio"),
    (0, express_validator_1.check)("email")
        .not()
        .isEmpty()
        .withMessage("El email del admin es obligatorio"),
    (0, express_validator_1.check)("adminUser")
        .not()
        .isEmpty()
        .withMessage("El user del admin de la DB es obligatorio"),
    (0, express_validator_1.check)("adminPassword")
        .not()
        .isEmpty()
        .withMessage("El password es obligatorio"),
    (0, express_validator_1.check)("adminRePassword")
        .not()
        .isEmpty()
        .withMessage("El re password es obligatorio"),
    middlewares_1.validFields,
], test_conection_1.setup);
exports.default = router;
//# sourceMappingURL=setup.js.map