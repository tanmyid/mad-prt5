<?php 
header("access-control-allow-origin");

// membuat koneksi
$koneksi = new mysqli("localhost","root","","202053010_flutter_note_app");

// perintah hapus data
$id = $_POST['id_note'];
$query_hapus_notes = mysqli_query($koneksi, "DELETE FROM note WHERE id_note=".$id);

if ($query_hapus_notes) {
    echo json_encode([
        'message' => 'Data delete successfully'
    ]);
}else {
    echo json_encode([
        'message' => 'Data failed to delete'
    ]);
}
// NIM  : 202053010
// NAMA : Mohammad Tanio Manunggal
// Kelas: P (Sore 2020)
?>