<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1428443789047" ID="ID_1070849714" MODIFIED="1429028122137" TEXT="Golang Basic Concurrency">
<node CREATED="1428444080498" ID="ID_1047876483" MODIFIED="1428445154448" POSITION="right" TEXT="Conclusion">
<node CREATED="1428444969822" ID="ID_583735698" MODIFIED="1429028199057" TEXT="lot of gorutines">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1428445104830" ID="ID_1224500339" MODIFIED="1429028201991" TEXT="design for concurrency">
<icon BUILTIN="button_ok"/>
</node>
</node>
<node CREATED="1428444696494" ID="ID_416946343" MODIFIED="1429028138318" POSITION="left">
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
<node CREATED="1428569736810" ID="ID_1002110913" MODIFIED="1428569737876" TEXT="http://www.eferro.net/2014/10/verbos-vs-nombres.html"/>
</node>
<node CREATED="1428444087228" ID="ID_1378584975" MODIFIED="1428445260609" POSITION="left" TEXT="design for concurrency">
<node CREATED="1428444174526" ID="ID_805753398" MODIFIED="1429032707565" TEXT="focus on concurrent behaviours">
<icon BUILTIN="button_ok"/>
<node CREATED="1429028210676" ID="ID_1376593913" MODIFIED="1429028219954" TEXT="Vending Machine example"/>
<node CREATED="1429028222917" ID="ID_1509528072" MODIFIED="1429028307969" TEXT="Routers Monitoring"/>
</node>
<node CREATED="1428444108545" ID="ID_1079309896" MODIFIED="1428444249930" TEXT="small simple cells/objects/actors">
<node CREATED="1428444251486" ID="ID_1931706211" MODIFIED="1428444402073" TEXT="own state"/>
<node CREATED="1428444403694" ID="ID_968498687" MODIFIED="1429028685185" TEXT="state is private/non shared"/>
<node CREATED="1428444496510" ID="ID_674568035" MODIFIED="1428444517194" TEXT="very simple"/>
</node>
<node CREATED="1428444115102" ID="ID_47701461" MODIFIED="1429028765696" TEXT="lot of gorutines">
<node CREATED="1429028557764" ID="ID_1003185761" MODIFIED="1429028792840" TEXT="Errors">
<node CREATED="1429028576579" ID="ID_507337778" MODIFIED="1429028589857" TEXT="any design for reuse execution thread"/>
<node CREATED="1429028592468" ID="ID_1540625708" MODIFIED="1429028594672" TEXT="thread pools"/>
</node>
<node CREATED="1429028728563" ID="ID_947434992" MODIFIED="1429028734255" TEXT="It&apos;s free">
<node CREATED="1429028735428" ID="ID_438494604" MODIFIED="1429028736591" TEXT="Why">
<node CREATED="1429028345541" ID="ID_1371992680" MODIFIED="1429028365585" TEXT="No SO threads"/>
<node CREATED="1429028355140" ID="ID_1416996149" MODIFIED="1429028361377" TEXT="No SO processes"/>
<node CREATED="1429028368068" ID="ID_127371218" MODIFIED="1429028372608" TEXT="Green Threads"/>
<node CREATED="1429028387108" ID="ID_1529986066" MODIFIED="1429028474607" TEXT="Small mem footprint / fast creation / fast scheduling"/>
</node>
<node CREATED="1429028740820" ID="ID_614063945" MODIFIED="1429028753647" TEXT="each goroutine simple tasks"/>
</node>
</node>
<node CREATED="1428444349278" ID="ID_1235564805" MODIFIED="1428444351866" TEXT="examples">
<node CREATED="1428444353198" ID="ID_849319338" MODIFIED="1428444367481" TEXT="data transformation pipelines"/>
<node CREATED="1428444369198" ID="ID_1459855307" MODIFIED="1428444371450" TEXT="workers"/>
<node CREATED="1428444435470" ID="ID_493969464" MODIFIED="1428444480970" TEXT="messaging patterns examples"/>
<node CREATED="1428445011438" ID="ID_669062735" MODIFIED="1428445028426" TEXT="web processing patterns"/>
<node CREATED="1429028858645" ID="ID_1451441732" LINK="http://rcrowley.org/talks/strange-loop-2013.html#1" MODIFIED="1429028941840" TEXT="Patterns for scalable web services"/>
<node CREATED="1429029085396" ID="ID_517431700" LINK="http://blog.gitorious.org/2014/08/11/golang-patterns-for-serving-on-demand-generated-content/" MODIFIED="1429032733306" TEXT="patterns for serving on demand generated content"/>
</node>
</node>
<node CREATED="1429028089496" ID="ID_1729546364" MODIFIED="1429028184964" POSITION="right" TEXT="Referencias">
<node CREATED="1428445154450" ID="ID_1175972834" MODIFIED="1428445163562" TEXT="Rob Pike talks">
<node CREATED="1428445165006" ID="ID_945787693" LINK="https://talks.golang.org/2012/concurrency.slide#1" MODIFIED="1428569938649" TEXT="https://talks.golang.org/2012/concurrency.slide#1"/>
<node CREATED="1428445206110" ID="ID_110073685" MODIFIED="1428445208640" TEXT="http://talks.golang.org/2013/advconc.slide#1"/>
<node CREATED="1428445235471" ID="ID_1871762860" MODIFIED="1428569613228" TEXT="https://talks.golang.org/2012/waza.slide#1"/>
</node>
<node CREATED="1428445707256" ID="ID_807715256" MODIFIED="1429032707565" TEXT="http://blog.erlware.org/designing-for-actor-based-systems/"/>
<node CREATED="1428445727776" ID="ID_1247107674" MODIFIED="1428445728731" TEXT="http://www.functionalgeekery.com/episode-13-martin-j-logan/"/>
</node>
</node>
</map>
