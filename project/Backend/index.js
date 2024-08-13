const express = require('express');
const cors = require('cors');
const mongoose = require('mongoose');
const jwt = require('jsonwebtoken')

const User = require('./models/users');
// const { login } = require('./schemas/login');

const {login} = require('./service/login');
const register = require('./schemas/register');
const app = express();

app.use(express.json());

//Route
app.get('/',(req, res) =>{
    res.send("Hello ");
})
app.get('/api',(req,res) =>{
    res.send("hello api");
});
app.post("/login", async(req,res) =>{
    const param = JSON.parse(req.body);
    const {username, password} = param;
    const result = await login(username, password);
    const token = jwt.sign(param, "t0kenEncrypti0n");
    req.session.jwtToken = token;
    res.json(result);

});

//registser
app.post('/register', async(req, res) =>{
    const param = JSON.parse(req.body);
    const result = await register(param);
    res.json(result);
});
app.post('/user', async(req, res) =>{
    try {
        const user = await User.create(req.body);
        res.status(200).json(user);
    } catch (error) {
        console.log(error.message);
        res.status(500).json({message: error.message});
    }
})


//connect to db
const port = 3001;
app.use(cors({
    origin: 'http://localhost:3000'
}));
app.use(express.json());
require('./config/db')();
app.listen(port, ()=> console.log("App on http://localhost:3001"));