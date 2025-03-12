namespace cap.l2l.firstProject;

using { managed, cuid } from '@sap/cds/common';

entity Customers : managed, cuid {
    name    : String(100);
    age     : Integer;
}

entity Orders : managed, cuid {
    amount  : Integer;
}

entity Invoices : managed, cuid {
    invoice_id: String;
}
