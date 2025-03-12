namespace cap.l2l.firstProject;

using { cuid } from '@sap/cds/common';

entity Customers : cuid {
    name    : String(100);
    age     : Integer;
    orders  : Association to many Orders on orders.customer = $self;
    // orders   : Composition to many Orders on orders.customer = $self;
}

entity Orders : cuid {
    amount      : Integer;
    customer    : Association to Customers; //backlink da associação 
    invoice     : Association to one Invoices on invoice.order = $self;
}

entity Invoices : cuid {
    invoice_id  : String;
    order       : Association to Orders;
}
