<?php 
header("access-control-allow-origin");

// membuat koneksi
$koneksi = new mysqli("localhost","root","","202053010_flutter_note_app");

$judul = $_POST['judul'];
$isi_note = $_POST['isi_note'];
$date = date('Y-m-d');

// perintah tambah data

$query_tambah_notes = mysqli_query($koneksi, 
                        "INSERT INTO note SET judul='$judul', isi_note='$isi_note', tgl_buat='$date'");

if ($query_tambah_notes) {
    echo json_encode([
        'message' => 'Data input successfully'
    ]);
} else {
    echo json_encode([
        'message' => 'Data failed to input'
    ]);
}

// NIM  : 202053010
// NAMA : Mohammad Tanio Manunggal
// Kelas: P (Sore 2020)

?>