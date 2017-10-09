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

The texts have been encoded in XML-TEI P5, given this standard’s benefits in terms of reuse, storage, retrieval. Besides, author metadata have been extracted or inferred from unstructured content in the sources, and placed in the TEIheader (year, place of birth and death, and gender). Two versions of the texts are available: one collecting every sonnet per author, the other encoding a single sonnet per file. For corpus preparation, we closely followed the TEI guidelines and RIDE’s criteria for Digital Text Collections (Henny-Krahmer and Neuber, 2017).

Additionally, authors have been assigned VIAF identifiers. This gives the corpus an entry-point the to the Llinked Oopen dData cloud, enhancing its findability. The corpus is available as a GitHub repository and saved in Zenodo, in response to good practices for data use, reuse, and conservation.

We have also obtained sonnets from other centuries, since the 15th century to the present. These are under validation and will be published shortly as part of the DISCO corpus, which intends to give a wide perspective on the sonnet in Spanish diachronically.

# Why Sonnets?

The sonnet has had great importance in European poetry; the relevance of the corpus for literary scholarship is guaranteed. It is a "manageable" form to treat computationally, obeying clear restrictions. Variability stays within bounds, making meaningful comparison across poems easier, as regards scansion or rhyme types. Besides, someseveral  digital collections of sonnets already exist (with different features than the one presented here, even if they present shortcomings, discussed below) as well as automatic analyses of this form. The sonnet has received attention from the computational linguistics community (Navarro Colorado et al, 2015, 2016, 2017; Agirrezabal, 2017) including the ADSO project. The DISCO corpus will also be useful for that audience. For these reasons, a new sonnet corpus allows us to engage in a dialogue with earlier work in traditional literary studies, in digital corpus development, and in computational poetry analyses.

# Design of Corpus

The corpus is based on the texts of *Biblioteca Virtual Miguel de Cervantes* prepared by Ramón García González in 2006 (http://www.cervantesvirtual.com/obra/sonetos-del-siglo-xix--0/). It contains 2677 sonnets, written by 685 authors. Half of the texts were written by Spanish authors, half by Latin American authors, being Cuba the best represented country, followed with big distances by Mexico, Argentina, Colombia and Puerto Rico. Some authors were born in non spanish speaking countries, such as Portugal, Brasil or Haiti. Around 90% of the authors are male, a distribution that is not unnormal for literature in Spanish.

# Encoding

The corpus is encoded in two different parallels ways. On the one side, all the texts of a singles author have been gathered in a single file. On the other side, each sonnet has been encoded in a single file. Depending on the purpose of the research, one folder or another would be more useful. For example, for stylometric methods or to compare the works of the same author in different genre, the researcher would prefer to work with the one-author files; but to analyse features in each poem, he would prefer the one-poem files. These two different flavours differ in their structure very little: the title and identificacion of the digital work and the existence of a *lg type="sonnet"* in the one-author files. The rest of the elements and structure are shared.

Each poem is identified using strings created by the project (since single sonnets are not the focus of identification projects such as VIAF). Inside a sonnet, the following information has been encoded explicitly: 
* Headers
* Number and type (*cuarteto, terceto*) of the stanza
* Number of the verse

# Metadata

DISCO has achived to collect many metadata about the texts and authors and make it explicit and available using techonologies like TEI and linked open data. The text source of the text contains some metadata of the authors as a non formalised textual string: sometimes it contained more information about the author (palce and year of birth and death, information about his profession, etc). First the project collected this data and make it explicit in the TEI structure, filling out the missing information (for example, in some cases the countries were mencioned, in other cases only cities). Second, the name of the author was searched in the VIAF. It was added in different ways using the following criteria:

* if the name of the author and the dates of birth and death matched, the VIAF id of the author was added together with the attribute *cert* set to *high* (also in case the original source didn't have any dates of birth and death)
* if the name of the author match exactly a VIAF name but the dates didn't match, the attribute @cert was set to *medium*
* also as *medium* but as empty element were left the authors that weren't found in the VIAF (making explicit the lack of information in the VIAF)
* for the rest of the cases, the VIAF was collected as assigned a *low* @cert

In any case, the information about the author that was already found in the source is now explicit through the *person* element with the *role="author"*. Enside this element, it is to be found:
* gender
* name
* year, century, place, country and continent of birth
* year, century, place, country and continent of death

This metadata makes now possible to the researcher to create their own subcorpora, for example of female authors from Cuba that were born between certain years in the 19th Century.

In the TEIheader is also more information:
* amount of sonnets that contains the file
* amount of lines and tokens
* reference to the source
* language of the text
* changes donde in the text

# Versions

DISCO published in 2017 its version 1.0 containing texts from the 19th Century. It is planed to publish a second version of it in 2018 containing sonnets between the 16th to the 18th Century, reinforcing their diachronical dimmension.

# Publication and Preservation

The corpus has been published as a GitHub repository, a tool that enables other researchers to clone, fork and keep track of changes. The data has been also kept in the Zenodo project, with the DOI: tbd. 

# Licence and Citation

The corpus is available under: tbd (CC-by licence?).


* Ruiz, Pablo, Clara Martínez Cantón, and José Calvo Tello. 2017. *Diachronic Spanish Sonnet Corpus* (DISCO). Madrid: UNED. <https://github.com/pruizf/disco>.


# Future Steps

# Citations

* Agenjo, Xavier. 2015. ‘Las bibliotecas virtuales españolas y el tratamiento textual de los recursos bibliográficos.’ *Ínsula: revista de letras y ciencias humanas*, no. 822: 12–15.
* Álvarez Mellado, Elena, and Leticia Martín-Fuertes. 2015. *Aracne*. Madrid: Fundéu. <http://www.fundeu.es/aracne/>.
* Ehrlicher, Hanno, and Nanete Rißler-Pipka. 2015. *Revistas Culturales 2.0*. Augsburg: Universität Augsburg. <https://www.revistas-culturales.de/es>.
* Henny-Krahmer, Ulrike, and Frederike Neuber. 2017. ‘Criteria for Reviewing Digital Text Collections, Version 1.0.’ *A Review Journal for Digital Editions and Resources*, no. 6. <https://www.i-d-e.de/publikationen/weitereschriften/criteria-text-collections-version-1-0/>.
* Moretti, Franco. 2005. *Graphs, Maps, Trees: Abstract Models for a Literary History*. Verso.
* Navarro-Colorado, Borja, María Ribes Lafoz, and Noelia Sánchez. 2015. *Corpus of Spanish Golden-Age Sonnets*. Alicante: University of Alicante. <https://github.com/bncolorado/CorpusSonetosSigloDeOro>.
* Santa María Fernández, María Teresa, Concepción María Jiménez Fernández, and José Calvo Tello. 2017. *Biblioteca Electrónica Textual Del Teatro Español, 1868-1936* (BETTE). Universidad Internacional de la Rioja. La Rioja. <https://github.com/GHEDI/BETTE>
* Schöch, Christof, Ulrike Henny, José Calvo Tello, and Stefanie Popp. 2015. The CLiGS Textbox. Würzburg: University of Würzburg. <https://github.com/cligs/textbox>.

