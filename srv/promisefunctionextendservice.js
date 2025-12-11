const { error, resolve } = require("@sap/cds");
const SELECT = require("@sap/cds/lib/ql/SELECT")

module.exports = (srv) => {


    srv.on('getOrders', async (req) => {

        const db = srv.tx(req);
        return new Promise((resolve, PromiseRejectionEvent) => {

            db.run(SELECT.from('Orders'))
            .then((orders) => {
            if(!orders.length){}
            PromiseRejectionEvent(new Error('No Orders Found'));
        })
        .catch((error) => PromiseRejectionEvent(error));
        });

        
    })
}