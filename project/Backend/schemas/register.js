const Joi = require('joi');

module.exports = Joi.object({
    username: Joi.string()
        .alphanum()
        .min(4)
        .max(20)
        .required(),
    studentid: Joi.string()
        .alphanum()
        .min(4)
        .max(20)
        .required(),
    password: Joi.string()
        .pattern(new RegExp('^[a-zA-Z0-9]{3,30}$'))
        .min(5)
        .max(20)
        .required
});