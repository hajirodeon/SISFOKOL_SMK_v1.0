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
$keahkod = cegah($_REQUEST['keahkod']);
$tingkod = cegah($_REQUEST['tingkod']);
$jeniskod = cegah($_REQUEST['jeniskod']);
?>
<html>
<head>
<title>Data Program Pendidikan</title>
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
      <td> <p><img src="images/adm_m_akad_progpddkn.gif" width="377" height="40"></p>
        <p>(<a href="akad_progpddkn_add.php">Tambah Program Pendidikan</a>)</p>
        <p> Keahlian : <br>
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
            <option selected>
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
            <option value="akad_progpddkn.php?keahkod=<? echo $row_rs_keahlian['kd']?>"><? echo $row_rs_keahlian['keahlian'];?></option>
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
			$query_rs_terting = "SELECT * FROM m_tingkat WHERE kd = '$tingkod'";
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
            <option value="akad_progpddkn.php?keahkod=<? echo $_REQUEST['keahkod']; ?>&tingkod=<? echo $row_rs_tingkat['kd'] ?>"><? echo $row_rs_tingkat['tingkat']?></option>
            <?
				} 
		
			while ($row_rs_tingkat = mysql_fetch_assoc($rs_tingkat));
		?>
          </select>
        <p>Jenis : <br>
          <select name="jenis" id="jenis" onChange="MM_jumpMenu('parent',this,0)">
            <?
			//jenis
			mysql_select_db($database_sisfokol, $sisfokol);
			$query_rs_jenis = "SELECT * FROM m_prog_pddkn_jns";
			$rs_jenis = mysql_query($query_rs_jenis, $sisfokol) or die(mysql_error());
			$row_rs_jenis = mysql_fetch_assoc($rs_jenis);
			$totalRows_rs_jenis = mysql_num_rows($rs_jenis);			
			?>
            <?
			if ($jeniskod == "")
				{
				echo "<option selected>--Jenis--</option>";
				}
				
			else
			
				{
				?>
            <option selected>
            <?
			//jenis terpilih
			mysql_select_db($database_sisfokol, $sisfokol);
			$query_rs_terjen = "SELECT * FROM m_prog_pddkn_jns ".
								"WHERE kd = '$jeniskod'";
			$rs_terjen = mysql_query($query_rs_terjen, $sisfokol) or die(mysql_error());
			$row_rs_terjen = mysql_fetch_assoc($rs_terjen);
			$totalRows_rs_terjen = mysql_num_rows($rs_terjen);			
			?>
            <? echo $row_rs_terjen['jenis']; ?></option>
            <?
				}
			?>
            <?
			do 
				{  
				?>
            <option value="akad_progpddkn.php?keahkod=<? echo $_REQUEST['keahkod']; ?>&tingkod=<? echo $_REQUEST['tingkod'] ?>&jeniskod=<? echo $row_rs_jenis['kd'] ?>"><? echo $row_rs_jenis['jenis']?></option>
            <?
				} 
		
			while ($row_rs_jenis = mysql_fetch_assoc($rs_jenis));
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
            <td><font color="#FF0000"><strong>Tingkat belum dipilih</strong></font></td>
  </tr>
</table>
       <?php
				}
			
			else if ($_REQUEST['jeniskod'] == "")
				{
				?>
        <table width="100%" height="200" border="0" cellpadding="0" cellspacing="0">
          <tr valign="top">
            <td><font color="#FF0000"><strong>Jenis belum dipilih</strong></font></td>
  </tr>
</table>
        <?
			}
			else
				{
mysql_select_db($database_sisfokol, $sisfokol);

$query_rs1 = "SELECT * FROM m_prog_pddkn ".
				"WHERE kd_keahlian = '$keahkod' ".
				"AND kd_tingkat = '$tingkod' ".
				"AND kd_jenis = '$jeniskod' ".
				"ORDER BY prog_pddkn ASC";
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
            <td><strong><font color="#FF0000">TIDAK ADA DATA PROGRAM PENDIDIKAN</font></strong></td>
  </tr>
</table>
        <?php
		}	
	
	else if ($totalRows_rs1 != 0)//nek eneng isine...
	  	{ 
	?>
        <br>
        </p>
        <table width="500" border="1" cellpadding="2" cellspacing="0" bordercolor="#CCCCCC" bgcolor="#66CCCC">
          <tr> 
            <td width="24"><font color="#FFFFFF"><strong>No.</strong></font></td>
            <td width="462"><font color="#FFFFFF"><strong>Program Pendidikan</strong></font></td>
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
            <td width="23"><?php
						  $nomer = $nomer + 1;
			  echo "$nomer. ";
			?>
            </td>
            <td width="463">
              <?php 
			  
			echo balikin($row_rs1['prog_pddkn']); 
			?>
              <strong> </strong> [<a href="akad_progpddkn_del.php?kd=<?php echo $row_rs1['kd']; ?>&keahkod=<?php echo $row_rs1['kd_keahlian']; ?>&tingkod=<?php echo $row_rs1['kd_tingkat']; ?>&jeniskod=<?php echo $row_rs1['kd_jenis']; ?>">HAPUS</a>]</td>
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