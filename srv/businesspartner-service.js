const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {
	const { BusinessPartners } = this.entities;
	const service = await cds.connect.to('BusinessPartner');
	this.on('READ', BusinessPartners, request => {
		return service.tx(request).run(request.query);
	});
});