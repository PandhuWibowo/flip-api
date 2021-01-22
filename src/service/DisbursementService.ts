import moment from 'moment';
import { disbursement } from '../type/Disbursement';
const db = require('../db/models/');

class DisbursementService {
	async insert(params: any) {
		const disbursement: any = await db.disbursement.create({
			transaction_id: params.id,
			status: params.status,
			receipt: params.receipt,
			time_served: params.time_served
		});
		return disbursement.dataValues;
	}

	async findByID(transactionID: number): Promise<disbursement> {
		return db.disbursement.findOne({ where: { transaction_id: transactionID } });
	}

	async update(params: disbursement) {
		const data: disbursement = {
			transaction_id: params.transaction_id,
			status: params.status,
			receipt: params.receipt,
			time_served: params.time_served
		};
		await db.disbursement.update(data, { where: { transaction_id: data.transaction_id } });
		return data;
	}
}

export default new DisbursementService();
