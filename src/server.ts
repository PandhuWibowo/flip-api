import express, { Application } from 'express';
import bodyParser from 'body-parser';
import compression from 'compression';
import helmet from 'helmet';
import cors from 'cors';
import { config as dotenv } from 'dotenv';
import DisbursementController from './controller/DisbursementController';
import { request } from './type/Disbursement';

class Server {
	public app: Application;

	constructor() {
		this.app = express();
		this.plugins();
		dotenv();
	}

	protected plugins(): void {
		this.app.use(bodyParser.json());
		this.app.use(compression());
		this.app.use(helmet());
		this.app.use(cors());
	}
}

const request: request = {
	bank_code: 'BNI',
	account_number: '1234',
	amount: 1234,
	remark: 'TESTING REMARK'
};

const app = new Server().app;
app.listen(8080, async () => {
	console.log('Create disbursement request for following data: ');
	console.log(`Bank       : ${request.bank_code}`);
	console.log(`Account no : ${request.account_number}`);
	console.log(`Amount     : ${request.amount}`);
	console.log(`Remark     : ${request.remark}`);
	await DisbursementController.postData(request);
});
