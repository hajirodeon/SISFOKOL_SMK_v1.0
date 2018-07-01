<?php
//Sistem Informasi ini berbasis OPEN SOURCE dengan lisensi GNU/GPL. 
//
//OPEN SOURCE HAJIROBE dengan segala hormat tidak bertanggung jawab dan tidak memiliki pertanggungjawaban
//kepada apapun atau siapa pun akibat terjadinya kehilangan atau kerusakan yang mungkin muncul yang berasal
//dari buah karya ini.
//
//Sistem Informasi ini akan selalu dikembangkan dan jika ditemukan kesalahan logika ataupun kesalahan program,
//hal ini bukanlah disengaja. Melainkan hal tersebut adalah salah satu dari tahapan pengembangan lebih lanjut. 

//Sistem Informasi Sekolah (SISFOKOL) untuk SMK v1.0, dikembangkan oleh OPEN SOURCE HAJIROBE (Agus Muhajir).
//Dan didistribusikan oleh BIASAWAE PRODUCTION (http://www.biasawae.com)
//
//Bila Anda mempunyai pertanyaan, komentar, saran maupun kritik layangkan saja ke hajirodeon@yahoo.com .
//Semoga program ini berguna bagi Anda.
//
//Ikutilah perkembangan terbaru Sistem Informasi ini di BIASAWAE PRODUCTION.

session_start();

///cek session
require("include/cek.php"); 

 
	
//kosongkan cache
header("cache-control:private");
header("pragma:no-cache");
header("cache-control:no-cache");
flush();  

//ambil nilai konfigurasi tertentu
include("../include/config.php"); 

//koneksi
require_once('../Connections/sisfokol.php'); 

//fungsi-fungsi
include("../include/function.php"); 

//keahlian
mysql_select_db($database_sisfokol, $sisfokol);
$query_rskeahlian = "SELECT * FROM m_keahlian ORDER BY keahlian ASC";
$rskeahlian = mysql_query($query_rskeahlian, $sisfokol) or die(mysql_error());
$row_rskeahlian = mysql_fetch_assoc($rskeahlian);
$totalRows_rskeahlian = mysql_num_rows($rskeahlian);

//tingkat
mysql_select_db($database_sisfokol, $sisfokol);
$query_rstingkat = "SELECT * FROM m_tingkat ORDER BY tingkat ASC";
$rstingkat = mysql_query($query_rstingkat, $sisfokol) or die(mysql_error());
$row_rstingkat = mysql_fetch_assoc($rstingkat);
$totalRows_rstingkat = mysql_num_rows($rstingkat);

//ruang
mysql_select_db($database_sisfokol, $sisfokol);
$query_rsruang = "SELECT * FROM m_ruang ORDER BY ruang ASC";
$rsruang = mysql_query($query_rsruang, $sisfokol) or die(mysql_error());
$row_rsruang = mysql_fetch_assoc($rsruang);
$totalRows_rsruang = mysql_num_rows($rsruang);
?>
<html>
<head>
<title>Isi Ruang Praktikum</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<META HTTP-EQUIV="REFRESH" CONTENT="<?php echo $lama_akses;?>;URL=../logout.php">
<link href="style/admin.css" rel="stylesheet" type="text/css">
<SCRIPT LANGUAGE="JavaScript">
<!-- Begin
function cek(){

if (document.frmlab.keahlian.value=="") {
alert("Keahlian Belum Dipilih!")
return false
}

if (document.frmlab.tingkat.value=="") {
alert("tingkat Belum Dipilih!")
return false
}

if (document.frmlab.ruang.value=="") {
alert("Ruang Belum Dipilih!")
return false
}

return true
}
// End -->
</SCRIPT>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="5" topmargin="5" marginwidth="0" marginheight="0">
<?php include("include/header.php"); ?>
<?php include("include/menu.php"); ?>
<br>
<table width="990" height="400" border="0" cellpadding="0" cellspacing="0">
  <tr valign="top">
    <td><p><a href="inv_peng_praktikum.php?labkod=<?php echo $_REQUEST['labkod'];?>">INVENTARIS : Penggunaan Ruang Praktikum</a> 
        &gt; Isi</p>
      <p><strong><img src="images/adm_inv_peng_praktikum_peng.gif" width="280" height="40"></strong></p>
      <form action="inv_peng_praktikum_post1.php" method="post" name="frmlab" id="frmlab" onSubmit="return cek()">
        <p><strong>Hari : </strong><br>
          <?php echo $_REQUEST['hari'];?></p>
        <p><strong>Jam : </strong><br>
          <?php echo $_REQUEST['jam'];?></p>
        <p><strong>Keahlian : </strong><br>
          <select name="keahlian" id="keahlian">
            <option>--Keahlian--</option>
            <?php
do {  
?>
            <option value="<?php echo $row_rskeahlian['kd']?>"><?php echo $row_rskeahlian['keahlian']?></option>
            <?php
} while ($row_rskeahlian = mysql_fetch_assoc($rskeahlian));
  $rows = mysql_num_rows($rskeahlian);
  if($rows > 0) {
      mysql_data_seek($rskeahlian, 0);
	  $row_rskeahlian = mysql_fetch_assoc($rskeahlian);
  }
?>
          </select></p>
        <p><strong>Tingkat : </strong><br>
          <select name="tingkat" id="tingkat">
            <option>--Tingkat--</option>
            <?php
do {  
?>
            <option value="<?php echo $row_rstingkat['kd']?>"><?php echo $row_rstingkat['tingkat']?></option>
            <?php
} while ($row_rstingkat = mysql_fetch_assoc($rstingkat));
  $rows = mysql_num_rows($rstingkat);
  if($rows > 0) {
      mysql_data_seek($rstingkat, 0);
	  $row_rstingkat = mysql_fetch_assoc($rstingkat);
  }
?>
          </select>
        </p>
        <p><strong>Ruang : </strong><br>
          <select name="ruang" id="ruang">
            <option>--Ruang--</option>
            <?php
do {  
?>
            <option value="<?php echo $row_rsruang['kd']?>"><?php echo $row_rsruang['ruang']?></option>
            <?php
} while ($row_rsruang = mysql_fetch_assoc($rsruang));
  $rows = mysql_num_rows($rsruang);
  if($rows > 0) {
      mysql_data_seek($rsruang, 0);
	  $row_rsruang = mysql_fetch_assoc($rsruang);
  }
?>
          </select></p>
        <p> 
          <input name="labkod" type="hidden" id="labkod" value="<?php echo $_REQUEST['labkod'];?>">
          <input name="kd_hari" type="hidden" value="<?php echo $_REQUEST['kd_hari'];?>">
          <input name="kd_jam" type="hidden" value="<?php echo $_REQUEST['kd_jam'];?>">
          <input type="reset" name="Reset" value="Batal">
          <input name="Submit" type="submit" id="Submit" value="Simpan">
        </p>
      </form>
      <p>&nbsp;</p>
      <p>&nbsp;</p></td>
  </tr>
</table><br>
<?php include("include/footer.php"); ?>
</body>
</html>