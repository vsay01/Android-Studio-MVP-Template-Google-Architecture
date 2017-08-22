<?xml version="1.0"?>
<recipe>
    <#include "activity_layout_recipe.xml.ftl" />

    <instantiate from="src/app_package/classes/Activity.java.ftl"
    to="${escapeXmlAttribute(srcOut)}/${className}Activity.java" />
      
    <instantiate from="src/app_package/classes/Fragment.java.ftl"
    to="${escapeXmlAttribute(srcOut)}/${className}Fragment.java" />
    
    <instantiate from="src/app_package/classes/Contract.java.ftl"
    to="${escapeXmlAttribute(srcOut)}/${className}Contract.java" />
    
    <instantiate from="src/app_package/classes/Presenter.java.ftl"
    to="${escapeXmlAttribute(srcOut)}/${className}Presenter.java" />

    <open file="${srcOut}/${className}Presenter.java"/>
</recipe>
