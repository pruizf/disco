# DISCO: Diachronic Spanish Sonnet Corpus
[![DOI](https://zenodo.org/badge/103841064.svg)](https://zenodo.org/badge/latestdoi/103841064)

*Let's party*


The Diachronic Spanish Sonnet Corpus (DISCO) contains sonnets in Spanish in XML-TEI, between the 15th and the 19th centuries (4087 sonnets by 1204 authors from 21 different countries). It includes well-known authors, but also less canonized ones. Texts and authors are enriched with identifiers and metadata.
<br><br>

   * [Prior Collections of Texts in Spanish](#prior-collections-of-texts-in-spanish)
   * [Description of DISCO](#description-of-disco)
     * [Why Sonnets?](#why-sonnets)
     * [Data Distribution](#data-distribution)
     * [Encoding](#encoding)
       * [TEI](#tei)
       * [RDFa](#rdfa)
       * [Plain-text](#plain-text)
     * [Basic Metadata](#metadata)
       * [Authors' biographical metadata](#authors-biographical-metadata)
       * [VIAF IDs](#viaf-ids)
       * [RDFa attributes](#rdfa-attributes)
       * [Other metadata](#other-metadata)
       * [Metadata in the plain-text version](#metadata-in-the-plain-text-version)
     * [Literary Annotations](#literary-annotations)
       * [Scansion](#scansion)
       * [Rhyme-scheme](#rhyme-scheme)
       * [Enjambment](#enjambment)
   * [Versions](#versions)
   * [Publication and Preservation](#publication-and-preservation)
   * [Licence and Citation](#licence-and-citation)
   * [Future Steps](#future-steps)
   * [References](#references)
<br><br>


# Prior Collections of Texts in Spanish

A fundamental difficulty for Digital Humanities studies on Spanish literature is a scarcity of digital resources (Agenjo, 2015). 

Some resources do however exist. BiDTEA (Gago Jover et al, 2015),  ADMYTE (Marcos Marín and Faulhaber, 1992), ReMetCa (González-Blanco and Rodríguez, 2014) and PoeMetCa (Escribano, J. et al, 2016) have digitized Spanish Medieval texts. Navarro-Colorado et al. (2015) presented the "Corpus of Spanish Golden-Age Sonnets".

For later periods, available collections covering different genres are Textbox (Schöch et al., 2015), BETTE (Santa María Fernández, 2017), Aracne (Álvarez Mellado and Martín-Fuertes, 2015), and Revistas Culturales 2.0 (Ehrlicher and Rißler-Pipka, 2015). Nevertheless, none of these projects are working on poetry. 

Concerning available sonnet corpora, Sonnet-Archiv (Elf Edition) is organized as a forum, and its coverage is less wide than ours. The “Sonnet Library” (Biblioteca Virtual Miguel de Cervantes, 2007) is organized alphabetically, rather than using meaningful criteria for literary scholarship, like periods. Both are traditional websites. Finally, the Corpus of Spanish Golden Age Sonnets (Navarro-Colorado et al., 2015) covers major authors from the 15th to the 17th century, with an automatic metrical annotation. Author metadata in these corpora are very limited and unavailable in a machine-readable format (see Calvo Tello, 2017, for discussion of related issues).

DISCO complements this growing ecosystem by adding a meaningful representation of sonnets from the 15th to the 19th centuries.

# Description of DISCO

Our corpus currently offers a total of 4087 sonnets in Spanish: 2676 from the 19th century, 330 from the 18th century and 1088 from the so-called Spanish Golden Age (15th to 17th centuries). There are a total of 1204 authors (both from Spain and Latin America). It intends to provide a wide sample, inspired by distant reading approaches (Moretti, 2005). The raw texts were in most cases extracted from Biblioteca Virtual Miguel de Cervantes (1999), with some 18th-century texts coming from Wikisource. A table in section [Data Distribution](#data-distribution) below summarizes these data.

The corpus is available in plain-text and in TEI formats; XML-TEI P5 was used given this standard’s benefits in terms of reuse, storage, and retrieval. Author metadata were extracted or inferred from unstructured content in the sources (year, place of birth and death, and gender), and placed in the TEIheader, or in a metadata table in the case of the plain-text version. For both TEI and plain-text formats, two versions of the texts are available: one collecting every sonnet per author, the other encoding a single sonnet per file. For corpus preparation, we closely followed the TEI guidelines and RIDE’s criteria for Digital Text Collections (Henny-Krahmer and Neuber, 2017).

Additionally, authors have been assigned VIAF identifiers and described using RDFa attributes. This gives the corpus an entry-point to the Linked Open Data cloud, enhancing its findability. The corpus is available as a GitHub repository and saved in Zenodo, in response to good practices for data use, reuse, and conservation.

## Why Sonnets?

The sonnet has had great importance in European poetry; the relevance of the corpus for literary scholarship is guaranteed. It is a "manageable" form to treat computationally, obeying clear restrictions. Variability stays within bounds, making meaningful comparison across poems easier, as regards scansion or rhyme types. Besides, some digital collections of sonnets already exist (with different features than the one presented here, as discussed below) as well as automatic analyses of this form. The sonnet has received attention from the computational linguistics community (Navarro Colorado et al, 2015, 2016, 2017; Agirrezabal, 2017) including the ADSO project (Navarro Colorado 2017). The DISCO corpus will also be useful for that audience. For these reasons, a new sonnet corpus allows us to engage in a dialogue with earlier work in traditional literary studies, in digital corpus development, and in computational poetry analyses.

## Data Distribution

We describe the sources and data distribution for each subcorpus, starting in reverse chronological order with the 19th century. A table below summarizes the information. 

The **19th-century** subcorpus is based on [texts](http://www.cervantesvirtual.com/obra/sonetos-del-siglo-xix--0/) of *Biblioteca Virtual Miguel de Cervantes* prepared by Ramón García González in 2006. It contains 2677 sonnets, written by 685 authors. Half of the texts were written by Spanish authors, half by Latin American authors, with Cuba as the best-represented country, followed at a large distances by Mexico, Argentina, Colombia and Puerto Rico. Some authors were born in non Spanish-speaking countries, such as Portugal, Brasil or Haiti. More than 90% of the authors are male.

Note that the 19th-century subcorpus includes about 125 sonnets by 23 authors whose production took place in the early 20th century (with date of death prior to 1936). We kept these authors as they were part of the [19th-century anthology](http://www.cervantesvirtual.com/obra/sonetos-del-siglo-xix--0/) mentioned above, which is our source for this subcorpus. We will consider creating a separate subcorpus for early 20th century literature if we more systematically collect material for the early 20th century.

The **18th century** subcorpus is based on [texts](http://www.cervantesvirtual.com/obra-visor/sonetos-del-siglo-xviii--0/html/) from *Biblioteca Virtual Miguel de Cervantes*, prepared by Ramón García González in 2005. Besides, some texts come from [Wikisource](https://es.wikisource.org/w/index.php?title=Categor%C3%ADa:Sonetos). 

The **Golden Age** subcorpus **(15th-17th centuries)** is based on [texts](http://www.cervantesvirtual.com/obra-visor/sonetos-del-siglo-xv-al-xvii--0/html/) from *Biblioteca Virtual Miguel de Cervantes* prepared by Ramón García González in 2006. For this period, we chose mostly minor authors, thus complementing Navarro Colorado's (2015) Golden Age corpus, which focuses on canonical authors.

Although overall in the corpus we deliberately included less canonical writers, less than 10% of the authors are female. An active search will be carried out to counteract this lack of diversity.

**TABLE 1: Corpus data distribution per period, author gender and primary continent of literary activity**<br>
Numbers in parentheses indicate authors which were probably active in Europe.

<table>
  <tr>
    <th>Period</th>
    <th>Nbr of Sonnets</th>
    <th colspan="3">Nbr of Authors</th>
  </tr>
  <tr>
    <td rowspan="4"><b>19th</b></td>
    <td rowspan="4">2676</td>
    <td rowspan="4">685</td>
    <td>Female</td>
    <td>48</td>
  </tr>
  <tr>
    <td>Male</td>
    <td>637</td>
  </tr>
  <tr>
    <td>America</td>
    <td>334</td>
  </tr>
  <tr>
    <td>Europe</td>
    <td>348 (+3)</td>
  </tr>
  <tr>
    <td rowspan="4"><b>18th</b></td>
    <td rowspan="4">323</td>
    <td rowspan="4">42</td>
    <td>Female</td>
    <td>1</td>
  </tr>
  <tr>
    <td>Male</td>
    <td>41</td>
  </tr>
  <tr>
    <td>America</td>
    <td>6</td>
  </tr>
  <tr>
    <td>Europe</td>
    <td>36</td>
  </tr>
  <tr>
    <td rowspan="4"><b>15th-17th</b><br>(Golden Age)</td>
    <td rowspan="4">1088</td>
    <td rowspan="4">477</td>
    <td>Female</td>
    <td>31</td>
  </tr>
  <tr>
    <td>Male</td>
    <td>446</td>
  </tr>
  <tr>
    <td>America</td>
    <td>12</td>
  </tr>
  <tr>
    <td>Europe</td>
    <td>458 (+7)</td>
  </tr>
</table>

## Encoding

The corpus is offered as TEI-encoded files (*tei* directory) and as plain-text files (*txt* directory). In either case, poems are first grouped by period. Within each period, sonnets are grouped by author in the **per-author** directories, where each file contains all sonnets for a given author. Sonnets are also presented individually, in the **per-sonnet** directories, where each sonnet is contained in a single file. In the plain-text version, in order to group poems per author, a directory for each author was created, which contains each of that author's poems as single files.

Depending on the purpose of the research, the *per-author* or the *per-sonnet* directories will be more useful. For example, for stylometric methods or to compare the works of the same author in different genres, the researcher would prefer to work with the per-author files; but to analyse features in each poem, they would prefer the per-sonnet files. 

### TEI

The files' structure differs very little between the *per-author* and the *per-sonnet* files: the title and identification of the digital work are different, and in the per-author files there is an *lg type="sonnet"* element absent in the per-poem files. The rest of the elements and structure are shared.

Each poem is identified using ID-strings created by the project (since there is no authority file of reference for individual sonnets). Inside a sonnet, the following information has been encoded explicitly: 
* Headings
* Stanza number and type (*cuarteto, terceto*)
* Line numbers

The **order of sonnets** in the source edition has been respected in the per-author files, and can be recovered from the numeric part of file-ids in the per-sonnet files. 

In the source, sometimes there were **sonnet sequences**, i.e. when an author has written a series of sonnets as part of the same composition, under the same overall heading and with a separate heading for each sonnet in the sequence. In the per-author files, sequences have been encoded within an *lg[@type="sonnet-sequence"]* element comprising all sonnets in the sequence. In the per-sonnet files, sonnet-sequences can be recovered from the last numeric part of the file-ids.

More information about the metadata encoded in our TEI files is [below](#metadata).

### RDFa

As explained in more detail [below](#rdfa-attributes), extra attributes were added to our metadata following the [RDFa](https://rdfa.info) specification. RDFa is a way of expressing [RDF-style](https://www.w3.org/RDF/) relationships, that is, a subject--predicate--object model, using simple attributes in existing markup languages, in this case, XML-TEI. We used RDFa in order to enrich our dataset by linking to third-party ones (like [DBpedia](http://wiki.dbpedia.org/) and increase the semantic interoperability of TEI, with a view to allowing other applications to automatically use our data.

### Plain-text

A plain-text version is offered since some of our users are more comfortable with this format than with TEI. 

See [below](#metadata-in-the-plain-text-version) for details how author- and poem-metadata were made available in the plain-text version. 


## Basic Metadata

DISCO has collected several metadata about the texts and authors and made it explicit and accessible, using technologies like TEI and linked open data. The HTML sources contained relevant information for identifying author metadata, within a non-standardized text-string, which mentioned the author's place and year of birth and death, their profession etc.; the level of detail varied across authors. First, the project collected these data and identified them explicitly. Second, missing information was inferred or actively researched. For example, in some cases the original sources mentioned a city of birth, in other cases just the country. Countries and continents were added for all authors. Finally, VIAF IDs for authors were added (details below).

**These metadata make it now possible for researchers to create their own subcorpora, for example *female authors from Cuba that were born between certain years in the 19th Century*.**

In the **TEI** version of the corpus, the metadata was encoded in the TEI structure, as explained in following. For details on how metadata were made available in the **plain-text** version, see further [below](#metadata-in-the-plain-text-version). 

### Authors' biographical metadata

In TEI, biographical information about the author (whether it was found in the source, inferred or researched) is now made explicit through a *person* element in the *ParticDesc*  (participant description) declaration. Inside this element, the following information can be found:
* DISCO’s ID and VIAF’s ID when available (see [below](#viaf-ids))
* name components (personal, patronymic, particles) 
* full name as it appears in the source
* gender
* year, century, place, country and continent of birth
* year, century, place, country and continent of death
* cases in which the place of origin did not match the location where the author developed his/her literary activity, a *floruit* element was added

### VIAF IDs

The name of the author was searched programmatically against [VIAF's REST API](https://platform.worldcat.org/api-explorer/apis/VIAF/AuthorityCluster/AutoSuggest). Based on those queries, a VIAF ID was added to each author, in a *idno[@type="viaf"]* element, if an appropriate candidate was returned by VIAF's API. This element was left empty if no appropriate candidate was returned. The criteria for assigning a VIAF ID to the authors based on the API's responses were the following:

* if the name of a candidate proposed by the VIAF API and the dates of birth and death matched exactly the information in the source corpus, the VIAF ID for that candidate was added to the TEI files, together with a *@cert* attribute set to *high*. This was also done in case the original source didn't have any dates of birth and death, but the author's name matched exactly the first candidate suggested by VIAF. 
* if the name of the author matched exactly one of the candidates returend by VIAF, but the dates didn't match, the attribute *@cert* was set to *medium*
* authors that were not found in VIAF do not contain the *idno[@type="viaf"]* element. Some of these authors were manually searched later and whenever a result from VIAF was retrieved, it was introduced with a *@cert* value of *high*.
* for the remaining cases, the VIAF ID for the best candidate returned by the API was added to the TEI file, and assigned a *@cert* value of *low* 

### RDFa attributes

For biographical metadata (and to some extent for literary annotations), extra attributes were added following the [RDFa](https://rdfa.info) specification. RDFa is a way of expressing [RDF-style](https://www.w3.org/RDF/) relationships, that is, a subject--predicate--object model, using simple attributes in existing markup languages, in this case, XML-TEI. Our motivation behind the use of RDFa is, on the one hand, to enrich our dataset by linking to third-party ones (as [DBpedia](http://wiki.dbpedia.org/)), providing additional resources to complement the corpus. On the other hand, by publishing our dataset openly using standard schemas, we increased the semantic interoperability of TEI allowing third-party applications to automatically use our data. 

In order to add the RDFa layer to the TEI-encoded documents, a small number of modifications to the TEI schema were required. We decided to add the attributes *@typeOf*, *@property*, *@resource* and *@about* to the attribute class [att.global.linking](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/ref-att.global.linking.html). We considered this the less intrusive and more sustainable manner in which our goals can be achieved.

We use the attribute *@typeOf* to declare the domain of the properties defined with the attribute *@property* (these properties are generally the predicates). A subject IRI reference is indicated using *@about*. The objects which are IRI references are represented using *@resource*, whilst objects that are literals are the textual node of the element. Please see below  simplified version of our encoding with its RDF-like visualization.

```xml
<person property="dc:creator" typeOf="foaf:Person" resource="https://viaf.org/viaf/29108480">
   <persName property="foaf:name">Antonia Díaz de Lamarque</persName>
   <gender property="foaf:gender" xml:lang="en">female</gender>
</person>
```
![rdf-graph](https://sites.google.com/site/ancillaryfiles/files/rdf-graph-example.png "Visualisation of the structured data in a brief author entry")

We looked for the vocabularies that would translate more accurately the TEI semantics. To increase readability and to more easily combine different vocabularies, we used prefixes to shorten the IRIs to the appropriate term. In a similar way to our use of the RDFa attribute *@prefix*, we declared all the vocabularies inside element *listPrefixDef*, available in the TEIheader. We implemented the following vocabularies:

* [Dublin Core vocabulary](http://dublincore.org/documents/dcmi-terms/)
* [FOAF](http://xmlns.com/foaf/spec/)
* [schema.org](http://schema.org/)

Furthermore, besides linking to the VIAF and, in a small number of cases, to the [Wikidata](https://www.wikidata.org) datasets for the identification of authors, we added some links to the [esDBpedia](http://es.dbpedia.org/) dataset, so as to refer to some metrical concepts that were available in this resource.

### Other metadata

The TEIheader also encodes additional information, unavailable in the sources:
* number of sonnets contained in the file (in the per-author files this is the number of sonnets for the author in the corpus)
* number of lines and tokens
* reference to the source
* language of the text


### Metadata in the plain-text version

In the plain-text version, an external [table](https://github.com/pruizf/disco/blob/master/author_metadata.tsv) can be used to access author-metadata (dates, origin, etc.). The table's fields are explained [here](https://github.com/pruizf/disco/blob/master/metadata_fields.md). Poems' titles and IDs are encoded in the file names. The file names also encode the most basic author information: their name and author-ID in the corpus. The metadata table matches those authors' names and IDs, so that the file names can be crossed with the table. 

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

## Literary Annotations

### Scansion

Metrical scansion (i.e. weak and strong metrical syllables) were annotated with the [ADSO](https://github.com/bncolorado/adsoScansionSystem) tool (Navarro-Colorado, 2017), which specializes in Spanish fixed-meter forms, attaining a performance of 0.95 [F1](https://en.wikipedia.org/wiki/F1_score). The information was included in a *@met* attribute for each line (*l*) element. A **+** sign represents a stressed sylable and a **-** sign represents an unstressed syllable. 

### Rhyme-scheme

We performed a simple analysis of the rhyme scheme in the quatrains (the tercets were not analyzed, but this could be useful as future work).

The rhyme scheme in the quatrains in Spanish sonnets is generally ABBA (enclosed). However, alternate rhyme (ABAB) sometimes occurs. The rhyme scheme was detected using a heuristic, and encoded in the *@type* attribute of *lg* elements. The Spanish terminology was used (i.e. *cuarteto* for ABBA quatrains and *serventesio* for ABAB quatrains). 

### Enjambment

Lines were annotated for enjambment using the [ANJA tool](https://sites.google.com/site/spanishenjambment/) (Ruiz-Fabo et al., 2017). The tool detects lines where enjambment occurs and assigns an enjambment type based on a typology inspired by Quilis (1964) and Spang (1983), see [here](https://sites.google.com/site/spanishenjambment/enjambment-types) for details.

The tool’s performance at detecting lines with enjambment is above 0.8 F1. That indicates the extent to which we can be confident that, if a line bears an *@enjamb* attribute, the line is part of an enjambment.

Regarding how confident we can be on the correctness of the type of enjambment assigned by the tool, the tool's efficacy at classifying enjambment types varies depending on the period and the type itself. A *@cert* attribute specifies the expected certitude for each enjambment type annotated.

Details about the conventions used to represent enjambment types and the criteria used to choose *@cert* attribute values are given [here](https://sites.google.com/site/spanishenjambment/tei-certitude-values) at the ANJA tool's site. 


# Versions

DISCO published in October 2017 its version 1.0 containing texts from the 19th Century. In December 2017 a second version was published, which additionally contains onnets between the 15th to the 18th Century, reinforcing the corpus' diachronic dimension. The second version also contains metadata in RDFa and literary annotations for metrics and enjambment. 

# Publication and Preservation

The corpus has been published as a GitHub repository, which enables other researchers to clone, fork and keep track of changes. The data has been also kept in the [Zenodo](https://doi.org/10.5281/zenodo.1069844) project, with DOI: <https://doi.org/10.5281/zenodo.1069844>. 

# Licence and Citation

The corpus is available under: CC-BY licence


* Ruiz Fabo, Pablo, Helena Bermúdez Sabel, Clara Martínez Cantón, and José Calvo Tello. 2017. *Diachronic Spanish Sonnet Corpus* (DISCO). Madrid: UNED. <https://github.com/pruizf/disco>. [![DOI](https://zenodo.org/badge/103841064.svg)](https://zenodo.org/badge/latestdoi/103841064)


# Future Steps

* Stanza type identification will be verified manually for some uncertain cases
* For authors not present in VIAF, other datasets will be used instead to provide additional information (e.g. [Wikidata](https://www.wikidata.org) and [Bieses](http://www.bieses.net/)) 
* Publication of the corpus in HTML5+RDFa
* A search appliance for the corpus (search portal) will be considered

# References

* Agenjo, Xavier. 2015. ‘Las bibliotecas virtuales españolas y el tratamiento textual de los recursos bibliográficos.’ *Ínsula: revista de letras y ciencias humanas*, no. 822: 12–15.
* Agirrezabal, Manex (2017): *Automatic Scansion of Poetry*. PhD Thesis. University of the Basque Country.
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
* Ruiz Fabo, Pablo, Clara Martínez Cantón, Thierry Poibeau and Elena González-Blanco. (2017). Enjambment detection in a large diachronic corpus of Spanish sonnets. In *LaTeCH-CLFL 2017, Joint SIGHUM Workshop on Computational Linguistics for Cultural Heritage, Social Sciences, Humanities and Literature.* Vancouver, Canada: Association for Computational Linguistics. <https://aclweb.org/anthology/W/W17/W17-2204.pdf>
* Quilis, Antonio (1964). *Estructura del encabalgamiento en la métrica española.* Consejo Superior de Investigaciones Científicas, Patronato Menendez y Pelayo, Instituto Miguel de Cervantes.
* Santa María Fernández, María Teresa, Concepción María Jiménez Fernández, and José Calvo Tello. 2017. *Biblioteca Electrónica Textual Del Teatro Español, 1868-1936* (BETTE). Universidad Internacional de la Rioja. La Rioja. <https://github.com/GHEDI/BETTE>
* Schöch, Christof, Ulrike Henny, José Calvo Tello, and Stefanie Popp. 2015. The CLiGS Textbox. Würzburg: University of Würzburg. <https://github.com/cligs/textbox>.
* Spang, Kurt. (1983). *Ritmo y versificación: teoría y práctica del análisis métrico y rítmico.* Universidad de Murcia, Murcia.
