using orders as db from '../db/orderstable';

service OrderService {


    entity Orders as projection on db.Orders;
    entity OrderItems as projection on db.OrderItems;
}