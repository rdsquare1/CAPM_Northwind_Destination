const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {
  // Connect to the external Northwind service via destination
  const northwindService = await cds.connect.to('northwind');

  this.on('READ', 'Products', async (req) => {
    // Forward the request to Northwind OData service's Products entity set
    const result = await northwindService.run(req.query);
    return result;
  });
});