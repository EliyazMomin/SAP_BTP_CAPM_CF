using { my.customlogicorder as db } from '../db/customlogicorder';

service CustomlogicService @(path:'/api/customlogic'){

    entity Order as projection on db.Order;

    

}
