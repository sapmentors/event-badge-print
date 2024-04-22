namespace sapmentors.tito;

type EventSlug  : String(50) @(title: '{i18n>TitoEventSlug}', );
type EventTitle : String(100) @(title: '{i18n>EventTitle}', );

type CheckinList {
  slug  : String(50);
  title : String(100);
}

type Event {
  slug  : EventSlug;
  title : EventTitle;
}

type Participant {
  id                     : Integer;
  slug                   : String(50);
  name                   : String(100);
  company_name           : String(100);
  first_name             : String(50);
  last_name              : String(50);
  release_title          : String(50);
  email                  : String(100);
  reference              : String(20);
  registration_reference : String(20);
  checked_in             : Boolean;
  checked_in_at          : String(25);
  checkin_list           : CheckinList;
  checkin_uuid           : UUID;
  custom                 : String(100);
  event                  : Event;
  answers                : array of String;
}
