using { API_BUSINESS_PARTNER as s4} from './external/API_BUSINESS_PARTNER.csn';

service BusinessServiceenti {
entity A_BusinessPartner as projection on s4.A_BusinessPartner{
    key BusinessPartner, Customer, BusinessPartnerFullName, BusinessPartnerCategory,
    BusinessPartnerUUID, OrganizationBPName1
}
}

//calling db schema file here

using { sap.ui.riskmanagment as db } from '../db/externalservicedb';
@path: 'services/risk'
service RiskService {
entity Risk as projection on db.Risk;
entity Mitigations as projection on db.Mitigations;
entity Suppliers as projection on db.Suppliers;

}
