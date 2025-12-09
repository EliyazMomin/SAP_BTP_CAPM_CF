namespace sap.ui.riskmanagment;

using { managed } from '@sap/cds/common';

entity Risk: managed {
    key ID: UUID @(Core.Computed : true);
    title: String;
    descr: String;
    impact: Integer;
    critically: Integer;
    supplierID: String;
    miti: Association to Mitigations;

    
}

entity Mitigations: managed {

    key ID: UUID @(Core.Computed: true);
    description: String;
    owner: String;
    timeline: String;
    risks: Association to many Risk on risks.miti = $self;


    
}

using { API_BUSINESS_PARTNER as s4} from '../srv/external/API_BUSINESS_PARTNER';

entity Suppliers as projection on s4.A_BusinessPartner{

    key BusinessPartner as ID,
    BusinessPartnerFullName as fullname,
    BusinessPartnerCategory as category
}

