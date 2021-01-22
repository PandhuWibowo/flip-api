'use strict';
const { Model } = require('sequelize');
module.exports = (sequelize, DataTypes) => {
	class disbursement extends Model {
		/**
		 * Helper method for defining associations.
		 * This method is not a part of Sequelize lifecycle.
		 * The `models/index` file will call this method automatically.
		 */
		static associate(models) {
			// define association here
		}
	}
	disbursement.init(
		{
			transaction_id: DataTypes.NUMBER,
			status: DataTypes.STRING,
			receipt: DataTypes.STRING,
			time_served: DataTypes.DATE
		},
		{
			sequelize,
			modelName: 'disbursement',
			underscored: true
		}
	);
	return disbursement;
};
