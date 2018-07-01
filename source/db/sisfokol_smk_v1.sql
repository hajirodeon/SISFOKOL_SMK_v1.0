# phpMyAdmin MySQL-Dump
# version 2.2.1
# http://phpwizard.net/phpMyAdmin/
# http://phpmyadmin.sourceforge.net/ (download page)
#
# Host: localhost
# Generation Time: Jan 15, 2006 at 03:25 PM
# Server version: 4.00.18
# PHP Version: 4.3.11
# Database : `sisfokol_smk_v1`
# --------------------------------------------------------

#
# Table structure for table `admin`
#

CREATE TABLE admin (
  kd varchar(50) NOT NULL default '',
  username varchar(15) NOT NULL default '',
  password varchar(255) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `admin`
#

INSERT INTO admin (kd, username, password) VALUES ('c7d869e8de7eef93f4e02c53839a446f', 'admin', '21232f297a57a5a743894a0e4a801fc3');
# --------------------------------------------------------

#
# Table structure for table `agenda`
#

CREATE TABLE agenda (
  kd varchar(50) NOT NULL default '',
  judul varchar(255) NOT NULL default '',
  isi longtext NOT NULL,
  waktu varchar(255) NOT NULL default '',
  postdate datetime NOT NULL default '0000-00-00 00:00:00'
) TYPE=MyISAM;

#
# Dumping data for table `agenda`
#

INSERT INTO agenda (kd, judul, isi, waktu, postdate) VALUES ('5929c0a489a7108f57614a18e9221c1d', 'Jangan Lupa, nanti malam', 'Ingat, nanti malam adalah uji coba website.', 'Nanti Malam.', '2006-01-14 17:23:22'),
('873857bd1af72118d90357d199dccfb7', 'Dapatkan password akses.', 'Dapatkan password akses sistem informasi ini.', 'Segera', '2006-01-14 17:24:38');
# --------------------------------------------------------

#
# Table structure for table `bulan`
#

CREATE TABLE bulan (
  kd varchar(50) NOT NULL default '',
  kd_semester_set varchar(50) NOT NULL default '',
  bulan varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `bulan`
#

INSERT INTO bulan (kd, kd_semester_set, bulan) VALUES ('7bc517f8d5ffd0f8d2c0a229abe5a344', 'a140a30047adb57e98a71985348bed60', 'Januari'),
('5ed0257c0a4db16793c6032813a98b46', 'a140a30047adb57e98a71985348bed60', 'Pebruari'),
('5e403f1fcd883fcb51f2f8bf77367826', 'a140a30047adb57e98a71985348bed60', 'Maret'),
('c613934c229b9b66c725843c30cf7a88', 'a140a30047adb57e98a71985348bed60', 'April'),
('4b996ec795d421fbe5b6cba2a12b6d73', 'a140a30047adb57e98a71985348bed60', 'Mei'),
('ddfc257549af89b67513f46c657fe3e7', 'a140a30047adb57e98a71985348bed60', 'Juni'),
('1dbd819160264c7aaed4ae84f7f8fcf8', 'ce8a0066c0e535bf5fedb54413e75b5d', 'Juli'),
('43401dfa6276184f5e3a307b0949cfd5', 'ce8a0066c0e535bf5fedb54413e75b5d', 'Agustus'),
('81ca403f5cfd0298df91a70d78023c45', 'ce8a0066c0e535bf5fedb54413e75b5d', 'September'),
('7bdbbc6a7ba0b78fd447c08e7c2b64a6', 'ce8a0066c0e535bf5fedb54413e75b5d', 'Oktober'),
('14da393d1f0a89d8900b7ae89a546c41', 'ce8a0066c0e535bf5fedb54413e75b5d', 'Nopember'),
('2b0c791da38ba40f4dc47e5bc4f526b1', 'ce8a0066c0e535bf5fedb54413e75b5d', 'Desember');
# --------------------------------------------------------

#
# Table structure for table `inv_alat_peraga`
#

CREATE TABLE inv_alat_peraga (
  kd varchar(50) NOT NULL default '',
  alat_peraga varchar(255) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `inv_alat_peraga`
#

INSERT INTO inv_alat_peraga (kd, alat_peraga) VALUES ('3189ee07fcd8d0c46c8b257bce04c99d', 'Gunting'),
('97411393f1b1e9fbde3f950e952a96ad', 'Penggaris'),
('0fcc4a7d5271082edee8ab6adfa1a231', 'Gelas Ukur');
# --------------------------------------------------------

#
# Table structure for table `inv_lab`
#

CREATE TABLE inv_lab (
  kd varchar(50) NOT NULL default '',
  lab varchar(255) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `inv_lab`
#

INSERT INTO inv_lab (kd, lab) VALUES ('c9d80946867450cc7b91a09061b4bb7b', 'Komputer');
# --------------------------------------------------------

#
# Table structure for table `inv_peng_lab`
#

CREATE TABLE inv_peng_lab (
  kd varchar(50) NOT NULL default '',
  kd_lab varchar(50) NOT NULL default '',
  kd_keahlian varchar(50) NOT NULL default '',
  kd_tingkat varchar(50) NOT NULL default '',
  kd_ruang varchar(50) NOT NULL default '',
  kd_jam varchar(50) NOT NULL default '',
  kd_hari varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `inv_peng_lab`
#

INSERT INTO inv_peng_lab (kd, kd_lab, kd_keahlian, kd_tingkat, kd_ruang, kd_jam, kd_hari) VALUES ('9404fc0c7198168bb0fd9d6d6ab7fde5', 'c9d80946867450cc7b91a09061b4bb7b', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '70140b4205682215fb9f29648b86efae', '58ed108948a9ea99fbd3f7c67ae01fe8');
# --------------------------------------------------------

#
# Table structure for table `inv_peng_peraga`
#

CREATE TABLE inv_peng_peraga (
  kd varchar(50) NOT NULL default '',
  tgl datetime NOT NULL default '0000-00-00 00:00:00',
  kd_alat_peraga varchar(50) NOT NULL default '',
  jumlah varchar(255) NOT NULL default '',
  kd_guru varchar(50) NOT NULL default '',
  tgl_kembali datetime NOT NULL default '0000-00-00 00:00:00',
  ket varchar(255) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `inv_peng_peraga`
#

# --------------------------------------------------------

#
# Table structure for table `inv_pengadaan`
#

CREATE TABLE inv_pengadaan (
  kd varchar(50) NOT NULL default '',
  tgl_terima datetime NOT NULL default '0000-00-00 00:00:00',
  tgl_beli datetime NOT NULL default '0000-00-00 00:00:00',
  dari varchar(255) NOT NULL default '',
  nm_barang varchar(255) NOT NULL default '',
  jumlah varchar(255) NOT NULL default '',
  harga varchar(10) NOT NULL default '',
  tgl_pakai datetime NOT NULL default '0000-00-00 00:00:00',
  untuk varchar(255) NOT NULL default '',
  ket varchar(255) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `inv_pengadaan`
#

INSERT INTO inv_pengadaan (kd, tgl_terima, tgl_beli, dari, nm_barang, jumlah, harga, tgl_pakai, untuk, ket) VALUES ('edc2348e524d1c48d1da7e9b31bffdfd', '2003-03-03 00:00:00', '2002-01-03 00:00:00', 'Alumni Tahun 2000', 'Kursi Belajar', '200', '10000000', '2004-06-05 00:00:00', 'Pengganti Kursi Kelas yang lama', 'stri'),
('e0975a5545f9b16cacc9f9db98c3579f', '2005-08-04 00:00:00', '2005-07-17 00:00:00', 'stri', 'Kursi Roda', '4', '4000000', '2005-09-06 00:00:00', 'stri', 'stri');
# --------------------------------------------------------

#
# Table structure for table `jadwal`
#

CREATE TABLE jadwal (
  kd varchar(50) NOT NULL default '',
  kd_tapel varchar(50) NOT NULL default '',
  kd_semester varchar(50) NOT NULL default '',
  kd_keahlian varchar(50) NOT NULL default '',
  kd_tingkat varchar(50) NOT NULL default '',
  kd_ruang varchar(50) NOT NULL default '',
  kd_hari varchar(50) NOT NULL default '',
  kd_jam_pel varchar(50) NOT NULL default '',
  kd_guru varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `jadwal`
#

INSERT INTO jadwal (kd, kd_tapel, kd_semester, kd_keahlian, kd_tingkat, kd_ruang, kd_hari, kd_jam_pel, kd_guru) VALUES ('dd68f02b99a260f5f6682d145209b65f', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', 'edf192658966eff8ec44dd77ac46155d', 'f4ab65549c1d5048fb21c0636680f8d1', '7d2fd9dd1f1b56f461389f2db34c68c6'),
('3fc236f95e6e9aced22756113a194d5a', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', 'edf192658966eff8ec44dd77ac46155d', '3e5e472b05afefb0caafbc497b5e2ac9', '7d2fd9dd1f1b56f461389f2db34c68c6');
# --------------------------------------------------------

#
# Table structure for table `kalender`
#

CREATE TABLE kalender (
  kd varchar(50) NOT NULL default '',
  judul varchar(255) NOT NULL default '',
  isi longtext NOT NULL,
  waktu varchar(255) NOT NULL default '',
  postdate datetime NOT NULL default '0000-00-00 00:00:00'
) TYPE=MyISAM;

#
# Dumping data for table `kalender`
#

INSERT INTO kalender (kd, judul, isi, waktu, postdate) VALUES ('96b6d2c2e64b337abc1ecb20564d84bf', 'Persiapan Ulang Tahun Sekolah', 'Bulan depan harus menyiapkan segala kebutuhan untuk ulang tahun sekolah.', 'Minggu pertama bulan depan.', '2006-01-14 17:28:06');
# --------------------------------------------------------

#
# Table structure for table `m_agama`
#

CREATE TABLE m_agama (
  kd varchar(50) NOT NULL default '',
  agama varchar(255) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_agama`
#

INSERT INTO m_agama (kd, agama) VALUES ('aa4a5d0437773a393defe493d993f93f', 'Islam'),
('54389a89e5ce98ef449fc2327ad728d4', 'Kristen Protestan'),
('fc5abdef6f0d04b7bfea584fc82336d9', 'Katholik'),
('76a9e44b2b9d7b47ccbc258e33af7b46', 'Budha'),
('42d4aa0eba013bcdc0f0c394b855af05', 'Hindu'),
('8c7d39aaaa9a0df6b149e031e29a1182', 'Konghucu'),
('21675cbb28b06cdf1c5c8dc92226cb7a', 'Kepercayaan');
# --------------------------------------------------------

#
# Table structure for table `m_ekstra`
#

CREATE TABLE m_ekstra (
  kd varchar(50) NOT NULL default '',
  kd_pegawai varchar(50) NOT NULL default '',
  ekstra varchar(255) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_ekstra`
#

INSERT INTO m_ekstra (kd, kd_pegawai, ekstra) VALUES ('244e2a3bba4d31e6abadcb3cdc3a6df0', 'b81d75747c2dfe32492eff5619fae609', 'Pramuka'),
('c696df2e570a0a9ede85c1700bc9faa8', '383d8c64b1de91531e290a3e6080beaa', 'PMR'),
('d43fb696e07a6feb1146fde74afbe255', '383d8c64b1de91531e290a3e6080beaa', 'Paskibra'),
('33a34b7faa58b098a144ed7ea3051af7', '8a7220d3f1675f2ccf1ea311ee3813e3', 'Karate'),
('62bc631113ecea991cfc724b15b9f1a3', '1100d8d0eebccc4f22986b907db568c2', 'Musik'),
('5baab7ee05f99c3df08569a00d5ee8b5', '8a7220d3f1675f2ccf1ea311ee3813e3', 'Drum Band');
# --------------------------------------------------------

#
# Table structure for table `m_guru`
#

CREATE TABLE m_guru (
  kd varchar(50) NOT NULL default '',
  kd_pegawai varchar(50) NOT NULL default '',
  kd_keahlian varchar(50) NOT NULL default '',
  kd_tingkat varchar(50) NOT NULL default '',
  kd_prog_pddkn varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_guru`
#

INSERT INTO m_guru (kd, kd_pegawai, kd_keahlian, kd_tingkat, kd_prog_pddkn) VALUES ('5189a9176c7a3907a7942d1515941e34', 'b81d75747c2dfe32492eff5619fae609', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'e256c6676c7a0bb5b8b90a7f42bbeef9'),
('7d2fd9dd1f1b56f461389f2db34c68c6', '78b4cf34709770fde4aa86d250466e9f', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '8144eaa275683a0723c46615d812102f'),
('1ac23d3f78e319cce2b0bfe310310739', '1100d8d0eebccc4f22986b907db568c2', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'e27005235c131029b1113f5f2ab849eb'),
('a943f5457e0b7bd9851372cbd3b3dc47', 'f96d9a9cea484f8acf0641f86d6719fa', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '743cd645a0a32d9b97eafdbaf0a73706'),
('70f1a90a560ff4d7cd25f7b0ecaba245', '8a7220d3f1675f2ccf1ea311ee3813e3', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '47fcb82a068e220dbc827988eaa34c54'),
('2f66931539e16a44590c681e1be634e3', 'b7f7a2c3ec8a5b056d748be83b859c9e', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b40738f73b270fdce60693be8945ca64');
# --------------------------------------------------------

#
# Table structure for table `m_hari`
#

CREATE TABLE m_hari (
  kd varchar(50) NOT NULL default '',
  hari varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_hari`
#

INSERT INTO m_hari (kd, hari) VALUES ('edf192658966eff8ec44dd77ac46155d', 'Senin'),
('58ed108948a9ea99fbd3f7c67ae01fe8', 'Selasa'),
('e2d5f9ac643a0688b8b74cf963a3df23', 'Rabu'),
('54929fe6d34462c9adef014c00d15c42', 'Kamis'),
('121b75215e1b290126aaa4b4697a80dc', 'Jum\'at'),
('af63ce604413149c94d4ae38d2d04262', 'Sabtu');
# --------------------------------------------------------

#
# Table structure for table `m_huruf`
#

CREATE TABLE m_huruf (
  kd varchar(50) NOT NULL default '',
  huruf char(1) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_huruf`
#

INSERT INTO m_huruf (kd, huruf) VALUES ('1b07ae0b7f48287c8e213eaf3b53a566', 'A'),
('72cdb2a6156f64d26571d9c17104d2c6', 'B'),
('c114c3ab5dc5e7b9bfec6af8a1f6a15a', 'C'),
('1a0ae81a30c87a9e8585745d35a126a3', 'D'),
('f526a13d26772d14ef9b9abe70f7e593', 'E');
# --------------------------------------------------------

#
# Table structure for table `m_jam_pel`
#

CREATE TABLE m_jam_pel (
  kd varchar(50) NOT NULL default '',
  jam varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_jam_pel`
#

INSERT INTO m_jam_pel (kd, jam) VALUES ('3e5e472b05afefb0caafbc497b5e2ac9', '1'),
('f4ab65549c1d5048fb21c0636680f8d1', '2'),
('3b499b7aaf2159bc8894ffddfc0219fa', '3'),
('16368d9d5eabdbf10cd3ea474afb953f', '4'),
('869465ec86fa1ce98728a32209af6d8f', '5'),
('1cdb63285e521cb005a607c3d82818e9', '6'),
('c14b39362ed700ff177e82e6ed7d6cce', '7'),
('3105ca16ca0adfc91418d82cbb93f0d7', '8'),
('1144e77d7043aff6f1ccf39ed99579c6', '9'),
('208d17a8a8597becea76af62b1af0d9d', '10'),
('ce4f673520fd3319149f8348a92d25ca', '11'),
('70140b4205682215fb9f29648b86efae', '12'),
('4d28dcffba744476774f44cd6cc7c203', '13'),
('335acb219074a522a746e24dff7870ec', '14');
# --------------------------------------------------------

#
# Table structure for table `m_keahlian`
#

CREATE TABLE m_keahlian (
  kd varchar(50) NOT NULL default '',
  keahlian varchar(255) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_keahlian`
#

INSERT INTO m_keahlian (kd, keahlian) VALUES ('6ca4cdd2e99c4fa94e15b3f8164ebebd', 'Bangunan - Teknik Kontruksi Bangunan'),
('4ff4a08c1526d772ecbcf25b19ce288d', 'Elektronik - Teknik Audio Video'),
('49140285e137bb8fcba9ecf0388244cf', 'Otomotif - Teknik Mekanik Otomotif'),
('e221c855a6a1551e1c5b6779fdb3ee81', 'Komputer Jaringan');
# --------------------------------------------------------

#
# Table structure for table `m_kelakuan`
#

CREATE TABLE m_kelakuan (
  kd varchar(50) NOT NULL default '',
  kelakuan varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_kelakuan`
#

# --------------------------------------------------------

#
# Table structure for table `m_kelamin`
#

CREATE TABLE m_kelamin (
  kd varchar(50) NOT NULL default '',
  kelamin varchar(255) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_kelamin`
#

INSERT INTO m_kelamin (kd, kelamin) VALUES ('9238fb6efac56da391c4abf8a3eb1d16', 'Laki - Laki'),
('60819669cb66e2b69b5279c725d8c429', 'Perempuan');
# --------------------------------------------------------

#
# Table structure for table `m_ket`
#

CREATE TABLE m_ket (
  kd varchar(50) NOT NULL default '',
  ket varchar(50) NOT NULL default '',
  iket char(1) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_ket`
#

INSERT INTO m_ket (kd, ket, iket) VALUES ('fe6abc6ea080299b975204d73c1590e3', 'Sakit', 'S'),
('a47cbd787696841bfeee02330e0bda82', 'Ijin', 'I'),
('a5021199e355baa52547a0bdc3ddbdb6', 'Tanpa Keterangan', 'T');
# --------------------------------------------------------

#
# Table structure for table `m_ketidakhadiran`
#

CREATE TABLE m_ketidakhadiran (
  kd varchar(50) NOT NULL default '',
  ketidakhadiran varchar(255) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_ketidakhadiran`
#

# --------------------------------------------------------

#
# Table structure for table `m_nilai_angka`
#

CREATE TABLE m_nilai_angka (
  kd varchar(50) NOT NULL default '',
  angka char(2) NOT NULL default '',
  ket varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_nilai_angka`
#

INSERT INTO m_nilai_angka (kd, angka, ket) VALUES ('481b703636a20371e6649561b982bc41', '01', 'Buruk Sekali'),
('959c61eaddd09ded9e01c671d486c25e', '02', 'Buruk'),
('3bdf85a16d5c8ece1af566b57f4cf8a6', '03', 'Kurang Sekali'),
('b7a35a86f8460eb11a7a810df783468f', '04', 'Kurang'),
('9229b03b82de112ec1463981d1519960', '05', 'Hampir Cukup'),
('8c85630d609325ed96f8f5168fabbe18', '06', 'Cukup'),
('5eb912d41cc69189cc2a7ab7b11099bd', '07', 'Lebih dari Cukup'),
('701425d00f3b54eee90adcf1cf338a03', '08', 'Baik'),
('2d3fd3c78f2b2886d107cae37dd8ea4d', '09', 'Baik Sekali'),
('9c377d3edf31da5d77cf52bf81cadc3c', '10', 'Istimewa');
# --------------------------------------------------------

#
# Table structure for table `m_nilai_huruf`
#

CREATE TABLE m_nilai_huruf (
  kd varchar(50) NOT NULL default '',
  huruf char(1) NOT NULL default '',
  ket varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_nilai_huruf`
#

INSERT INTO m_nilai_huruf (kd, huruf, ket) VALUES ('9c34d42c449024e497a1e01ba926103f', 'A', 'Baik Sekali'),
('ac768731cf92f063569b368538ff895f', 'B', 'Baik'),
('413c9de28f57388179d8b6b4b065845a', 'C', 'Cukup'),
('d8aba8af3d71ebd8843aa0169762d010', 'D', 'Kurang');
# --------------------------------------------------------

#
# Table structure for table `m_nilai_kat`
#

CREATE TABLE m_nilai_kat (
  kd varchar(50) NOT NULL default '',
  kat varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_nilai_kat`
#

INSERT INTO m_nilai_kat (kd, kat) VALUES ('caf23fd6a2520221d1a794cacbd6a07d', 'Tugas'),
('7aa5f57625e29c070afc669cba4fec02', 'Ulangan Tertulis'),
('31fb87d7ce7cf7344a8bd8f351388d85', 'Ulangan Lisan'),
('d0ddb6fa7c19092d180e264f0a1fe1fa', 'Ulangan Praktikum'),
('ba993f2f4106aef023379ccc0742c9bb', 'Tes Tertulis'),
('506f44e77a463f4acc15ebbfcd16a2fd', 'Tes Lisan'),
('c80425e699a6b154fa56d935bb6146bc', 'Tes Praktikum');
# --------------------------------------------------------

#
# Table structure for table `m_pegawai`
#

CREATE TABLE m_pegawai (
  kd varchar(50) NOT NULL default '',
  nip varchar(10) NOT NULL default '',
  password varchar(255) NOT NULL default '',
  kd_kelamin varchar(50) NOT NULL default '',
  nama varchar(30) NOT NULL default '',
  tmp_lahir varchar(100) NOT NULL default '',
  tgl_lahir datetime NOT NULL default '0000-00-00 00:00:00',
  kawin enum('true','false') NOT NULL default 'false',
  bangsa varchar(50) NOT NULL default '',
  kd_agama varchar(50) NOT NULL default '',
  pangkat varchar(255) NOT NULL default '',
  jabatan varchar(255) NOT NULL default '',
  status enum('true','false') NOT NULL default 'false',
  alamat longtext NOT NULL,
  foto varchar(255) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_pegawai`
#

INSERT INTO m_pegawai (kd, nip, password, kd_kelamin, nama, tmp_lahir, tgl_lahir, kawin, bangsa, kd_agama, pangkat, jabatan, status, alamat, foto) VALUES ('b81d75747c2dfe32492eff5619fae609', '6784565456', 'f9450b6256d67597fef5c28d00f8735d', '9238fb6efac56da391c4abf8a3eb1d16', 'Agus Muhajir', 'Kendal', '1982-04-27 00:00:00', 'false', 'Indonesia', 'aa4a5d0437773a393defe493d993f93f', 'stri', 'stri', 'false', 'stri', ''),
('1100d8d0eebccc4f22986b907db568c2', '5684568', '10733c3f625ea1d2cb1a5f2fbe4d0d88', '60819669cb66e2b69b5279c725d8c429', 'Andara Early', 'Jakarta', '1962-04-25 00:00:00', 'true', 'Indonesia', 'aa4a5d0437773a393defe493d993f93f', 'stri', 'stri', 'true', 'stri', ''),
('8a7220d3f1675f2ccf1ea311ee3813e3', '4575343', 'e5865b8f0c85bebd36c9244152a3e88d', '9238fb6efac56da391c4abf8a3eb1d16', 'Sulaiman Bakir', 'Kediri', '1967-03-06 00:00:00', 'true', 'Indonesia', '76a9e44b2b9d7b47ccbc258e33af7b46', 'stri', 'stri', 'false', 'stri', 'pria.jpg'),
('78b4cf34709770fde4aa86d250466e9f', '789567568', '2e7174db385ea9e5b8aa04b0b22156e9', '9238fb6efac56da391c4abf8a3eb1d16', 'Alkhawa Rizmi', 'Bekasi', '1952-07-05 00:00:00', 'true', 'stri', 'aa4a5d0437773a393defe493d993f93f', 'stri', 'stri', 'true', 'stri', ''),
('f96d9a9cea484f8acf0641f86d6719fa', '63457445', 'a501df01790b7f72bf8252773ab93412', '9238fb6efac56da391c4abf8a3eb1d16', 'Arief Khoirudin', 'Surabaya', '1971-06-18 00:00:00', 'true', 'Indonesia', 'aa4a5d0437773a393defe493d993f93f', 'stri', 'stri', 'true', 'stri', ''),
('b7f7a2c3ec8a5b056d748be83b859c9e', '45794435', '6b4ecba55e086b491c1fd086af9c5ef3', '60819669cb66e2b69b5279c725d8c429', 'Wiwiek Supernova', 'Kediri', '1967-02-22 00:00:00', 'true', 'Indonesia', '42d4aa0eba013bcdc0f0c394b855af05', 'stri', 'stri', 'true', 'stri', ''),
('46257f6782944e4b0b2881964b6fd000', '6346433', 'bb6add682c447986336b52ea74836db7', '9238fb6efac56da391c4abf8a3eb1d16', 'aries', 'Jakarta', '1942-04-04 00:00:00', 'true', 'stri', 'aa4a5d0437773a393defe493d993f93f', 'stri', 'stri', 'true', 'stri', '');
# --------------------------------------------------------

#
# Table structure for table `m_pekerjaan`
#

CREATE TABLE m_pekerjaan (
  kd varchar(50) NOT NULL default '',
  pekerjaan varchar(255) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_pekerjaan`
#

INSERT INTO m_pekerjaan (kd, pekerjaan) VALUES ('c0695c340fc5f4c18bce19c3f5cdde62', 'Pengusaha'),
('4a0327d89ab527d86fe5c230cfb55b61', 'Karyawan Swasta'),
('f611342993e11783abff11658a5254c2', 'Ibu Rumah Tangga'),
('3c632163e84c4a66701003dc145cc266', 'Guru'),
('44bf25fe438cf68804eda8166bb219a3', 'Pegawai Negeri Sipil'),
('7f0ee89dddfc87d039d459965a705555', 'Lain - lain'),
('33e2c02b5d38b4ba57f98df6733d4c7c', 'Kontraktor'),
('7c5a447905cdb92eefe30f961ddf1db9', 'Petani'),
('c334697b3ff10014577d6e638d3c5fae', 'Peternak'),
('5ac0669b791eef837c3a73aa2bd4518e', 'Pengacara'),
('21a8ea9a487491a10ac40507362d1516', 'Arsitektur'),
('92674300a2e723a87364987776f65653', 'Konsultan'),
('d8f0ad0bd66b92e0f214ad243acb4015', 'Programmer'),
('a270011dafd5c6a823129bfb119b25da', 'Penulis');
# --------------------------------------------------------

#
# Table structure for table `m_pil`
#

CREATE TABLE m_pil (
  kd varchar(50) NOT NULL default '',
  ngepil varchar(4) NOT NULL default '',
  pil char(1) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_pil`
#

INSERT INTO m_pil (kd, ngepil, pil) VALUES ('8052b4f1778dbe75abd8d0154bdabac0', 'pila', 'A'),
('50862dce6b73905c187a17dafd84b023', 'pilb', 'B'),
('7954c410f2c3084c7cf18bd7a82ed061', 'pilc', 'C'),
('900c7d958e8a4d5b2353be55135e74d7', 'pild', 'D'),
('fa59126812cb9dbc77b2509f4faff346', 'pile', 'E');
# --------------------------------------------------------

#
# Table structure for table `m_prog_pddkn`
#

CREATE TABLE m_prog_pddkn (
  kd varchar(50) NOT NULL default '',
  kd_keahlian varchar(50) NOT NULL default '',
  kd_tingkat varchar(50) NOT NULL default '',
  kd_jenis varchar(50) NOT NULL default '',
  prog_pddkn varchar(255) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_prog_pddkn`
#

INSERT INTO m_prog_pddkn (kd, kd_keahlian, kd_tingkat, kd_jenis, prog_pddkn) VALUES ('b40738f73b270fdce60693be8945ca64', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '563830584dd6f7ca1df2445284856ea0', 'Matematika'),
('8144eaa275683a0723c46615d812102f', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '563830584dd6f7ca1df2445284856ea0', 'Bahasa Inggris'),
('e27005235c131029b1113f5f2ab849eb', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '563830584dd6f7ca1df2445284856ea0', 'Fisika'),
('47fcb82a068e220dbc827988eaa34c54', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '563830584dd6f7ca1df2445284856ea0', 'Kimia'),
('c4c4cddece26dfd3a9925dd983ec573c', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '563830584dd6f7ca1df2445284856ea0', 'Komputer'),
('743cd645a0a32d9b97eafdbaf0a73706', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '563830584dd6f7ca1df2445284856ea0', 'Kewirausahaan'),
('4518aa16d3f9c7adb46009f9bce9e980', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '4da0875978d248a8187778a610c94817', 'Pendidikan Agama'),
('e256c6676c7a0bb5b8b90a7f42bbeef9', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '4da0875978d248a8187778a610c94817', 'Bahasa dan Satra Indonesia'),
('0a0ddb54c9fd97ccf35e09669880767d', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '4da0875978d248a8187778a610c94817', 'Pendidikan Jasmani dan Kesehatan'),
('b5edf9202e8ce7575c4bba160711d076', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '4da0875978d248a8187778a610c94817', 'Sejarah Nasional dan Umum'),
('aada8add790f677bb1b94346be59db7a', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '28a77a5fb7fafcda429c47daf7fbd161', 'Menggambar Teknik Dasar'),
('282e854c53cccb02f7f6403a3c389947', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '28a77a5fb7fafcda429c47daf7fbd161', 'Pengerjaan Dasar konstruksi Bangunan'),
('e335e31718ac51da8f8f434df1a8b088', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '28a77a5fb7fafcda429c47daf7fbd161', 'Pengerjaan Dasar Survai'),
('a9a27e1a65324f56e6341aba18d43e30', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '28a77a5fb7fafcda429c47daf7fbd161', 'Penghitungan Kekuatan Konstruksi Bangunan Sederhana'),
('6c647be95a4b023b701d58531a419d05', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '28a77a5fb7fafcda429c47daf7fbd161', 'Penghitungan Statika Bangunan'),
('0b352ed058b49ea3e951b00df6e91ae2', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '28a77a5fb7fafcda429c47daf7fbd161', 'Pengerjaan Pasang Batu'),
('57946275cd9527c71fb39203d1cb24b9', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '28a77a5fb7fafcda429c47daf7fbd161', 'Pengerjaan Plesteran'),
('442fc2a9e47ce710e98a8ab6e15e76af', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '28a77a5fb7fafcda429c47daf7fbd161', 'Pengerjaan Ubin'),
('44bf25fe438cf68804eda8166bb219a3', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '28a77a5fb7fafcda429c47daf7fbd161', 'Pengerjaan Konstruksi Beton Sederhana'),
('c1a563d053e1be4d9da48efbd0e5cf54', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '28a77a5fb7fafcda429c47daf7fbd161', 'Pengerjaan Bekisting dan Perancah'),
('54b53d55c4551e37f8820caf0992628e', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '28a77a5fb7fafcda429c47daf7fbd161', 'Pengerjaan Cat ( Emulasi )'),
('1f2a2d560d3547bd5274133f15f840ec', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '28a77a5fb7fafcda429c47daf7fbd161', 'Pengujian Bahan Bangunan');
# --------------------------------------------------------

#
# Table structure for table `m_prog_pddkn_jns`
#

CREATE TABLE m_prog_pddkn_jns (
  kd varchar(50) NOT NULL default '',
  jenis varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_prog_pddkn_jns`
#

INSERT INTO m_prog_pddkn_jns (kd, jenis) VALUES ('563830584dd6f7ca1df2445284856ea0', 'Adaptif'),
('4da0875978d248a8187778a610c94817', 'Normatif'),
('28a77a5fb7fafcda429c47daf7fbd161', 'Produktif');
# --------------------------------------------------------

#
# Table structure for table `m_ruang`
#

CREATE TABLE m_ruang (
  kd varchar(50) NOT NULL default '',
  ruang varchar(255) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_ruang`
#

INSERT INTO m_ruang (kd, ruang) VALUES ('b18773d4ecc72a5de95b82afbb243bb0', 'A'),
('1244f645158059dad4f49364d9a057b1', 'B'),
('f31b2f13f5cd9d1a90198f919e583176', 'C');
# --------------------------------------------------------

#
# Table structure for table `m_ruang_kelas`
#

CREATE TABLE m_ruang_kelas (
  kd varchar(50) NOT NULL default '',
  kd_keahlian varchar(50) NOT NULL default '',
  kd_tingkat varchar(50) NOT NULL default '',
  kd_ruang varchar(50) NOT NULL default '',
  kd_guru varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_ruang_kelas`
#

INSERT INTO m_ruang_kelas (kd, kd_keahlian, kd_tingkat, kd_ruang, kd_guru) VALUES ('e6f98f48d0b2a1165db2526766af2480', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '1100d8d0eebccc4f22986b907db568c2'),
('830ebee83a846329d9d539d664b4e25d', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '1244f645158059dad4f49364d9a057b1', 'b7f7a2c3ec8a5b056d748be83b859c9e'),
('ad0677592d81ab7099f9d72937bd9ae3', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'f31b2f13f5cd9d1a90198f919e583176', 'f96d9a9cea484f8acf0641f86d6719fa');
# --------------------------------------------------------

#
# Table structure for table `m_satuan`
#

CREATE TABLE m_satuan (
  kd varchar(50) NOT NULL default '',
  satuan varchar(255) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_satuan`
#

INSERT INTO m_satuan (kd, satuan) VALUES ('9cf287c46326155223485b1883307751', 'Hari'),
('ca1bc40765052cc94b650592d580e025', 'Bulan');
# --------------------------------------------------------

#
# Table structure for table `m_semester`
#

CREATE TABLE m_semester (
  kd varchar(50) NOT NULL default '',
  semester char(1) NOT NULL default '',
  kd_semester_set varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_semester`
#

INSERT INTO m_semester (kd, semester, kd_semester_set) VALUES ('c7842bbdf5218f831eedb09a68e8e58b', '1', 'ce8a0066c0e535bf5fedb54413e75b5d'),
('5e548749479f4bef34a3ff3024cd1d6d', '2', 'a140a30047adb57e98a71985348bed60'),
('fa97046a865fbe48440f4c3627b058b3', '3', 'ce8a0066c0e535bf5fedb54413e75b5d'),
('f3fdee594031a44cceba4b327b8e891c', '4', 'a140a30047adb57e98a71985348bed60'),
('828a1dff0cffcb9e82e5be281bb286ed', '5', 'ce8a0066c0e535bf5fedb54413e75b5d'),
('ab1fb7860fee543995b52464b105d665', '6', 'a140a30047adb57e98a71985348bed60');
# --------------------------------------------------------

#
# Table structure for table `m_semester_set`
#

CREATE TABLE m_semester_set (
  kd varchar(50) NOT NULL default '',
  jenis varchar(50) NOT NULL default '',
  status enum('true','false') NOT NULL default 'true'
) TYPE=MyISAM;

#
# Dumping data for table `m_semester_set`
#

INSERT INTO m_semester_set (kd, jenis, status) VALUES ('ce8a0066c0e535bf5fedb54413e75b5d', 'Ganjil', 'false'),
('a140a30047adb57e98a71985348bed60', 'Genap', 'true');
# --------------------------------------------------------

#
# Table structure for table `m_siswa`
#

CREATE TABLE m_siswa (
  kd varchar(50) NOT NULL default '',
  nis varchar(10) NOT NULL default '',
  password varchar(255) NOT NULL default '',
  passortu varchar(255) NOT NULL default '',
  nama varchar(30) NOT NULL default '',
  kd_kelamin varchar(50) NOT NULL default '',
  tmp_lahir varchar(50) NOT NULL default '',
  tgl_lahir datetime NOT NULL default '0000-00-00 00:00:00',
  kd_agama varchar(50) NOT NULL default '',
  anak_ke char(2) NOT NULL default '',
  status_kel varchar(50) NOT NULL default '',
  alamat longtext NOT NULL,
  telepon varchar(255) NOT NULL default '',
  diterima_keahlian varchar(50) NOT NULL default '',
  diterima_tingkat varchar(50) NOT NULL default '',
  diterima_tgl datetime NOT NULL default '0000-00-00 00:00:00',
  kd_tapel varchar(50) NOT NULL default '',
  asl_sek varchar(255) NOT NULL default '',
  almt_sek varchar(255) NOT NULL default '',
  nm_ayah varchar(30) NOT NULL default '',
  nm_ibu varchar(30) NOT NULL default '',
  pek_ayah varchar(50) NOT NULL default '',
  pek_ibu varchar(50) NOT NULL default '',
  foto varchar(255) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_siswa`
#

INSERT INTO m_siswa (kd, nis, password, passortu, nama, kd_kelamin, tmp_lahir, tgl_lahir, kd_agama, anak_ke, status_kel, alamat, telepon, diterima_keahlian, diterima_tingkat, diterima_tgl, kd_tapel, asl_sek, almt_sek, nm_ayah, nm_ibu, pek_ayah, pek_ibu, foto) VALUES ('21313b9d283cb400ee114f11d123ca2c', '6578567', '1755af0c1b26d9e8f4244cb091b47704', '1755af0c1b26d9e8f4244cb091b47704', 'Yulianti Larosa', '60819669cb66e2b69b5279c725d8c429', 'Jakarta', '1988-10-02 00:00:00', 'fc5abdef6f0d04b7bfea584fc82336d9', '2', 'stri', 'stri', 'stri', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '2006-05-03 00:00:00', 'f00349a152757c0381b589be4f67a826', 'stri', 'stri', 'stri', 'stri', '5ac0669b791eef837c3a73aa2bd4518e', '5ac0669b791eef837c3a73aa2bd4518e', ''),
('29565c8691b627c7a81c0e5fd7403b40', '76895656', '42e68597522cf82199c64fa2dd528445', '25c342c5ca9950e408bcb032f8c0b2f4', 'Endang Kusuma', '60819669cb66e2b69b5279c725d8c429', 'Makasar', '1988-04-04 00:00:00', '76a9e44b2b9d7b47ccbc258e33af7b46', '1', 'stri', 'stri', 'stri', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '2006-05-01 00:00:00', 'f00349a152757c0381b589be4f67a826', 'stri', 'stri', 'stri', 'stri', '21a8ea9a487491a10ac40507362d1516', '21a8ea9a487491a10ac40507362d1516', ''),
('f08df0eb9323a6b5db4ad37c5be1a188', '54645333', 'd3ee4a60381e01cf5af6b23a85d712c7', 'd3ee4a60381e01cf5af6b23a85d712c7', 'Iqlima', '60819669cb66e2b69b5279c725d8c429', 'Palembang', '1989-12-28 00:00:00', 'aa4a5d0437773a393defe493d993f93f', '1', 'stri', 'stri', 'stri', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', '2006-05-06 00:00:00', 'f00349a152757c0381b589be4f67a826', 'stri', 'stri', 'stri', 'stri', '33e2c02b5d38b4ba57f98df6733d4c7c', '33e2c02b5d38b4ba57f98df6733d4c7c', '');
# --------------------------------------------------------

#
# Table structure for table `m_tapel`
#

CREATE TABLE m_tapel (
  kd varchar(50) NOT NULL default '',
  tahun1 varchar(4) NOT NULL default '',
  tahun2 varchar(4) NOT NULL default '',
  status enum('true','false') NOT NULL default 'true'
) TYPE=MyISAM;

#
# Dumping data for table `m_tapel`
#

INSERT INTO m_tapel (kd, tahun1, tahun2, status) VALUES ('85c4e4a89320ecc4fea1a5b9e5cc2e52', '2004', '2005', 'false'),
('e64b1ca4c438a8af17256c5d2cfc39c4', '2005', '2006', 'true'),
('f00349a152757c0381b589be4f67a826', '2006', '2007', 'false'),
('9a7edbc9c4072c46490d7706ca9018e5', '2007', '2008', 'false'),
('43fcdd4b8f1d349ca433b68a788bf72f', '2008', '2009', 'false'),
('6cd37f2915763b8e7c8e4b06e7ac0f88', '2009', '2010', 'false'),
('94024e209fb19be4f18f4918daa911a0', '2010', '2011', 'false'),
('fb2c11a363e6683d29ea5226b6cc5ae5', '2011', '2012', 'false'),
('9b0b9c27190f26f3f057d1126dab318d', '2012', '2013', 'false'),
('a6bd01d78d6fccc4d1ce598d90cacb13', '2013', '2014', 'false'),
('f611342993e11783abff11658a5254c2', '2014', '2015', 'false'),
('2f31fc8b00d81478eda3527f41f1cc39', '2015', '2016', 'false'),
('4982e232f7362045a207dbde5c1cba9d', '2016', '2017', 'false'),
('872e1b2a6d46029fa8a7e01c39ad3ce2', '2017', '2018', 'false'),
('aeff0d81a5a9064c272fc6199a9bedec', '2018', '2019', 'false'),
('1b282ca430e761e37fa33ad15a61bf6a', '2019', '2020', 'false');
# --------------------------------------------------------

#
# Table structure for table `m_tingkat`
#

CREATE TABLE m_tingkat (
  kd varchar(50) NOT NULL default '',
  tingkat char(1) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_tingkat`
#

INSERT INTO m_tingkat (kd, tingkat) VALUES ('1236d8c726c2719824d6328ca94d2628', '1'),
('97a0edcf8ee7f52bae4bc4fc0f14090c', '2'),
('7cb2d990d8589c56642182118dc34c54', '3');
# --------------------------------------------------------

#
# Table structure for table `m_uang`
#

CREATE TABLE m_uang (
  kd varchar(50) NOT NULL default '',
  uang varchar(10) NOT NULL default '',
  kategori varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `m_uang`
#

INSERT INTO m_uang (kd, uang, kategori) VALUES ('4c75242f81285d49b3f18a7a4d210a8f', '1000000', 'Uang Gedung'),
('bad81d085df6c259223d9153cd2fd99b', '15000', 'Uang SPP'),
('7a6df9d882fb55dbe4bc9725e64aab57', '22000', 'Uang Tes'),
('31c2d890125b4103b7844e813f52cf1a', '10000', 'Uang Lain');
# --------------------------------------------------------

#
# Table structure for table `pegawai_absensi`
#

CREATE TABLE pegawai_absensi (
  kd varchar(50) NOT NULL default '',
  kd_pegawai varchar(50) NOT NULL default '',
  kd_ket varchar(50) NOT NULL default '',
  tgl_absensi datetime NOT NULL default '0000-00-00 00:00:00'
) TYPE=MyISAM;

#
# Dumping data for table `pegawai_absensi`
#

INSERT INTO pegawai_absensi (kd, kd_pegawai, kd_ket, tgl_absensi) VALUES ('2c7310664fdb3a4fb7bf1154545c28eb', 'b81d75747c2dfe32492eff5619fae609', 'a5021199e355baa52547a0bdc3ddbdb6', '2006-01-02 00:00:00'),
('ebc7a97495e66d834a88747a14b695d6', '8a7220d3f1675f2ccf1ea311ee3813e3', 'fe6abc6ea080299b975204d73c1590e3', '2006-01-06 00:00:00'),
('ba14a7d4b4384f0e81a6e790c4fc4489', '1100d8d0eebccc4f22986b907db568c2', 'a47cbd787696841bfeee02330e0bda82', '2006-01-04 00:00:00'),
('3723bb54870302abb3ce5f5c1a696de4', '8a7220d3f1675f2ccf1ea311ee3813e3', 'fe6abc6ea080299b975204d73c1590e3', '2006-01-07 00:00:00'),
('d5124ff812e82046f4d08783ffe7feed', '72113226bbfeb8c05fadfbcd9ab2c678', 'a47cbd787696841bfeee02330e0bda82', '2006-01-12 00:00:00');
# --------------------------------------------------------

#
# Table structure for table `pegawai_cuti`
#

CREATE TABLE pegawai_cuti (
  kd varchar(50) NOT NULL default '',
  kd_pegawai varchar(50) NOT NULL default '',
  jml char(3) NOT NULL default '',
  kd_satuan varchar(50) NOT NULL default '',
  waktu varchar(255) NOT NULL default '',
  ket varchar(255) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `pegawai_cuti`
#

INSERT INTO pegawai_cuti (kd, kd_pegawai, jml, kd_satuan, waktu, ket) VALUES ('9229b03b82de112ec1463981d1519960', '8a7220d3f1675f2ccf1ea311ee3813e3', '2', '9cf287c46326155223485b1883307751', 'stri', 'stri');
# --------------------------------------------------------

#
# Table structure for table `pegawai_nilai`
#

CREATE TABLE pegawai_nilai (
  kd_pegawai varchar(50) NOT NULL default '',
  kesetiaan varchar(50) NOT NULL default '',
  prestasi_kerja varchar(50) NOT NULL default '',
  tanggung_jawab varchar(50) NOT NULL default '',
  kejujuran varchar(50) NOT NULL default '',
  kerja_sama varchar(50) NOT NULL default '',
  prakarsa varchar(50) NOT NULL default '',
  kepemimpinan varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `pegawai_nilai`
#

INSERT INTO pegawai_nilai (kd_pegawai, kesetiaan, prestasi_kerja, tanggung_jawab, kejujuran, kerja_sama, prakarsa, kepemimpinan) VALUES ('4d43451e91f73908ac928b28f24177f6', '72cdb2a6156f64d26571d9c17104d2c6', 'f526a13d26772d14ef9b9abe70f7e593', '1b07ae0b7f48287c8e213eaf3b53a566', 'f526a13d26772d14ef9b9abe70f7e593', '1b07ae0b7f48287c8e213eaf3b53a566', '1a0ae81a30c87a9e8585745d35a126a3', '72cdb2a6156f64d26571d9c17104d2c6'),
('1100d8d0eebccc4f22986b907db568c2', '1b07ae0b7f48287c8e213eaf3b53a566', 'c114c3ab5dc5e7b9bfec6af8a1f6a15a', 'f526a13d26772d14ef9b9abe70f7e593', '1b07ae0b7f48287c8e213eaf3b53a566', 'f526a13d26772d14ef9b9abe70f7e593', '72cdb2a6156f64d26571d9c17104d2c6', 'f526a13d26772d14ef9b9abe70f7e593'),
('8a7220d3f1675f2ccf1ea311ee3813e3', 'c114c3ab5dc5e7b9bfec6af8a1f6a15a', '-', '1b07ae0b7f48287c8e213eaf3b53a566', '-', '-', '-', '-'),
('b81d75747c2dfe32492eff5619fae609', '1b07ae0b7f48287c8e213eaf3b53a566', '-', '1b07ae0b7f48287c8e213eaf3b53a566', '-', '-', '-', '-'),
('383d8c64b1de91531e290a3e6080beaa', 'c114c3ab5dc5e7b9bfec6af8a1f6a15a', 'f526a13d26772d14ef9b9abe70f7e593', '72cdb2a6156f64d26571d9c17104d2c6', '72cdb2a6156f64d26571d9c17104d2c6', '1a0ae81a30c87a9e8585745d35a126a3', '72cdb2a6156f64d26571d9c17104d2c6', '1a0ae81a30c87a9e8585745d35a126a3'),
('b433938d73d1978ec73d22ccf808ec6c', '-', '-', '-', '-', '-', '-', '-'),
('076885fe78dcf72d2305d4184803ac41', '-', '-', '-', '-', '-', '-', '-'),
('e1e076b154b9e1a3f25b646de7c99d93', '-', '-', '-', '-', '-', '-', '-'),
('c7ce49ed986a4da563c67eec11d49643', '-', '-', '-', '-', '-', '-', '-'),
('4f79709e7a42f9ef72e4648f281948ce', '-', '-', '-', '-', '-', '-', '-'),
('6fe7de98cce1c491fb1c27598e66d3cc', '-', '-', '-', '-', '-', '-', '-'),
('89f10e5f34971e7957547d67c26e4c07', '-', '-', '-', '-', '-', '-', '-'),
('a266c1b0c0f0398c850723d7b0b9d50d', '-', '-', '-', '-', '-', '-', '-'),
('f874d0acac902d193834d8381493f26f', '-', '-', '-', '-', '-', '-', '-'),
('956b7b042439566a57d1fa82accba644', '-', '-', '-', '-', '-', '-', '-'),
('a2c78416d970632f239065b610896244', '-', '-', '-', '-', '-', '-', '-'),
('95a3d1b73ef4964158eb5d4c89fad301', '-', '-', '-', '-', '-', '-', '-'),
('df263ba4c819aaed85502a6fab2d4129', '-', '-', '-', '-', '-', '-', '-'),
('ec770eaae5f49134b94c814d16b9793d', '-', '-', '-', '-', '-', '-', '-'),
('34bc29f2d2589ead743781f34d418e82', '-', '-', '-', '-', '-', '-', '-'),
('dc0dc3a1399b3e5ce6658b10e24d2cef', '-', '-', '-', '-', '-', '-', '-'),
('72113226bbfeb8c05fadfbcd9ab2c678', '1b07ae0b7f48287c8e213eaf3b53a566', '1b07ae0b7f48287c8e213eaf3b53a566', '1b07ae0b7f48287c8e213eaf3b53a566', '1b07ae0b7f48287c8e213eaf3b53a566', '1b07ae0b7f48287c8e213eaf3b53a566', '1b07ae0b7f48287c8e213eaf3b53a566', '1b07ae0b7f48287c8e213eaf3b53a566'),
('78b4cf34709770fde4aa86d250466e9f', '-', '-', '-', '-', '-', '-', '-'),
('f96d9a9cea484f8acf0641f86d6719fa', '-', '-', '-', '-', '-', '-', '-'),
('b7f7a2c3ec8a5b056d748be83b859c9e', '-', '-', '-', '-', '-', '-', '-'),
('46257f6782944e4b0b2881964b6fd000', '-', '-', '-', '-', '-', '-', '-');
# --------------------------------------------------------

#
# Table structure for table `pegawai_pddkn`
#

CREATE TABLE pegawai_pddkn (
  kd_pegawai varchar(50) NOT NULL default '',
  pend_sd varchar(255) NOT NULL default '',
  pend_sltp varchar(255) NOT NULL default '',
  pend_slta varchar(255) NOT NULL default '',
  pend_kuliah varchar(255) NOT NULL default '',
  tahun_sd varchar(4) NOT NULL default '',
  tahun_sltp varchar(4) NOT NULL default '',
  tahun_slta varchar(4) NOT NULL default '',
  tahun_kuliah varchar(4) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `pegawai_pddkn`
#

INSERT INTO pegawai_pddkn (kd_pegawai, pend_sd, pend_sltp, pend_slta, pend_kuliah, tahun_sd, tahun_sltp, tahun_slta, tahun_kuliah) VALUES ('1100d8d0eebccc4f22986b907db568c2', 'stri', 'stri', 'stri', 'stri', '1927', '1927', 'stri', 'stri'),
('8a7220d3f1675f2ccf1ea311ee3813e3', 'stri', 'stri', 'stri', 'stri', 'stri', 'stri', 'stri', 'stri'),
('b81d75747c2dfe32492eff5619fae609', 'stri', 'stri', 'stri', 'stri', 'stri', 'stri', 'stri', 'stri'),
('72113226bbfeb8c05fadfbcd9ab2c678', 'stri', 'stri', 'stri', 'stri', 'stri', 'stri', 'stri', 'stri'),
('78b4cf34709770fde4aa86d250466e9f', 'stri', 'stri', 'stri', 'stri', 'stri', 'stri', 'stri', 'stri'),
('f96d9a9cea484f8acf0641f86d6719fa', 'stri', 'stri', 'stri', 'stri', 'stri', 'stri', 'stri', 'stri'),
('b7f7a2c3ec8a5b056d748be83b859c9e', 'stri', 'stri', 'stri', 'stri', 'stri', 'stri', 'stri', 'stri'),
('46257f6782944e4b0b2881964b6fd000', 'stri', 'stri', 'stri', 'stri', 'stri', 'stri', 'stri', 'stri');
# --------------------------------------------------------

#
# Table structure for table `psb`
#

CREATE TABLE psb (
  kd varchar(50) NOT NULL default '',
  nomer varchar(50) NOT NULL default '',
  nama varchar(30) NOT NULL default '',
  kd_kelamin varchar(50) NOT NULL default '',
  tmp_lahir varchar(50) NOT NULL default '',
  tgl_lahir datetime NOT NULL default '0000-00-00 00:00:00',
  bangsa varchar(50) NOT NULL default '',
  kd_agama varchar(50) NOT NULL default '',
  anak_ke char(1) NOT NULL default '',
  alamat longtext NOT NULL,
  nm_ortu varchar(30) NOT NULL default '',
  pendidikan longtext NOT NULL,
  kd_pekerjaan varchar(50) NOT NULL default '',
  almt_pek longtext NOT NULL,
  ket longtext NOT NULL,
  diterima text NOT NULL,
  tgl_sah datetime NOT NULL default '0000-00-00 00:00:00'
) TYPE=MyISAM;

#
# Dumping data for table `psb`
#

# --------------------------------------------------------

#
# Table structure for table `siswa_absensi`
#

CREATE TABLE siswa_absensi (
  kd varchar(50) NOT NULL default '',
  kd_ket varchar(50) NOT NULL default '',
  kd_siswa varchar(50) NOT NULL default '',
  tgl_absensi datetime NOT NULL default '0000-00-00 00:00:00'
) TYPE=MyISAM;

#
# Dumping data for table `siswa_absensi`
#

INSERT INTO siswa_absensi (kd, kd_ket, kd_siswa, tgl_absensi) VALUES ('241f82ae676ed4791ef663b48a91df83', 'a47cbd787696841bfeee02330e0bda82', '29565c8691b627c7a81c0e5fd7403b40', '2006-01-01 00:00:00'),
('af3ef695eec53472167c5e81d3607fc5', 'fe6abc6ea080299b975204d73c1590e3', '21313b9d283cb400ee114f11d123ca2c', '2006-01-06 00:00:00'),
('93cb59873fb467afa2f3ef839eea45b2', 'a47cbd787696841bfeee02330e0bda82', '21313b9d283cb400ee114f11d123ca2c', '2006-01-02 00:00:00'),
('f4b2459d87dbe7208fc9ab1ebe9ffeec', 'a5021199e355baa52547a0bdc3ddbdb6', '29565c8691b627c7a81c0e5fd7403b40', '2006-01-03 00:00:00'),
('0e7a087b6744415d302ff030419b5e02', 'a47cbd787696841bfeee02330e0bda82', '21313b9d283cb400ee114f11d123ca2c', '2006-01-01 00:00:00');
# --------------------------------------------------------

#
# Table structure for table `siswa_ekstra`
#

CREATE TABLE siswa_ekstra (
  kd_ekstra varchar(50) NOT NULL default '',
  kd_siswa varchar(50) NOT NULL default '',
  kd_nilai varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `siswa_ekstra`
#

INSERT INTO siswa_ekstra (kd_ekstra, kd_siswa, kd_nilai) VALUES ('d43fb696e07a6feb1146fde74afbe255', '29565c8691b627c7a81c0e5fd7403b40', ''),
('62bc631113ecea991cfc724b15b9f1a3', '29565c8691b627c7a81c0e5fd7403b40', '');
# --------------------------------------------------------

#
# Table structure for table `siswa_keahlian`
#

CREATE TABLE siswa_keahlian (
  kd varchar(50) NOT NULL default '',
  kd_siswa varchar(50) NOT NULL default '',
  kd_keahlian varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `siswa_keahlian`
#

INSERT INTO siswa_keahlian (kd, kd_siswa, kd_keahlian) VALUES ('', '21313b9d283cb400ee114f11d123ca2c', '6ca4cdd2e99c4fa94e15b3f8164ebebd'),
('', '29565c8691b627c7a81c0e5fd7403b40', '6ca4cdd2e99c4fa94e15b3f8164ebebd'),
('', 'f08df0eb9323a6b5db4ad37c5be1a188', '6ca4cdd2e99c4fa94e15b3f8164ebebd');
# --------------------------------------------------------

#
# Table structure for table `siswa_kelakuan`
#

CREATE TABLE siswa_kelakuan (
  kd varchar(50) NOT NULL default '',
  kd_kelakuan varchar(50) NOT NULL default '',
  kd_siswa varchar(50) NOT NULL default '',
  nilai varchar(255) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `siswa_kelakuan`
#

# --------------------------------------------------------

#
# Table structure for table `siswa_nilai`
#

CREATE TABLE siswa_nilai (
  kd varchar(50) NOT NULL default '',
  kd_tapel varchar(50) NOT NULL default '',
  kd_semester varchar(50) NOT NULL default '',
  kd_prog_pddkn varchar(50) NOT NULL default '',
  kd_guru varchar(50) NOT NULL default '',
  kd_siswa varchar(50) NOT NULL default '',
  kd_nilai_kat varchar(50) NOT NULL default '',
  kd_nilai_angka varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `siswa_nilai`
#

INSERT INTO siswa_nilai (kd, kd_tapel, kd_semester, kd_prog_pddkn, kd_guru, kd_siswa, kd_nilai_kat, kd_nilai_angka) VALUES ('8258d2cf7df9b0214c652e589fcdbfce', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1ac23d3f78e319cce2b0bfe310310739', '', '506f44e77a463f4acc15ebbfcd16a2fd', '8c85630d609325ed96f8f5168fabbe18'),
('e2df5cd2437857bb327d61d42928891b', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1ac23d3f78e319cce2b0bfe310310739', '29565c8691b627c7a81c0e5fd7403b40', '506f44e77a463f4acc15ebbfcd16a2fd', '701425d00f3b54eee90adcf1cf338a03'),
('3ffd0e3896e9574a3edebd164cba651b', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1ac23d3f78e319cce2b0bfe310310739', '21313b9d283cb400ee114f11d123ca2c', '506f44e77a463f4acc15ebbfcd16a2fd', '2d3fd3c78f2b2886d107cae37dd8ea4d'),
('0739b66760519ac91180fc6a819bd248', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1ac23d3f78e319cce2b0bfe310310739', '29565c8691b627c7a81c0e5fd7403b40', 'c80425e699a6b154fa56d935bb6146bc', '5eb912d41cc69189cc2a7ab7b11099bd'),
('b3b18536519f0999793c8970da11ea50', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1ac23d3f78e319cce2b0bfe310310739', '21313b9d283cb400ee114f11d123ca2c', 'c80425e699a6b154fa56d935bb6146bc', '9229b03b82de112ec1463981d1519960');
# --------------------------------------------------------

#
# Table structure for table `siswa_raport`
#

CREATE TABLE siswa_raport (
  kd varchar(50) NOT NULL default '',
  kd_tapel varchar(50) NOT NULL default '',
  kd_semester varchar(50) NOT NULL default '',
  kd_keahlian varchar(50) NOT NULL default '',
  kd_tingkat varchar(50) NOT NULL default '',
  kd_ruang varchar(50) NOT NULL default '',
  kd_siswa varchar(50) NOT NULL default '',
  kd_prog_pddkn varchar(50) NOT NULL default '',
  kd_nilai varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `siswa_raport`
#

INSERT INTO siswa_raport (kd, kd_tapel, kd_semester, kd_keahlian, kd_tingkat, kd_ruang, kd_siswa, kd_prog_pddkn, kd_nilai) VALUES ('d0cd4096307b62a00bbbe93b4fa122be', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '29565c8691b627c7a81c0e5fd7403b40', 'b40738f73b270fdce60693be8945ca64', '5eb912d41cc69189cc2a7ab7b11099bd'),
('05e291f76d452c0a44f2d60e55d4f630', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '29565c8691b627c7a81c0e5fd7403b40', '8144eaa275683a0723c46615d812102f', '701425d00f3b54eee90adcf1cf338a03'),
('1cdf39556fa30e3d891ca5c9c1bed6c4', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '29565c8691b627c7a81c0e5fd7403b40', 'e27005235c131029b1113f5f2ab849eb', '701425d00f3b54eee90adcf1cf338a03'),
('d6f77f55382df06f152e90d62b7d8dd4', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '29565c8691b627c7a81c0e5fd7403b40', '47fcb82a068e220dbc827988eaa34c54', '701425d00f3b54eee90adcf1cf338a03'),
('2313723617782eb1d0bbd5dfa86923f4', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '29565c8691b627c7a81c0e5fd7403b40', 'c4c4cddece26dfd3a9925dd983ec573c', '5eb912d41cc69189cc2a7ab7b11099bd'),
('5c7d1baf292398095f6e8714b4bd51fc', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '29565c8691b627c7a81c0e5fd7403b40', '743cd645a0a32d9b97eafdbaf0a73706', '5eb912d41cc69189cc2a7ab7b11099bd'),
('6267b698b49b706855c83bfbcc5e49da', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '29565c8691b627c7a81c0e5fd7403b40', '4518aa16d3f9c7adb46009f9bce9e980', '701425d00f3b54eee90adcf1cf338a03'),
('9fff2dc1555864fe132f00315d91ee84', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '29565c8691b627c7a81c0e5fd7403b40', 'e256c6676c7a0bb5b8b90a7f42bbeef9', '8c85630d609325ed96f8f5168fabbe18'),
('5575a3dc925c5226ea8623835795b715', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '29565c8691b627c7a81c0e5fd7403b40', '0a0ddb54c9fd97ccf35e09669880767d', '8c85630d609325ed96f8f5168fabbe18'),
('d3e39a1efae09bf0d1e14e4e4039551c', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '29565c8691b627c7a81c0e5fd7403b40', 'b5edf9202e8ce7575c4bba160711d076', '701425d00f3b54eee90adcf1cf338a03'),
('4ef6e4b6dc99a82b096c66b89cafbd4c', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '29565c8691b627c7a81c0e5fd7403b40', 'aada8add790f677bb1b94346be59db7a', '701425d00f3b54eee90adcf1cf338a03'),
('2104a00308c6d460a28edb5138ccbaa8', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '29565c8691b627c7a81c0e5fd7403b40', '282e854c53cccb02f7f6403a3c389947', '8c85630d609325ed96f8f5168fabbe18'),
('275484b39b752b2c709fb9eb91c9fb46', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '29565c8691b627c7a81c0e5fd7403b40', 'e335e31718ac51da8f8f434df1a8b088', '5eb912d41cc69189cc2a7ab7b11099bd'),
('4c9f9a016765f071454e8b16da19fcb9', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '29565c8691b627c7a81c0e5fd7403b40', 'a9a27e1a65324f56e6341aba18d43e30', '5eb912d41cc69189cc2a7ab7b11099bd'),
('f5ca3437aec216bb829982615d370fa9', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '29565c8691b627c7a81c0e5fd7403b40', '6c647be95a4b023b701d58531a419d05', '701425d00f3b54eee90adcf1cf338a03'),
('684224857ae5f5a4230c38dc6b2f7cba', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '29565c8691b627c7a81c0e5fd7403b40', '0b352ed058b49ea3e951b00df6e91ae2', '5eb912d41cc69189cc2a7ab7b11099bd'),
('4e3d239ae4547dfb2732a3ba374e6454', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '29565c8691b627c7a81c0e5fd7403b40', '57946275cd9527c71fb39203d1cb24b9', '701425d00f3b54eee90adcf1cf338a03'),
('3491b843d9f3e3bd3662ad92f4d8d6e3', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '29565c8691b627c7a81c0e5fd7403b40', '442fc2a9e47ce710e98a8ab6e15e76af', '5eb912d41cc69189cc2a7ab7b11099bd'),
('47f3deff1dc669b8320ea48dff8f0ff7', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '29565c8691b627c7a81c0e5fd7403b40', '44bf25fe438cf68804eda8166bb219a3', '5eb912d41cc69189cc2a7ab7b11099bd'),
('84915e40e16b0a1090c8d98a2c085157', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '29565c8691b627c7a81c0e5fd7403b40', 'c1a563d053e1be4d9da48efbd0e5cf54', '5eb912d41cc69189cc2a7ab7b11099bd'),
('4f02f5c757e4bc12ba701577c2efaf22', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '29565c8691b627c7a81c0e5fd7403b40', '54b53d55c4551e37f8820caf0992628e', '5eb912d41cc69189cc2a7ab7b11099bd'),
('fc512b84e4ff448105b824afd0b564ee', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '29565c8691b627c7a81c0e5fd7403b40', '1f2a2d560d3547bd5274133f15f840ec', '5eb912d41cc69189cc2a7ab7b11099bd');
# --------------------------------------------------------

#
# Table structure for table `siswa_raport_absensi`
#

CREATE TABLE siswa_raport_absensi (
  kd varchar(50) NOT NULL default '',
  kd_siswa varchar(50) NOT NULL default '',
  kd_tapel varchar(50) NOT NULL default '',
  kd_semester varchar(50) NOT NULL default '',
  kd_keahlian varchar(50) NOT NULL default '',
  kd_tingkat varchar(50) NOT NULL default '',
  kd_ruang varchar(50) NOT NULL default '',
  kd_ket varchar(50) NOT NULL default '',
  jml varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `siswa_raport_absensi`
#

# --------------------------------------------------------

#
# Table structure for table `siswa_raport_ekstra`
#

CREATE TABLE siswa_raport_ekstra (
  kd varchar(50) NOT NULL default '',
  kd_siswa varchar(50) NOT NULL default '',
  kd_tapel varchar(50) NOT NULL default '',
  kd_semester varchar(50) NOT NULL default '',
  kd_keahlian varchar(50) NOT NULL default '',
  kd_tingkat varchar(50) NOT NULL default '',
  kd_ruang varchar(50) NOT NULL default '',
  kd_ekstra varchar(50) NOT NULL default '',
  kd_nilai varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `siswa_raport_ekstra`
#

INSERT INTO siswa_raport_ekstra (kd, kd_siswa, kd_tapel, kd_semester, kd_keahlian, kd_tingkat, kd_ruang, kd_ekstra, kd_nilai) VALUES ('0b349ce9535fc855056f71aed61dafa3', '29565c8691b627c7a81c0e5fd7403b40', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', 'd43fb696e07a6feb1146fde74afbe255', '8c85630d609325ed96f8f5168fabbe18'),
('d00bed60657c7547f33bd80248efe242', '29565c8691b627c7a81c0e5fd7403b40', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '62bc631113ecea991cfc724b15b9f1a3', '701425d00f3b54eee90adcf1cf338a03');
# --------------------------------------------------------

#
# Table structure for table `siswa_raport_rangking`
#

CREATE TABLE siswa_raport_rangking (
  kd varchar(50) NOT NULL default '',
  kd_siswa varchar(50) NOT NULL default '',
  kd_tapel varchar(50) NOT NULL default '',
  kd_semester varchar(50) NOT NULL default '',
  kd_keahlian varchar(50) NOT NULL default '',
  kd_tingkat varchar(50) NOT NULL default '',
  kd_ruang varchar(50) NOT NULL default '',
  rangking char(2) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `siswa_raport_rangking`
#

INSERT INTO siswa_raport_rangking (kd, kd_siswa, kd_tapel, kd_semester, kd_keahlian, kd_tingkat, kd_ruang, rangking) VALUES ('c32b1de5f8d7293e7bcb0e1837827352', '29565c8691b627c7a81c0e5fd7403b40', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'b18773d4ecc72a5de95b82afbb243bb0', '3');
# --------------------------------------------------------

#
# Table structure for table `siswa_ruang`
#

CREATE TABLE siswa_ruang (
  kd_tapel varchar(50) NOT NULL default '',
  kd_ruang varchar(50) NOT NULL default '',
  kd_siswa varchar(50) NOT NULL default '',
  status enum('true','false') NOT NULL default 'false'
) TYPE=MyISAM;

#
# Dumping data for table `siswa_ruang`
#

INSERT INTO siswa_ruang (kd_tapel, kd_ruang, kd_siswa, status) VALUES ('e64b1ca4c438a8af17256c5d2cfc39c4', 'b18773d4ecc72a5de95b82afbb243bb0', '', 'true'),
('e64b1ca4c438a8af17256c5d2cfc39c4', 'b18773d4ecc72a5de95b82afbb243bb0', '29565c8691b627c7a81c0e5fd7403b40', 'true'),
('e64b1ca4c438a8af17256c5d2cfc39c4', '1244f645158059dad4f49364d9a057b1', '21313b9d283cb400ee114f11d123ca2c', 'false'),
('e64b1ca4c438a8af17256c5d2cfc39c4', 'b18773d4ecc72a5de95b82afbb243bb0', '21313b9d283cb400ee114f11d123ca2c', 'true'),
('e64b1ca4c438a8af17256c5d2cfc39c4', 'f31b2f13f5cd9d1a90198f919e583176', '29565c8691b627c7a81c0e5fd7403b40', 'false');
# --------------------------------------------------------

#
# Table structure for table `siswa_tingkat`
#

CREATE TABLE siswa_tingkat (
  kd_tapel varchar(50) NOT NULL default '',
  kd_tingkat varchar(50) NOT NULL default '',
  kd_siswa varchar(50) NOT NULL default '',
  status enum('true','false') NOT NULL default 'false'
) TYPE=MyISAM;

#
# Dumping data for table `siswa_tingkat`
#

INSERT INTO siswa_tingkat (kd_tapel, kd_tingkat, kd_siswa, status) VALUES ('f00349a152757c0381b589be4f67a826', '1236d8c726c2719824d6328ca94d2628', 'f08df0eb9323a6b5db4ad37c5be1a188', 'true'),
('f00349a152757c0381b589be4f67a826', '1236d8c726c2719824d6328ca94d2628', '29565c8691b627c7a81c0e5fd7403b40', 'true'),
('e64b1ca4c438a8af17256c5d2cfc39c4', '97a0edcf8ee7f52bae4bc4fc0f14090c', '29565c8691b627c7a81c0e5fd7403b40', 'false'),
('e64b1ca4c438a8af17256c5d2cfc39c4', '97a0edcf8ee7f52bae4bc4fc0f14090c', '21313b9d283cb400ee114f11d123ca2c', 'false'),
('e64b1ca4c438a8af17256c5d2cfc39c4', '1236d8c726c2719824d6328ca94d2628', '29565c8691b627c7a81c0e5fd7403b40', 'true'),
('e64b1ca4c438a8af17256c5d2cfc39c4', '1236d8c726c2719824d6328ca94d2628', '21313b9d283cb400ee114f11d123ca2c', 'true'),
('f00349a152757c0381b589be4f67a826', '1236d8c726c2719824d6328ca94d2628', '21313b9d283cb400ee114f11d123ca2c', 'true');
# --------------------------------------------------------

#
# Table structure for table `siswa_uang_gedung`
#

CREATE TABLE siswa_uang_gedung (
  kd varchar(50) NOT NULL default '',
  kd_uang_gedung varchar(50) NOT NULL default '',
  kd_siswa varchar(50) NOT NULL default '',
  tgl_bayar datetime NOT NULL default '0000-00-00 00:00:00'
) TYPE=MyISAM;

#
# Dumping data for table `siswa_uang_gedung`
#

INSERT INTO siswa_uang_gedung (kd, kd_uang_gedung, kd_siswa, tgl_bayar) VALUES ('90a3823d0d0baf8ddbd44252d80e1bb3', '4c75242f81285d49b3f18a7a4d210a8f', '29565c8691b627c7a81c0e5fd7403b40', '2007-04-04 00:00:00'),
('34c5fbb8f379ad615266bc0f677f3fc6', '4c75242f81285d49b3f18a7a4d210a8f', '21313b9d283cb400ee114f11d123ca2c', '2009-06-05 00:00:00');
# --------------------------------------------------------

#
# Table structure for table `siswa_uang_lain`
#

CREATE TABLE siswa_uang_lain (
  kd varchar(50) NOT NULL default '',
  kd_tapel varchar(50) NOT NULL default '',
  kd_uang_lain varchar(50) NOT NULL default '',
  kd_siswa varchar(50) NOT NULL default '',
  tgl_bayar datetime NOT NULL default '0000-00-00 00:00:00'
) TYPE=MyISAM;

#
# Dumping data for table `siswa_uang_lain`
#

INSERT INTO siswa_uang_lain (kd, kd_tapel, kd_uang_lain, kd_siswa, tgl_bayar) VALUES ('92bde78ab04e65de24a1a1d4fce19e89', 'e64b1ca4c438a8af17256c5d2cfc39c4', '31c2d890125b4103b7844e813f52cf1a', '29565c8691b627c7a81c0e5fd7403b40', '2005-04-05 00:00:00'),
('0643dfaf0f23c46eb1fce35e15f2d393', 'e64b1ca4c438a8af17256c5d2cfc39c4', '31c2d890125b4103b7844e813f52cf1a', '21313b9d283cb400ee114f11d123ca2c', '2009-05-05 00:00:00');
# --------------------------------------------------------

#
# Table structure for table `siswa_uang_spp`
#

CREATE TABLE siswa_uang_spp (
  kd varchar(50) NOT NULL default '',
  kd_tapel varchar(50) NOT NULL default '',
  kd_uang_spp varchar(50) NOT NULL default '',
  kd_siswa varchar(50) NOT NULL default '',
  kd_bulan varchar(50) NOT NULL default '',
  tgl_bayar datetime NOT NULL default '0000-00-00 00:00:00'
) TYPE=MyISAM;

#
# Dumping data for table `siswa_uang_spp`
#

INSERT INTO siswa_uang_spp (kd, kd_tapel, kd_uang_spp, kd_siswa, kd_bulan, tgl_bayar) VALUES ('7d9aa190ee2da24774c4917ff5005b4d', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'bad81d085df6c259223d9153cd2fd99b', '29565c8691b627c7a81c0e5fd7403b40', '7bc517f8d5ffd0f8d2c0a229abe5a344', '2009-05-06 00:00:00'),
('2aaeddeeaa94c8ec25bffe24687b404e', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'bad81d085df6c259223d9153cd2fd99b', '21313b9d283cb400ee114f11d123ca2c', '5ed0257c0a4db16793c6032813a98b46', '2006-05-02 00:00:00'),
('df1cab07a3202da315be0a6cb4a787da', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'bad81d085df6c259223d9153cd2fd99b', '21313b9d283cb400ee114f11d123ca2c', '7bc517f8d5ffd0f8d2c0a229abe5a344', '2007-04-05 00:00:00'),
('f3d6f39b42e2019b1beadb0fb73d695e', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'bad81d085df6c259223d9153cd2fd99b', '29565c8691b627c7a81c0e5fd7403b40', 'c613934c229b9b66c725843c30cf7a88', '2008-04-04 00:00:00');
# --------------------------------------------------------

#
# Table structure for table `siswa_uang_test`
#

CREATE TABLE siswa_uang_test (
  kd varchar(50) NOT NULL default '',
  kd_tapel varchar(50) NOT NULL default '',
  kd_uang_tes varchar(50) NOT NULL default '',
  kd_siswa varchar(50) NOT NULL default '',
  tgl_bayar datetime NOT NULL default '0000-00-00 00:00:00'
) TYPE=MyISAM;

#
# Dumping data for table `siswa_uang_test`
#

INSERT INTO siswa_uang_test (kd, kd_tapel, kd_uang_tes, kd_siswa, tgl_bayar) VALUES ('2db48ecdf6dddeda96070b39a6e5c852', 'e64b1ca4c438a8af17256c5d2cfc39c4', '7a6df9d882fb55dbe4bc9725e64aab57', '21313b9d283cb400ee114f11d123ca2c', '2008-03-03 00:00:00'),
('37c6ecc6265b4ccc56c026a2cca79dd9', 'e64b1ca4c438a8af17256c5d2cfc39c4', '7a6df9d882fb55dbe4bc9725e64aab57', '29565c8691b627c7a81c0e5fd7403b40', '2006-05-05 00:00:00');
# --------------------------------------------------------

#
# Table structure for table `soal_essay`
#

CREATE TABLE soal_essay (
  kd varchar(50) NOT NULL default '',
  kd_tapel varchar(50) NOT NULL default '',
  kd_semester varchar(50) NOT NULL default '',
  kd_keahlian varchar(50) NOT NULL default '',
  kd_tingkat varchar(50) NOT NULL default '',
  kd_prog_pddkn varchar(50) NOT NULL default '',
  kd_guru varchar(50) NOT NULL default '',
  topik varchar(255) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `soal_essay`
#

INSERT INTO soal_essay (kd, kd_tapel, kd_semester, kd_keahlian, kd_tingkat, kd_prog_pddkn, kd_guru, topik) VALUES ('7bf3ca8683648acc63bbb828ac9b1d91', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'e27005235c131029b1113f5f2ab849eb', '1ac23d3f78e319cce2b0bfe310310739', 'Gaya Magnet');
# --------------------------------------------------------

#
# Table structure for table `soal_essay_detail`
#

CREATE TABLE soal_essay_detail (
  kd varchar(50) NOT NULL default '',
  kd_soal_essay varchar(50) NOT NULL default '',
  nomer varchar(5) NOT NULL default '',
  soal longtext NOT NULL,
  kunci longtext NOT NULL
) TYPE=MyISAM;

#
# Dumping data for table `soal_essay_detail`
#

# --------------------------------------------------------

#
# Table structure for table `soal_pilihan`
#

CREATE TABLE soal_pilihan (
  kd varchar(50) NOT NULL default '',
  kd_tapel varchar(50) NOT NULL default '',
  kd_semester varchar(50) NOT NULL default '',
  kd_keahlian varchar(50) NOT NULL default '',
  kd_tingkat varchar(50) NOT NULL default '',
  kd_prog_pddkn varchar(50) NOT NULL default '',
  kd_guru varchar(50) NOT NULL default '',
  topik varchar(255) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `soal_pilihan`
#

INSERT INTO soal_pilihan (kd, kd_tapel, kd_semester, kd_keahlian, kd_tingkat, kd_prog_pddkn, kd_guru, topik) VALUES ('7521046a80123c705504116e254df965', 'e64b1ca4c438a8af17256c5d2cfc39c4', 'a140a30047adb57e98a71985348bed60', '6ca4cdd2e99c4fa94e15b3f8164ebebd', '1236d8c726c2719824d6328ca94d2628', 'e27005235c131029b1113f5f2ab849eb', '1ac23d3f78e319cce2b0bfe310310739', 'Gaya Pegas');
# --------------------------------------------------------

#
# Table structure for table `soal_pilihan_opsi`
#

CREATE TABLE soal_pilihan_opsi (
  kd_soal varchar(50) NOT NULL default '',
  kd_pil varchar(50) NOT NULL default '',
  opsi longtext NOT NULL,
  status enum('true','false') NOT NULL default 'false'
) TYPE=MyISAM;

#
# Dumping data for table `soal_pilihan_opsi`
#

# --------------------------------------------------------

#
# Table structure for table `soal_pilihan_soal`
#

CREATE TABLE soal_pilihan_soal (
  kd varchar(50) NOT NULL default '',
  kd_topik varchar(50) NOT NULL default '',
  nomer varchar(5) NOT NULL default '',
  soal longtext NOT NULL
) TYPE=MyISAM;

#
# Dumping data for table `soal_pilihan_soal`
#


