namespace orders;

//using { cuid, managed } from '@sap/cds/common';

entity Orders {
    key ID : UUID;
    customerID: String;
    orederdate: DateTime;
    TotalAmount: Decimal(10, 2); 
    item : Composition of many OrderItems on item.orderid = $self;

}

entity OrderItems {
    key ID : UUID;
    orderid: Association to Orders;
    productName: localized String;
    quantity: Integer;
    UnitPrice: Decimal(10,2);
    TotalPrice: Decimal(10,2);  
}
