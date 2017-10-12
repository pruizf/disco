# DISCO: Diachronic Spanish Sonnet Corpus


*Let's party*


The Diachronic Spanish Sonnet Corpus (DISCO) currently contains 19th-century sonnets in Spanish in XML-TEI (685 authors, 2677 sonnets) from 21 different countries. It includes well-known authors, such as Bécquer, Delmira Agustini or “Clarín”, but also less canonized authors. Texts and authors are enriched with identifiers and metadata.
<br><br>

   * [Prior Collections of Texts in Spanish](#prior-collections-of-texts-in-spanish)
   * [Description of DISCO](#description-of-disco)
     * [Why Sonnets?](#why-sonnets)
     * [Corpus Design](#corpus-design)
     * [Encoding](#encoding)
       * [TEI](#tei)
       * [Plain-text](#plain-text)
     * [Metadata](#metadata)
       * [Authors' biographical metadata](#authors-biographical-metadata)
       * [VIAF IDs](#viaf-ids)
       * [Other metadata](#other-metadata)
       * [Metadata in the plain-text version](#metadata-in-the-plain-text-version)
   * [Versions](#versions)
   * [Publication and Preservation](#publication-and-preservation)
   * [Licence and Citation](#licence-and-citation)
   * [Future Steps](#future-steps)
   * [References](#references)
<br><br>


# Prior Collections of Texts in Spanish

A fundamental difficulty for Digital Humanities studies on Spanish literature is a scarcity of digital resources (Agenjo, 2015). 

Some resources do however exist. BiDTEA (Gago Jover et al, 2015),  ADMYTE (Marcos Marín and Faulhaber, 1992), ReMetCa (González-Blanco and Rodríguez, 2014) and PoeMetCa (Escribano, J. et al, 2016) have digitized Spanish Medieval texts. Navarro-Colorado et al. (2015) presented the "Corpus of Spanish Golden-Age Sonnets".

Regarding 19th-century Spanish literature, available collections covering different genres are Textbox (Schöch et al., 2015), BETTE (Santa María Fernández, 2017), Aracne (Álvarez Mellado and Martín-Fuertes, 2015), and Revistas Culturales 2.0 (Ehrlicher and Rißler-Pipka, 2015). Nevertheless, none of these projects are working on poetry. 

Concerning available sonnet corpora, Sonnet-Archiv (Elf Edition) is organized as a forum, and its coverage is less wide than ours. The “Sonnet Library” (Biblioteca Virtual Miguel de Cervantes, 2007) is organized alphabetically, rather than using meaningful criteria for literary scholarship, like periods. Both are traditional websites. Finally, the Corpus of Spanish Golden Age Sonnets (Navarro-Colorado et al., 2015) covers major authors from the 15th to the 17th century, with an automatic metrical annotation. Author metadata in these corpora are very limited and unavailable in a machine-readable format (see Calvo Tello, 2017, for discussion of related issues).

DISCO complements this growing ecosystem by adding a meaningful representation of 19th-century sonnets, with more periods under validation, to be published shortly. 

# Description of DISCO

Our corpus currently offers 2677 sonnets in Spanish from the 19th century, by 685 authors (Spain or Latin America). It intends to provide a wide sample, inspired by distant reading approaches (Moretti, 2005). The raw texts were extracted from Biblioteca Virtual Miguel de Cervantes (1999).

The corpus is available in plain-text and in TEI formats; XML-TEI P5 was used given this standard’s benefits in terms of reuse, storage, and retrieval. Author metadata were extracted or inferred from unstructured content in the sources (year, place of birth and death, and gender), and placed in the TEIheader, or in a metadata table in the case of the plain-text version. For both TEI and plain-text formats, two versions of the texts are available: one collecting every sonnet per author, the other encoding a single sonnet per file. For corpus preparation, we closely followed the TEI guidelines and RIDE’s criteria for Digital Text Collections (Henny-Krahmer and Neuber, 2017).

Additionally, authors have been assigned VIAF identifiers. This gives the corpus an entry-point to the Linked Open Data cloud, enhancing its findability. The corpus is available as a GitHub repository and saved in Zenodo, in response to good practices for data use, reuse, and conservation.

We have also obtained sonnets from other centuries, since the 15th century to the present. These are under validation and will be published shortly as part of the DISCO corpus, which intends to give a wide perspective on the sonnet in Spanish diachronically.

## Why Sonnets?

The sonnet has had great importance in European poetry; the relevance of the corpus for literary scholarship is guaranteed. It is a "manageable" form to treat computationally, obeying clear restrictions. Variability stays within bounds, making meaningful comparison across poems easier, as regards scansion or rhyme types. Besides, some digital collections of sonnets already exist (with different features than the one presented here, as discussed below) as well as automatic analyses of this form. The sonnet has received attention from the computational linguistics community (Navarro Colorado et al, 2015, 2016, 2017; Agirrezabal, 2017) including the ADSO project (Navarro Colorado 2017). The DISCO corpus will also be useful for that audience. For these reasons, a new sonnet corpus allows us to engage in a dialogue with earlier work in traditional literary studies, in digital corpus development, and in computational poetry analyses.

## Corpus Design

The corpus is based on [texts](http://www.cervantesvirtual.com/obra/sonetos-del-siglo-xix--0/) of *Biblioteca Virtual Miguel de Cervantes* prepared by Ramón García González in 2006. It contains 2677 sonnets, written by 685 authors. Half of the texts were written by Spanish authors, half by Latin American authors, with Cuba as the best-represented country, followed at a large distances by Mexico, Argentina, Colombia and Puerto Rico. Some authors were born in non Spanish-speaking countries, such as Portugal, Brasil or Haiti. Around 90% of the authors are male, a distribution that is not abnormal for literature in Spanish.

## Encoding

The corpus is offfered as TEI-encoded files (*tei* directory) and as plain-text files (*txt* directory). In either case, poems are grouped by author (**per-author** mode), besides being represented as a single file per poem (**per-poem** mode). In the plain-text version, in order to group poems per author, a directory for each author was created, which contains each of that author's poems as single files. In the TEI version, the way to group an author's poems was to create a single TEI file for the author, containing all of that author's poems in the corpus.

Depending on the purpose of the research, the *per-author* or the *per-poem* mode will be more useful. For example, for stylometric methods or to compare the works of the same author in different genres, the researcher would prefer to work with the per-author files; but to analyse features in each poem, they would prefer the per-poem files. 

### TEI

The files' structure differs very little between the *per-author* and the *per-poem* modes: the title and identification of the digital work are different, and in the per-author files there is an *lg type="sonnet"* element absent in the per-poem files. The rest of the elements and structure are shared.

Each poem is identified using ID-strings created by the project (since single sonnets are not the focus of identification projects such as VIAF). Inside a sonnet, the following information has been encoded explicitly: 
* Headings
* Stanza number and type (*cuarteto, terceto*)
* Line numbers

The **order of sonnets** in the source edition has been respected in the per-author files, and can be recovered from the numeric part of file-ids in the per-poem files. 

In the source, sometimes there were **sonnet sequences**, i.e. when an author has written a series of sonnets about the same topic, under the same overall heading and with a separate heading for each sonnet in the sequence. In the per-author files, sequences have been encoded within an *lg="sonnet-sequence"* element comprising all sonnets in the sequence. In the per-poem files, sonnet-sequences can be recovered from the last numeric part of the file-ids.

More information about the metadata encoded in our TEI files is [below](#metadata).

### Plain-text

A plain-text version is offered since some of our users are more comfortable with this format than with TEI. 

See [below](#metadata-in-the-plain-text-version) for details how author- and poem-metadata were made available in the plain-text version. 


## Metadata

DISCO has collected several metadata about the texts and authors and made it explicit and accessible, using technologies like TEI and linked open data. The HTML sources contained relevant information for identifying author metadata, within a non-standardized text-string, which mentioned the author's place and year of birth and death, their profession etc.; the level of detail varied across authors. First, the project collected these data and identified them explicitly. Second, missing information was inferred. For example, in some cases the original sources mentioned a city of birth, in other cases just the country. Countries and continents were added for all authors. Finally, VIAF IDs for authors were added (details below)

**These metadata make it now possible for researchers to create their own subcorpora, for example *female authors from Cuba that were born between certain years in the 19th Century*.**

In the **TEI** version of the corpus, the metadata was encoded in the TEI structure, as explain in following. For details on how metadata were made available in the **plain-text** version, see further [below](#metadata-in-the-plain-text-version). 

### Authors' biographical metadata

In TEI, biographical information about the author (whether it was found in the source or inferred) is now made explicit through a *person* element that bears a *role="author"* attribute. Inside this element, the following information can be found:
* gender
* name
* year, century, place, country and continent of birth
* year, century, place, country and continent of death

A breakup of author-name components (first and last names, particles) is found within the *author* element. 

### VIAF IDs

The name of the author was searched programmatically against [VIAF's REST API](https://platform.worldcat.org/api-explorer/apis/VIAF/AuthorityCluster/AutoSuggest). Based on those queries, a VIAF ID was added to each author, in a *idno[@type=viaf]* element, if an appropriate candidate was returned by VIAF's API. This element was left empty if no appropriate candidate was returned. The criteria for assigning a VIAF ID to the authors based on the API's responses were the following:

* if the name of a candidate proposed by the VIAF API and the dates of birth and death matched exactly the information in the source corpus, the VIAF ID for that candidate was added to the TEI files, together with a *@cert* attribute set to *high*. This was also done in case the original source didn't have any dates of birth and death, but the author's name matched exactly the first candidate suggested by VIAF. 
* if the name of the author matched exactly one of the candidates returend by VIAF, but the dates didn't match, the attribute *@cert* was set to *medium*
* authors that were not found in VIAF were assigned an empty element for the VIAF ID, with a *@cert* value of *medium*. This is meant to indicate that VIAF was queried and no information was found, but it can't be ruled out that the author could be found in VIAF if deeper searches are carried out.
* for the remaining cases, the VIAF ID for the best candidate returned by the API and assigned a *@cert* value of *low* 

### Other metadata

The TEIheader also encodes additional information, unavailable in the sources:
* number of sonnets containend in the file (in the per-author files this is the number of sonnets for the author in the corpus)
* number of lines and tokens
* reference to the source
* language of the text

### Metadata in the plain-text version

In the plain-text version, an external [table](https://github.com/pruizf/disco/blob/master/txt/author_metadata.tsv) can be used to access author-metadata (dates, origin, etc.). The table's fields are explained [here](https://github.com/pruizf/disco/blob/master/txt/metadata_fields.md). Poems' titles and IDs are encoded in the file names. The file names also encode the most basic author information: their name and author-ID in the corpus. The metadata table matches those authors' names and IDs, so that the file names can be crossed with the table. 

Here are some examples of the way file names encode metadata:

```
Template: LastName,_FirstName__AuthorID~~Title's_first_50_characters__PoemID.txt
Example: Acuña,_Rosario_de__182n~~Soneto_escrito_para_ser_grabado_en_la_tumba_de_mi___0622.txt
```
For sonnets within a sonnet-sequence, an additional ID indicates the poem's position in the sequence:

```
Template: LastName,_FirstName__AuthorID~~SequenceTitle's_first_50_characters__PoemID__PoemTitle__IDInSequence.txt
Example: Querolt,_Vicente_Wenceslao__263n~~La_fiesta_de_Venus__0853__I__01.txt
```

As the examples show, the \~\~ delimiter separates author from poem information. Double underscores separate metadata types (e.g. author name from its ID).


# Versions

DISCO published in October 2017 its version 1.0 containing texts from the 19th Century. It is planed to publish a second version of it in late 2017/early 2018 containing sonnets between the 15th to the 18th Century, reinforcing the corpus' diachronic dimension.

# Publication and Preservation

The corpus has been published as a GitHub repository, which enables other researchers to clone, fork and keep track of changes. The data has been also kept in the Zenodo project, with the DOI: tbd. 

# Licence and Citation

The corpus is available under: CC-BY licence


* Ruiz Fabo, Pablo, Clara Martínez Cantón, and José Calvo Tello. 2017. *Diachronic Spanish Sonnet Corpus* (DISCO). Madrid: UNED. <https://github.com/pruizf/disco>.


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
* Escribano, Juanjo, González-Blanco, Elena and Río Riande, Gimena del (2016). PoeMetCa—Recursos digitales para el estudio de la Poesía Medieval Castellana. <http://poemteca.linhd.es>
* Gago Jover, Francisco (2015): “La biblioteca digital de textos del español antiguo (BiDTEA), in  *Scriptum Digital 4*: 5–36.
* González-Blanco, Elena, Rodríguez, José Luis (2014): “ReMetCa: A Proposal for Integrating RDBMS and TEI-Verse”, in *Journal of the Text Encoding Initiative 8* <https://jtei.revues.org/1274>
* Henny-Krahmer, Ulrike, and Frederike Neuber. 2017. ‘Criteria for Reviewing Digital Text Collections, Version 1.0.’ *A Review Journal for Digital Editions and Resources*, no. 6. <https://www.i-d-e.de/publikationen/weitereschriften/criteria-text-collections-version-1-0/>.
* Marcos Marín, Francisco and Faulhaber, Charles B. (coord.) (1992): ADMYTE. Archivo Digital de Manuscritos y Textos Españoles, in <http://www.admyte.com/admyteonline/contenido.htm>
* Moretti, Franco. 2005. *Graphs, Maps, Trees: Abstract Models for a Literary History*. Verso.
* Navarro-Colorado, Borja (2017): *ADSO project – Análisis distante del soneto castellano de los Siglos de Oro [Distant analysis of the Spanish Golden Age sonnet]* <http://adso.gplsi.es/index.php/es/proyecto-adso>
* Navarro-Colorado, Borja, María Ribes Lafoz, and Noelia Sánchez. 2015. *Corpus of Spanish Golden-Age Sonnets*. Alicante: University of Alicante. <https://github.com/bncolorado/CorpusSonetosSigloDeOro>.
* Navarro-Colorado, Borja, María Ribes Lafoz and Noelia Sánchez (2016): “Metrical Annotation of a Large Corpus of Spanish Sonnets: Representation, Scansion and Evaluation”, in *Proceedings of the Language Resources and Evaluation Conference*. <http://www.lrec-conf.org/proceedings/lrec2016/pdf/453_Paper.pdf>
* Navarro-Colorado, Borja (2017): “A metrical scansion system for fixed-metre Spanish poetry”, in *Digital Scholarship in the Humanities*. <https://doi.org/10.1093/llc/fqx009>
* Santa María Fernández, María Teresa, Concepción María Jiménez Fernández, and José Calvo Tello. 2017. *Biblioteca Electrónica Textual Del Teatro Español, 1868-1936* (BETTE). Universidad Internacional de la Rioja. La Rioja. <https://github.com/GHEDI/BETTE>
* Schöch, Christof, Ulrike Henny, José Calvo Tello, and Stefanie Popp. 2015. The CLiGS Textbox. Würzburg: University of Würzburg. <https://github.com/cligs/textbox>.
