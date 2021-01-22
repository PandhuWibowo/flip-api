import flipConfig from '../config/flipConfig';
import { request, disbursement } from '../type/Disbursement';
import { requestSchema } from '../schema/Disbursement.Schema';
const Joi = require('@hapi/joi');
import DisbursementService from '../service/DisbursementService';
import axios from 'axios';

class DisbursementController {
	async postData(payload: request) {
		const validate: any = requestSchema.validate(payload);
		const { value, error } = validate;
		const valid = error == null;

		if (!valid)
			console.info({
				message: 'Invalid request',
				status: 400
			});

		try {
			axios
				.post(flipConfig.endpoint.POST_DISBURSE, payload, {
					headers: {
						'Content-Type': 'application/json',
						Authorization: `Basic ${flipConfig.flip.secret_key}`
					}
				})
				.then(async (response) => {
					const { data } = response;
					const newDisbursement = await DisbursementService.insert(data);
					if (newDisbursement) {
						// Check status
						const result: any = await this.checkStatus(newDisbursement.transaction_id);

						console.log('                          ');
						console.log('==========RESULT==========');
						console.log(`Transaction ID	: ${result.transaction_id}`);
						console.log(`Status			: ${result.status}`);
					} else {
						console.info('Failed');
						return false;
					}
				})
				.catch((error) => {
					console.error(error);
					return false;
				});
		} catch (error) {
			console.error(error);
			return;
		}
	}

	async checkStatus(transactionID: number): Promise<any> {
		try {
			let result: any;
			result = axios
				.get(flipConfig.endpoint.GET_STATUS(transactionID), {
					headers: {
						'Content-Type': 'application/json',
						Authorization: `Basic ${flipConfig.flip.secret_key}`
					}
				})
				.then(async (response) => {
					const { data } = response;
					const transaction: disbursement = await DisbursementService.findByID(data.id);
					if (transaction) {
						if (transaction.status === 'PENDING') {
							transaction.status = data.status;
							transaction.receipt = data.receipt;
							transaction.time_served = data.time_served;
							const result = await DisbursementService.update(transaction);
							return result;
						}
					} else {
						console.log('Transaction not found!');
						return false;
					}
				})
				.catch((error) => {
					console.error(error);
					return '';
				});
			return result;
		} catch (error) {
			console.error(error);
			return '';
		}
	}
}

export default new DisbursementController();
