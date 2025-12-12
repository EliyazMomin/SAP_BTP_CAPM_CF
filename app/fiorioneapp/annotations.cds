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
        },
    ],
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

