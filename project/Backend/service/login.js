const user = require('../models/users');
const {decrytData} = require('../config/encrypt')
const {encryptData} = require('../config/encrypt');

const login = async(username,password) =>{
    try {
        var existed = await user.findOne({username});
        if(!existed){
            throw "Your username is incorrected."
        }
        if(!decrytData(password,existed.password)){
            throw "Password is incorrected."
        }

        return {
            success: true,
            data: existed
        }
    } catch (error) {
        return {
            success: false,
            error: error
        }
    }
}

module.exports = {
    login
}