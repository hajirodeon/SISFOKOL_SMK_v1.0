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
$query_rs_keahlian = "SELECT * FROM m_keahlian ".
						"ORDER BY keahlian ASC";
$rs_keahlian = mysql_query($query_rs_keahlian, $sisfokol) or die(mysql_error());
$row_rs_keahlian = mysql_fetch_assoc($rs_keahlian);
$totalRows_rs_keahlian = mysql_num_rows($rs_keahlian);

//tingkat
mysql_select_db($database_sisfokol, $sisfokol);
$query_rs_tingkat = "SELECT * FROM m_tingkat ".
						"ORDER BY tingkat ASC";
$rs_tingkat = mysql_query($query_rs_tingkat, $sisfokol) or die(mysql_error());
$row_rs_tingkat = mysql_fetch_assoc($rs_tingkat);
$totalRows_rs_tingkat = mysql_num_rows($rs_tingkat);

//jenis
mysql_select_db($database_sisfokol, $sisfokol);
$query_rs_jenis = "SELECT * FROM m_prog_pddkn_jns ".
						"ORDER BY jenis ASC";
$rs_jenis = mysql_query($query_rs_jenis, $sisfokol) or die(mysql_error());
$row_rs_jenis = mysql_fetch_assoc($rs_jenis);
$totalRows_rs_jenis = mysql_num_rows($rs_jenis);
?>
<html>
<head>
<title>Tambah Program Pendidikan</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<META HTTP-EQUIV="REFRESH" CONTENT="<?php echo $lama_akses;?>;URL=../logout.php">
<link href="style/admin.css" rel="stylesheet" type="text/css">
<SCRIPT LANGUAGE="JavaScript">
<!-- Begin
function cek(){

if (document.frmprogpddkn.keahlian.value=="") {
alert("Silahkan dipilih keahliannya!")
return false
}

if (document.frmprogpddkn.tingkat.value=="") {
alert("Silahkan dipilih tingkatnya!")
return false
}

if (document.frmprogpddkn.jenis.value=="") {
alert("Silahkan dipilih jenisnya!")
return false
}

if (document.frmprogpddkn.progpddkn.value=="") {
alert("Silahkan diisi nama program pendidikannya!")
return false
}

return true
}
// End -->
</SCRIPT>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="5" topmargin="5" marginwidth="0" marginheight="0">
<div align="center">
  <?php include("include/header.php"); ?>
  <?php include("include/menu.php"); ?>
  <br>
  <table width="990" height="400" border="0" cellpadding="0" cellspacing="0">
    <tr valign="top"> 
      <td> <p><a href="akad_progpddkn.php">Data Program Pendidikan</a> &gt; Tambah 
          Program Pendidikan</p>
        <p><img src="images/adm_m_akad_progpddkn_tambah.gif" width="361" height="40"></p>
        <form action="akad_progpddkn_add1.php" method="post" name="frmprogpddkn" id="frmprogpddkn" onSubmit="return cek()">
          <p>Keahlian : <br>
            <select name="keahlian" id="keahlian">
              <option>--Keahlian--</option>
              <?php
do {  
?>
              <option value="<?php echo $row_rs_keahlian['kd']?>"><?php echo $row_rs_keahlian['keahlian']?></option>
              <?php
} while ($row_rs_keahlian = mysql_fetch_assoc($rs_keahlian));
  $rows = mysql_num_rows($rs_keahlian);
  if($rows > 0) {
      mysql_data_seek($rs_keahlian, 0);
	  $row_rs_keahlian = mysql_fetch_assoc($rs_keahlian);
  }
?>
            </select>
          </p>
          <p>Tingkat : <br>
            <select name="tingkat" id="tingkat">
              <option>--Tingkat--</option>
              <?php
do {  
?>
              <option value="<?php echo $row_rs_tingkat['kd']?>"><?php echo $row_rs_tingkat['tingkat']?></option>
              <?php
} while ($row_rs_tingkat = mysql_fetch_assoc($rs_tingkat));
  $rows = mysql_num_rows($rs_tingkat);
  if($rows > 0) {
      mysql_data_seek($rs_tingkat, 0);
	  $row_rs_tingkat = mysql_fetch_assoc($rs_tingkat);
  }
?>
            </select>
          </p>
          <p>Jenis : <br>
            <select name="jenis" id="jenis">
              <option>--Jenis--</option>
              <?php
do {  
?>
              <option value="<?php echo $row_rs_jenis['kd']?>"><?php echo $row_rs_jenis['jenis']?></option>
              <?php
} while ($row_rs_jenis = mysql_fetch_assoc($rs_jenis));
  $rows = mysql_num_rows($rs_jenis);
  if($rows > 0) {
      mysql_data_seek($rs_jenis, 0);
	  $row_rs_jenis = mysql_fetch_assoc($rs_jenis);
  }
?>
            </select>
&nbsp; </p>
          <p>Nama Program Pendidikan : <br>
            <input name="progpddkn" type="text" id="progpddkn" size="50">
          </p>
          <p> 
            <input name="Reset" type="reset" id="Reset" value="Batal">
            <input name="Submit" type="submit" id="Submit" value="Simpan">
          </p>
        </form>
        <p><strong></strong></p></td>
    </tr>
  </table>
  <br>
  <?php include("include/footer.php"); ?>
</div>
</body>
</html>
<?php
//diskonek
mysql_close($sisfokol);
?>