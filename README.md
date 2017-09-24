# DISCO: Diachronic Spanish Sonnet Corpus

The Diachronic Spanish Sonnet Corpus (DISCO) is a corpus of 19th-century sonnets in Spanish in XML-TEI (685 authors, 2677 sonnets) from 21 different countries. It includes well-known authors, such as Bécquer, Delmira Agustini or “Clarín”, but also less canonized authors. Texts and authors are enriched with identifiers and metadata. See <https://github.com/pruizf/disco>

# Spanish Collections of Texts

A fundamental difficulty for Digital Humanities studies on Spanish literature is a scarcity of digital resources (Agenjo, 2015). 

Some resources do however exist. BiDTEA (Gago Jover et al, 2015),  ADMYTE, ReMetCa (González-Blanco and Rodríguez, 2014) and PoeMetCa (Escribano, J. et al, 2016) have digitized Spanish Medieval texts. Navarro-Colorado et al. (2015) presented the Corpus of Spanish Golden-Age Sonnets.

Regarding 19th-century Spanish literature, available collections covering different genres are  Textbox (Schöch et al., 2015), BETTE (Santa María Fernández, 2017), Aracne (Álvarez Mellado and Martín-Fuertes, 2015), and Revistas Culturales 2.0 (Ehrlicher and Rißler-Pipka, 2015). Nevertheless, none of these projects are working on poetry. 

Concerning available sonnet corpora, Sonnet-Archiv is organized as a forum, and its coverage is less wide than ours. The “Ssonnet Pportal” at Biblioteca Virtual Miguel de Cervantes is organized alphabetically, rather than using meaningful criteria for literary scholarship, like periods. Both are traditional websites. Finally, the Corpus of Spanish Golden Age Sonnets (Navarro-Colorado et al., 2015) covers major authors from the 15th to the 17th century, with an automatic metrical annotation. Author metadata in these corpora are very limited and unavailable in a machine-readable format (see Calvo Tello, 2017, for discussion of related issues).

DISCO complements this growing ecosystem by adding a meaningful representation of 19th-century sonnets, with more periods under validation, to be published shortly. 

# Description of DISCO

Our corpus collects 2677 sonnets in Spanish from the 19th century, by 685 authors (Spain or Latin America). It intends to provide a wide sample, inspired by distant reading approaches (Moretti, 2005). The raw texts were extracted from Biblioteca Virtual Miguel de Cervantes (1999).

The texts have been encoded in XML-TEI P5, given this standard’s benefits in terms of reuse, storage, retrieval. Besides, author metadata have been extracted or inferred from unstructured content in the sources, and placed in the TEIheader (year, place of birth and death, and gender). Two versions of the texts are available: one collecting every sonnet per author, the other encoding a single sonnet per file. For corpus preparation, we closely followed the TEI guidelines and RIDE’s criteria for Digital Text Collections (Henny and Neuber, 2017).

Additionally, authors have been assigned VIAF identifiers. This gives the corpus an entry-point the to the Llinked Oopen dData cloud, enhancing its findability. The corpus is available as a GitHub repository and saved in Zenodo, in response to good practices for data use, reuse, and conservation.

We have also obtained sonnets from other centuries, since the 15th century to the present. These are under validation and will be published shortly as part of the DISCO corpus, which intends to give a wide perspective on the sonnet in Spanish diachronically.

# Why Sonnets?

The sonnet has had great importance in European poetry; the relevance of the corpus for literary scholarship is guaranteed. It is a "manageable" form to treat computationally, obeying clear restrictions. Variability stays within bounds, making meaningful comparison across poems easier, as regards scansion or rhyme types. Besides, someseveral  digital collections of sonnets already exist (with different features than the one presented here, even if they present shortcomings, discussed below) as well as automatic analyses of this form. The sonnet has received attention from the computational linguistics community (Navarro Colorado et al, 2015, 2016, 2017; Agirrezabal, 2017) including the ADSO project. The DISCO corpus will also be useful for that audience. For these reasons, a new sonnet corpus allows us to engage in a dialogue with earlier work in traditional literary studies, in digital corpus development, and in computational poetry analyses.

# Design of Corpus

The corpus is based on the texts of Biblioteca Virtual Miguel de Cervantes. It contains 2677 sonnets, written by 685 authors. Half of the texts were written by Spanish authors, half by Latin American authors, being Cuba the best represented country, followed with big distances by Mexico, Argentina, Colombia and Puerto Rico. Some authors were born in non spanish speaking countries, such as Portugal, Brasil or Haiti. Around 90% of the authors are male, a distribution that is not unnormal for literature in Spanish.

# Encoding



# Metadata

# Versions

# Publication and Preservation

# Citation

# Future Steps


