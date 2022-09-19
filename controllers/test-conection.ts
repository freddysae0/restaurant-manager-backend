import { Request, Response } from "express";

const testConection = async (
  req: Request,
  res: Response
): Promise<Response> => {
  try {
    console.log("Se ha podido conectar con el frontend");
    return res.json({
      ok: true,
    });
  } catch (error) {
    console.log(error);
    return res.status(500).json({
      ok: false,
    });
  }
};

export { testConection };
