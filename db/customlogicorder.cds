using { cuid  } from '@sap/cds/common';

namespace my.customlogicorder;

entity Order {

    key ID: UUID;
    totalamount: Decimal(10, 2);
    status: String;
    @odata:media
    image: LargeBinary;
    


}


