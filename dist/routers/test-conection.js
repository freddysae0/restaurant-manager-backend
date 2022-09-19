"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const test_conection_1 = require("../controllers/test-conection");
const router = (0, express_1.Router)();
router.get("/", test_conection_1.testConection);
exports.default = router;
//# sourceMappingURL=test-conection.js.map