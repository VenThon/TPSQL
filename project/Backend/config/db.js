const mongoose = require('mongoose');

module.exports = async() =>{
    try {
        await mongoose.connect('mongodb://localhost:27017/wifi_management_system',{
            autoIndex:true,
            serverSelectionTimeoutMS:30000
        })
        console.log("Mongoose DB is connected");
    } catch (error) {
        console.log("Mongoose", error);
    }
}