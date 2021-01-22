'use strict';
module.exports = {
	up: async (queryInterface, Sequelize) => {
		await queryInterface.createTable('disbursements', {
			id: {
				allowNull: false,
				autoIncrement: true,
				primaryKey: true,
				type: Sequelize.INTEGER
			},
			transaction_id: {
				type: Sequelize.BIGINT
			},
			status: {
				type: Sequelize.STRING
			},
			receipt: {
				type: Sequelize.STRING
			},
			time_served: {
				type: Sequelize.DATE
			},
			created_at: {
				allowNull: false,
				type: Sequelize.DATE
			},
			updated_at: {
				allowNull: false,
				type: Sequelize.DATE
			}
		});
	},
	down: async (queryInterface, Sequelize) => {
		await queryInterface.dropTable('disbursements');
	}
};
