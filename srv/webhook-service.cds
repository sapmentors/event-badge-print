using {sapmentors.tito as tito} from '../db/tito';

@protocol: 'rest'
service WebhookService {
  action checkin.created(id : tito.Participant:id,
                         slug : tito.Participant:slug,
                         name : tito.Participant:name,
                         company_name : tito.Participant:company_name,
                         first_name : tito.Participant:first_name,
                         last_name : tito.Participant:last_name,
                         release_title : tito.Participant:release_title,
                         email : tito.Participant:email,
                         reference : tito.Participant:reference,
                         registration_reference : tito.Participant:registration_reference,
                         checked_in : tito.Participant:checked_in,
                         checked_in_at : tito.Participant:checked_in_at,
                         checkin_list : tito.Participant:checkin_list,
                         checkin_uuid : tito.Participant:checkin_uuid,
                         custom : tito.Participant:custom,
                         event : tito.Participant:event,
                         answers : tito.Participant:answers, );

}
