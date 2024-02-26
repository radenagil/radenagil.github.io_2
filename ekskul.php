<?php 

require_once 'koneksi.php';
$query = mysqli_query($koneksi, "SELECT tbl_ekskul.id AS id, tbl_ekskul.nama_ekskul, tbl_ekskul.pembina, tbl_guru.nama, tbl_guru.id AS id_guru FROM tbl_ekskul LEFT JOIN tbl_guru on tbl_ekskul.pembina = tbl_guru.id");
$aktif = 'ekskul';
$no = 1;
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Ekskul - RPL SMK Negeri 9 Semarang</title>
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
				            <th>Nama Ekskul</th>
				            <th>Nama Pembina</th>
				        </tr>
				    </thead>
				    <tbody>
						<?php while($row = mysqli_fetch_assoc($query)) : ?>
				        	<tr>
				        		<td><?= $no++ ?></td>
				        		<td><?= $row['nama_ekskul'] ?></td>
				        		<td><a href="detail_guru.php?id=<?= $row['id_guru'] ?>" target="_blank"><?= isset($row['nama']) ? $row['nama'] : '-' ?></a></td>
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