<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <ns prefix="tei" uri="http://www.tei-c.org/ns/1.0"/>
    <let name="prosopographyID" value="doc('../ancillary-files/prosopography.xml')//tei:person/concat('#', @xml:id)"/>
    <pattern>
        <rule context="tei:author">
            <assert test="@corresp = $prosopographyID">Author is not correctly identified in persons index</assert>
        </rule>
        <rule context="tei:person">
            <assert test="@typeOf">Missing attribute: typeOf</assert>
            <assert test="@property">Missing attribute: property</assert>
        </rule>
    </pattern>
</schema>