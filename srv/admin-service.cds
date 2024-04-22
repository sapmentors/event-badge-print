using sapmentors as my from '../db/data-model';

service AdminService {
    @odata.draft.enabled
    entity Events as projection on my.Events;
}
