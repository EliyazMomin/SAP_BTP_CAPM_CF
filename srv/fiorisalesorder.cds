using { SalesOrderApp as db} from '../db/fioriapponeorder';

service fioriapponeservice @(path:'/fiorioneapp') {


entity SalesOrders as projection on   db.SalesOrders;

entity SalesOrderItem as projection on db.SalesOrderItem;


}