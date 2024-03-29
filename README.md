# DISCO: Diachronic Spanish Sonnet Corpus
[![DOI](https://zenodo.org/badge/103841064.svg)](https://zenodo.org/badge/latestdoi/103841064)

*Let's party*

The Diachronic Spanish Sonnet Corpus (DISCO) contains sonnets in Spanish in XML-TEI, between the 15th and the 20th centuries (4530 sonnets by 1216 authors from 22 different countries). It includes well-known authors, but also less canonized ones. Texts and authors are enriched with identifiers and metadata.

The current version of the corpus is v5.0, published in February 2023. Work about the corpus presented or submitted before then refers to earlier releases, see the [release history](https://github.com/pruizf/disco/releases). 
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
   * [Resources reusing DISCO](#resources-reusing-DISCO)
   * [Future Steps](#future-steps)
   * [References](#references)
<br><br>


# Prior Collections of Texts in Spanish

A fundamental difficulty for Digital Humanities studies on Spanish literature is a scarcity of digital resources (Agenjo, 2015). 

Some resources do however exist. BiDTEA (Gago Jover et al, 2015),  ADMYTE (Marcos Marín and Faulhaber, 1992) and ReMetCa (González-Blanco and Rodríguez, 2014) have digitized Spanish Medieval texts. Navarro-Colorado et al. (2015) presented the *Corpus of Spanish Golden-Age Sonnets*.

For later periods, available collections covering different genres are Textbox (Schöch et al., 2015), BETTE (Santa María Fernández, 2017), Aracne (Álvarez Mellado and Martín-Fuertes, 2015), and Revistas Culturales 2.0 (Ehrlicher and Rißler-Pipka, 2015). Nevertheless, none of these projects are working on poetry. 

Concerning available sonnet corpora, Sonnet-Archiv (Elf Edition) is organized as a forum, and its coverage is less wide than ours. The “Sonnet Library” (Biblioteca Virtual Miguel de Cervantes, 2007) is organized alphabetically, rather than using meaningful criteria for literary scholarship, like periods. Both are traditional websites. Finally, the Corpus of Spanish Golden Age Sonnets (Navarro-Colorado et al., 2015) covers major authors from the 15th to the 17th century, with an automatic metrical annotation. Author metadata in these corpora are very limited and unavailable in a machine-readable format (see Calvo Tello, 2017, for discussion of related issues).

DISCO complements this growing ecosystem by adding a meaningful representation of sonnets from the 15th to the 19th centuries.

# Description of DISCO

Our corpus currently offers a total of 4530 sonnets in Spanish: 202 from the early-mid 20th century, 2919 from the 19th century, 321 from the 18th century and 1088 from the so-called Spanish Golden Age (15th to 17th centuries). There are a total of 1216 authors (from Spain, Latin America and the Philippines). It intends to provide a wide sample, inspired by distant reading approaches (Moretti, 2005). The raw texts were in most cases extracted from Biblioteca Virtual Miguel de Cervantes (1999), with some 18th-century texts coming from Wikisource. More specific sources were also consulted for some authors (the TEI headers always indicate the source). A table in section [Data Distribution](#data-distribution) below summarizes these data.

The corpus is available in plain-text and in TEI formats; XML-TEI P5 was used given this standard’s benefits in terms of reuse, storage, and retrieval. Author metadata were extracted or inferred from unstructured content in the sources (year, place of birth and death, and gender), and placed in the TEIheader, or in a metadata table in the case of the plain-text version. For both TEI and plain-text formats, two versions of the texts are available: one collecting every sonnet per author, the other encoding a single sonnet per file. For corpus preparation, we closely followed the TEI guidelines and RIDE’s criteria for Digital Text Collections (Henny-Krahmer and Neuber, 2017).

Additionally, authors have been assigned VIAF identifiers and described using RDFa attributes. This gives the corpus an entry-point to the Linked Open Data cloud, enhancing its findability. The corpus is available as a GitHub repository and saved in Zenodo, in response to good practices for data use, reuse, and conservation.

## Why Sonnets?

The sonnet has had great importance in European poetry; the relevance of the corpus for literary scholarship is guaranteed. It is a "manageable" form to treat computationally, obeying clear restrictions. Variability stays within bounds, making meaningful comparison across poems easier, as regards scansion or rhyme types. Besides, some digital collections of sonnets already exist (with different features than the one presented here, as discussed below) as well as automatic analyses of this form. The sonnet has received attention from the computational linguistics community (Navarro Colorado et al, 2015, 2016, 2017; Agirrezabal, 2017) including the ADSO project (Navarro Colorado 2017). The DISCO corpus will also be useful for that audience. For these reasons, a new sonnet corpus allows us to engage in a dialogue with earlier work in traditional literary studies, in digital corpus development, and in computational poetry analyses.

## Data Distribution

We describe the sources and data distribution for each subcorpus, starting in reverse chronological order with the 19th century. A table below summarizes the information. 

The **20th-century** subcorpus consists of sonnets in Spanish written by Filipino authors. This choice was made given our involvement in a project on Philippine literature in Spanish. It also responds to the corpus goal to cover a breadth of authors, including lesser-known ones. All sonnets found in *Biblioteca Virtual Miguel de Cervantes* poetry collections by Filipino authors were included in the corpus; the source volumes are specified in the corpus files. It contains 202 sonnets by 9 authors (2 female, 7 male).

The **19th-century** subcorpus contains 2919 sonnets, written by 688 authors. The main source for the corpus is the [texts](http://www.cervantesvirtual.com/obra/sonetos-del-siglo-xix--0/) at digital library *Biblioteca Virtual Miguel de Cervantes* prepared by Ramón García González in 2006. The same library is the source for sonnets by Filipino authors, and for poems by Peruvian modernista author José Santos Chocano (*Poesías Completas* volumes [1](https://www.cervantesvirtual.com/obra/poesias-completas-tomo-primero-iras-santas-en-la-aldea-azahares-selva-virgen-poemas/) and [2](https://www.cervantesvirtual.com/obra/poesias-completas-tomo-segundo-iras-santas-en-la-aldea-azahares-selva-virgen-poemas/), besides the 19th century anthology by García González just cited). We also included all sonnets by another major modernista poet, Nicaraguan author Rubén Darío; sources are specified in the TEI headers. Approximately half of the texts were written by Spanish authors, and half by Latin American authors, with Cuba as the best-represented country, followed at a large distances by Mexico, Argentina, Colombia and Puerto Rico. Some authors were born in non Spanish-speaking countries, such as Portugal, Brasil or Haiti. Two Filipino authors are represented. More than 90% of the authors are male.

Note that the 19th-century subcorpus includes about 125 sonnets by 23 authors whose production took place mainly in the early 20th century (with date of death prior to 1936). We kept these authors as they were part of the [19th-century anthology](http://www.cervantesvirtual.com/obra/sonetos-del-siglo-xix--0/) mentioned above, which is our main source for this subcorpus. We will consider creating a separate subcorpus for early 20th century literature if we more systematically collect material for the early 20th century.

The **18th century** subcorpus is based on [texts](http://www.cervantesvirtual.com/obra-visor/sonetos-del-siglo-xviii--0/html/) from *Biblioteca Virtual Miguel de Cervantes*, prepared by Ramón García González in 2005. Besides, some texts come from [Wikisource](https://es.wikisource.org/w/index.php?title=Categor%C3%ADa:Sonetos). 

The **Golden Age** subcorpus **(15th-17th centuries)** is based on [texts](http://www.cervantesvirtual.com/obra-visor/sonetos-del-siglo-xv-al-xvii--0/html/) from *Biblioteca Virtual Miguel de Cervantes* prepared by Ramón García González in 2006. For this period, we chose mostly minor authors, thus complementing Navarro Colorado's (2015) Golden Age corpus, which focuses on canonical authors.

Although overall in the corpus we deliberately included less canonical writers, less than 10% of the authors are female. An active search will be carried out to counteract this lack of diversity.

**TABLE 1: Corpus data distribution per period, author gender and primary continent of literary activity**<br>
Numbers in parentheses indicate authors which were probably active in Europe.


<table>
  <tr>
    <th rowspan="2">Period</th>
    <th rowspan="2">Nbr of Sonnets</th>
    <th colspan="5">Nbr of Authors</th>
    <th rowspan="2">Tokens</th>
  </tr>
  <tr>  
    <th colspan="2">Gender</th>
    <th colspan="2">Provenance</th>
    <th>Total</th>
  </tr>
    <tr>
    <td rowspan="2"><b>20th</b></td>
    <td rowspan="2">202</td>  
    <td>Female</td>
    <td>2</td>      
    <td rowspan="2">Asia</td>
    <td rowspan="2">9</td>
    <td rowspan="2">9</td>
    <td rowspan="2">22,300</td>
  </tr>
  <tr>
    <td>Male</td>
    <td>7</td>
  </tr> 
  <tr>
    <td rowspan="3"><b>19th</b></td>
    <td rowspan="3">2919</td>   
    <td>Female</td>
    <td>48</td>
    <td>America</td>
    <td>334</td>
    <td rowspan="3">688</td>
    <td rowspan="3">280,332</td>
  </tr>
  <tr>
    <td>Male</td>
    <td>639</td>
     <td>Europe</td>
    <td>348 (+3)</td>
  </tr>
  <tr>
    <td/>
    <td/>
    <td>Asia</td>
    <td>2</td>
  </tr>  
  <tr>
    <td rowspan="2"><b>18th</b></td>
    <td rowspan="2">321</td>   
    <td>Female</td>
    <td>1</td>
     <td>America</td>
    <td>6</td>
    <td rowspan="2">42</td>
    <td rowspan="2">29,017</td>
  </tr>
  <tr>
    <td>Male</td>
    <td>41</td>    
    <td>Europe</td>
    <td>36</td>
  </tr>
  <tr>
    <td rowspan="2"><b>15th-17th</b><br>(Golden Age)</td>
    <td rowspan="2">1088</td>   
    <td>Female</td>
    <td>31</td>
    <td>America</td>
    <td>12</td>
     <td rowspan="2">477</td>
    <td rowspan="4">99,779</td>
  </tr>
  <tr>
    <td>Male</td>
    <td>446</td>
     <td>Europe</td>
    <td>458 (+7)</td>
  </tr>   
</table>

## Encoding

The corpus is offered as TEI-encoded files (*tei* directory) and as plain-text files (*txt* directory). In either case, poems are first grouped by period. Within each period, sonnets are grouped by author in the **per-author** directories, where each file contains all sonnets for a given author. Sonnets are also presented individually, in the **per-sonnet** directories, where each sonnet is contained in a single file. In the plain-text version, in order to group poems per author, a directory for each author was created, which contains each of that author's poems as single files.

Depending on the purpose of the research, the *per-author* or the *per-sonnet* directories will be more useful. For example, for stylometric methods or to compare the works of the same author in different genres, the researcher would prefer to work with the per-author files; but to analyse features in each poem, they would prefer the per-sonnet files. 

Note that, in the TEI version, an extra directory was added, named **all-periods-per-author**. This contains all of the *per-author* TEI files regardless of period. For users who are confident with XML programming, this is likely the most efficient way to store the data, since such users can easily extract subcorpora per period, per author or according to other criteria, based on the TEI metadata.

In addition to the data partitions above, some users of the plain-text version requested that all sonnets by a given author be grouped in a single file. This file was created in a directory called *one-file-per-author*, which is located in each of the *per-author* directories for each period.

### TEI

The files' structure differs very little between the *per-author* and the *per-sonnet* files: the title and identification of the digital work are different, and in the per-author files there is an *lg type="sonnet"* element absent in the per-poem files. The rest of the elements and structure are shared.

Each poem is identified using ID-strings created by the project (since there is no authority file of reference for individual sonnets). Inside a sonnet, the following information has been encoded explicitly: 
* Headings
* Stanza number and type (*cuarteto, serventesio, terceto*)
* Prosodic information: metrical scheme (stress patterns), rhyme scheme, and enjambment

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

Note: For Filipino authors, the VIAF ID was searched manually rather than programmatically. Certitude value is always *high*

### RDFa attributes

For biographical metadata (and to some extent for literary annotations), extra attributes were added following the [RDFa](https://rdfa.info) specification. RDFa is a way of expressing [RDF-style](https://www.w3.org/RDF/) relationships, that is, a subject--predicate--object model, using simple attributes in existing markup languages, in this case, XML-TEI. Our motivation behind the use of RDFa is, on the one hand, to enrich our dataset by linking to third-party ones (as [DBpedia](http://wiki.dbpedia.org/)), providing additional resources to complement the corpus. On the other hand, by publishing our dataset openly using standard schemas, we increased the semantic interoperability of TEI allowing third-party applications to automatically use our data. 

In order to add the RDFa layer to the TEI-encoded documents, a small number of modifications to the TEI schema were required. We decided to add the attributes *@typeOf*, *@property*, *@resource* and *@about* to the attribute class [att.global.linking](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/ref-att.global.linking.html). We considered this the less intrusive and more sustainable manner in which our goals can be achieved.

We use the attribute *@typeOf* to declare the domain of the properties defined with the attribute *@property* (these properties are generally the predicates). A subject IRI reference is indicated using *@about*. The objects which are IRI references are represented using *@resource*, whilst objects that are literals are the textual node of the element. Please see below  simplified version of our encoding with its RDF-like visualization.

```xml
<person property="dc:creator" typeOf="foaf:Person" resource="https://viaf.org/viaf/29108480">
   <persName property="foaf:name">Antonia Díaz de Lamarque</persName>
   <sex property="foaf:gender" xml:lang="en">female</gender>
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

#### From [v3 release](https://github.com/pruizf/disco/releases) onwards

In the plain-text version, an external [table](https://github.com/pruizf/disco/blob/master/author_metadata.tsv) can be used to access author-metadata (dates, origin, etc.). The table's fields are explained [here](https://github.com/pruizf/disco/blob/master/author_metadata_fields.md). Poems' IDs as well their author's ID in the corpus are also encoded in the file names. The metadata table contains those authors' IDs, so that the file names can be crossed with the table. 

Here are some examples of the way file names encode IDs:

```
Template: disco{AuthorID}_{PoemID}.txt
Example: disco182n_0622.txt
```
For sonnets within a sonnet-sequence, an additional ID indicates the poem's position in the sequence:

```
Template: disco{AuthorID}_{PoemID}_{PositionInSequence}.txt
Example: disco633n_2331_03.txt
```

#### For the v2 and v1 releases

The external metadata table mentioned above for v3 was already available in v1 and v2.

However, in earlier releases, the file names also included the author names and the first characters of a poem's title; see [here](https://github.com/pruizf/disco/tree/1350233c1af8409f34b727f5396de11d4a9a4cb9) for the v2 documentation. This format gave problems for some XML editors. Accordingly, it was modified in v3, keeping only IDs rather than actual names or titles.

In order to make author and poem search easier for users of the plain-text version, a mapping was created between poem IDs, their author ID, author name, poem title and incipit. See [poem_metadata.tsv](./poem_metadata.tsv)

## Literary Annotations

### Scansion

For Filipino sonnets besides sonnets by Rubén Darío and José Santos Chocano, metrical scansion (i.e. weak and strong metrical syllables) was annotated with the [Jumper](https://github.com/grmarco/jumper) tool (Marco and Gonzalo, 2020). This attains an accuracy of 0.95. Evaluation details are in the paper just cited.

For all other cases, metrical scansion was annotated with an earlier tool, the [ADSO](https://github.com/bncolorado/adsoScansionSystem) system (Navarro-Colorado, 2017). This attains an accuracy of 0.91 on the same dataset as Jumper (reported in Marco and Gonzalo, 2020).

Metrical information was included in a *@met* attribute for each line (*l*) element. A **+** sign represents a stressed sylable and a **-** sign represents an unstressed syllable. 

### Complex meter scansion

Note that, in the v4 release, Philippine sonnets had been annotated with the [Rantanplan](https://github.com/linhd-postdata/rantanplan) tool (de la Rosa et al., 2020), whose performance on single-meter verse is similar to Jumper's (see evaluations in Marco and Gonzalo, 2020 and De la Rosa et al., 2020). However, in the case of complex-meter verse (potentially, any line of 12 or more metrical syllables in Spanish verse), Jumper performs better than Rantanplan: Marco and Gonzalo (2020) report a 17 percentage-point improvement in accuracy. Modernista verse (including the Philippine texts first added in v4, besides Rubén Darío and José Santos Chocano) does use complex meters. In order to improve their annotation, Philippine texts were reannotated with Jumper, and the same tool was used to annotate all Darío's and Chocano's sonnets.

As future work, it would be relevant to reannotate any sonnets with lines having 12 or more metrical syllables with Jumper (perhaps the entire corpus given this newer tool's better performance overall according to the papers cited above).

### Rhyme-scheme

Rhyme annotation was carried out with the [RhymeTagger](https://github.com/versotym/rhymetagger) tool (Plecháč, 2018).

Each line element (*l*) includes a *@rhyme* attribute with the label that identifies the rhyme scheme. 

### Enjambment

Lines were annotated for enjambment using the [ANJA tool](https://sites.google.com/site/spanishenjambment/) (Ruiz-Fabo et al., 2017). The tool detects lines where enjambment occurs and assigns an enjambment type based on a typology inspired by Quilis (1964) and Spang (1983), see [here](https://sites.google.com/site/spanishenjambment/enjambment-types) for details.

The tool’s performance at detecting lines with enjambment is above 0.8 F1. That indicates the extent to which we can be confident that, if a line bears an *@enjamb* attribute, the line is part of an enjambment.

Regarding how confident we can be on the correctness of the type of enjambment assigned by the tool, the tool's efficacy at classifying enjambment types varies depending on the period and the type itself. A *@cert* attribute specifies the expected certitude for each enjambment type annotated.

Details about the conventions used to represent enjambment types and the criteria used to choose *@cert* attribute values are given [here](https://sites.google.com/site/spanishenjambment/tei-certitude-values) at the ANJA tool's site. 


# Versions

DISCO published in October 2017 its **version 1.0** containing texts from the 19th Century.

In December 2017 a **second version** was published, which additionally contains onnets between the 15th to the 18th Century, reinforcing the corpus' diachronic dimension. The second version also contains metadata in RDFa and literary annotations for metrics and enjambment. 

**Version 3** was published in October 2019. The main changes are the addition of rhyme-word and rhyme-scheme annotations, besides some text corrections and markup improvements, e.g. in dialogue poems.

**Version 4** was published in December 2021. Philippine sonnets written in Spanish from the 19th and early-mid 20th century were added.

**Version 5** was published in February 2023. The focus of the release was Modernista authors from Latin America and the Philippines. Sonnets by two major Latin American Modernista authors were added: Rubén Darío (140 sonnets) and José Santos Chocano; the latter was already present in the corpus with 50 sonnets but 80 sonnets were added for him. Metrics for all these poems were annotated automatically with Jumper, and revised manually by one expert annotator.

# Publication and Preservation

The corpus has been published as a GitHub repository, which enables other researchers to clone, fork and keep track of changes. The data has been also kept in the [Zenodo](https://doi.org/10.5281/zenodo.1069844) project, with DOI: <https://doi.org/10.5281/zenodo.1012567>. 

# Licence and Citation

The corpus is available under: [CC-BY](https://creativecommons.org/licenses/by/4.0/) license. It can be cited as follows.


* Ruiz Fabo, Pablo, Helena Bermúdez Sabel, Clara Martínez Cantón, and José Calvo Tello. 2017. *Diachronic Spanish Sonnet Corpus* (DISCO). Madrid: UNED. <https://github.com/pruizf/disco>. [![DOI](https://zenodo.org/badge/103841064.svg)](https://zenodo.org/badge/latestdoi/103841064)

A journal article describing the corpus at version 2.1, which may be cited besides the corpus itself, is the following:

* Ruiz Fabo, Pablo, Helena Bermúdez Sabel, Clara Martínez Cantón, and Elena González-Blanco. (2021). The Diachronic Spanish Sonnet Corpus: TEI and linked open data encoding, data distribution, and metrical findings. Digital Scholarship in the Humanities, 36(Supplement_1), i68-i80. https://doi.org/10.1093/llc/fqaa035

# Resources reusing DISCO

The corpus is distributed under a [CC-BY](https://creativecommons.org/licenses/by/4.0/) license, using interoperable formats and rich metadata. This has facilitated the reuse of the corpus by several teams:

* 2019: Petr Plecháč trained the Spanish model for his [RhymeTagger](https://github.com/versotym/rhymetagger) tool with it
* 2021: Barbado et al. used a subset of DISCO to create the [DISCO PAL](https://github.com/AlbertoBarbado/poetry-spanish-semisupervised) dataset, featuring psychological and affect labels. Their related publication: [Barbado et al. (2021)](https://doi.org/10.1007/s10579-021-09557-1). 
* 2022: The corpus was used at the NLP hackathon organized by the _Somos NLP_ group.
  * Jorge Henao fine-tuned [GPT-2](https://huggingface.co/hackathon-pln-es/gpt2-small-spanish-disco-poetry) and [T5](https://huggingface.co/jorge-henao/spanish-t5-small-disco-poetry) models on the DISCO corpus in order to perform poetry generation in Spanish. He reformatted the dataset for hosting at Hugging Face, see [here](https://huggingface.co/datasets/hackathon-pln-es/disco_spanish_poetry). His poetry generator is [here](https://huggingface.co/spaces/hackathon-pln-es/sonnet-poetry-generator-spanish).
  * Alberto Carmona used the fine-tuned [GPT-2](https://huggingface.co/hackathon-pln-es/gpt2-small-spanish-disco-poetry) model just mentioned for a further poetry [generator](https://huggingface.co/spaces/hackathon-pln-es/poem-generation-es), which outputs text based on a specific author and with a given sentiment

# Future Steps

* Stanza type identification will be verified manually for some uncertain cases
* For authors not present in VIAF, other datasets will be used instead to provide additional information (e.g. [Wikidata](https://www.wikidata.org) and [Bieses](http://www.bieses.net/)) 
* Validation of metrical and rhyme schemes. A manual validation of metrical schemes was already carried out (relase v5) for all Filipino poems, besides poems by Darío and José Santos Chocano.

# References

* Agenjo, Xavier (2015): ‘Las bibliotecas virtuales españolas y el tratamiento textual de los recursos bibliográficos.’ *Ínsula: revista de letras y ciencias humanas*, no. 822: 12–15.
* Agirrezabal, Manex (2017): *Automatic Scansion of Poetry*. PhD Thesis. University of the Basque Country.
* Álvarez Mellado, Elena, and Leticia Martín-Fuertes (2015): *Aracne*. Madrid: Fundéu. <http://www.fundeu.es/aracne/>.
* Biblioteca Virtual Miguel de Cervantes (1999): *Biblioteca Virtual Miguel de Cervantes* <http://www.cervantesvirtual.com/>
* Biblioteca Virtual Miguel de Cervantes (2007): Biblioteca del Soneto [Sonnet Library] <http://www.cervantesvirtual.com/bib/portal/bibliotecasoneto/>
* de la Rosa, Javier., Álvaro Pérez, Laura Hernández, Salvador Ros & Elena González-Blanco. (2020). Rantanplan, Fast and Accurate Syllabification and Scansion of Spanish Poetry. *Procesamiento del Lenguaje Natural*, 83–90. https://doi.org/10.26342/2020-65-10
* Ehrlicher, Hanno, and Nanete Rißler-Pipka (2015): *Revistas Culturales 2.0*. Augsburg: Universität Augsburg. <https://www.revistas-culturales.de/es>.
* Elf Edition: Sonnet Archiv. <http://sonett-archiv.com>
* Gago Jover, Francisco (2015): “La biblioteca digital de textos del español antiguo (BiDTEA), in  *Scriptum Digital 4*: 5–36.
* González-Blanco, Elena, Rodríguez, José Luis (2014): “ReMetCa: A Proposal for Integrating RDBMS and TEI-Verse”, in *Journal of the Text Encoding Initiative 8* <https://jtei.revues.org/1274>
* Henny-Krahmer, Ulrike, and Frederike Neuber (2017): ‘Criteria for Reviewing Digital Text Collections, Version 1.0.’ *A Review Journal for Digital Editions and Resources*, no. 6. <https://www.i-d-e.de/publikationen/weitereschriften/criteria-text-collections-version-1-0/>.
* Marco, Guillermo and Julio Gonzalo. (2020). Automatic Scansion of Spanish Poetry without Syllabification. arXiv:2012.12799 [cs]. http://arxiv.org/abs/2012.12799
* Marcos Marín, Francisco and Faulhaber, Charles B. (coord.) (1992): ADMYTE. Archivo Digital de Manuscritos y Textos Españoles, in <http://www.admyte.com/admyteonline/contenido.htm>
* Moretti, Franco (2005): *Graphs, Maps, Trees: Abstract Models for a Literary History*. Verso.
* Navarro-Colorado, Borja (2017): *ADSO project – Análisis distante del soneto castellano de los Siglos de Oro [Distant analysis of the Spanish Golden Age sonnet]* <http://adso.gplsi.es/index.php/es/proyecto-adso>
* Navarro-Colorado, Borja, María Ribes Lafoz, and Noelia Sánchez (2015): *Corpus of Spanish Golden-Age Sonnets*. Alicante: University of Alicante. <https://github.com/bncolorado/CorpusSonetosSigloDeOro>.
* Navarro-Colorado, Borja, María Ribes Lafoz and Noelia Sánchez (2016): “Metrical Annotation of a Large Corpus of Spanish Sonnets: Representation, Scansion and Evaluation”, in *Proceedings of the Language Resources and Evaluation Conference*. <http://www.lrec-conf.org/proceedings/lrec2016/pdf/453_Paper.pdf>
* Navarro-Colorado, Borja (2017): “A metrical scansion system for fixed-metre Spanish poetry”, in *Digital Scholarship in the Humanities*. <https://doi.org/10.1093/llc/fqx009>
* Plecháč, Petr. (2018). A Collocation-Driven Method of Discovering Rhymes (in Czech, English, and French Poetry). In *Taming the Corpus: From Inflection and Lexis to Interpretation*. Springer, Cham. <https://link.springer.com/book/10.1007/978-3-319-98017-1>
* Ruiz Fabo, Pablo, Clara Martínez Cantón, Thierry Poibeau and Elena González-Blanco (2017): Enjambment detection in a large diachronic corpus of Spanish sonnets. In *LaTeCH-CLFL 2017, Joint SIGHUM Workshop on Computational Linguistics for Cultural Heritage, Social Sciences, Humanities and Literature.* Vancouver, Canada: Association for Computational Linguistics. <https://aclweb.org/anthology/W/W17/W17-2204.pdf>
* Ruiz Fabo, Pablo, Helena Bermúdez Sabel, Clara Martínez Cantón, and Elena González-Blanco. (2021). The Diachronic Spanish Sonnet Corpus: TEI and linked open data encoding, data distribution, and metrical findings. Digital Scholarship in the Humanities, 36(Supplement_1), i68-i80. https://doi.org/10.1093/llc/fqaa035
* Quilis, Antonio (1964): *Estructura del encabalgamiento en la métrica española.* Consejo Superior de Investigaciones Científicas, Patronato Menendez y Pelayo, Instituto Miguel de Cervantes.
* Santa María Fernández, María Teresa, Concepción María Jiménez Fernández, and José Calvo Tello (2017): *Biblioteca Electrónica Textual Del Teatro Español, 1868-1936* (BETTE). Universidad Internacional de la Rioja. La Rioja. <https://github.com/GHEDI/BETTE>
* Schöch, Christof, Ulrike Henny, José Calvo Tello, and Stefanie Popp (2015): The CLiGS Textbox. Würzburg: University of Würzburg. <https://github.com/cligs/textbox>.
* Spang, Kurt (1983): *Ritmo y versificación: teoría y práctica del análisis métrico y rítmico.* Universidad de Murcia, Murcia.
