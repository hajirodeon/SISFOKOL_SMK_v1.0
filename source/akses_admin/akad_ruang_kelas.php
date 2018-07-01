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
$studikod = cegah($_REQUEST['studikod']);
$kelkod = cegah($_REQUEST['kelkod']);
?>
<html>
<head>
<title>Data Ruang Kelas</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<META HTTP-EQUIV="REFRESH" CONTENT="<?php echo $lama_akses;?>;URL=../logout.php">
<link href="style/admin.css" rel="stylesheet" type="text/css">
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
      <td> <p><img src="images/adm_m_akad_ruang_kelas.gif" width="256" height="40"></p>
        <p>(<a href="akad_ruang_kelas_add.php">Tambah Ruang Kelas</a>)</p>
        <p>Keahlian : <br>
          <select name="keahlian" id="keahlian" onChange="MM_jumpMenu('parent',this,0)">
            <?
		  	//Keahlian
			mysql_select_db($database_sisfokol, $sisfokol);
			$query_rs_keahlian = "SELECT * FROM m_keahlian ORDER BY keahlian ASC";
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
            <option selected> 
            <?
			//keahlian terpilih
			mysql_select_db($database_sisfokol, $sisfokol);
			$query_rs_terkeah = "SELECT * FROM m_keahlian ".
									"WHERE kd = '$keahkod'";
			$rs_terkeah = mysql_query($query_rs_terkeah, $sisfokol) or die(mysql_error());
			$row_rs_terkeah = mysql_fetch_assoc($rs_terkeah);
			$totalRows_rs_terkeah = mysql_num_rows($rs_terkeah);			

 echo $row_rs_terkeah['keahlian']; ?>
            </option>
            <?
				}


			do 
				{  
				?>
            <option value="akad_ruang_kelas.php?keahkod=<? echo $row_rs_keahlian['kd']?>"><? echo $row_rs_keahlian['keahlian'];?></option>
            <?
				} 
		
			while ($row_rs_keahlian = mysql_fetch_assoc($rs_keahlian));
		?>
          </select>
        </p>
        <p>Tingkat : <br>
          <select name="tingkat" id="tingkat" onChange="MM_jumpMenu('parent',this,0)">
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
            <option selected> 
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
            <option value="akad_ruang_kelas.php?keahkod=<? echo $_REQUEST['keahkod']; ?>&tingkod=<? echo $row_rs_tingkat['kd'] ?>"><? echo $row_rs_tingkat['tingkat']?></option>
            <?
				} 
		
			while ($row_rs_tingkat = mysql_fetch_assoc($rs_tingkat));
		?>
          </select>
          <br>
          <br>
          <?php
			//jika keahlian belum dipilih
			if ($_REQUEST['keahkod'] == "")
				{
				?>
				
        <table width="100%" height="200" border="0" cellpadding="0" cellspacing="0">
          <tr valign="top">
            <td><font color="#FF0000"><b>Keahlian belum dipilih!</b></font></td>
  </tr>
</table>

          
        <?php
				}
			
			else if ($_REQUEST['tingkod'] == "")
				{
				?>
        <table width="100%" height="200" border="0" cellpadding="0" cellspacing="0">
          <tr valign="top">
            <td><font color="#FF0000"><strong>Tingkat belum dipilih</strong></font> </td>
  </tr>
</table>
        <?
				} 
			
			else
				{
			
mysql_select_db($database_sisfokol, $sisfokol);

$query_rs1 = "SELECT m_tingkat.*, m_ruang.*, m_ruang_kelas.*, m_ruang_kelas.kd AS mrkd, m_pegawai.* ".
				"FROM m_tingkat, m_ruang, m_ruang_kelas, m_pegawai ".
				"WHERE m_ruang_kelas.kd_tingkat = m_tingkat.kd ".
				"AND m_ruang_kelas.kd_ruang = m_ruang.kd ".
				"AND m_ruang_kelas.kd_guru = m_pegawai.kd ".
				"AND m_ruang_kelas.kd_keahlian = '$keahkod' ".
				"AND m_ruang_kelas.kd_tingkat = '$tingkod' ".
				"ORDER BY m_ruang.ruang ASC";
$rs1= mysql_query($query_rs1, $sisfokol) or die(mysql_error());
$row_rs1 = mysql_fetch_assoc($rs1);
$totalRows_rs1 = mysql_num_rows($rs1);
?>
        <? ///nek isih kosong
	if ($totalRows_rs1 == 0)
		{
		?>
        <table width="100%" height="200" border="0" cellpadding="0" cellspacing="0">
          <tr valign="top">
            <td><font color="#FF0000"><strong>TIDAK ADA DATA RUANG KELAS</strong></font> 
            </td>
  </tr>
</table>
        <?
		}	
	
	else if ($totalRows_rs1 != 0)//nek eneng isine...
	  	{ 
	?></p>
        <table width="500" border="1" cellpadding="2" cellspacing="0" bordercolor="#CCCCCC" bgcolor="#66CCCC">
          <tr> 
            <td width="25"><font color="#FFFFFF"><strong>No.</strong></font></td>
            <td width="450"><font color="#FFFFFF"><strong>Ruang Kelas</strong></font></td>
          </tr>
        </table> 
        <table width="500" border="1" cellpadding="2" cellspacing="0" bordercolor="#CCCCCC">
          <?php 	
		do { 
		
		
		if ($warna_set ==0)
			{
			$warna = '#F8F8F8';
			$warna_set = 1;
			}
		
		else
			
			{
			$warna = '#F0F4F8';
			$warna_set = 0;
			}
		?>
          <tr valign="top" bgcolor="<? echo $warna; ?>"> 
            <td width="25" height="25"> 
              <?php
			  $nomer = $nomer + 1;
			  echo "$nomer. ";
			  ?>
            </td>
            <td width="450"><strong> 
              <?php 
			echo $row_rs1['tingkat']; 
			?>
              - 
              <?php 
			echo $row_rs1['ruang']; 
			?>
              </strong> --&gt; Wali Kelas : <strong> 
              <?php 
			echo $row_rs1['nama']; 
			?>
              </strong> [<a href="akad_ruang_kelas_del.php?kd=<?php echo $row_rs1['mrkd']; ?>&keahkod=<?php echo $_REQUEST['keahkod'];?>&tingkod=<?php echo $_REQUEST['tingkod'];?>">HAPUS</a>]</td>
          </tr>
          <?php } while ($row_rs1 = mysql_fetch_assoc($rs1)); ?>
        </table>
		
		<?php
		}
		}
		?>
		
		</td>
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