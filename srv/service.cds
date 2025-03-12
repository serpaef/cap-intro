using { cap.l2l.firstProject as db} from '../db/schema';

service Main @(path: '/main') {

    entity Customers as projection on db.Customers;
    entity Orders as projection on db.Orders;
    entity Invoices as projection on db.Invoices;
    
}