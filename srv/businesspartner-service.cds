using {BusinessPartner as external} from './external/BusinessPartner.csn';

service BusinessPartnerService {

    @readonly
    entity BusinessPartners as projection on external.BusinessPartners {
        key Id, Title, FirstName, LastName, Street, HouseNumber, PostalCode, City, Country, Region
    };

}