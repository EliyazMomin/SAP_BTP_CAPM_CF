using orders from '../db/orderstable';

service OrderManagmentService {

    entity Orders as projection on orders.Orders;
    entity OrderItems as projection on orders.OrderItems;
    

}