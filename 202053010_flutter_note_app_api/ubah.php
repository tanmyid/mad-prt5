<?php 
header("access-control-allow-origin");

// membuat koneksi
$koneksi = new mysqli("localhost","root","","202053010_flutter_note_app");

$judul      = $_POST['judul'];
$isi_note   = $_POST['isi_note'];
$id         = $_POST['id_note'];

// perintah ubah data
$query_ubah_notes = mysqli_query($koneksi, 
                        "UPDATE note SET judul='$judul', isi_note='$isi_note', WHERE id_note='$id'");

if ($query_ubah_notes) {
    echo json_encode([
        'message' => 'Data edit successfully'
    ]);
} else {
    echo json_encode([
        'message' => 'Data failed to update'
    ]);
}

// NIM  : 202053010
// NAMA : Mohammad Tanio Manunggal
// Kelas: P (Sore 2020)

?>
