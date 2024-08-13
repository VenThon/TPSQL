const user = require('../models/users');
const {encryptData} = require('../config/encrypt');
const register = async(param) =>{
    const {username,studentid,password} = param;
    try {
        var existed = await user.findOne({username})
        if(existed){
            throw "username is aleady used"
        }

        var hash = encryptData(password);
        const newUser = {
            username,
            studentid,
            password: hash
        }
        const createUser = await user.create(newUser);
        return{
            success: true,
            data: createUser
        }

    } catch (error) {
        return {
            success: false,
            error: error
        }
    }
}

module.exports = {
    register
}