<?php 

require_once 'koneksi.php';
$query = mysqli_query($koneksi, "SELECT tbl_siswa.id, tbl_siswa.nama, tbl_siswa.no_hp, tbl_siswa.foto, tbl_siswa.alamat, tbl_jurusan.nama_jurusan AS jurusan FROM tbl_siswa LEFT JOIN tbl_jurusan ON tbl_siswa.id_jurusan = tbl_jurusan.id");
$aktif = 'siswa';
$no = 1;
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Daftar Siswa - RPL SMK Negeri 9 Semarang</title>
	<link rel="stylesheet" href="resources/datatables/datatables.min.css">
	<link rel="stylesheet" href="resources/fonts/stylesheet.css">
	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
	<div class="container bg-light">
		<!-- top bar -->
		<div class="logo clearfix">
			<div class="float-left mt-3 mb-3">
			<img src="resources/images/9 se.png" alt="Logo Sekolah" width="50px" class="float-left mr-3">
			<img src="resources/images/LOGO_RPL(3).png" alt="Logo RPL" width="50px" style="padding-top: 4px;" class="float-left mr-3">
				<div class="text float-right">
					<span class="smk">RPL - SMK Negeri 9 Semarang</span><br>
					<span class="visi">Mewujudkan SMK Berkarakter, Berkompeten dan Unggul.</span>
				</div>
			</div>
		</div>
			
		<!-- nav bar -->
		<?php require_once 'navbar.php'; ?>

		<!-- content -->
		<div class="row p-3">
			<div class="col-md-8">
				<div class="title mb-3">
					Daftar Siswa
				</div>
				<table id="table_id" class="dataTable table table-bordered">
				    <thead>
				        <tr>
				            <th>No</th>
				            <th width="50px">Foto</th>
				            <th>Nama</th>
				            <th>Jurusan</th>
				            <th>Alamat</th>
				        </tr>
				    </thead>
				    <tbody>
				       <?php while($row = mysqli_fetch_assoc($query)) : ?>
				       		<tr>
				       			<td><?= $no++ ?></td>
				       			<td><img src="images/siswa/<?= $row['foto'] ?>" alt="<?= $row['nama'] ?>" width="100%" class="img-thumbnail"></td>
				       			<td><a href="detail_siswa.php?id=<?= $row['id'] ?>"><?= $row['nama'] ?></a></td>
				       			<td><?= $row['jurusan'] ?></td>
				       			<td><?= $row['alamat'] ?></td>
				       		</tr>
				       <?php endwhile; ?>
				    </tbody>
				</table>
			</div>
			<?php require 'sidebar.php'; ?>
		</div>
		<div class="text-white footer">
		2022 © Copyright by RPL - SMK Negeri 9 Semarang.
		</div>
	</div>

	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/datatables/datatables.min.js"></script>
	<script src="resources/datatables/datatable.js"></script>
</body>
</html>