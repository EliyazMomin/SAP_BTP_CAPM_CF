service BaseService {

    entity Orders {
        key ID: UUID;
        ordernumber: String;
        amount: Decimal(10, 2);
        
    }

}