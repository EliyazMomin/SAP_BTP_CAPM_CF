using { API_BUSINESS_PARTNER as s4} from './external/API_BUSINESS_PARTNER';

service BusinessServiceenti {

    
entity A_BusinessPartner as projection on s4.A_BusinessPartner{
    key BusinessPartner, Customer, BusinessPartnerFullName, BusinessPartnerCategory,
    BusinessPartnerUUID, OrganizationBPName1
}


}