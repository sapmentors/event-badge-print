using {AdminService} from '../srv/admin-service';

annotate AdminService.Events with @(UI: {
  SelectionFields  : [
    ID,
    title,
    titoEventSlug
  ],
  LineItem         : [
    {Value: title},
    {Value: titoEventSlug},
  ],
  HeaderInfo       : {
    TypeName      : '{i18n>Event}',
    TypeNamePlural: '{i18n>Events}',
    Title         : {Value: title},
    Description   : {Value: titoEventSlug}
  },
  Facets           : [
    {
      $Type : 'UI.ReferenceFacet',
      Label : '{i18n>ADS}',
      Target: '@UI.FieldGroup#ADS'
    },
    {
      $Type : 'UI.ReferenceFacet',
      Label : '{i18n>Print}',
      Target: '@UI.FieldGroup#Print'
    },
  ],
  FieldGroup #ADS  : {Data: [{Value: formName}, ]},
  FieldGroup #Print: {Data: [{Value: qname}, ]},
});
