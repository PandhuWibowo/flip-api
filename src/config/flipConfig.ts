import { config as dotenv } from 'dotenv';
dotenv();
const FLIP_SECRET_KEY = process.env.FLIP_SECRET || 'yoursecretkey';
const FLIP_BASE_URL = process.env.URL || 'https://example.com';

const FLIP = {
	// secret_key: btoa(),
	secret_key: Buffer.from(`${FLIP_SECRET_KEY}:`).toString('base64'),
	url: FLIP_BASE_URL
};

const API_ENDPOINT = {
	POST_DISBURSE: `${FLIP_BASE_URL}/disburse`,
	GET_STATUS: (transaction_id: number) => `${FLIP_BASE_URL}/disburse/${transaction_id}`
};

const config = {
	flip: FLIP,
	endpoint: API_ENDPOINT
};

export default config;
