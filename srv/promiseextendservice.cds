using { BaseService as base} from './extendbaseservice';


@path: 'Extendservices/prmoise'
service ExtendService{
    entity Orders as projection on base.Orders{
         key ID,
         ordernumber,
         amount * 1.18 as totalamount,
         'Order-Status' as Status

    }

    action getOrders() returns array of Orders;
}