<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1428443789047" ID="ID_1070849714" MODIFIED="1428444034242" TEXT="Golang Basic Concurrency">
<node CREATED="1428444080498" ID="ID_1047876483" MODIFIED="1428445154448" POSITION="right" TEXT="Conclusion">
<node CREATED="1428444969822" ID="ID_583735698" MODIFIED="1428444975322" TEXT="lot of gorutines"/>
<node CREATED="1428445104830" ID="ID_1224500339" MODIFIED="1428445115706" TEXT="design for concurrency"/>
<node CREATED="1428445154450" ID="ID_1175972834" MODIFIED="1428445163562" TEXT="Rob Pike talks">
<node CREATED="1428445165006" ID="ID_945787693" MODIFIED="1428445167962" TEXT="https://talks.golang.org/2012/concurrency.slide#1"/>
<node CREATED="1428445206110" ID="ID_110073685" MODIFIED="1428445208640" TEXT="http://talks.golang.org/2013/advconc.slide#1"/>
<node CREATED="1428445235471" ID="ID_1871762860" MODIFIED="1428445245419" TEXT="https://talks.golang.org/2012/waza.slide#1">
<cloud/>
</node>
</node>
</node>
<node CREATED="1428444696494" ID="ID_416946343" MODIFIED="1428444739739" POSITION="left">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Don't communicate by sharing memory;
    </p>
    <p>
      share memory by communicating
    </p>
  </body>
</html></richcontent>
<node CREATED="1428444744526" ID="ID_848446580" MODIFIED="1428444747322" TEXT="WTF?"/>
<node CREATED="1428445099182" ID="ID_1634125336" MODIFIED="1428445100650" TEXT="https://golang.org/doc/codewalk/sharemem/"/>
</node>
<node CREATED="1428444087228" ID="ID_1378584975" MODIFIED="1428445260609" POSITION="left" TEXT="design for concurrency">
<node CREATED="1428444174526" ID="ID_805753398" MODIFIED="1428444206314" TEXT="focus on concurrent behaviours">
<node CREATED="1428445707256" ID="ID_807715256" MODIFIED="1428445710750" TEXT="http://blog.erlware.org/designing-for-actor-based-systems/"/>
<node CREATED="1428445727776" ID="ID_1247107674" MODIFIED="1428445728731" TEXT="http://www.functionalgeekery.com/episode-13-martin-j-logan/"/>
</node>
<node CREATED="1428444108545" ID="ID_1079309896" MODIFIED="1428444249930" TEXT="small simple cells/objects/actors">
<node CREATED="1428444251486" ID="ID_1931706211" MODIFIED="1428444402073" TEXT="own state"/>
<node CREATED="1428444403694" ID="ID_968498687" MODIFIED="1428444427482" TEXT="state is privated/non shared"/>
<node CREATED="1428444496510" ID="ID_674568035" MODIFIED="1428444517194" TEXT="very simple"/>
</node>
<node CREATED="1428444330030" ID="ID_1836786814" MODIFIED="1428445254758" TEXT="comunicated using messages"/>
<node CREATED="1428444115102" ID="ID_47701461" MODIFIED="1428445254758" TEXT="lot of gorutines (it is free)"/>
<node CREATED="1428444349278" ID="ID_1235564805" MODIFIED="1428444351866" TEXT="examples">
<node CREATED="1428444353198" ID="ID_849319338" MODIFIED="1428444367481" TEXT="data transformation pipelines"/>
<node CREATED="1428444369198" ID="ID_1459855307" MODIFIED="1428444371450" TEXT="workers"/>
<node CREATED="1428444435470" ID="ID_493969464" MODIFIED="1428444480970" TEXT="messaging patterns examples"/>
<node CREATED="1428445011438" ID="ID_669062735" MODIFIED="1428445028426" TEXT="web processing patterns"/>
</node>
</node>
</node>
</map>
