const Joi = require('@hapi/joi');

const requestSchema: any = Joi.object({
	bank_code: Joi.string().required(),
	account_number: Joi.string().required(),
	amount: Joi.number().required(),
	remark: Joi.string().required()
});

export { requestSchema };
