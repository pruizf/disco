The fields in the [author-metadata table](https://github.com/pruizf/disco/blob/master/txt/author_metadata.tsv) mean the following:

| field name | value | comments |
|---|---|---|
| author | author's last and first name |  |
| aid | alphanumeric ID for the author | the numeric part is unique within a period, but may repeat across periods. The letter suffix indicates the period (e.g. *n* = *n*ineteenth-century) thus making the author-id unique in the corpus|
| normdate | "normalized date" | The century. Values ending in *.5* indicate authors born in one century and deceased in the following one (e.g. 18.5 means born in the 18th, deceased in the 19th century)|
| birth | year or century of birth  | |
| death  | year or century of death | a "0" indicates missing information |
| raw | raw author information (available as unstructured text for each author) in the corpus sources | |
| hasbirth | 1 or 0 whether an exact year is given in the source or not | |
| hasdeath | 1 or 0 whether an exact year is given in the source or not | |
| hasdates | 1 when both *hasbirth* and *hasdeath* are *1*, else 0 | |
| estimate | 0 unless the date was indicated as an estimation (with a question mark) in the sources | |
| place-birth | place of birth | |
| place-death | place of death | |
| country-birth | country of birth | sometimes inferred programmatically by us based on *place-birth*|
| continent-birth | continent of birth | inferred programmatically by us based on *place-birth*|
| first-name | first name | names were segmented into their constituents programmatically by us|
| preposition-name | particle in last name | |
| second-name | last name | |
| gender | author's gender | inferred programmatically by us based on *first-name* plus manual validation|
| viafid | ID we selected programmatically from VIAF's API responses |  |
| vf_bi | birthdate for our selected VIAF candiate |  |
| vf_de | date of death for our selected VIAF candidate |  |
| vf_bi_esti | 1 if the birthdate for our VIAF candidate has question marks in VIAF, else 0 |  |
| vf_de_esti | 1 if the date of death for our VIAF candidate has question marks in VIAF, else 0 |  |
| birth_diff | difference between birthdate in our sources and the one for our VIAF candidate |  |
| death_diff | difference between date of death in our sources and the one for our VIAF candidate |  |
| vf_cand_n | number of candidates returned by VIAF's API for our queries |  |
| auname_viaf | author name for the VIAF candidate we selected |  |
| redo | project-internal information |  |
| match_type | indicates how the author's name in our corpus compares to the VIAF candidate we selected: *exact* match, *contained* in the VIAF name using full-word matching or non-full-word match (*wordpart*) |  |
| vf_validation | this is rendered in the TEI headers as the *@cert* value for *idno[@type="viaf"]* | Our estimated degree of certitude that the VIAF ID we selected corresponds to the author, see [here](https://github.com/pruizf/disco#viaf-ids) | |
