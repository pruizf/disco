<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <ns prefix="tei" uri="http://www.tei-c.org/ns/1.0"/>
    <pattern>
        <rule context="tei:person">
            <!-- <assert test="tei:idno[@type eq 'viaf']/node()">VIAF identifier is absent</assert>-->
            <assert test="tei:sex[@content = ('F', 'M')]">Gender required</assert>
        </rule>
        <rule context="tei:placeName[parent::tei:birth]">
            <!--<assert test="tei:country/node()">Country element required</assert>-->
            <assert test="tei:bloc[. = ('América', 'Europa')]">Bloc element required</assert>
        </rule>
<!--        <rule context="tei:birth">
            <assert test="tei:placeName">Birth place?</assert>
        </rule>-->
        <rule context="tei:surname">
            <assert test="./node()"></assert>
        </rule>
    </pattern>
</schema>
