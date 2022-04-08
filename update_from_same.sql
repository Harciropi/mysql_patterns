UPDATE settings_emails AS se1 INNER JOIN settings_emails AS se2 ON se1.code_txt = se2.code_txt
SET se1.modified = se2.modified, se1.subject_txt = se2.subject_txt, se1.content_blob = se2.content_blob, se1.ccstylesheet_blob = se2.ccstylesheet_blob
WHERE se2.domain_int = 0 AND se1.domain_int <> 0;