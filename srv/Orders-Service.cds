using orders from '../db/orderstable';

service OrderService {

    entity Orders as projection on orders.Orders;
    entity OrderItems as projection on orders.OrderItems;
}