using orders as db from '../db/orderstable';

//adding the requires for authentication 
// service OrderService @(requires: 'admin' )

service OrderService{
    entity Orders as projection on db.Orders;
    entity OrderItems as projection on db.OrderItems;
}