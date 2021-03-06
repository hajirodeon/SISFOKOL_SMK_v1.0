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

//koneksi db
require_once('../Connections/sisfokol.php'); 

//fungsi-fungsi
include("../include/function.php"); 
include("../include/itapel.php"); 

//ambil nilai
$pageNum_rs1  = cegah($_REQUEST["pageNum_rs1"]);
$totalRows_rs1  = cegah($_REQUEST["totalRows_rs1"]);
$jurikod  = cegah($_REQUEST["jurikod"]);


$currentPage = $HTTP_SERVER_VARS["PHP_SELF"];

$maxRows_rs1 = 20;
$pageNum_rs1 = 0;
if (isset($HTTP_GET_VARS['pageNum_rs1'])) {
  $pageNum_rs1 = $HTTP_GET_VARS['pageNum_rs1'];
}
$startRow_rs1 = $pageNum_rs1 * $maxRows_rs1;

mysql_select_db($database_sisfokol, $sisfokol);

$query_rs1 = "SELECT m_siswa.kd AS mskd, m_siswa.*, siswa_keahlian.*, siswa_tingkat.* ".
				"FROM m_siswa, siswa_keahlian, siswa_tingkat ".
				"WHERE m_siswa.kd = siswa_keahlian.kd_siswa ".
				"AND m_siswa.kd = siswa_tingkat.kd_siswa ".
				"AND siswa_keahlian.kd_keahlian = '$jurikod' ".
				"AND siswa_tingkat.kd_tapel = '$row_rstapel[kd]' ".
				"AND siswa_tingkat.kd_tingkat = '$kelikod' ".
				"AND siswa_tingkat.status = 'true'";

					
$query_limit_rs1 = sprintf("%s LIMIT %d, %d", $query_rs1, $startRow_rs1, $maxRows_rs1);
$rs1 = mysql_query($query_limit_rs1, $sisfokol) or die(mysql_error());
$row_rs1 = mysql_fetch_assoc($rs1);

if (isset($HTTP_GET_VARS['totalRows_rs1'])) {
  $totalRows_rs1 = $HTTP_GET_VARS['totalRows_rs1'];
} else {
  $all_rs1 = mysql_query($query_rs1);
  $totalRows_rs1 = mysql_num_rows($all_rs1);
}
$totalPages_rs1 = ceil($totalRows_rs1/$maxRows_rs1)-1;

$queryString_rs1 = "";
if (!empty($HTTP_SERVER_VARS['QUERY_STRING'])) {
  $params = explode("&", $HTTP_SERVER_VARS['QUERY_STRING']);
  $newParams = array();
  foreach ($params as $param) {
    if (stristr($param, "pageNum_rs1") == false && 
        stristr($param, "totalRows_rs1") == false) {
      array_push($newParams, $param);
    }
  }
  if (count($newParams) != 0) {
    $queryString_rs1 = "&" . implode("&", $newParams);
  }
}
$queryString_rs1 = sprintf("&totalRows_rs1=%d%s", $totalRows_rs1, $queryString_rs1);

//keahlian
mysql_select_db($database_sisfokol, $sisfokol);
$query_rs_progstudi = "SELECT * FROM m_keahlian ORDER BY keahlian ASC";
$rs_progstudi = mysql_query($query_rs_progstudi, $sisfokol) or die(mysql_error());
$row_rs_progstudi = mysql_fetch_assoc($rs_progstudi);
$totalRows_rs_progstudi = mysql_num_rows($rs_progstudi);

//keahlian -x
mysql_select_db($database_sisfokol, $sisfokol);
$query_rs_progstudix = "SELECT * FROM m_keahlian ORDER BY keahlian ASC";
$rs_progstudix = mysql_query($query_rs_progstudix, $sisfokol) or die(mysql_error());
$row_rs_progstudix = mysql_fetch_assoc($rs_progstudix);
$totalRows_rs_progstudix = mysql_num_rows($rs_progstudix);
			
//tingkat
mysql_select_db($database_sisfokol, $sisfokol);
$query_rs_kelas = "SELECT * FROM m_tingkat ORDER BY tingkat ASC";
$rs_kelas = mysql_query($query_rs_kelas, $sisfokol) or die(mysql_error());
$row_rs_kelas = mysql_fetch_assoc($rs_kelas);
$totalRows_rs_kelas = mysql_num_rows($rs_kelas);

//tingi
mysql_select_db($database_sisfokol, $sisfokol);
$query_rs_keli = "SELECT * FROM m_tingkat ORDER BY tingkat ASC";
$rs_keli = mysql_query($query_rs_keli, $sisfokol) or die(mysql_error());
$row_rs_keli = mysql_fetch_assoc($rs_keli);
$totalRows_rs_keli = mysql_num_rows($rs_keli);
				
//ruang
mysql_select_db($database_sisfokol, $sisfokol);
$query_rs_ruang = "SELECT * FROM m_ruang ORDER BY ruang ASC";
$rs_ruang = mysql_query($query_rs_ruang, $sisfokol) or die(mysql_error());
$row_rs_ruang = mysql_fetch_assoc($rs_ruang);
$totalRows_rs_ruang = mysql_num_rows($rs_ruang);

//rui
mysql_select_db($database_sisfokol, $sisfokol);
$query_rs_rui = "SELECT * FROM m_ruang ORDER BY ruang ASC";
$rs_rui = mysql_query($query_rs_rui, $sisfokol) or die(mysql_error());
$row_rs_rui = mysql_fetch_assoc($rs_rui);
$totalRows_rs_rui = mysql_num_rows($rs_rui);
?>
<html>
<head>
<title>Penempatan Siswa</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<META HTTP-EQUIV="REFRESH" CONTENT="<?php echo $lama_akses;?>;URL=../logout.php">
<link href="style/admin.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}

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
      <td> <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td><img src="images/adm_akt_penempatan_siswa.gif" width="328" height="40"></td>
          </tr>
          <tr> 
            <td><div align="right">
                <?php include("include/tapel.php"); ?>
              </div></td>
          </tr>
          <tr>
            <td><div align="right">
                <?php include("include/smt.php"); ?>
              </div></td>
          </tr>
        </table><select name="juri" id="juri" onChange="MM_jumpMenu('parent',this,0)">
          <?
			if ($jurikod == "")
				{			
				mysql_select_db($database_sisfokol, $sisfokol);
				$query_rs_juri = "SELECT * FROM m_keahlian ORDER BY keahlian ASC";
				$rs_juri = mysql_query($query_rs_juri, $sisfokol) or die(mysql_error());
				$row_rs_juri = mysql_fetch_assoc($rs_juri);
				$totalRows_rs_juri = mysql_num_rows($rs_juri);
				?>
          <option selected>
                <?php 
				//jika kosong
					echo "--Keahlian--";
				?>
                </option>
                <?
				}
				
			else
			
				{
				?>
                <option selected> 
                <?
			//keahlian terpilih
			mysql_select_db($database_sisfokol, $sisfokol);
			$query_rs_jura = "SELECT * FROM m_keahlian WHERE kd = '$jurikod'";
			$rs_jura = mysql_query($query_rs_jura, $sisfokol) or die(mysql_error());
			$row_rs_jura = mysql_fetch_assoc($rs_jura);
			$totalRows_rs_jura = mysql_num_rows($rs_jura);			
			?>
                <? 
					echo $row_rs_jura['keahlian']; 
				?></option>
                <?
				}
			?>
                <?
			do 
				{  
				?>
                <option value="akt_penempatan.php?jurikod=<? echo $row_rs_progstudix['kd'] ?>"><? echo $row_rs_progstudix['keahlian']?></option>
                <?
				} 
		
			while ($row_rs_progstudix = mysql_fetch_assoc($rs_progstudix));
		?>

              </select>
        - 
        <select name="keli" id="keli" onChange="MM_jumpMenu('parent',this,0)">
          <?
			if ($kelikod == "")
				{			
				?>
          <option selected>
                <?php 
				//jika kosong
					echo "--Tingkat--";
				?>
                </option>
                <?
				}
				
			else
			
				{
				?>
                <option selected> 
                <?
			//tingkat terpilih
			mysql_select_db($database_sisfokol, $sisfokol);
			$query_rs_kela = "SELECT * FROM m_tingkat WHERE kd = '$kelikod'";
			$rs_kela = mysql_query($query_rs_kela, $sisfokol) or die(mysql_error());
			$row_rs_kela = mysql_fetch_assoc($rs_kela);
			$totalRows_rs_kela = mysql_num_rows($rs_kela);			
			?>
                <? 
					echo $row_rs_kela['tingkat']; 
				?></option>
                <?
				}
			?>
                <?
			do 
				{  
				?>
                <option value="akt_penempatan.php?jurikod=<? echo $_REQUEST['jurikod']; ?>&kelikod=<? echo $row_rs_keli['kd']; ?>"><? echo $row_rs_keli['tingkat']?></option>
                <?
				} 
		
			while ($row_rs_keli = mysql_fetch_assoc($rs_keli));
		?>

              </select>
        <? 
			  //pilih keahlian
			  if ($jurikod == "")
			  	{
				?>
        <br>
        <br>
        <table width="100%" height="300" border="0" cellpadding="0" cellspacing="0">
          <tr valign="top">
            <td><strong><font color="#FF0000">Keahlian Belum Dipilih</font></strong></td>
  </tr>
</table>
        <?
				}
			
			else if ($kelikod == "")
				{?>
        <br>
        <br>
        <table width="100%" height="300" border="0" cellpadding="0" cellspacing="0">
          <tr valign="top">
            <td><strong><font color="#FF0000">Tingkat Belum Dipilih</font></strong></td>
  </tr>
</table>
        <? 
				
				}
			  
			  
			  ///nek isih kosong
	else if ($totalRows_rs1 == 0)
		{
		?>
<br><br>        <table width="100%" height="300" border="0" cellpadding="0" cellspacing="0">
          <tr valign="top">
            <td> <font color="#FF0000"><strong>TIDAK ADA DATA SISWA</strong></font> 
            </td>
          </tr>
        </table>
		<?
		}
			else if ($totalRows_rs1 != 0)//nek eneng isine...
	  	{ 
	?>
        <br>
        <br>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr> 
              <td> <div align="right"> </div></td>
            </tr>
          </table>
          
        <table width="100%" border="1" cellpadding="2" cellspacing="0" bordercolor="#CCCCCC" bgcolor="#66CCCC">
          <tr> 
            <td width="11%"><font color="#FFFFFF"><strong>NIS</strong></font></td>
            <td width="23%"><font color="#FFFFFF"><strong>Nama</strong></font></td>
            <td width="40%"><font color="#FFFFFF"><strong>Keahlian</strong></font></td>
            <td width="12%"><font color="#FFFFFF"><strong>Tingkat</strong></font></td>
            <td width="14%"><font color="#FFFFFF"><strong>Ruang</strong></font></td>
          </tr>
        </table>
        <table width="100%" border="1" cellpadding="3" cellspacing="0" bordercolor="#CCCCCC">
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
            <td width="11%"> 
              <?php 
			echo $row_rs1['nis']; 
			?> </td>
            <td width="23%"> 
              <?php 
			echo $row_rs1['nama']; 
			?> </td>
            <td width="40%"> 
              <select name="progstudi" id="progstudi" onChange="MM_jumpMenu('parent',this,0)">
                <?		
			if ($_REQUEST['judkod'] == "")
				{
				//keahliani
				mysql_select_db($database_sisfokol, $sisfokol);
				$query_rs_jurusi = "SELECT * ".
									"FROM m_keahlian ".
									"WHERE kd = '$jurikod'";
				$rs_jurusi = mysql_query($query_rs_jurusi, $sisfokol) or die(mysql_error());
				$row_rs_jurusi = mysql_fetch_assoc($rs_jurusi);
				$totalRows_rs_jurusi = mysql_num_rows($rs_jurusi);
				?>
                <option selected>
                <?php 
				//jika kosong
				if ($row_rs_jurusi['keahlian'] == "")
					{
					echo "--Keahlian--";
					}
				
				else
					{				
					echo $row_rs_jurusi['keahlian']; 
					}
				?>
                </option>
                <?
				}
				
			else
			
				{
				?>
                <option selected> 
                <?			
			//keahlian terpilih
			mysql_select_db($database_sisfokol, $sisfokol);
			$query_rs_jur = "SELECT * FROM m_keahlian WHERE kd = '$keahkod'";
			$rs_jur = mysql_query($query_rs_jur, $sisfokol) or die(mysql_error());
			$row_rs_jur = mysql_fetch_assoc($rs_jur);
			$totalRows_rs_jur = mysql_num_rows($rs_jur);			
			?>
                <? echo $row_rs_jur['keahlian']; ?></option>
                <?
				}
			?>
                <?		
			do 
				{  
				?>
                <option value="akt_penempatan1.php?kd_siswa=<?php echo $row_rs1['mskd'];?>&inc_tapel=<?php echo $inc_tapel;?>&jurikod=<?php echo $_REQUEST['jurikod'];?>&kelikod=<?php echo $_REQUEST['kelikod'];?>&keahkod=<? echo $row_rs_progstudi['kd'] ?>"><? echo $row_rs_progstudi['keahlian']?></option>
                <?
				} 
		
			while ($row_rs_progstudi = mysql_fetch_assoc($rs_progstudi));
			
			$rows = mysql_num_rows($rs_progstudi);
  				if($rows > 0) 
						{
      					mysql_data_seek($rs_progstudi, 0);
						$row_rs_progstudi = mysql_fetch_assoc($rs_progstudi);
  						}
		?>
              </select> &nbsp;</td>
            <td width="12%"><select name="tingkat" id="tingkat" onChange="MM_jumpMenu('parent',this,0)">
                <?
			if ($_REQUEST['kelkod'] == "")
				{
				//kelasi
				$kd_siswa = $row_rs1["mskd"];
						
				mysql_select_db($database_sisfokol, $sisfokol);
				$query_rs_kelasi = "SELECT m_tingkat.*, siswa_tingkat.* ".
									"FROM m_tingkat, siswa_tingkat ".
									"WHERE m_tingkat.kd = siswa_tingkat.kd_tingkat ".
									"AND siswa_tingkat.status = 'true' ".
									"AND siswa_tingkat.kd_siswa = '$kd_siswa'";
				$rs_kelasi = mysql_query($query_rs_kelasi, $sisfokol) or die(mysql_error());
				$row_rs_kelasi = mysql_fetch_assoc($rs_kelasi);
				$totalRows_rs_kelasi = mysql_num_rows($rs_kelasi);
				?>
                <option selected><?php echo $row_rs_kelasi['tingkat']; ?></option>
                <?
				}
				
			else
			
				{
				?>
                <option selected> 
                <?
			//tingkatterpilih
			mysql_select_db($database_sisfokol, $sisfokol);
			$query_rs_terkel = "SELECT * FROM m_tingkat WHERE kd = '$kelkod'";
			$rs_terkel = mysql_query($query_rs_terkel, $sisfokol) or die(mysql_error());
			$row_rs_terkel = mysql_fetch_assoc($rs_terkel);
			$totalRows_rs_terkel = mysql_num_rows($rs_terkel);			
			?>
                <? echo $row_rs_terkel['tingkat']; ?></option>
                <?
				}
			?>
                <?
			do 
				{  
				?>
                <option value="akt_penempatan1.php?kd_siswa=<?php echo $kd_siswa;?>&inc_tapel=<?php echo $inc_tapel;?>&jurikod=<?php echo $_REQUEST['jurikod'];?>&kelikod=<?php echo $_REQUEST['kelikod'];?>&kelkod=<? echo $row_rs_kelas['kd'] ?>"><? echo $row_rs_kelas['tingkat']?></option>
                <?
				} 
		
			while ($row_rs_kelas = mysql_fetch_assoc($rs_kelas));
			
			$rows = mysql_num_rows($rs_kelas);
  				if($rows > 0) 
						{
      					mysql_data_seek($rs_kelas, 0);
						$row_rs_kelas = mysql_fetch_assoc($rs_kelas);
  						}
		?>
              </select>&nbsp;</td>
            <td width="14%"><select name="ruang" id="ruang" onChange="MM_jumpMenu('parent',this,0)">
                <?
			if ($_REQUEST['rukod'] == "")
				{
				//ruangi
				mysql_select_db($database_sisfokol, $sisfokol);
				$query_rs_ruangi = "SELECT m_ruang.*, siswa_ruang.* ".
									"FROM m_ruang, siswa_ruang ".
									"WHERE m_ruang.kd = siswa_ruang.kd_ruang ".
									"AND siswa_ruang.status = 'true' ".
									"AND kd_siswa = '$kd_siswa'";
				$rs_ruangi = mysql_query($query_rs_ruangi, $sisfokol) or die(mysql_error());
				$row_rs_ruangi = mysql_fetch_assoc($rs_ruangi);
				$totalRows_rs_ruangi = mysql_num_rows($rs_ruangi);
				?>
                <option selected>
                <?php 
				//jika kosong
				if ($row_rs_ruangi['ruang'] == "")
					{
					echo "--Ruang--";
					}
				
				else
					{				
					echo $row_rs_ruangi['ruang']; 
					}
				?>
                </option>
                <?
				}
				
			else
			
				{
				?>
                <option selected> 
                <?
			//ruang terpilih
			mysql_select_db($database_sisfokol, $sisfokol);
			$query_rs_ru = "SELECT * FROM m_ruang WHERE kd = '$rukod'";
			$rs_ru = mysql_query($query_rs_ru, $sisfokol) or die(mysql_error());
			$row_rs_ru = mysql_fetch_assoc($rs_ru);
			$totalRows_rs_ru = mysql_num_rows($rs_ru);			
			?>
                <? echo $row_rs_ru['ruang']; ?></option>
                <?
				}
			?>
                <?
			do 
				{  
				?>
                <option value="akt_penempatan1.php?kd_siswa=<?php echo $row_rs1["mskd"];?>&inc_tapel=<?php echo $inc_tapel;?>&jurikod=<?php echo $_REQUEST['jurikod'];?>&kelikod=<?php echo $_REQUEST['kelikod'];?>&rukod=<? echo $row_rs_ruang['kd'] ?>"><? echo $row_rs_ruang['ruang']?></option>
                <?
				} 
		
			while ($row_rs_ruang = mysql_fetch_assoc($rs_ruang));
			
			$rows = mysql_num_rows($rs_ruang);
  				if($rows > 0) 
						{
      					mysql_data_seek($rs_ruang, 0);
						$row_rs_ruang = mysql_fetch_assoc($rs_ruang);
  						}
		?>
              </select>&nbsp;</td>
          </tr>
          <?php } while ($row_rs1 = mysql_fetch_assoc($rs1)); ?>
        </table>
        <br> <br> <?php if ($pageNum_rs1 > 0) { // Show if not first page ?>
        <a href="<?php printf("%s?pageNum_rs1=%d%s", $currentPage, 0, $queryString_rs1); ?>">Awal</a> 
        <?php 
		  		}
		  else
		  		{
				?>
        <font color="#CCCCCC">Awal</font> 
        <?
		  } // Show if not first page ?> <?php if ($pageNum_rs1 > 0) { // Show if not first page ?>
        <a href="<?php printf("%s?pageNum_rs1=%d%s", $currentPage, max(0, $pageNum_rs1 - 1), $queryString_rs1); ?>">Sebelumnya</a> 
        <?php 
		  		}
		  else
		  		{
				?>
        <font color="#CCCCCC">Sebelumnya</font> 
        <?
		  } // Show if not first page ?> <?php if ($pageNum_rs1 < $totalPages_rs1) { // Show if not last page ?>
        <a href="<?php printf("%s?pageNum_rs1=%d%s", $currentPage, min($totalPages_rs1, $pageNum_rs1 + 1), $queryString_rs1); ?>">Selanjutnya</a> 
        <?php 
		  		}
		  else
		  		{?>
        <font color="#CCCCCC">Selanjutnya</font> 
        <?
		  } // Show if not last page ?> <?php if ($pageNum_rs1 < $totalPages_rs1) { // Show if not last page ?>
        <a href="<?php printf("%s?pageNum_rs1=%d%s", $currentPage, $totalPages_rs1, $queryString_rs1); ?>">Terakhir</a> 
        <?php 
		  		}
		  else
		  		{?>
        <font color="#CCCCCC">Terakhir</font> 
        <?
		  } // Show if not last page 
		  
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