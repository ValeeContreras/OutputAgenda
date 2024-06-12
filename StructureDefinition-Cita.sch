<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Appointment
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Appointment</sch:title>
    <sch:rule context="f:Appointment">
      <sch:assert test="count(f:extension[@url = 'http://agenda.cl/StructureDefinition/Prestaciones']) &gt;= 1">extension with URL = 'http://agenda.cl/StructureDefinition/Prestaciones': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://agenda.cl/StructureDefinition/ApellidoServicio']) &gt;= 1">extension with URL = 'http://agenda.cl/StructureDefinition/ApellidoServicio': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://agenda.cl/StructureDefinition/ApellidoServicio']) &lt;= 1">extension with URL = 'http://agenda.cl/StructureDefinition/ApellidoServicio': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://agenda.cl/StructureDefinition/SintomasEspeciales']) &gt;= 1">extension with URL = 'http://agenda.cl/StructureDefinition/SintomasEspeciales': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://agenda.cl/StructureDefinition/UrgenciaPercibida']) &gt;= 1">extension with URL = 'http://agenda.cl/StructureDefinition/UrgenciaPercibida': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://agenda.cl/StructureDefinition/UrgenciaPercibida']) &lt;= 1">extension with URL = 'http://agenda.cl/StructureDefinition/UrgenciaPercibida': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:specialty) &gt;= 1">specialty: minimum cardinality of 'specialty' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
