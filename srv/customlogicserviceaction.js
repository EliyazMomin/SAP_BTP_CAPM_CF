const { current_timestamp } = require('@cap-js/hana/lib/cql-functions');
const cds= require('@sap/cds');
const { orders, INSERT } = require('@sap/cds/lib/ql/cds-ql');
const { request } = require('express');

module.exports = (srv) => {
    const { Order } = srv.entities;

    srv.before("CREATE", Order, (req) => {

            if(req.data.totalamount <= 0 ){
                req.console.error(400,"Total amount greater than 0");
                
            }else{
                req.data.status= "pending";
            }
    }
    );
    srv.on("CREATE", Order, (req) => {

             req.data.status= "pending";
    }
    );

    srv.after("READ", Order, (req) => {

        if (!Array.isArray(orders)) orders = [orders];
        orders.forEach((order) => {
            order.status += "Checked by System";
        });

            if(req.data.totalamount <= 0 ){
                req.console.error(400,"Total amount greater than 0");
                
            }else{
                req.data.status= "pending";
            }
    }
    );

     srv.on('getstatus', async (req) => {

             return {status:'processing', Timestamp: new Date()};
    }
    );


    srv.on('placebulkorders', async (req) => {
            const { quantity } = req.data;
            for(let i=0; i < quantity; i++ ){
                 await cds.run(INSERT.into(Order).entities({totalamount: 50, status: "pending"}));
            }return '${quantity} order placed sussfully ';
              
        });

}