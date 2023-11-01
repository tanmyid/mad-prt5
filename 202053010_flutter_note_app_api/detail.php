<?php 
header("access-control-allow-origin");

// membuat koneksi
$koneksi = new mysqli("localhost","root","","202053010_flutter_note_app");

// perintah tampil data
$query_tampil_notes = mysqli_query($koneksi, "SELECT * FROM note WHERE id_note = ".$_GET['id']);
$data_notes = mysqli_fetch_array($query_tampil_notes, MYSQLI_ASSOC);

echo json_encode($data_notes);

// NIM  : 202053010
// NAMA : Mohammad Tanio Manunggal
// Kelas: P (Sore 2020)
?>