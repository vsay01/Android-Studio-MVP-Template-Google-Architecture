<recipe>

    <instantiate from="src/app_package/layout/activity_layout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}_layout.xml" />

    <instantiate from="src/app_package/layout/fragment_layout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}_layout.xml" />

</recipe>
