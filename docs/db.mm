<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1491812991422" ID="ID_1203633332" MODIFIED="1492334118358" TEXT="DB">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      TM - tenant management
    </p>
    <p>
      AM: Auth management
    </p>
    <p>
      SM - staff management
    </p>
    <p>
      ACM - academics management
    </p>
    <p>
      SYM: Syllabus management
    </p>
    <p>
      TTM - Time table planner/management
    </p>
    <p>
      ATM: Attendance management
    </p>
    <p>
      HM: Home work management
    </p>
    <p>
      CM: Communication management
    </p>
    <p>
      NB: Notice board
    </p>
    <p>
      EM: Exam management
    </p>
    <p>
      
    </p>
    <p>
      Types of Users
    </p>
    <p>
      
    </p>
    <ol>
      <li>
        Student/Parent
      </li>
      <li>
        Teacher
      </li>
      <li>
        Staff(clerk)
      </li>
      <li>
        School Admin (owner/principal)
      </li>
      <li>
        Root User(not required as of now)
      </li>
    </ol>
    <p>
      One time activities
    </p>
    <p>
      
    </p>
    <ol>
      <li>
        State
      </li>
      <li>
        City
      </li>
      <li>
        Academic Year
      </li>
      <li>
        Email Templates
      </li>
      <li>
        SMS Templates
      </li>
      <li>
        Holidays
      </li>
      <li>
        Resources
      </li>
      <li>
        Exam Type
      </li>
    </ol>
  </body>
</html></richcontent>
<node BACKGROUND_COLOR="#94fea5" CREATED="1491988018840" FOLDED="true" HGAP="28" ID="ID_1730434729" MODIFIED="1492348003545" POSITION="right" TEXT="tm_state" VSHIFT="247">
<icon BUILTIN="go"/>
<node CREATED="1491988050311" ID="ID_1470197664" MODIFIED="1491988176603" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1470197664" ENDARROW="Default" ENDINCLINATION="160;0;" ID="Arrow_ID_1544860028" SOURCE="ID_20592787" STARTARROW="None" STARTINCLINATION="160;0;"/>
</node>
<node CREATED="1491988057382" ID="ID_1918688238" MODIFIED="1491988077179" TEXT="name: varchar(80), not null, unique"/>
<node CREATED="1491988079835" ID="ID_924469856" MODIFIED="1491988089698" TEXT="code: varchar(16), not null, unuque"/>
<node CREATED="1491988097373" ID="ID_1003614043" MODIFIED="1492322447685" TEXT="status: char(1), default A, not null">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      I: Inactive
    </p>
    <p>
      D: Deleted
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#94fea5" CREATED="1491988123318" FOLDED="true" HGAP="24" ID="ID_1606327390" MODIFIED="1492282013497" POSITION="right" TEXT="tm_city" VSHIFT="-5">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      unique(name, state)
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="go"/>
<node CREATED="1491988050311" ID="ID_353947200" MODIFIED="1491988436110" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_353947200" ENDARROW="Default" ENDINCLINATION="244;0;" ID="Arrow_ID_377102934" SOURCE="ID_882857864" STARTARROW="None" STARTINCLINATION="244;0;"/>
</node>
<node CREATED="1491988057382" ID="ID_970866963" MODIFIED="1491988181535" TEXT="name: varchar(80), not null"/>
<node CREATED="1491988164374" ID="ID_20592787" MODIFIED="1491988176603" TEXT="state: int,fk(state: id)">
<arrowlink DESTINATION="ID_1470197664" ENDARROW="Default" ENDINCLINATION="160;0;" ID="Arrow_ID_1544860028" STARTARROW="None" STARTINCLINATION="160;0;"/>
</node>
<node CREATED="1491988097373" ID="ID_585261144" MODIFIED="1491988108873" TEXT="status: char(1), default A, not null"/>
</node>
<node BACKGROUND_COLOR="#94fea5" CREATED="1475392400635" FOLDED="true" ID="ID_1216388344" MODIFIED="1492277413821" POSITION="right" TEXT="tm_address">
<icon BUILTIN="go"/>
<node CREATED="1475205425343" ID="ID_1244272406" MODIFIED="1491988706473" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1244272406" ENDARROW="Default" ENDINCLINATION="289;0;" ID="Arrow_ID_1998361773" SOURCE="ID_1914519339" STARTARROW="None" STARTINCLINATION="289;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1244272406" ENDARROW="Default" ENDINCLINATION="485;0;" ID="Arrow_ID_429208810" SOURCE="ID_868373625" STARTARROW="None" STARTINCLINATION="485;0;"/>
</node>
<node CREATED="1475205541841" ID="ID_1419564251" MODIFIED="1475392713458" TEXT="address1: varchar(80), not null"/>
<node CREATED="1475205541841" ID="ID_102608298" MODIFIED="1475394311162" TEXT="address2: varchar(80), not null"/>
<node CREATED="1475205541841" ID="ID_1355196680" MODIFIED="1475394316842" TEXT="address3: varchar(80), not null"/>
<node CREATED="1491988416242" ID="ID_882857864" MODIFIED="1491988436110" TEXT="city: int, fk(city: id), not null">
<arrowlink DESTINATION="ID_353947200" ENDARROW="Default" ENDINCLINATION="244;0;" ID="Arrow_ID_377102934" STARTARROW="None" STARTINCLINATION="244;0;"/>
</node>
<node CREATED="1475205618928" ID="ID_1681426747" MODIFIED="1491988429359" TEXT="status: char(1), not null, default A">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      I: Inactive
    </p>
    <p>
      D: Deleted
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#94fea5" CREATED="1475394899918" FOLDED="true" ID="ID_156595343" MODIFIED="1492277413821" POSITION="right" TEXT="tm_contact_number">
<icon BUILTIN="go"/>
<node CREATED="1475205425343" ID="ID_1987699903" MODIFIED="1491988801272" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1987699903" ENDARROW="Default" ENDINCLINATION="323;0;" ID="Arrow_ID_421844325" SOURCE="ID_575570427" STARTARROW="None" STARTINCLINATION="323;0;"/>
</node>
<node CREATED="1475394999444" ID="ID_1965120377" MODIFIED="1491988590443" TEXT="contact_number: varchar(20), not null, unique"/>
<node CREATED="1475205618928" ID="ID_852607818" MODIFIED="1491814766076" TEXT="status: char(1), not null, default A">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      I: Inactive
    </p>
    <p>
      D: Deleted
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#94fea5" CREATED="1492322342770" FOLDED="true" ID="ID_136767388" MODIFIED="1492322537381" POSITION="right" TEXT="tm_cast">
<icon BUILTIN="go"/>
<node CREATED="1492322393583" ID="ID_1025135253" MODIFIED="1492322534982" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1025135253" ENDARROW="Default" ENDINCLINATION="374;0;" ID="Arrow_ID_1363826172" SOURCE="ID_245049256" STARTARROW="None" STARTINCLINATION="374;0;"/>
</node>
<node CREATED="1491988057382" ID="ID_1242264187" MODIFIED="1491988077179" TEXT="name: varchar(80), not null, unique"/>
<node CREATED="1491988079835" ID="ID_1680391386" MODIFIED="1492322469574" TEXT="code: varchar(16), not null, unuque"/>
<node CREATED="1491988097373" ID="ID_1139612909" MODIFIED="1492322469580" TEXT="status: char(1), default A, not null">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      I: Inactive
    </p>
    <p>
      D: Deleted
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#94fea5" CREATED="1475205406481" FOLDED="true" HGAP="21" ID="ID_958304365" MODIFIED="1492322362604" POSITION="right" TEXT="tm_institute" VSHIFT="-20">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Table for client (coaching class/school).
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="go"/>
<node CREATED="1475205425343" ID="ID_1864710768" MODIFIED="1475811353656" TEXT="id: int, ai, pk"/>
<node CREATED="1475205541841" ID="ID_1101682600" MODIFIED="1475205566005" TEXT="name: varchar(80), not null, unique"/>
<node CREATED="1475205669138" ID="ID_319416483" MODIFIED="1475205681904" TEXT="code: varchar(48), not null, unique"/>
<node CREATED="1475205922222" ID="ID_921517942" MODIFIED="1491987515984" TEXT="sub_domain: varchar(48), not null, unique">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      sub domain for each class
    </p>
    <p>
      
    </p>
    <p>
      e.g.
    </p>
    <p>
      &#160;&#160;school1.domain.com
    </p>
    <p>
      &#160;&#160;school2.domain.com
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1475205735641" ID="ID_220300606" MODIFIED="1476363689944" TEXT="logo: varchar(80), not null">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Logo which will be displayed to all students and teachers on their dashboard
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1475206093199" ID="ID_812691571" MODIFIED="1491987539182" TEXT="type: char(S/A), not null"/>
<node CREATED="1491988270852" ID="ID_1914519339" MODIFIED="1491988486620" TEXT="address: int, fk(address: id), not null">
<arrowlink DESTINATION="ID_1244272406" ENDARROW="Default" ENDINCLINATION="289;0;" ID="Arrow_ID_1998361773" STARTARROW="None" STARTINCLINATION="289;0;"/>
</node>
<node CREATED="1475205618928" ID="ID_1746371491" MODIFIED="1492277400130" TEXT="status: char(1), not null, default A">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      I: Inactive
    </p>
    <p>
      D: Deleted
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#fef794" CREATED="1475206588678" FOLDED="true" ID="ID_1342525024" MODIFIED="1492322544349" POSITION="right" TEXT="am_user">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      have to extend django's user model
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="go"/>
<node CREATED="1475205425343" ID="ID_506772145" MODIFIED="1492505108600" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_506772145" ENDARROW="Default" ENDINCLINATION="285;0;" ID="Arrow_ID_430902311" SOURCE="ID_1875423884" STARTARROW="None" STARTINCLINATION="285;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_506772145" ENDARROW="Default" ENDINCLINATION="285;0;" ID="Arrow_ID_1188638099" SOURCE="ID_1153090154" STARTARROW="None" STARTINCLINATION="285;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_506772145" ENDARROW="Default" ENDINCLINATION="651;0;" ID="Arrow_ID_1517972009" SOURCE="ID_5068829" STARTARROW="None" STARTINCLINATION="651;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_506772145" ENDARROW="Default" ENDINCLINATION="651;0;" ID="Arrow_ID_1501461064" SOURCE="ID_10372465" STARTARROW="None" STARTINCLINATION="651;0;"/>
</node>
<node CREATED="1475206610448" ID="ID_261830528" MODIFIED="1475725921781" TEXT="username: varchar(48), unique, not null">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Its available in default djangos user model
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1475206638734" ID="ID_945247522" MODIFIED="1475206729687" TEXT="first_name: varchar(48), not null"/>
<node CREATED="1475206638734" ID="ID_1179728286" MODIFIED="1475206672952" TEXT="middle_name: varchar(48), null"/>
<node CREATED="1475206638734" ID="ID_715756600" MODIFIED="1475206685062" TEXT="last_name: varchar(48), not null"/>
<node CREATED="1475725998864" ID="ID_1515054573" MODIFIED="1475726012904" TEXT="birth_date: datetime, null"/>
<node CREATED="1475726017783" ID="ID_679357928" MODIFIED="1475726027911" TEXT="profile_pic: varchar(48), null"/>
<node CREATED="1475206868381" ID="ID_98992872" MODIFIED="1475395196101" TEXT="is_active: boolean, default True"/>
<node CREATED="1491989848884" ID="ID_1097719587" MODIFIED="1491989876564" TEXT="gender: char(2), not null">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      M: Male
    </p>
    <p>
      F: Female
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1475206886094" ID="ID_389554503" MODIFIED="1475206895813" TEXT="is_deleted: boolean, default False"/>
<node CREATED="1492322485436" ID="ID_245049256" MODIFIED="1492322534982" TEXT="cast: int, fk(tm_cast: id), null">
<arrowlink DESTINATION="ID_1025135253" ENDARROW="Default" ENDINCLINATION="374;0;" ID="Arrow_ID_1363826172" STARTARROW="None" STARTINCLINATION="374;0;"/>
</node>
</node>
<node BACKGROUND_COLOR="#fef794" CREATED="1491988615159" FOLDED="true" ID="ID_1820566652" MODIFIED="1492322354881" POSITION="right" TEXT="am_user_address_map">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      unique(user, address)
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="go"/>
<node CREATED="1491988635822" ID="ID_1875423884" MODIFIED="1491988661098" TEXT="user: int, fk(am_user: id), not null">
<arrowlink DESTINATION="ID_506772145" ENDARROW="Default" ENDINCLINATION="285;0;" ID="Arrow_ID_430902311" STARTARROW="None" STARTINCLINATION="285;0;"/>
</node>
<node CREATED="1491988683311" ID="ID_868373625" MODIFIED="1491988706474" TEXT="address: int, fk(tm_address: id), not null">
<arrowlink DESTINATION="ID_1244272406" ENDARROW="Default" ENDINCLINATION="485;0;" ID="Arrow_ID_429208810" STARTARROW="None" STARTINCLINATION="485;0;"/>
</node>
</node>
<node BACKGROUND_COLOR="#fef794" CREATED="1491988745869" FOLDED="true" ID="ID_511168289" MODIFIED="1492322354683" POSITION="right" TEXT="am_user_contact_map">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      unique(user, contact_num)
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="go"/>
<node CREATED="1491988635822" ID="ID_1153090154" MODIFIED="1491988814193" TEXT="user: int, fk(am_user: id), not null">
<arrowlink DESTINATION="ID_506772145" ENDARROW="Default" ENDINCLINATION="285;0;" ID="Arrow_ID_1188638099" STARTARROW="None" STARTINCLINATION="285;0;"/>
</node>
<node CREATED="1491988767413" ID="ID_575570427" MODIFIED="1491988801272" TEXT="contact_num: int, fk(tm_contact_number: id), not null">
<arrowlink DESTINATION="ID_1987699903" ENDARROW="Default" ENDINCLINATION="323;0;" ID="Arrow_ID_421844325" STARTARROW="None" STARTINCLINATION="323;0;"/>
</node>
<node CREATED="1492282432379" ID="ID_75670261" MODIFIED="1492282459636" TEXT="type: char(2), not null">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      P: Personal
    </p>
    <p>
      O: Office
    </p>
    <p>
      L: Land Line
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#fef794" CREATED="1479790673602" ID="ID_1496439367" MODIFIED="1492505128857" POSITION="right" TEXT="am_group">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Its djangos group model
    </p>
    <p>
      
    </p>
    <p>
      e.g. - Receptionist, Accoutant
    </p>
  </body>
</html></richcontent>
<arrowlink DESTINATION="ID_1967933908" ENDARROW="Default" ENDINCLINATION="984;0;" ID="Arrow_ID_1734518725" STARTARROW="None" STARTINCLINATION="984;0;"/>
<icon BUILTIN="go"/>
</node>
<node BACKGROUND_COLOR="#fef794" CREATED="1479790699736" ID="ID_504338868" MODIFIED="1492322354173" POSITION="right" TEXT="am_permission">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Djangos permission model
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="go"/>
</node>
<node BACKGROUND_COLOR="#fef794" CREATED="1479790719159" ID="ID_923548273" MODIFIED="1492322353962" POSITION="right" TEXT="am_group_permission_map">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Djangos group permission map table
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="go"/>
</node>
<node BACKGROUND_COLOR="#fef794" CREATED="1479790761054" ID="ID_1217484472" MODIFIED="1492322353772" POSITION="right" TEXT="am_user_group_map">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      User group map
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="go"/>
</node>
<node BACKGROUND_COLOR="#fe949d" CREATED="1475602719211" FOLDED="true" HGAP="45" ID="ID_1517393139" MODIFIED="1492320003929" POSITION="left" TEXT="acm_academic_year" VSHIFT="238">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      e.g. 2015-16, 2014-15, 2013-14
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="go"/>
<node CREATED="1475205425343" ID="ID_1058266612" MODIFIED="1491816622409" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1058266612" ENDARROW="Default" ENDINCLINATION="466;0;" ID="Arrow_ID_1888153003" SOURCE="ID_311848433" STARTARROW="None" STARTINCLINATION="466;0;"/>
</node>
<node CREATED="1475602832679" ID="ID_1762798482" MODIFIED="1491816346736" TEXT="name: varchar(12), not null, unique"/>
<node CREATED="1475205618928" ID="ID_1495112730" MODIFIED="1492271236325" TEXT="status: char(1), not null, default A">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      I: Inactive
    </p>
    <p>
      D: Deleted
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#fe949d" CREATED="1475603312205" FOLDED="true" HGAP="41" ID="ID_1709206610" MODIFIED="1492319640057" POSITION="left" TEXT="acm_subject" VSHIFT="-2">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      e.g. Mathematics, Science, History
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="go"/>
<node CREATED="1475205425343" ID="ID_1485683775" MODIFIED="1491820301638" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1485683775" ENDARROW="Default" ENDINCLINATION="259;0;" ID="Arrow_ID_755531469" SOURCE="ID_739478321" STARTARROW="None" STARTINCLINATION="259;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1485683775" ENDARROW="Default" ENDINCLINATION="399;0;" ID="Arrow_ID_341975188" SOURCE="ID_806215496" STARTARROW="None" STARTINCLINATION="399;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1485683775" ENDARROW="Default" ENDINCLINATION="497;0;" ID="Arrow_ID_892412924" SOURCE="ID_603658207" STARTARROW="None" STARTINCLINATION="497;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1485683775" ENDARROW="Default" ENDINCLINATION="294;0;" ID="Arrow_ID_795597104" SOURCE="ID_855284857" STARTARROW="None" STARTINCLINATION="294;0;"/>
</node>
<node CREATED="1475602832679" ID="ID_1515599052" MODIFIED="1491816379883" TEXT="name: varchar(80), not null, unique"/>
<node CREATED="1475205618928" ID="ID_286121711" MODIFIED="1492271742292" TEXT="status: char(1), not null, default A">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      I: Inactive
    </p>
    <p>
      D: Deleted
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#fe949d" CREATED="1477459863297" FOLDED="true" HGAP="49" ID="ID_1639454538" MODIFIED="1492277361131" POSITION="left" TEXT="acm_subject_teacher_map" VSHIFT="-3">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      unique(subject, teacher)
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="go"/>
<node CREATED="1475812249922" ID="ID_739478321" MODIFIED="1491816459708" TEXT="subject: int, fk(acm_subject: id), not null">
<arrowlink DESTINATION="ID_1485683775" ENDARROW="Default" ENDINCLINATION="259;0;" ID="Arrow_ID_755531469" STARTARROW="None" STARTINCLINATION="259;0;"/>
</node>
<node CREATED="1475813599682" ID="ID_1293063146" MODIFIED="1492271263681" TEXT="teacher: int, fk(sm_teacher: id), not null">
<arrowlink DESTINATION="ID_1681654105" ENDARROW="Default" ENDINCLINATION="833;0;" ID="Arrow_ID_1231445063" STARTARROW="None" STARTINCLINATION="833;0;"/>
</node>
</node>
<node BACKGROUND_COLOR="#fe949d" CREATED="1475603071788" FOLDED="true" HGAP="47" ID="ID_140098921" MODIFIED="1492319880840" POSITION="left" TEXT="acm_standard_template">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      e.g. 5th, 6th, 7th, 8th
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="go"/>
<node CREATED="1475205425343" ID="ID_1757961434" MODIFIED="1475836803137" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1757961434" ENDARROW="Default" ENDINCLINATION="401;0;" ID="Arrow_ID_1877609495" SOURCE="ID_796589400" STARTARROW="None" STARTINCLINATION="401;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1757961434" ENDARROW="Default" ENDINCLINATION="401;0;" ID="Arrow_ID_1200339825" SOURCE="ID_1172410115" STARTARROW="None" STARTINCLINATION="401;0;"/>
</node>
<node CREATED="1475602832679" ID="ID_1020818574" MODIFIED="1491816796340" TEXT="name: varchar(48), not null, unique"/>
<node CREATED="1491816754566" ID="ID_106056849" MODIFIED="1491816800652" TEXT="code: varchar(48), not null, unique"/>
<node CREATED="1476786632467" ID="ID_26677484" MODIFIED="1476786644576" TEXT="is_frozen: boolean , default False"/>
<node CREATED="1475205618928" ID="ID_174446557" MODIFIED="1476786644655" TEXT="status: char(1), not null, default A">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      I: Inactive
    </p>
    <p>
      D: Deleted
    </p>
    <p>
      F: Frozen
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#fe949d" CREATED="1475811414453" FOLDED="true" HGAP="41" ID="ID_297650788" MODIFIED="1492277361130" POSITION="left" TEXT="acm_standard_template_subject_map" VSHIFT="2">
<icon BUILTIN="go"/>
<node CREATED="1475812222728" ID="ID_796589400" MODIFIED="1475837358099" TEXT="standard_template: int, fk(acm_standard_template: id), not null">
<arrowlink DESTINATION="ID_1757961434" ENDARROW="Default" ENDINCLINATION="401;0;" ID="Arrow_ID_1877609495" STARTARROW="None" STARTINCLINATION="401;0;"/>
</node>
<node CREATED="1475812249922" ID="ID_806215496" MODIFIED="1491816577386" TEXT="subject: int, fk(acm_subject: id), not null">
<arrowlink DESTINATION="ID_1485683775" ENDARROW="Default" ENDINCLINATION="399;0;" ID="Arrow_ID_341975188" STARTARROW="None" STARTINCLINATION="399;0;"/>
</node>
</node>
<node BACKGROUND_COLOR="#fe949d" CREATED="1475836933192" FOLDED="true" HGAP="41" ID="ID_899039728" MODIFIED="1492320180540" POSITION="left" TEXT="acm_standard" VSHIFT="-3">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      e.g. - 8th (2015-16), 9th (2015-16), 10th (2015-16),8th (2014-15), 9th (2014-15), 10th (2014-15)
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="go"/>
<node CREATED="1475205425343" ID="ID_1587492765" MODIFIED="1491822179515" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1587492765" ENDARROW="Default" ENDINCLINATION="286;0;" ID="Arrow_ID_24281923" SOURCE="ID_392910524" STARTARROW="None" STARTINCLINATION="286;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1587492765" ENDARROW="Default" ENDINCLINATION="336;0;" ID="Arrow_ID_223282008" SOURCE="ID_1660568458" STARTARROW="None" STARTINCLINATION="336;0;"/>
</node>
<node CREATED="1475602832679" ID="ID_1016002786" MODIFIED="1491816611270" TEXT="name: varchar(80), not null, unique"/>
<node CREATED="1475812222728" ID="ID_1172410115" MODIFIED="1475837363382" TEXT="standard_template: int, fk(acm_standard_template: id), not null">
<arrowlink DESTINATION="ID_1757961434" ENDARROW="Default" ENDINCLINATION="401;0;" ID="Arrow_ID_1200339825" STARTARROW="None" STARTINCLINATION="401;0;"/>
</node>
<node CREATED="1475837373533" ID="ID_311848433" MODIFIED="1491816622409" TEXT="academic_year: int, fk(acm_academic_year: id), not null">
<arrowlink COLOR="#b0b0b0" DESTINATION="ID_1058266612" ENDARROW="Default" ENDINCLINATION="466;0;" ID="Arrow_ID_1888153003" STARTARROW="None" STARTINCLINATION="466;0;"/>
</node>
<node CREATED="1475205618928" ID="ID_1076976718" MODIFIED="1479894854002" TEXT="status: char(1), not null, default A">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      I: Inactive
    </p>
    <p>
      D: Deleted
    </p>
    <p>
      F: Frozen
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#fe949d" CREATED="1475836933192" FOLDED="true" HGAP="40" ID="ID_461265827" MODIFIED="1492319885735" POSITION="left" TEXT="acm_standard_subject_map" VSHIFT="4">
<icon BUILTIN="go"/>
<node CREATED="1475205425343" ID="ID_1246281565" MODIFIED="1492271803521" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1246281565" ENDARROW="Default" ENDINCLINATION="433;0;" ID="Arrow_ID_262573537" SOURCE="ID_10571724" STARTARROW="None" STARTINCLINATION="433;0;"/>
</node>
<node CREATED="1475837607062" ID="ID_392910524" MODIFIED="1475837627054" TEXT="standard: int, fk(acm_standard: id), not null">
<arrowlink DESTINATION="ID_1587492765" ENDARROW="Default" ENDINCLINATION="286;0;" ID="Arrow_ID_24281923" STARTARROW="None" STARTINCLINATION="286;0;"/>
</node>
<node CREATED="1475838797742" ID="ID_603658207" MODIFIED="1491816632529" TEXT="subject: int, fk(acm_subject: id), not null">
<arrowlink DESTINATION="ID_1485683775" ENDARROW="Default" ENDINCLINATION="497;0;" ID="Arrow_ID_892412924" STARTARROW="None" STARTINCLINATION="497;0;"/>
</node>
</node>
<node BACKGROUND_COLOR="#d6d2f9" CREATED="1491989193759" FOLDED="true" HGAP="33" ID="ID_424435231" MODIFIED="1492322353574" POSITION="right" TEXT="sm_staff_type" VSHIFT="20">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      e.g. Teaching, Non teaching
    </p>
    <p>
      
    </p>
    <p>
      this 'll be added default on system setup
    </p>
    <p>
      
    </p>
    <p>
      Not needed to provide any interface for managing this
    </p>
    <p>
      
    </p>
    <p>
      On create need to create corresponding group
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="go"/>
<node CREATED="1491989215286" ID="ID_568970241" MODIFIED="1491989473582" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_568970241" ENDARROW="Default" ENDINCLINATION="142;0;" ID="Arrow_ID_837250156" SOURCE="ID_148786490" STARTARROW="None" STARTINCLINATION="142;0;"/>
</node>
<node CREATED="1491989254757" ID="ID_1674635695" MODIFIED="1491989284135" TEXT="name: varchar(48), not null, unique"/>
<node CREATED="1491988079835" ID="ID_10045405" MODIFIED="1491988089698" TEXT="code: varchar(16), not null, unuque"/>
<node CREATED="1492278360430" ID="ID_1546668362" MODIFIED="1492278385597" TEXT="type: char(1), not null, default &apos;A&apos;">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      S: System
    </p>
    <p>
      A: Application
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1491988097373" ID="ID_530637255" MODIFIED="1492278375375" TEXT="status: char(1), default A, not null">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      I: Inactive
    </p>
    <p>
      D: Deleted
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#d6d2f9" CREATED="1491989434154" FOLDED="true" HGAP="28" ID="ID_263020059" MODIFIED="1492319537654" POSITION="right" TEXT="sm_staff" VSHIFT="1">
<icon BUILTIN="go"/>
<node CREATED="1491989215286" ID="ID_722675955" MODIFIED="1492319535691" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_722675955" ENDARROW="Default" ENDINCLINATION="177;0;" ID="Arrow_ID_904497575" SOURCE="ID_279494773" STARTARROW="None" STARTINCLINATION="177;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_722675955" ENDARROW="Default" ENDINCLINATION="187;0;" ID="Arrow_ID_1140722718" SOURCE="ID_1550124224" STARTARROW="None" STARTINCLINATION="187;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_722675955" ENDARROW="Default" ENDINCLINATION="777;0;" ID="Arrow_ID_469139912" SOURCE="ID_866810614" STARTARROW="None" STARTINCLINATION="777;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_722675955" ENDARROW="Default" ENDINCLINATION="867;0;" ID="Arrow_ID_1899137238" SOURCE="ID_1314493588" STARTARROW="None" STARTINCLINATION="867;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_722675955" ENDARROW="Default" ENDINCLINATION="974;0;" ID="Arrow_ID_1981697488" SOURCE="ID_1090262" STARTARROW="None" STARTINCLINATION="974;0;"/>
</node>
<node CREATED="1491989455626" ID="ID_148786490" MODIFIED="1491989473582" TEXT="staff_type: int, fk(staff_type: id), not null">
<arrowlink COLOR="#b0b0b0" DESTINATION="ID_568970241" ENDARROW="Default" ENDINCLINATION="142;0;" ID="Arrow_ID_837250156" STARTARROW="None" STARTINCLINATION="142;0;"/>
</node>
<node CREATED="1491989595032" ID="ID_60963830" MODIFIED="1491989606631" TEXT="joining_date: datetime, not null"/>
<node CREATED="1491815985131" ID="ID_5068829" MODIFIED="1491989576154" TEXT="user: int, fk(user: id)">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      OnetoOne field to user model
    </p>
  </body>
</html></richcontent>
<arrowlink DESTINATION="ID_506772145" ENDARROW="Default" ENDINCLINATION="651;0;" ID="Arrow_ID_1517972009" STARTARROW="None" STARTINCLINATION="651;0;"/>
</node>
<node CREATED="1492271656504" ID="ID_279494773" MODIFIED="1492271699013" TEXT="reporting_to: int, fk(sm_staff: id), null">
<arrowlink DESTINATION="ID_722675955" ENDARROW="Default" ENDINCLINATION="177;0;" ID="Arrow_ID_904497575" STARTARROW="None" STARTINCLINATION="177;0;"/>
</node>
</node>
<node BACKGROUND_COLOR="#d6d2f9" CREATED="1492270966542" FOLDED="true" HGAP="35" ID="ID_1192599785" MODIFIED="1492319538787" POSITION="right" TEXT="sm_teacher" VSHIFT="10">
<icon BUILTIN="go"/>
<node CREATED="1491989215286" ID="ID_1681654105" MODIFIED="1492280180466" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1681654105" ENDARROW="Default" ENDINCLINATION="833;0;" ID="Arrow_ID_1231445063" SOURCE="ID_1293063146" STARTARROW="None" STARTINCLINATION="833;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1681654105" ENDARROW="Default" ENDINCLINATION="902;0;" ID="Arrow_ID_15571051" SOURCE="ID_1176691367" STARTARROW="None" STARTINCLINATION="902;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1681654105" ENDARROW="Default" ENDINCLINATION="902;0;" ID="Arrow_ID_252639565" SOURCE="ID_511334304" STARTARROW="None" STARTINCLINATION="902;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1681654105" ENDARROW="Default" ENDINCLINATION="764;0;" ID="Arrow_ID_1229876649" SOURCE="ID_181543123" STARTARROW="None" STARTINCLINATION="764;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1681654105" ENDARROW="Default" ENDINCLINATION="840;0;" ID="Arrow_ID_1033190959" SOURCE="ID_1592746694" STARTARROW="None" STARTINCLINATION="840;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1681654105" ENDARROW="Default" ENDINCLINATION="840;0;" ID="Arrow_ID_1979357139" SOURCE="ID_36444862" STARTARROW="None" STARTINCLINATION="840;0;"/>
</node>
<node CREATED="1492270994176" ID="ID_1550124224" MODIFIED="1492271018446" TEXT="staff: int, fk(sm_staff: id), not null">
<arrowlink DESTINATION="ID_722675955" ENDARROW="Default" ENDINCLINATION="187;0;" ID="Arrow_ID_1140722718" STARTARROW="None" STARTINCLINATION="187;0;"/>
</node>
</node>
<node BACKGROUND_COLOR="#fe949d" CREATED="1475812552102" FOLDED="true" HGAP="56" ID="ID_1446602425" MODIFIED="1492334677190" POSITION="left" TEXT="acm_division" VSHIFT="10">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      unique(name, standard)
    </p>
    <p>
      e.g. 9th(2015-16)-A, 9th(2015-16)-B, 9th(2015-16)-C
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="go"/>
<node CREATED="1475205425343" ID="ID_1904693336" MODIFIED="1492334601384" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1904693336" ENDARROW="Default" ENDINCLINATION="222;0;" ID="Arrow_ID_1884456744" SOURCE="ID_1734435361" STARTARROW="None" STARTINCLINATION="222;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1904693336" ENDARROW="Default" ENDINCLINATION="315;0;" ID="Arrow_ID_1719057504" SOURCE="ID_158065377" STARTARROW="None" STARTINCLINATION="315;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1904693336" ENDARROW="Default" ENDINCLINATION="851;0;" ID="Arrow_ID_744230897" SOURCE="ID_409398781" STARTARROW="None" STARTINCLINATION="851;0;"/>
</node>
<node CREATED="1475602832679" ID="ID_1341308252" MODIFIED="1491821007282" TEXT="name: varchar(12), not null">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      automatically determined -- standard-name + acadamic year name
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1475812222728" ID="ID_1660568458" MODIFIED="1477812399366" TEXT="standard: int, fk(acm_standard: id), not null">
<arrowlink DESTINATION="ID_1587492765" ENDARROW="Default" ENDINCLINATION="336;0;" ID="Arrow_ID_223282008" STARTARROW="None" STARTINCLINATION="336;0;"/>
</node>
<node CREATED="1475205618928" ID="ID_1242775822" MODIFIED="1492317184607" TEXT="status: char(1), not null, default A">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      I: Inactive
    </p>
    <p>
      D: Deleted
    </p>
    <p>
      F: Frozen
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#fe949d" CREATED="1477479933198" FOLDED="true" HGAP="55" ID="ID_488137776" MODIFIED="1492317325855" POSITION="left" TEXT="acm_division_subject_map" VSHIFT="-7">
<icon BUILTIN="go"/>
<node CREATED="1477485846628" ID="ID_1478355089" MODIFIED="1492278107241" TEXT="id: int , ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1478355089" ENDARROW="Default" ENDINCLINATION="285;0;" ID="Arrow_ID_1446618747" SOURCE="ID_167979958" STARTARROW="None" STARTINCLINATION="285;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1478355089" ENDARROW="Default" ENDINCLINATION="394;0;" ID="Arrow_ID_814756283" SOURCE="ID_1659627002" STARTARROW="None" STARTINCLINATION="394;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1478355089" ENDARROW="Default" ENDINCLINATION="1014;0;" ID="Arrow_ID_1604632111" SOURCE="ID_1678141963" STARTARROW="None" STARTINCLINATION="1014;0;"/>
</node>
<node CREATED="1475838797742" ID="ID_855284857" MODIFIED="1475838826193" TEXT="subject: int, fk(acm_subject: id), not null">
<arrowlink DESTINATION="ID_1485683775" ENDARROW="Default" ENDINCLINATION="294;0;" ID="Arrow_ID_795597104" STARTARROW="None" STARTINCLINATION="294;0;"/>
</node>
<node CREATED="1477485897723" ID="ID_1734435361" MODIFIED="1491820175109" TEXT="division: int, fk(acm_division: id), not null">
<arrowlink DESTINATION="ID_1904693336" ENDARROW="Default" ENDINCLINATION="222;0;" ID="Arrow_ID_1884456744" STARTARROW="None" STARTINCLINATION="222;0;"/>
</node>
</node>
<node BACKGROUND_COLOR="#fe949d" CREATED="1475813502445" FOLDED="true" HGAP="55" ID="ID_1613151247" MODIFIED="1492319350128" POSITION="left" TEXT="acm_division_subject_teacher_map" VSHIFT="-10">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      unique(division_subject, teacher)
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="go"/>
<node CREATED="1475813599682" ID="ID_1176691367" MODIFIED="1492271469393" TEXT="teacher: int, fk(am_teacher: id), not null">
<arrowlink DESTINATION="ID_1681654105" ENDARROW="Default" ENDINCLINATION="902;0;" ID="Arrow_ID_15571051" STARTARROW="None" STARTINCLINATION="902;0;"/>
</node>
<node CREATED="1477487071724" ID="ID_167979958" MODIFIED="1492271458855" TEXT="division_subject: int, fk(bm_batch_subject: id), not null">
<arrowlink DESTINATION="ID_1478355089" ENDARROW="Default" ENDINCLINATION="285;0;" ID="Arrow_ID_1446618747" STARTARROW="None" STARTINCLINATION="285;0;"/>
</node>
</node>
<node BACKGROUND_COLOR="#fe949d" CREATED="1492317188988" FOLDED="true" HGAP="52" ID="ID_947855024" MODIFIED="1492317357418" POSITION="left" TEXT="acm_division_class_teacher_map" VSHIFT="-7">
<icon BUILTIN="go"/>
<node CREATED="1492317220234" ID="ID_158065377" MODIFIED="1492317244142" TEXT="division: int, fk(acm_division:id), not null">
<arrowlink DESTINATION="ID_1904693336" ENDARROW="Default" ENDINCLINATION="315;0;" ID="Arrow_ID_1719057504" STARTARROW="None" STARTINCLINATION="315;0;"/>
</node>
<node CREATED="1475813599682" ID="ID_511334304" MODIFIED="1492271469393" TEXT="teacher: int, fk(am_teacher: id), not null">
<arrowlink DESTINATION="ID_1681654105" ENDARROW="Default" ENDINCLINATION="902;0;" ID="Arrow_ID_252639565" STARTARROW="None" STARTINCLINATION="902;0;"/>
</node>
</node>
<node BACKGROUND_COLOR="#40e8da" CREATED="1475813101826" FOLDED="true" HGAP="80" ID="ID_1406548288" MODIFIED="1492282271530" POSITION="left" TEXT="sym_topic" VSHIFT="19">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      unique(standard_subject, name)
    </p>
    <p>
      
    </p>
    <p>
      e.g. Trignometry
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="go"/>
<node CREATED="1475205425343" ID="ID_1579597924" MODIFIED="1475813396966" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1579597924" ENDARROW="Default" ENDINCLINATION="244;0;" ID="Arrow_ID_1584319490" SOURCE="ID_552062165" STARTARROW="None" STARTINCLINATION="244;0;"/>
</node>
<node CREATED="1475813186578" ID="ID_789465243" MODIFIED="1475813196484" TEXT="name: varchar(80), not null"/>
<node CREATED="1475813202078" ID="ID_10571724" MODIFIED="1492271803521" TEXT="standard_subject: int, fk(acm_standard_subject_map: id), not null">
<arrowlink DESTINATION="ID_1246281565" ENDARROW="Default" ENDINCLINATION="433;0;" ID="Arrow_ID_262573537" STARTARROW="None" STARTINCLINATION="433;0;"/>
</node>
<node CREATED="1475813277741" ID="ID_270113444" MODIFIED="1475813306375" TEXT="duration: int, not null">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Duration required to teach this topic. in minutes
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1475205618928" ID="ID_1480144213" MODIFIED="1492271816895" TEXT="status: char(1), not null, default A">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      I: Inactive
    </p>
    <p>
      D: Deleted
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#40e8da" CREATED="1475813322269" FOLDED="true" HGAP="87" ID="ID_1593718731" MODIFIED="1492317203345" POSITION="left" TEXT="sym_sub_topic" VSHIFT="-49">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      unique(sm_topic, name)
    </p>
    <p>
      
    </p>
    <p>
      e.g. Derivative , integration
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="go"/>
<node CREATED="1475205425343" ID="ID_1221217368" MODIFIED="1479824317911" TEXT="id: int, ai, pk"/>
<node CREATED="1475813186578" ID="ID_1290501872" MODIFIED="1475813375893" TEXT="name: varchar(80), not null"/>
<node CREATED="1475813379369" ID="ID_552062165" MODIFIED="1491818943962" TEXT="sm_topic: int, fk(sm_topic: id), not null">
<arrowlink COLOR="#b0b0b0" DESTINATION="ID_1579597924" ENDARROW="Default" ENDINCLINATION="244;0;" ID="Arrow_ID_1584319490" STARTARROW="None" STARTINCLINATION="244;0;"/>
</node>
<node CREATED="1475205618928" ID="ID_1955380066" MODIFIED="1476722545058" TEXT="status: char(1), not null, default A">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      I: Inactive
    </p>
    <p>
      D: Deleted
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#8aa298" CREATED="1491820038142" FOLDED="true" HGAP="78" ID="ID_196966452" MODIFIED="1492280669005" POSITION="left" TEXT="ttm_resource_type" VSHIFT="-9">
<icon BUILTIN="go"/>
<node CREATED="1475915510894" ID="ID_1713056640" MODIFIED="1491822041729" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1713056640" ENDARROW="Default" ENDINCLINATION="193;0;" ID="Arrow_ID_1057300378" SOURCE="ID_913479558" STARTARROW="None" STARTINCLINATION="193;0;"/>
</node>
<node CREATED="1475933794475" ID="ID_1411178392" MODIFIED="1491820065550" TEXT="name: varchar(48), not null, unique"/>
<node CREATED="1475205618928" ID="ID_1290202415" MODIFIED="1475934151205" TEXT="status: char(1), not null, default A">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      I: Inactive
    </p>
    <p>
      D: Deleted
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#8aa298" CREATED="1491820038142" FOLDED="true" HGAP="76" ID="ID_1116040218" MODIFIED="1492279233870" POSITION="left" TEXT="ttm_resource" VSHIFT="2">
<icon BUILTIN="go"/>
<node CREATED="1475915510894" ID="ID_329941298" MODIFIED="1491820379116" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_329941298" ENDARROW="Default" ENDINCLINATION="285;0;" ID="Arrow_ID_1597999425" SOURCE="ID_715658062" STARTARROW="None" STARTINCLINATION="285;0;"/>
</node>
<node CREATED="1475933794475" ID="ID_624600442" MODIFIED="1491820094447" TEXT="name: varchar(48), not null"/>
<node CREATED="1491820097581" ID="ID_913479558" MODIFIED="1491820120977" TEXT="resource_type: int, fk(tp_resource_type: id)">
<arrowlink DESTINATION="ID_1713056640" ENDARROW="Default" ENDINCLINATION="193;0;" ID="Arrow_ID_1057300378" STARTARROW="None" STARTINCLINATION="193;0;"/>
</node>
<node CREATED="1475205618928" ID="ID_1555859521" MODIFIED="1491820117696" TEXT="status: char(1), not null, default A">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      I: Inactive
    </p>
    <p>
      D: Deleted
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#8aa298" CREATED="1491820318321" FOLDED="true" HGAP="82" ID="ID_570740687" MODIFIED="1492279235161" POSITION="left" TEXT="ttm_lecture_resource_map" VSHIFT="-5">
<icon BUILTIN="go"/>
<node CREATED="1491820337185" ID="ID_1594793882" MODIFIED="1492279197259" TEXT="lecture: int, fk(tp_lecture: id), not null">
<arrowlink DESTINATION="ID_250221796" ENDARROW="Default" ENDINCLINATION="230;0;" ID="Arrow_ID_561779983" STARTARROW="None" STARTINCLINATION="230;0;"/>
</node>
<node CREATED="1491820357992" ID="ID_715658062" MODIFIED="1491820379117" TEXT="resource: int, fk(tp_resource: id), not null">
<arrowlink DESTINATION="ID_329941298" ENDARROW="Default" ENDINCLINATION="285;0;" ID="Arrow_ID_1597999425" STARTARROW="None" STARTINCLINATION="285;0;"/>
</node>
</node>
<node BACKGROUND_COLOR="#8aa298" CREATED="1492315304566" FOLDED="true" HGAP="84" ID="ID_489703897" MODIFIED="1492315405001" POSITION="left" TEXT="holiday" VSHIFT="5">
<icon BUILTIN="go"/>
<node CREATED="1492315323434" ID="ID_230582529" MODIFIED="1492315330461" TEXT="id: int, ai,pk"/>
<node CREATED="1492315334524" ID="ID_1619774194" MODIFIED="1492315376625" TEXT="date: datetime, not null, unique"/>
<node CREATED="1492315350578" ID="ID_662540157" MODIFIED="1492315365219" TEXT="text: varchar(255), not null"/>
<node CREATED="1475205618928" ID="ID_1974653194" MODIFIED="1492315365313" TEXT="status: char(1), not null, default A">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      I: Inactive
    </p>
    <p>
      D: Deleted
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#8aa298" CREATED="1492277746708" FOLDED="true" HGAP="86" ID="ID_1085172620" MODIFIED="1492317202512" POSITION="left" TEXT="ttm_lecture" VSHIFT="-30">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      unique(name, division)
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="go"/>
<node CREATED="1475205425343" ID="ID_250221796" MODIFIED="1492279197259" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_250221796" ENDARROW="Default" ENDINCLINATION="230;0;" ID="Arrow_ID_561779983" SOURCE="ID_1594793882" STARTARROW="None" STARTINCLINATION="230;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_250221796" ENDARROW="Default" ENDINCLINATION="290;0;" ID="Arrow_ID_76583346" SOURCE="ID_1984282513" STARTARROW="None" STARTINCLINATION="290;0;"/>
</node>
<node CREATED="1492277786519" ID="ID_1417715167" MODIFIED="1492277798956" TEXT="name: varchar(80), not null"/>
<node CREATED="1492278009773" ID="ID_181543123" MODIFIED="1492279048716" TEXT="allocated_to: int,fk(sm_teacher: id)">
<arrowlink DESTINATION="ID_1681654105" ENDARROW="Default" ENDINCLINATION="764;0;" ID="Arrow_ID_1229876649" STARTARROW="None" STARTINCLINATION="764;0;"/>
</node>
<node CREATED="1492278050643" ID="ID_1659627002" MODIFIED="1492278107241" TEXT="division_subject: int, fk(division_subject: id)">
<arrowlink DESTINATION="ID_1478355089" ENDARROW="Default" ENDINCLINATION="394;0;" ID="Arrow_ID_814756283" STARTARROW="None" STARTINCLINATION="394;0;"/>
</node>
<node CREATED="1492278192880" ID="ID_112523298" MODIFIED="1492278681909" TEXT="start_time: datetime, not null"/>
<node CREATED="1492278211702" ID="ID_1574205941" MODIFIED="1492278692871" TEXT="end_time: datetime, not null"/>
<node CREATED="1475205618928" ID="ID_685566854" MODIFIED="1492277939755" TEXT="status: char(1), not null, default A">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      I: Inactive
    </p>
    <p>
      D: Deleted
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#8a427f" CREATED="1491818175700" FOLDED="true" HGAP="97" ID="ID_1443386810" MODIFIED="1492281778473" POSITION="left" TEXT="stm_student" VSHIFT="-5">
<icon BUILTIN="go"/>
<node CREATED="1475205425343" ID="ID_1925000247" MODIFIED="1492281888617" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1925000247" ENDARROW="Default" ENDINCLINATION="188;0;" ID="Arrow_ID_1988070654" SOURCE="ID_1082014886" STARTARROW="None" STARTINCLINATION="188;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1925000247" ENDARROW="Default" ENDINCLINATION="865;0;" ID="Arrow_ID_1199479262" SOURCE="ID_1531889825" STARTARROW="None" STARTINCLINATION="865;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1925000247" ENDARROW="Default" ENDINCLINATION="816;0;" ID="Arrow_ID_1207632484" SOURCE="ID_130714511" STARTARROW="None" STARTINCLINATION="816;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1925000247" ENDARROW="Default" ENDINCLINATION="278;0;" ID="Arrow_ID_857755227" SOURCE="ID_864417780" STARTARROW="None" STARTINCLINATION="278;0;"/>
</node>
<node CREATED="1491815985131" ID="ID_10372465" MODIFIED="1491816004507" TEXT="user: int, fk(user: id)">
<arrowlink DESTINATION="ID_506772145" ENDARROW="Default" ENDINCLINATION="651;0;" ID="Arrow_ID_1501461064" STARTARROW="None" STARTINCLINATION="651;0;"/>
</node>
<node CREATED="1491816051838" ID="ID_1734577528" MODIFIED="1491818203662" TEXT="registration_no: varchar(80), not null, unique"/>
<node CREATED="1491819402120" ID="ID_1691316906" MODIFIED="1491819428770" TEXT="admission_date: datetime, not null"/>
</node>
<node BACKGROUND_COLOR="#8a427f" CREATED="1491819238523" FOLDED="true" HGAP="96" ID="ID_1982665912" MODIFIED="1492322677328" POSITION="left" TEXT="stm_student_division_map" VSHIFT="-3">
<icon BUILTIN="go"/>
<node CREATED="1492279353925" ID="ID_1450676557" MODIFIED="1492279371726" TEXT="id: int, pk, ai, not nulll"/>
<node CREATED="1491819472463" ID="ID_744758365" MODIFIED="1491819484017" TEXT="passout_date: datetime, null"/>
<node CREATED="1491819315425" ID="ID_1082014886" MODIFIED="1492279376388" TEXT="student: int, fk(student: id)">
<arrowlink DESTINATION="ID_1925000247" ENDARROW="Default" ENDINCLINATION="188;0;" ID="Arrow_ID_1988070654" STARTARROW="None" STARTINCLINATION="188;0;"/>
</node>
<node CREATED="1491819335105" ID="ID_409398781" MODIFIED="1492279376387" TEXT="division: int, fk(division: id)">
<arrowlink DESTINATION="ID_1904693336" ENDARROW="Default" ENDINCLINATION="851;0;" ID="Arrow_ID_744230897" STARTARROW="None" STARTINCLINATION="851;0;"/>
</node>
<node CREATED="1492322634221" ID="ID_1100447480" MODIFIED="1492322655898" TEXT="total_fees: decimal, null"/>
<node CREATED="1492320210788" ID="ID_577227543" MODIFIED="1492320223071" TEXT="roll_no:varchar(8), not null, unique"/>
</node>
<node BACKGROUND_COLOR="#a49a4a" CREATED="1492280259708" FOLDED="true" HGAP="29" ID="ID_962967072" MODIFIED="1492322352979" POSITION="right" TEXT="hm_homework_type" VSHIFT="24">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      unique(name, division_subject)
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="go"/>
<node CREATED="1492280280117" ID="ID_164406160" MODIFIED="1492280528883" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_164406160" ENDARROW="Default" ENDINCLINATION="299;0;" ID="Arrow_ID_561294972" SOURCE="ID_1526922890" STARTARROW="None" STARTINCLINATION="299;0;"/>
</node>
<node CREATED="1492280291189" ID="ID_1221088565" MODIFIED="1492280353910" TEXT="name: varchar(48), not null, unique"/>
<node CREATED="1475934121541" ID="ID_1678141963" MODIFIED="1491821006675" TEXT="division_subject: int, fk(acm_division_subject: id), not null">
<arrowlink DESTINATION="ID_1478355089" ENDARROW="Default" ENDINCLINATION="1014;0;" ID="Arrow_ID_1604632111" STARTARROW="None" STARTINCLINATION="1014;0;"/>
</node>
<node CREATED="1491820429703" ID="ID_1592746694" MODIFIED="1492280456178" TEXT="created_by: int, fk(sm_teacher: id), not null">
<arrowlink DESTINATION="ID_1681654105" ENDARROW="Default" ENDINCLINATION="840;0;" ID="Arrow_ID_1033190959" STARTARROW="None" STARTINCLINATION="840;0;"/>
</node>
<node CREATED="1475205618928" ID="ID_1897550022" MODIFIED="1492315852173" TEXT="status: char(1), not null, default A">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      I: Inactive
    </p>
    <p>
      D: Deleted
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#a49a4a" CREATED="1475933980367" FOLDED="true" HGAP="31" ID="ID_1967861894" MODIFIED="1492320366381" POSITION="right" TEXT="hm_homework" VSHIFT="6">
<icon BUILTIN="go"/>
<node CREATED="1475915510894" ID="ID_1408909759" MODIFIED="1492315657707" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1408909759" ENDARROW="Default" ENDINCLINATION="331;0;" ID="Arrow_ID_1811049046" SOURCE="ID_729580629" STARTARROW="None" STARTINCLINATION="331;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1408909759" ENDARROW="Default" ENDINCLINATION="381;0;" ID="Arrow_ID_1865218611" SOURCE="ID_1997784937" STARTARROW="None" STARTINCLINATION="381;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1408909759" ENDARROW="Default" ENDINCLINATION="381;0;" ID="Arrow_ID_724149585" SOURCE="ID_1152505000" STARTARROW="None" STARTINCLINATION="381;0;"/>
</node>
<node CREATED="1475933794475" ID="ID_317630694" MODIFIED="1491821120992" TEXT="text: TextField, not null"/>
<node CREATED="1475934018421" ID="ID_588370044" MODIFIED="1491821109168" TEXT="given_date: datetime, not null"/>
<node CREATED="1475934029871" ID="ID_1158043142" MODIFIED="1491821130333" TEXT="submission_date: datetime, not null"/>
<node CREATED="1491820429703" ID="ID_36444862" MODIFIED="1492280180467" TEXT="teacher: int, fk(sm_teacher: id), not null">
<arrowlink DESTINATION="ID_1681654105" ENDARROW="Default" ENDINCLINATION="840;0;" ID="Arrow_ID_1979357139" STARTARROW="None" STARTINCLINATION="840;0;"/>
</node>
<node CREATED="1492280497736" ID="ID_1526922890" MODIFIED="1492280533499" TEXT="homework_type: int, fk(hm_homework_type: id)">
<arrowlink DESTINATION="ID_164406160" ENDARROW="Default" ENDINCLINATION="299;0;" ID="Arrow_ID_561294972" STARTARROW="None" STARTINCLINATION="299;0;"/>
</node>
<node CREATED="1475205618928" ID="ID_1119666520" MODIFIED="1492315868008" TEXT="status: char(1), not null, default A">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      I: Inactive
    </p>
    <p>
      D: Deleted
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#a49a4a" CREATED="1491821142718" FOLDED="true" HGAP="37" ID="ID_9147965" MODIFIED="1492320368694" POSITION="right" TEXT="hm_homework_student_map" VSHIFT="-16">
<icon BUILTIN="go"/>
<node CREATED="1475915510894" ID="ID_1790657551" MODIFIED="1491821162582" TEXT="id: int, ai, pk"/>
<node CREATED="1491821172437" ID="ID_729580629" MODIFIED="1491821543962" TEXT="home_work: int, fk(hm_homework: id), not null">
<arrowlink DESTINATION="ID_1408909759" ENDARROW="Default" ENDINCLINATION="331;0;" ID="Arrow_ID_1811049046" STARTARROW="None" STARTINCLINATION="331;0;"/>
</node>
<node CREATED="1475934935734" ID="ID_1531889825" MODIFIED="1491820655281" TEXT="student: int, fk(stm_student: id), not null">
<arrowlink COLOR="#b0b0b0" DESTINATION="ID_1925000247" ENDARROW="Default" ENDINCLINATION="865;0;" ID="Arrow_ID_1199479262" STARTARROW="None" STARTINCLINATION="865;0;"/>
</node>
<node CREATED="1492320343853" ID="ID_1036042" MODIFIED="1492320357139" TEXT="submitted_at:datetime, null"/>
<node CREATED="1475205618928" ID="ID_1476389180" MODIFIED="1492320357145" TEXT="status: char(1), not null, default A">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      C: Completed
    </p>
    <p>
      N: Not completed
    </p>
    <p>
      P: Partially completed
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#a49a4a" CREATED="1492315444702" FOLDED="true" HGAP="37" ID="ID_1076930699" MODIFIED="1492315680085" POSITION="right" TEXT="hm_homework_image" VSHIFT="-21">
<icon BUILTIN="go"/>
<node CREATED="1492315468669" ID="ID_1555662055" MODIFIED="1492315803514" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1555662055" ENDARROW="Default" ENDINCLINATION="340;0;" ID="Arrow_ID_1889087152" SOURCE="ID_1035643612" STARTARROW="None" STARTINCLINATION="340;0;"/>
</node>
<node CREATED="1492315513311" ID="ID_924642410" MODIFIED="1492315619574" TEXT="image: imagefield, not null"/>
<node CREATED="1475205618928" ID="ID_39740244" MODIFIED="1492315509688" TEXT="status: char(1), not null, default A">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      I: Inactive
    </p>
    <p>
      D: Deleted
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#a49a4a" CREATED="1492315541839" FOLDED="true" HGAP="42" ID="ID_1341394725" MODIFIED="1492315680085" POSITION="right" TEXT="hm_homework_image_map" VSHIFT="-16">
<icon BUILTIN="go"/>
<node CREATED="1492315577432" ID="ID_1035643612" MODIFIED="1492315759955" TEXT="homework_image: int, fk(hm_homework_image: id), not null">
<arrowlink DESTINATION="ID_1555662055" ENDARROW="Default" ENDINCLINATION="340;0;" ID="Arrow_ID_1889087152" STARTARROW="None" STARTINCLINATION="340;0;"/>
</node>
<node CREATED="1492315630756" ID="ID_1997784937" MODIFIED="1492315657708" TEXT="homework: int, fk(hm_homework: id">
<arrowlink DESTINATION="ID_1408909759" ENDARROW="Default" ENDINCLINATION="381;0;" ID="Arrow_ID_1865218611" STARTARROW="None" STARTINCLINATION="381;0;"/>
</node>
</node>
<node BACKGROUND_COLOR="#a49a4a" CREATED="1492315444702" FOLDED="true" HGAP="37" ID="ID_321565749" MODIFIED="1492315814214" POSITION="right" TEXT="hm_homework_file" VSHIFT="-21">
<icon BUILTIN="go"/>
<node CREATED="1492315468669" ID="ID_1358281862" MODIFIED="1492315810552" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1358281862" ENDARROW="Default" ENDINCLINATION="302;0;" ID="Arrow_ID_1740439524" SOURCE="ID_77880884" STARTARROW="None" STARTINCLINATION="302;0;"/>
</node>
<node CREATED="1492315513311" ID="ID_279721292" MODIFIED="1492315756383" TEXT="file: filefield, not null"/>
<node CREATED="1475205618928" ID="ID_1677328101" MODIFIED="1492315509688" TEXT="status: char(1), not null, default A">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      I: Inactive
    </p>
    <p>
      D: Deleted
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#a49a4a" CREATED="1492315541839" FOLDED="true" HGAP="42" ID="ID_629204418" MODIFIED="1492315815571" POSITION="right" TEXT="hm_homework_file_map" VSHIFT="-16">
<icon BUILTIN="go"/>
<node CREATED="1492315577432" ID="ID_77880884" MODIFIED="1492315810553" TEXT="homework_file: int, fk(hm_homework_file: id), not null">
<arrowlink DESTINATION="ID_1358281862" ENDARROW="Default" ENDINCLINATION="302;0;" ID="Arrow_ID_1740439524" STARTARROW="None" STARTINCLINATION="302;0;"/>
</node>
<node CREATED="1492315630756" ID="ID_1152505000" MODIFIED="1492315657708" TEXT="homework: int, fk(hm_homework: id">
<arrowlink DESTINATION="ID_1408909759" ENDARROW="Default" ENDINCLINATION="381;0;" ID="Arrow_ID_724149585" STARTARROW="None" STARTINCLINATION="381;0;"/>
</node>
</node>
<node BACKGROUND_COLOR="#f67c0a" CREATED="1475934393563" FOLDED="true" HGAP="39" ID="ID_1591729288" MODIFIED="1492348125740" POSITION="right" TEXT="atm_student_attendance" VSHIFT="12">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      unique(lecture, student, date)
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="go"/>
<node CREATED="1475915510894" ID="ID_1879831804" MODIFIED="1475933822794" TEXT="id: int, ai, pk"/>
<node CREATED="1475934433283" ID="ID_606242184" MODIFIED="1492278773158" TEXT="in_time: datetime, null"/>
<node CREATED="1475934433283" ID="ID_1017926681" MODIFIED="1492278778190" TEXT="out_time: datetime, null"/>
<node CREATED="1491821331155" ID="ID_1134268534" MODIFIED="1491821338664" TEXT="date: datetime. not null"/>
<node CREATED="1492278821336" ID="ID_1984282513" MODIFIED="1492278844786" TEXT="lecture: int, fk(ttm_lecture: id)">
<arrowlink DESTINATION="ID_250221796" ENDARROW="Default" ENDINCLINATION="290;0;" ID="Arrow_ID_76583346" STARTARROW="None" STARTINCLINATION="290;0;"/>
</node>
<node CREATED="1492278850197" ID="ID_130714511" MODIFIED="1492278886293" TEXT="student: int, fk(stm_student :id), not null">
<arrowlink COLOR="#b0b0b0" DESTINATION="ID_1925000247" ENDARROW="Default" ENDINCLINATION="816;0;" ID="Arrow_ID_1207632484" STARTARROW="None" STARTINCLINATION="816;0;"/>
</node>
<node CREATED="1492278905976" ID="ID_1730738610" MODIFIED="1492278951362" TEXT="type: char(1), not null">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      P: Present
    </p>
    <p>
      A: Absent
    </p>
    <p>
      L : On Leave
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#f67c0a" CREATED="1492281265020" FOLDED="true" HGAP="39" ID="ID_464304164" MODIFIED="1492348134935" POSITION="right" TEXT="atm_staff_attendance" VSHIFT="-2">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      unique(staff, date)
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="go"/>
<node CREATED="1475915510894" ID="ID_1051705631" MODIFIED="1475933822794" TEXT="id: int, ai, pk"/>
<node CREATED="1491821331155" ID="ID_405038007" MODIFIED="1491821338664" TEXT="date: datetime. not null"/>
<node CREATED="1492281296848" ID="ID_866810614" MODIFIED="1492281325261" TEXT="staff: int, fk(stm_staff: id)">
<arrowlink DESTINATION="ID_722675955" ENDARROW="Default" ENDINCLINATION="777;0;" ID="Arrow_ID_469139912" STARTARROW="None" STARTINCLINATION="777;0;"/>
</node>
<node CREATED="1475934433283" ID="ID_1571335650" MODIFIED="1492278773158" TEXT="in_time: datetime, null"/>
<node CREATED="1475934433283" ID="ID_466621963" MODIFIED="1492278778190" TEXT="out_time: datetime, null"/>
<node CREATED="1492278905976" ID="ID_1515500229" MODIFIED="1492281528527" TEXT="type: char(1), not null">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      P: Present
    </p>
    <p>
      A: Absent
    </p>
    <p>
      L : On Leave
    </p>
    <p>
      H: Half Day
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#f67c0a" CREATED="1492281597442" FOLDED="true" HGAP="39" ID="ID_677043462" MODIFIED="1492348130948" POSITION="right" TEXT="atm_student_leave_application" VSHIFT="1">
<icon BUILTIN="go"/>
<node CREATED="1475915510894" ID="ID_1129806224" MODIFIED="1475933822794" TEXT="id: int, ai, pk"/>
<node CREATED="1491821331155" ID="ID_1203753698" MODIFIED="1492281634582" TEXT="from_date: datetime. not null"/>
<node CREATED="1491821331155" ID="ID_1941073327" MODIFIED="1492281646995" TEXT="to_date: datetime. not null"/>
<node CREATED="1492281696280" ID="ID_864417780" MODIFIED="1492281774532" STYLE="fork" TEXT="student: int, fk(student: id), not null">
<arrowlink DESTINATION="ID_1925000247" ENDARROW="Default" ENDINCLINATION="278;0;" ID="Arrow_ID_857755227" STARTARROW="None" STARTINCLINATION="278;0;"/>
</node>
<node CREATED="1492281829682" ID="ID_360773093" MODIFIED="1492281840750" TEXT="reason: varchar(255), not null"/>
<node CREATED="1492281656193" ID="ID_393202013" MODIFIED="1492281690185" TEXT="status: char(1), not null">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      P: Pending
    </p>
    <p>
      R: Rejected
    </p>
    <p>
      A: Approved
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#f67c0a" CREATED="1492281597442" FOLDED="true" HGAP="40" ID="ID_860963767" MODIFIED="1492316346354" POSITION="right" STYLE="fork" TEXT="atm_staff_leave_application" VSHIFT="-28">
<icon BUILTIN="go"/>
<node CREATED="1475915510894" ID="ID_275320941" MODIFIED="1492281851755" TEXT="id: int, ai, pk"/>
<node CREATED="1491821331155" ID="ID_369016758" MODIFIED="1492281634582" TEXT="from_date: datetime. not null"/>
<node CREATED="1491821331155" ID="ID_91104633" MODIFIED="1492281646995" TEXT="to_date: datetime. not null"/>
<node CREATED="1492281696280" ID="ID_1314493588" MODIFIED="1492281921960" STYLE="fork" TEXT="staff: int, fk(staff: id), not null">
<arrowlink DESTINATION="ID_722675955" ENDARROW="Default" ENDINCLINATION="867;0;" ID="Arrow_ID_1899137238" STARTARROW="None" STARTINCLINATION="867;0;"/>
</node>
<node CREATED="1492281829682" ID="ID_1779519755" MODIFIED="1492281848178" TEXT="reason: varchar(255), not null"/>
<node CREATED="1492281656193" ID="ID_782364136" MODIFIED="1492281848189" TEXT="status: char(1), not null">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      P: Pending
    </p>
    <p>
      R: Rejected
    </p>
    <p>
      A: Approved
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#7cb7d2" CREATED="1492316673979" FOLDED="true" HGAP="105" ID="ID_1228507070" MODIFIED="1492333721006" POSITION="left" TEXT="cm_email_template" VSHIFT="18">
<icon BUILTIN="go"/>
<node CREATED="1492316699860" ID="ID_49636486" MODIFIED="1492316781816" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_49636486" ENDARROW="Default" ENDINCLINATION="312;0;" ID="Arrow_ID_1960039335" SOURCE="ID_583557287" STARTARROW="None" STARTINCLINATION="312;0;"/>
</node>
<node CREATED="1492316708368" ID="ID_242933432" MODIFIED="1492316721649" TEXT="name: varchar(48), not null, unique"/>
<node CREATED="1492316725559" ID="ID_1030349010" MODIFIED="1492316737263" TEXT="template: TextField, not null"/>
<node CREATED="1475205618928" ID="ID_1699540226" MODIFIED="1492316559855" TEXT="status: char(1), not null, default A">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      S: Sent
    </p>
    <p>
      F: Failed
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#7cb7d2" CREATED="1492316797562" FOLDED="true" HGAP="101" ID="ID_460310260" MODIFIED="1492333702316" POSITION="left" TEXT="cm_sms_template" VSHIFT="3">
<icon BUILTIN="go"/>
<node CREATED="1492316815675" ID="ID_614089470" MODIFIED="1492316971005" TEXT="id: int,ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_614089470" ENDARROW="Default" ENDINCLINATION="308;0;" ID="Arrow_ID_1640020734" SOURCE="ID_736563888" STARTARROW="None" STARTINCLINATION="308;0;"/>
</node>
<node CREATED="1492316708368" ID="ID_1424761274" MODIFIED="1492316721649" TEXT="name: varchar(48), not null, unique"/>
<node CREATED="1492316725559" ID="ID_219729540" MODIFIED="1492316737263" TEXT="template: TextField, not null"/>
<node CREATED="1475205618928" ID="ID_1515164703" MODIFIED="1492316821810" TEXT="status: char(1), not null, default A">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      S: Sent
    </p>
    <p>
      F: Failed
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#7cb7d2" CREATED="1492316474525" FOLDED="true" HGAP="98" ID="ID_268364664" MODIFIED="1492333965490" POSITION="left" TEXT="cm_email_notification_queue" VSHIFT="9">
<icon BUILTIN="go"/>
<node CREATED="1492316491224" ID="ID_268160291" MODIFIED="1492316497983" TEXT="id: int, ai, pk"/>
<node CREATED="1492316504906" ID="ID_1036413499" MODIFIED="1492316902253" TEXT="data: textfield, not null">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Json structure as required by the template
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1492316612290" ID="ID_703990203" MODIFIED="1492316620297" TEXT="to: varchar(255), not null"/>
<node CREATED="1492316754691" ID="ID_583557287" MODIFIED="1492316781817" TEXT="template: int, fk(cm_email_template: id), not null">
<arrowlink DESTINATION="ID_49636486" ENDARROW="Default" ENDINCLINATION="312;0;" ID="Arrow_ID_1960039335" STARTARROW="None" STARTINCLINATION="312;0;"/>
</node>
<node CREATED="1492333946715" ID="ID_165144679" MODIFIED="1492333962251" TEXT="sent_at: datetime, null"/>
<node CREATED="1475205618928" ID="ID_1179375360" MODIFIED="1492333962264" TEXT="status: char(1), not null, default A">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      S: Sent
    </p>
    <p>
      F: Failed
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#7cb7d2" CREATED="1492316834131" FOLDED="true" HGAP="98" ID="ID_1960879500" MODIFIED="1492333966744" POSITION="left" TEXT="cm_sms_notification_queue" VSHIFT="8">
<icon BUILTIN="go"/>
<node CREATED="1492316815675" ID="ID_78060736" MODIFIED="1492316823365" TEXT="id: int,ai, pk"/>
<node CREATED="1492316504906" ID="ID_305763232" MODIFIED="1492316920855" TEXT="data: textfield, not null">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Json structure as required by the template
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1492316925462" ID="ID_273126203" MODIFIED="1492316935540" TEXT="phone_num: varchar(12), not null"/>
<node CREATED="1492316950554" ID="ID_736563888" MODIFIED="1492316971005" TEXT="sms_template: int, fk(cm_sms_template: id), not null">
<arrowlink DESTINATION="ID_614089470" ENDARROW="Default" ENDINCLINATION="308;0;" ID="Arrow_ID_1640020734" STARTARROW="None" STARTINCLINATION="308;0;"/>
</node>
<node CREATED="1492333946715" ID="ID_1811467256" MODIFIED="1492333956530" TEXT="sent_at: datetime, null"/>
<node CREATED="1475205618928" ID="ID_153906139" MODIFIED="1492333956611" TEXT="status: char(1), not null, default A">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      S: Sent
    </p>
    <p>
      F: Failed
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#fe94d2" CREATED="1492319354214" FOLDED="true" HGAP="91" ID="ID_1825417945" MODIFIED="1492505132101" POSITION="left" TEXT="nb_notice" VSHIFT="35">
<icon BUILTIN="go"/>
<node CREATED="1492319420043" ID="ID_402793941" MODIFIED="1492321366891" TEXT="id: int, ai, pk">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_402793941" ENDARROW="Default" ENDINCLINATION="270;0;" ID="Arrow_ID_540442362" SOURCE="ID_1624368390" STARTARROW="None" STARTINCLINATION="270;0;"/>
</node>
<node CREATED="1492319458979" ID="ID_1166149470" MODIFIED="1492319468376" TEXT="text: textfield, not null"/>
<node CREATED="1492319505240" ID="ID_1090262" MODIFIED="1492319535691" TEXT="created_by: int, fk(sm_staff: id), not null">
<arrowlink DESTINATION="ID_722675955" ENDARROW="Default" ENDINCLINATION="974;0;" ID="Arrow_ID_1981697488" STARTARROW="None" STARTINCLINATION="974;0;"/>
</node>
<node CREATED="1492319556495" ID="ID_1827445712" MODIFIED="1492319566185" TEXT="created_on: datetime, not null"/>
<node CREATED="1492319569621" ID="ID_646010156" MODIFIED="1492319601932" TEXT="is_published: boolean,default false"/>
<node CREATED="1475205618928" ID="ID_1805612639" MODIFIED="1492320542929" TEXT="status: char(1), not null, default A">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A: Active
    </p>
    <p>
      I: Inactive
    </p>
    <p>
      D: Deleted
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#fe94d2" CREATED="1492321257021" FOLDED="true" HGAP="94" ID="ID_1001488428" MODIFIED="1492505133030" POSITION="left" TEXT="nb_notice_group_map">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      unique(notice, user)
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="go"/>
<node CREATED="1492321296921" ID="ID_1624368390" MODIFIED="1492321366892" TEXT="notice: int, fk(nb_notice: id), not null">
<arrowlink DESTINATION="ID_402793941" ENDARROW="Default" ENDINCLINATION="270;0;" ID="Arrow_ID_540442362" STARTARROW="None" STARTINCLINATION="270;0;"/>
</node>
<node CREATED="1492321316556" ID="ID_1967933908" MODIFIED="1492505128857" TEXT="group: int, fk(am_group: id), not null">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1967933908" ENDARROW="Default" ENDINCLINATION="984;0;" ID="Arrow_ID_1734518725" SOURCE="ID_1496439367" STARTARROW="None" STARTINCLINATION="984;0;"/>
</node>
</node>
</node>
</map>
