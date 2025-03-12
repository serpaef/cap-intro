using { cap.l2l.firstProject as db} from '../db/schema';

service Main {

    entity Customers as projection on db.Customers;
    
}