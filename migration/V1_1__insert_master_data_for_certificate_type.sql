INSERT INTO certificate_type 
            (certificate_type_id, 
            certificate_type, 
            last_modified_by, 
            last_modified_when, 
            created_by,
            created_when)
VALUES      (
                1, 'Personal Id', null, null, 'automate_script', NOW()
            ),
            (
                2, 'Passport Id', null, null, 'automate_script', NOW()
            ),
            (
                3, 'Foreign Id', null, null, 'automate_script', NOW()
            ),
            (
                4, 'No document', null, null, 'automate_script', NOW()
            )