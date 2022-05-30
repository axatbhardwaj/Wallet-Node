import express, { json } from "express";
import bodyParser from "body-parser";
import mongoose from "mongoose";
import { config } from "dotenv";
import user from "./routess/user.js";
import transaction from "./routess/transaction.js";

config();
const app = express();
app.use(bodyParser.urlencoded({ extended: false }));

app.use(json);
app.use(user);
app.use(transaction);

mongoose
    .connect(process.env.mongodb).then(result => {
        app.listen(3000)
    })
    .catch(err => {
        console.log(err);
    });