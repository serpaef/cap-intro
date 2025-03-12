namespace cap.l2l.firstProject;

using { managed, cuid } from '@sap/cds/common';

entity Customers : managed, cuid {
    name    : String(100);
    age     : Integer;
    orders  : Association to many Orders on orders.customer = $self;
    // orders   : Composition to many Orders on orders.customer = $self;
}

entity Orders : managed, cuid {
    amount  : Integer;
    customer: Association to Customers; //backlink da associação 
    invoice : Association to one Invoices on invoice.order = $self;
}

entity Invoices : managed, cuid {
    invoice_id  : String;
    order       : Association to Orders;
}
