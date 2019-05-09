<?xml version="1.0"?>
<recipe>
    <#include "activity_layout_recipe.xml.ftl" />

    <instantiate from="src/app_package/classes/Activity.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${className}Activity.kt" />
      
    <instantiate from="src/app_package/classes/Fragment.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${className}Fragment.kt" />
    
    <instantiate from="src/app_package/classes/Contract.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${className}Contract.kt" />
    
    <instantiate from="src/app_package/classes/Presenter.kt.ftl"
    to="${escapeXmlAttribute(srcOut)}/${className}Presenter.kt" />

    <open file="${srcOut}/${className}Presenter.kt"/>
</recipe>
