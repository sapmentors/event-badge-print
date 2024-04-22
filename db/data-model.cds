using {
  cuid,
  managed
} from '@sap/cds/common';

using {sapmentors.tito as tito} from './tito';
using {sapmentors.ads as ads} from './ads';
using {sapmentors.print as print} from './print';


namespace sapmentors;

entity Events : cuid, managed {
  title         : tito.EventTitle;
  titoEventSlug : tito.EventSlug;
  formName      : ads.FormName;
  qname         : print.qname;
}
