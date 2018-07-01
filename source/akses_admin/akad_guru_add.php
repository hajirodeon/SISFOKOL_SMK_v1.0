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


//ambil nilai
$keahkod = $_REQUEST['keahkod'];
$tingkod = $_REQUEST['tingkod'];


//pegawai
mysql_select_db($database_sisfokol, $sisfokol);
$query_rs_pegawai = "SELECT * FROM m_pegawai ORDER BY nama ASC";
$rs_pegawai = mysql_query($query_rs_pegawai, $sisfokol) or die(mysql_error());
$row_rs_pegawai = mysql_fetch_assoc($rs_pegawai);
$totalRows_rs_pegawai = mysql_num_rows($rs_pegawai);

//program pendidikan
mysql_select_db($database_sisfokol, $sisfokol);
$query_rs_progpddkn = "SELECT * FROM m_prog_pddkn ".
						"WHERE kd_keahlian = '$keahkod' ".
						"AND kd_tingkat = '$tingkod' ".
						"ORDER BY prog_pddkn ASC";
$rs_progpddkn = mysql_query($query_rs_progpddkn, $sisfokol) or die(mysql_error());
$row_rs_progpddkn = mysql_fetch_assoc($rs_progpddkn);
$totalRows_rs_progpddkn = mysql_num_rows($rs_progpddkn);
?>
<html>
<head>
<title>Tambah Guru</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<META HTTP-EQUIV="REFRESH" CONTENT="<?php echo $lama_akses;?>;URL=../logout.php">
<link href="style/admin.css" rel="stylesheet" type="text/css">
<SCRIPT LANGUAGE="JavaScript">
<!-- Begin
function cek(){

if (document.frmguru.pegawai.value=="") {
alert("Jangan lupa memilih pegawai yang akan menjadi gurunya!")
return false
}

if (document.frmguru.progpddkn.value=="") {
alert("Program pendidikan yang akan diampu apa?")
return false
}

return true
}
// End -->
</SCRIPT>

<script language="JavaScript" type="text/JavaScript">
<!--
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
//-->
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="5" topmargin="5" marginwidth="0" marginheight="0">
<div align="center">
  <?php include("include/header.php"); ?>
  <?php include("include/menu.php"); ?>
  <br>
  <table width="990" height="400" border="0" cellpadding="0" cellspacing="0">
    <tr valign="top"> 
      <td> <p><a href="akad_guru.php">Data Guru</a> &gt; Tambah Guru</p>
        <p><img src="images/adm_m_akad_guru_tambah.gif" width="182" height="40"></p>
        <form action="akad_guru_add1.php" method="post" name="frmguru" id="frmguru" onSubmit="return cek()">
          <p>Keahlian : <br>
            <select name="keahlian" id="keahlian" onChange="MM_jumpMenu('parent',this,0)">
            <?
		  	//keahlian
			mysql_select_db($database_sisfokol, $sisfokol);
			$query_rs_keahlian = "SELECT * FROM m_keahlian ".
									"ORDER BY keahlian ASC";
			$rs_keahlian = mysql_query($query_rs_keahlian, $sisfokol) or die(mysql_error());
			$row_rs_keahlian = mysql_fetch_assoc($rs_keahlian);
			$totalRows_rs_keahlian = mysql_num_rows($rs_keahlian);			


			if ($keahkod == "")
				{
				echo "<option selected>--Keahlian--</option>";
				}
				
			else
			
				{
				?>
            <option value="<?php echo $_REQUEST['keahkod']; ?>" selected> 
            <?
			//keahlian terpilih
			mysql_select_db($database_sisfokol, $sisfokol);
			$query_rs_terkeah = "SELECT * FROM m_keahlian ".
									"WHERE kd = '$keahkod'";
			$rs_terkeah = mysql_query($query_rs_terkeah, $sisfokol) or die(mysql_error());
			$row_rs_terkeah = mysql_fetch_assoc($rs_terkeah);
			$totalRows_rs_terkeah = mysql_num_rows($rs_terkeah);			

 echo $row_rs_terkeah['keahlian']; ?></option>
            <?
				}


			do 
				{  
				?>
            <option value="akad_guru_add.php?keahkod=<? echo $row_rs_keahlian['kd']?>"><? echo $row_rs_keahlian['keahlian'];?></option>
            <?
				} 
		
			while ($row_rs_keahlian = mysql_fetch_assoc($rs_keahlian));
		?>
          </select>
          </p>
          <p>Tingkat : 
            <br><select name="tingkat" id="tingkat" onChange="MM_jumpMenu('parent',this,0)">
            <?
			//tingkat
			mysql_select_db($database_sisfokol, $sisfokol);
			$query_rs_tingkat = "SELECT * FROM m_tingkat";
			$rs_tingkat = mysql_query($query_rs_tingkat, $sisfokol) or die(mysql_error());
			$row_rs_tingkat = mysql_fetch_assoc($rs_tingkat);
			$totalRows_rs_tingkat = mysql_num_rows($rs_tingkat);			
			?>
            <?
			if ($tingkod == "")
				{
				echo "<option selected>--Tingkat--</option>";
				}
				
			else
			
				{
				?>
            <option value="<? echo $_REQUEST['tingkod']; ?>" selected> 
            <?
			//tingkat terpilih
			mysql_select_db($database_sisfokol, $sisfokol);
			$query_rs_terting = "SELECT * FROM m_tingkat ".
									"WHERE kd = '$tingkod'";
			$rs_terting = mysql_query($query_rs_terting, $sisfokol) or die(mysql_error());
			$row_rs_terting = mysql_fetch_assoc($rs_terting);
			$totalRows_rs_terting = mysql_num_rows($rs_terting);			
			?>
            <? echo $row_rs_terting['tingkat']; ?></option>
            <?
				}
			?>
            <?
			do 
				{  
				?>
            <option value="akad_guru_add.php?keahkod=<? echo $_REQUEST['keahkod']; ?>&tingkod=<? echo $row_rs_tingkat['kd'] ?>"><? echo $row_rs_tingkat['tingkat']?></option>
            <?
				} 
		
			while ($row_rs_tingkat = mysql_fetch_assoc($rs_tingkat));
		?>
          </select>
          </p>
          <p>Pegawai : 
            <br><select name="pegawai" id="pegawai">
              <option>--Pilih Pegawai--</option>
              <?php
do {  
?>
              <option value="<?php echo $row_rs_pegawai['kd']?>"><?php echo $row_rs_pegawai['nama']?></option>
              <?php
} while ($row_rs_pegawai = mysql_fetch_assoc($rs_pegawai));
  $rows = mysql_num_rows($rs_pegawai);
  if($rows > 0) {
      mysql_data_seek($rs_pegawai, 0);
	  $row_rs_pegawai = mysql_fetch_assoc($rs_pegawai);
  }
?>
            </select>
          </p>
          <p>Program Pendidikan : <br>
            <select name="progpddkn" id="progpddkn">
              <option>--Program Pendidikan--</option>
              <?php
do {  
?>
              <option value="<?php echo $row_rs_progpddkn['kd']?>"><?php echo $row_rs_progpddkn['prog_pddkn']?></option>
              <?php
} while ($row_rs_progpddkn = mysql_fetch_assoc($rs_progpddkn));
  $rows = mysql_num_rows($rs_progpddkn);
  if($rows > 0) {
      mysql_data_seek($rs_progpddkn, 0);
	  $row_rs_progpddkn = mysql_fetch_assoc($rs_progpddkn);
  }
?>
            </select>
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
mysql_close($sisfokol);
?>