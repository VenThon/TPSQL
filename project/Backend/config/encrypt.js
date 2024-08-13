const bcrypt = require('bcrypt');

const encryptData = (password) =>{
    var salt = bcrypt.genSaltSync(10);
    var hash = bcrypt.hashSync(password, salt);
    return hash;
}

const decryptData = (password, hashSync) =>{
    return bcrypt.compareSync(password, hash);

}

module.exports = {
    encryptData,
    decryptData
}