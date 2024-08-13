const mongoose = require('mongoose');

const userShema = mongoose.Schema(
    {
        username: {
            type: String,
            unique: true,
            require: true
        },
        studentid: {
            type: String,
            unique: true,
            require: true
        },
        password:{
            type:String,
            require: true
        }

    },{
        timestamps: true
    }
)

const User = mongoose.model('User', userShema);
module.exports=User;