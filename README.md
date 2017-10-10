# DISCO: Diachronic Spanish Sonnet Corpus


*Let's party*


The Diachronic Spanish Sonnet Corpus (DISCO) currently contains 19th-century sonnets in Spanish in XML-TEI (685 authors, 2677 sonnets) from 21 different countries. It includes well-known authors, such as Bécquer, Delmira Agustini or “Clarín”, but also less canonized authors. Texts and authors are enriched with identifiers and metadata. See <https://github.com/pruizf/disco>
<br><br>

   * [Prior Collections of Texts in Spanish](#prior-collections-of-texts-in-spanish)
   * [Description of DISCO](#description-of-disco)
     * [Why Sonnets?](#why-sonnets)
     * [Corpus Design](#corpus-design)
     * [Encoding](#encoding)
     * [Metadata](#metadata)
   * [Versions](#versions)
   * [Publication and Preservation](#publication-and-preservation)
   * [Licence and Citation](#licence-and-citation)
   * [Future Steps](#future-steps)
   * [Citations](#citations)
<br><br>


# Prior Collections of Texts in Spanish

A fundamental difficulty for Digital Humanities studies on Spanish literature is a scarcity of digital resources (Agenjo, 2015). 

Some resources do however exist. BiDTEA (Gago Jover et al, 2015),  ADMYTE, ReMetCa (González-Blanco and Rodríguez, 2014) and PoeMetCa (Escribano, J. et al, 2016) have digitized Spanish Medieval texts. Navarro-Colorado et al. (2015) presented the Corpus of Spanish Golden-Age Sonnets.

Regarding 19th-century Spanish literature, available collections covering different genres are  Textbox (Schöch et al., 2015), BETTE (Santa María Fernández, 2017), Aracne (Álvarez Mellado and Martín-Fuertes, 2015), and Revistas Culturales 2.0 (Ehrlicher and Rißler-Pipka, 2015). Nevertheless, none of these projects are working on poetry. 

Concerning available sonnet corpora, Sonnet-Archiv (Elf Edition) is organized as a forum, and its coverage is less wide than ours. The “Sonnet Library” (Biblioteca Virtual Miguel de Cervantes, 2007) is organized alphabetically, rather than using meaningful criteria for literary scholarship, like periods. Both are traditional websites. Finally, the Corpus of Spanish Golden Age Sonnets (Navarro-Colorado et al., 2015) covers major authors from the 15th to the 17th century, with an automatic metrical annotation. Author metadata in these corpora are very limited and unavailable in a machine-readable format (see Calvo Tello, 2017, for discussion of related issues).

DISCO complements this growing ecosystem by adding a meaningful representation of 19th-century sonnets, with more periods under validation, to be published shortly. 

# Description of DISCO

Our corpus currently offers 2677 sonnets in Spanish from the 19th century, by 685 authors (Spain or Latin America). It intends to provide a wide sample, inspired by distant reading approaches (Moretti, 2005). The raw texts were extracted from Biblioteca Virtual Miguel de Cervantes (1999).

The texts have been encoded in XML-TEI P5, given this standard’s benefits in terms of reuse, storage, retrieval. Besides, author metadata have been extracted or inferred from unstructured content in the sources, and placed in the TEIheader (year, place of birth and death, and gender). Two versions of the texts are available: one collecting every sonnet per author, the other encoding a single sonnet per file. For corpus preparation, we closely followed the TEI guidelines and RIDE’s criteria for Digital Text Collections (Henny-Krahmer and Neuber, 2017).

Additionally, authors have been assigned VIAF identifiers. This gives the corpus an entry-point the to the Linked Open Data cloud, enhancing its findability. The corpus is available as a GitHub repository and saved in Zenodo, in response to good practices for data use, reuse, and conservation.

We have also obtained sonnets from other centuries, since the 15th century to the present. These are under validation and will be published shortly as part of the DISCO corpus, which intends to give a wide perspective on the sonnet in Spanish diachronically.

## Why Sonnets?

The sonnet has had great importance in European poetry; the relevance of the corpus for literary scholarship is guaranteed. It is a "manageable" form to treat computationally, obeying clear restrictions. Variability stays within bounds, making meaningful comparison across poems easier, as regards scansion or rhyme types. Besides, some digital collections of sonnets already exist (with different features than the one presented here, even if they present shortcomings, discussed below) as well as automatic analyses of this form. The sonnet has received attention from the computational linguistics community (Navarro Colorado et al, 2015, 2016, 2017; Agirrezabal, 2017) including the ADSO project. The DISCO corpus will also be useful for that audience. For these reasons, a new sonnet corpus allows us to engage in a dialogue with earlier work in traditional literary studies, in digital corpus development, and in computational poetry analyses.

## Corpus Design

The corpus is based on the texts of *Biblioteca Virtual Miguel de Cervantes* prepared by Ramón García González in 2006 (http://www.cervantesvirtual.com/obra/sonetos-del-siglo-xix--0/). It contains 2677 sonnets, written by 685 authors. Half of the texts were written by Spanish authors, half by Latin American authors, being Cuba the best represented country, followed with big distances by Mexico, Argentina, Colombia and Puerto Rico. Some authors were born in non spanish speaking countries, such as Portugal, Brasil or Haiti. Around 90% of the authors are male, a distribution that is not unnormal for literature in Spanish.

## Encoding

The corpus is encoded in two different parallels ways. First, all texts for each author have been collected in a single file (per-author encoding). Second, each sonnet has been encoded in a single file (per-poem encoding). Depending on the purpose of the research, one format or the other will be more useful. For example, for stylometric methods or to compare the works of the same author in different genres, the researcher would prefer to work with the per-author files; but to analyse features in each poem, he would prefer the per-poem files. The files' structure differs very little across both flavours: the title and identification of the digital work are different, and in the per-author files there is an *lg type="sonnet"* element absent in the per-poem files. The rest of the elements and structure are shared.

Each poem is identified using strings created by the project (since single sonnets are not the focus of identification projects such as VIAF). Inside a sonnet, the following information has been encoded explicitly: 
* Headers
* Number and type (*cuarteto, terceto*) of the stanza
* Number of the verse

## Metadata

DISCO has collected many metadata about the texts and authors and made it explicit and available, using technologies like TEI and linked open data. The HTML sources contained some author metadata within a non-standardized text string, which mentioned the author's place and year of birth and death, information about his profession, etc (the level of detail varied across authors). First, the project collected these data and made it explicit in the TEI structure. Second, missing information was inferred. For example, in some cases the original sources mentioned a city of birth, in other cases just the country. Countries and continents were added for all authors. Second, the name of the author was searched against VIAF's REST API. Based on those VIAF queries, a VIAF ID was added to each author, using the following criteria:

* if the name of the author and the dates of birth and death matched, the VIAF ID of the author was added together with the attribute *cert* set to *high* (this was also done in case the original source didn't have any dates of birth and death, but the author name matched exactly)
* if the name of the author match exactly a VIAF name but the dates didn't match, the attribute @cert was set to *medium*
* authors that were not found in VIAF were assigned an empty element for the VIAF ID, and with a *medium* @cert value. This is meant to make explicit that VIAF was queried and no information was found.
* for the remaining cases, the VIAF ID was collected as assigned a *low* @cert

In any case, the information about the author that was already found in the source is now explicit through the *person* element with the *role="author"*. Inside this element, the following information can be found:
* gender
* name
* year, century, place, country and continent of birth
* year, century, place, country and continent of death

These metadata make it now possible for researchers to create their own subcorpora, for example of female authors from Cuba that were born between certain years in the 19th Century.

Additional information, unavailable in the sources, was encoded in the TEIheader:
* amount of sonnets that contains the file
* amount of lines and tokens
* reference to the source
* language of the text
* changes done in the text

# Versions

DISCO published in October 2017 its version 1.0 containing texts from the 19th Century. It is planed to publish a second version of it in late 2017/early 2018 containing sonnets between the 16th to the 18th Century, reinforcing the corpus' diachronic dimension.

# Publication and Preservation

The corpus has been published as a GitHub repository, which enables other researchers to clone, fork and keep track of changes. The data has been also kept in the Zenodo project, with the DOI: tbd. 

# Licence and Citation

The corpus is available under: CC-by licence


* Ruiz, Pablo, Clara Martínez Cantón, and José Calvo Tello. 2017. *Diachronic Spanish Sonnet Corpus* (DISCO). Madrid: UNED. <https://github.com/pruizf/disco>.


# Future Steps

* The corpus will be enriched with sonnets from other periods
* Stanza type identification will be verified manually for some uncertain cases

# References

* Agenjo, Xavier. 2015. ‘Las bibliotecas virtuales españolas y el tratamiento textual de los recursos bibliográficos.’ *Ínsula: revista de letras y ciencias humanas*, no. 822: 12–15.
* Álvarez Mellado, Elena, and Leticia Martín-Fuertes. 2015. *Aracne*. Madrid: Fundéu. <http://www.fundeu.es/aracne/>.
* Biblioteca Virtual Miguel de Cervantes (1999): *Biblioteca Virtual Miguel de Cervantes* <http://www.cervantesvirtual.com/>
* Biblioteca Virtual Miguel de Cervantes (2007): Biblioteca del Soneto [Sonnet Library] <http://www.cervantesvirtual.com/bib/portal/bibliotecasoneto/>
* Ehrlicher, Hanno, and Nanete Rißler-Pipka. 2015. *Revistas Culturales 2.0*. Augsburg: Universität Augsburg. <https://www.revistas-culturales.de/es>.
* Elf Edition: Sonnet Archiv. <http://sonett-archiv.com>
* Henny-Krahmer, Ulrike, and Frederike Neuber. 2017. ‘Criteria for Reviewing Digital Text Collections, Version 1.0.’ *A Review Journal for Digital Editions and Resources*, no. 6. <https://www.i-d-e.de/publikationen/weitereschriften/criteria-text-collections-version-1-0/>.
* Moretti, Franco. 2005. *Graphs, Maps, Trees: Abstract Models for a Literary History*. Verso.
* Navarro-Colorado, Borja, María Ribes Lafoz, and Noelia Sánchez. 2015. *Corpus of Spanish Golden-Age Sonnets*. Alicante: University of Alicante. <https://github.com/bncolorado/CorpusSonetosSigloDeOro>.
* Santa María Fernández, María Teresa, Concepción María Jiménez Fernández, and José Calvo Tello. 2017. *Biblioteca Electrónica Textual Del Teatro Español, 1868-1936* (BETTE). Universidad Internacional de la Rioja. La Rioja. <https://github.com/GHEDI/BETTE>
* Schöch, Christof, Ulrike Henny, José Calvo Tello, and Stefanie Popp. 2015. The CLiGS Textbox. Würzburg: University of Würzburg. <https://github.com/cligs/textbox>.
