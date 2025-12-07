using { my.customlogicorder as db } from '../db/customlogicorder';

service CustomlogicService @(path:'/api/customlogic'){

    entity Order as projection on db.Order;

    function getstatus(Order:UUID) returns String;

    function placebulkorders(quantity: Integer) returns String;


    

}
