using fioriapponeservice as service from '../../srv/fiorisalesorder';
annotate service.SalesOrders with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : soNumber,
            },
            {
                $Type : 'UI.DataField',
                Value : customername,
            },
            {
                $Type : 'UI.DataField',
                Value : customernumber,
            },
            {
                $Type : 'UI.DataField',
                Value : totalorderItem,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },{
            $Type : 'UI.ReferenceFacet', 
            Label : 'Tech Information',
            Target : '@UI.FieldGroup#Techdetails',
        },
    ],
    UI.HeaderInfo: {
        TypeName : 'Item',
        TypeNamePlural: 'Items',
        Title: {
            $Type: 'UI.DataField',
            Value: soNumber,
            Label: 'SO Number'
        },
        Description: {
            $Type: 'UI.DataField',
            Value: customername,
            Label: 'Name'
        }
    },
    UI.SelectionFields: [soNumber],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : soNumber,
        },
        {
            $Type : 'UI.DataField',
            Value : customername,
        },
        {
            $Type : 'UI.DataField',
            Value : customernumber,
        },
        {
            $Type : 'UI.DataField',
            Value : totalorderItem,
        },
    ],
);

