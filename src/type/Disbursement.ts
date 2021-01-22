type request = {
	bank_code: string;
	account_number: string;
	amount: number;
	remark: string;
};

type disbursement = {
	transaction_id: number;
	status: string;
	receipt: string;
	time_served: Date;
};

export { request, disbursement };
