



# epicmenu.conf.j2
  
---  
```

<?xml version="1.0" encoding="utf-8"?>
<xml>
    <AUTOFIND></AUTOFIND>
    <MENUHEADER>{{ EpicEnvironment['Instance'] }} Environment</MENUHEADER>
    <MENU_DEF>
        <Analyst Tools>
            <CLARITYEXPORT>
                <APPLICATION>CRPACK</APPLICATION>
                <CONFIG_DIR>/epic/{{ EpicEnvironment['Instance'] | lower }}/conf</CONFIG_DIR>
                <ENABLE_LINKABLE_TEMPLATES>0</ENABLE_LINKABLE_TEMPLATES>
                <ENVIRONMENT>{{ EpicEnvironment['Environment'] }}</ENVIRONMENT>
                <INSTANCE>{{ EpicEnvironment['Instance'] }}</INSTANCE>
                <NAME> Clarity Export</NAME>
                <ORDER>1</ORDER>
                <SHORTCUT>CX</SHORTCUT>
                <TYPE>EPIC</TYPE>
                <ZBAPPOS>1</ZBAPPOS>
            </CLARITYEXPORT>
            <EXPORTCATEGORIES>
                <APPLICATION>EACATOUT</APPLICATION>
                <CONFIG_DIR>/epic/{{ EpicEnvironment['Instance'] | lower }}/conf</CONFIG_DIR>
                <ENABLE_LINKABLE_TEMPLATES>0</ENABLE_LINKABLE_TEMPLATES>
                <ENVIRONMENT>{{ EpicEnvironment['Environment'] }}</ENVIRONMENT>
                <INSTANCE>{{ EpicEnvironment['Instance'] }}</INSTANCE>
                <NAME> Export Categories</NAME>
                <ORDER>2</ORDER>
                <SHORTCUT>EC</SHORTCUT>
                <TYPE>EPIC</TYPE>
                <ZBAPPOS>1</ZBAPPOS>
            </EXPORTCATEGORIES>
            <EXPORTRECORDS>
                <APPLICATION>main^JXPORT</APPLICATION>
                <CONFIG_DIR>/epic/{{ EpicEnvironment['Instance'] | lower }}/conf</CONFIG_DIR>
                <ENABLE_LINKABLE_TEMPLATES>0</ENABLE_LINKABLE_TEMPLATES>
                <ENVIRONMENT>{{ EpicEnvironment['Environment'] }}</ENVIRONMENT>
                <INSTANCE>{{ EpicEnvironment['Instance'] }}</INSTANCE>
                <NAME> Export Records</NAME>
                <ORDER>3</ORDER>
                <SHORTCUT>ER</SHORTCUT>
                <TYPE>EPIC</TYPE>
                <ZBAPPOS>1</ZBAPPOS>
            </EXPORTRECORDS>
            <GENERATEIMPORTSPREADSHEET>
                <APPLICATION>JXPORT</APPLICATION>
                <CONFIG_DIR>/epic/{{ EpicEnvironment['Instance'] | lower }}/conf</CONFIG_DIR>
                <ENABLE_LINKABLE_TEMPLATES>0</ENABLE_LINKABLE_TEMPLATES>
                <ENVIRONMENT>{{ EpicEnvironment['Environment'] }}</ENVIRONMENT>
                <INSTANCE>{{ EpicEnvironment['Instance'] }}</INSTANCE>
                <NAME> Generate Import Spreadsheet</NAME>
                <ORDER>4</ORDER>
                <SHORTCUT>GI</SHORTCUT>
                <TYPE>EPIC</TYPE>
                <ZBAPPOS>1</ZBAPPOS>
            </GENERATEIMPORTSPREADSHEET>
            <IMPORTCATEGORIES>
                <APPLICATION>EACATIN</APPLICATION>
                <CONFIG_DIR>/epic/{{ EpicEnvironment['Instance'] | lower }}/conf</CONFIG_DIR>
                <ENABLE_LINKABLE_TEMPLATES>0</ENABLE_LINKABLE_TEMPLATES>
                <ENVIRONMENT>{{ EpicEnvironment['Environment'] }}</ENVIRONMENT>
                <INSTANCE>{{ EpicEnvironment['Instance'] }}</INSTANCE>
                <NAME> Import Categories</NAME>
                <ORDER>5</ORDER>
                <SHORTCUT>IC</SHORTCUT>
                <TYPE>EPIC</TYPE>
                <ZBAPPOS>1</ZBAPPOS>
            </IMPORTCATEGORIES>
            <RICHTEXTCONTENTREVIEW>
                <APPLICATION>CIRPT</APPLICATION>
                <CONFIG_DIR>/epic/{{ EpicEnvironment['Instance'] | lower }}/conf</CONFIG_DIR>
                <ENABLE_LINKABLE_TEMPLATES>0</ENABLE_LINKABLE_TEMPLATES>
                <ENVIRONMENT>{{ EpicEnvironment['Environment'] }}</ENVIRONMENT>
                <INSTANCE>{{ EpicEnvironment['Instance'] }}</INSTANCE>
                <NAME> Rich Text Content Review</NAME>
                <ORDER>6</ORDER>
                <SHORTCUT>RT</SHORTCUT>
                <TYPE>EPIC</TYPE>
                <ZBAPPOS>1</ZBAPPOS>
            </RICHTEXTCONTENTREVIEW>
            <ROUTERREPOSTUTILITY>
                <APPLICATION>RepostUtil^KECRUTL16()</APPLICATION>
                <CONFIG_DIR>/epic/{{ EpicEnvironment['Instance'] | lower }}/conf</CONFIG_DIR>
                <ENABLE_LINKABLE_TEMPLATES>0</ENABLE_LINKABLE_TEMPLATES>
                <ENVIRONMENT>{{ EpicEnvironment['Environment'] }}</ENVIRONMENT>
                <INSTANCE>{{ EpicEnvironment['Instance'] }}</INSTANCE>
                <NAME> Router Repost Utility</NAME>
                <ORDER>12</ORDER>
                <SHORTCUT>RRU</SHORTCUT>
                <TYPE>EPIC</TYPE>
                <ZBAPPOS>1</ZBAPPOS>
            </ROUTERREPOSTUTILITY>
            <TESTINGTOOLMENU>
                <APPLICATION>JATMENU</APPLICATION>
                <CONFIG_DIR>/epic/{{ EpicEnvironment['Instance'] | lower }}/conf</CONFIG_DIR>
                <ENABLE_LINKABLE_TEMPLATES>0</ENABLE_LINKABLE_TEMPLATES>
                <ENVIRONMENT>{{ EpicEnvironment['Environment'] }}</ENVIRONMENT>
                <INSTANCE>{{ EpicEnvironment['Instance'] }}</INSTANCE>
                <NAME> Testing Tool Menu</NAME>
                <ORDER>11</ORDER>
                <SHORTCUT>JAT</SHORTCUT>
                <TYPE>EPIC</TYPE>
                <ZBAPPOS>1</ZBAPPOS>
            </TESTINGTOOLMENU>
            <VIEWCATEGORIES>
                <APPLICATION>EACATVW</APPLICATION>
                <CONFIG_DIR>/epic/{{ EpicEnvironment['Instance'] | lower }}/conf</CONFIG_DIR>
                <ENABLE_LINKABLE_TEMPLATES>0</ENABLE_LINKABLE_TEMPLATES>
                <ENVIRONMENT>{{ EpicEnvironment['Environment'] }}</ENVIRONMENT>
                <INSTANCE>{{ EpicEnvironment['Instance'] }}</INSTANCE>
                <NAME> View Categories</NAME>
                <ORDER>7</ORDER>
                <SHORTCUT>VC</SHORTCUT>
                <TYPE>EPIC</TYPE>
                <ZBAPPOS>1</ZBAPPOS>
            </VIEWCATEGORIES>
            <VIEWFLOWSHEETINFO>
                <APPLICATION>JEDFLOHP</APPLICATION>
                <CONFIG_DIR>/epic/{{ EpicEnvironment['Instance'] | lower }}/conf</CONFIG_DIR>
                <ENABLE_LINKABLE_TEMPLATES>0</ENABLE_LINKABLE_TEMPLATES>
                <ENVIRONMENT>{{ EpicEnvironment['Environment'] }}</ENVIRONMENT>
                <INSTANCE>{{ EpicEnvironment['Instance'] }}</INSTANCE>
                <NAME> View Flowsheet Info</NAME>
                <ORDER>8</ORDER>
                <SHORTCUT>VF</SHORTCUT>
                <TYPE>EPIC</TYPE>
                <ZBAPPOS>1</ZBAPPOS>
            </VIEWFLOWSHEETINFO>
            <VIEWRECORDS>
                <APPLICATION>all^EAVIEWID</APPLICATION>
                <CONFIG_DIR>/epic/{{ EpicEnvironment['Instance'] | lower }}/conf</CONFIG_DIR>
                <ENABLE_LINKABLE_TEMPLATES>0</ENABLE_LINKABLE_TEMPLATES>
                <ENVIRONMENT>{{ EpicEnvironment['Environment'] }}</ENVIRONMENT>
                <INSTANCE>{{ EpicEnvironment['Instance'] }}</INSTANCE>
                <NAME> View Records</NAME>
                <ORDER>9</ORDER>
                <SHORTCUT>VR</SHORTCUT>
                <TYPE>EPIC</TYPE>
                <ZBAPPOS>1</ZBAPPOS>
            </VIEWRECORDS>
            <VIEWRULELOG>
                <APPLICATION>HWKSPRULELOG</APPLICATION>
                <CONFIG_DIR>/epic/{{ EpicEnvironment['Instance'] | lower }}/conf</CONFIG_DIR>
                <ENABLE_LINKABLE_TEMPLATES>0</ENABLE_LINKABLE_TEMPLATES>
                <ENVIRONMENT>{{ EpicEnvironment['Environment'] }}</ENVIRONMENT>
                <INSTANCE>{{ EpicEnvironment['Instance'] }}</INSTANCE>
                <NAME> View Rule Log</NAME>
                <ORDER>10</ORDER>
                <SHORTCUT>VL</SHORTCUT>
                <TYPE>EPIC</TYPE>
                <ZBAPPOS>1</ZBAPPOS>
            </VIEWRULELOG>
        </Analyst Tools>
        <MAIN>
            <APPLICATION ACCESS MENU>
                <APPLICATION>EPIC</APPLICATION>
                <CONFIG_DIR>/epic/{{ EpicEnvironment['Instance'] | lower }}/conf</CONFIG_DIR>
                <ENVIRONMENT>{{ EpicEnvironment['Environment'] }}</ENVIRONMENT>
                <INSTANCE>{{ EpicEnvironment['Instance'] }}</INSTANCE>
                <NAME> Application Access Menu</NAME>
                <ORDER>1</ORDER>
                <SHORTCUT>E</SHORTCUT>
                <TYPE>EPIC</TYPE>
                <ZBAPPOS>1</ZBAPPOS>
            </APPLICATION ACCESS MENU>
            <Analyst Tools>
                <LINK>Analyst Tools</LINK>
                <NAME> Analyst Tools</NAME>
                <ORDER>4</ORDER>
                <SHORTCUT>T</SHORTCUT>
                <TYPE>SUBMENU</TYPE>
            </Analyst Tools>
            <EPIC UTILITIES>
                <APPLICATION>EPICUTILS</APPLICATION>
                <CONFIG_DIR>/epic/{{ EpicEnvironment['Instance'] | lower }}/conf</CONFIG_DIR>
                <ENVIRONMENT>{{ EpicEnvironment['Environment'] }}</ENVIRONMENT>
                <INSTANCE>{{ EpicEnvironment['Instance'] }}</INSTANCE>
                <NAME> Epic Utilities</NAME>
                <ORDER>2</ORDER>
                <SHORTCUT>U</SHORTCUT>
                <TYPE>EPIC</TYPE>
                <ZBAPPOS>1</ZBAPPOS>
            </EPIC UTILITIES>
            <HYPERSPACE CONFIGURATION>
                <APPLICATION>EDTop</APPLICATION>
                <CONFIG_DIR>/epic/{{ EpicEnvironment['Instance'] | lower }}/conf</CONFIG_DIR>
                <ENVIRONMENT>{{ EpicEnvironment['Environment'] }}</ENVIRONMENT>
                <INSTANCE>{{ EpicEnvironment['Instance'] }}</INSTANCE>
                <NAME> Hyperspace Configuration</NAME>
                <ORDER>3</ORDER>
                <SHORTCUT>H</SHORTCUT>
                <TYPE>EPIC</TYPE>
                <ZBAPPOS>1</ZBAPPOS>
            </HYPERSPACE CONFIGURATION>
            <TROUBLESHOOTING MACROS>
                <APPLICATION>LAMENU("M-505","~C")</APPLICATION>
                <ENABLE_LINKABLE_TEMPLATES>1</ENABLE_LINKABLE_TEMPLATES>
                <ENVIRONMENT>{{ EpicEnvironment['Environment'] }}</ENVIRONMENT>
                <INSTANCE>{{ EpicEnvironment['Instance'] }}</INSTANCE>
                <NAME> Troubleshooting Macros</NAME>
                <ORDER>5</ORDER>
                <SHORTCUT>TM</SHORTCUT>
                <TYPE>EPIC</TYPE>
                <ZBAPPOS>1</ZBAPPOS>
            </TROUBLESHOOTING MACROS>
            <EZMENU>
                <APPLICATION>^EZMENU</APPLICATION>
                <CONFIG_DIR>/epic/{{ EpicEnvironment['Instance'] | lower }}/conf</CONFIG_DIR>
                <ENABLE_LINKABLE_TEMPLATES>1</ENABLE_LINKABLE_TEMPLATES>
                <ENVIRONMENT>{{ EpicEnvironment['Environment'] }}</ENVIRONMENT>
                <INSTANCE>{{ EpicEnvironment['Instance'] }}</INSTANCE>
                <NAME> EZMENU</NAME>
                <ORDER>6</ORDER>
                <SHORTCUT>EM</SHORTCUT>
                <TYPE>EPIC</TYPE>
                <ZBAPPOS>1</ZBAPPOS>
            </EZMENU>
        </MAIN>
    </MENU_DEF>
</xml>  
```