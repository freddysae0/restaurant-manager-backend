import { Router } from "express";
import { testConection } from "../controllers/test-conection";
const router = Router();

router.get("/", testConection);

export default router;
