namespace SalesOrderApp;

entity SalesOrders{
    @title: 'Sales Order Number'
    key soNumber : String;
    @title: 'Customer Name'
    customername : String;
    @title: 'Customer Number'
    customernumber: String;
    @title: 'Totale Sales Order'
    totalorderItem: Integer;


}

entity SalesOrderItem {
    @title: 'Item No'
    key ID: UUID;
    ItemNo: String(10);
    Product: String(50);
    @titel: 'Quantity'
    quantity: Integer;

    SalesOrder_ID: Association to SalesOrders;
}