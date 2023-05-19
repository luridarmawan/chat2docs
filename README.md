# Create a Chatbot for Your Data/Documents

Repositori ini berisi sistem AI yang menggunakan teknologi chat untuk berinteraksi dengan data/dokumen. Sistem ini dibangun dengan menggunakan Docker untuk mempermudah penggunaan dan instalasi, sehingga tidak perlu lagi melakukan instalasi software/plugin/package dependensi satu-persatu.

## Penggunaan

1. Salin file yang ingin digunakan ke dalam folder `docs/nama_dokumen_kamu` di repositori ini.
2. Modifikasi konfigurasi yang diperlukan di file `.env` sesuai dengan kebutuhan Anda.

## Instalasi dan Konfigurasi

1. Pastikan Docker telah terinstal di komputer Anda.
<br>Persiapkan space sebesar lebih kurang 8GB untuk mengunduh image docker yang dibutuhkan.
2. Jalankan perintah berikut untuk membangun image Docker:

    ```
    docker build . -t chat2doc-ex
    ```

3. Setelah proses pembangunan selesai, jalankan perintah berikut untuk menjalankan aplikasi:

    ```
    docker run -it --rm --name c2d -p 8088:8088 chat2doc-ex
    ```

4. Setelah aplikasi berjalan, Anda dapat mengaksesnya melalui browser dengan membuka tautan berikut: [http://localhost:8088](http://localhost:8088)

Kurang lebih tampilannya akan seperti berikut:

![chat2docs](screenshot.png)

## Kontribusi

Jika Anda ingin berkontribusi pada proyek ini, Anda dapat melakukan langkah-langkah berikut:

1. Fork repositori ini.
2. Buat branch baru untuk fitur atau perbaikan yang ingin Anda tambahkan (`git checkout -b fitur-anda`).
3. Lakukan perubahan yang diperlukan.
4. Commit perubahan Anda (`git commit -am 'Menambahkan fitur baru'`).
5. Push ke branch yang telah Anda buat (`git push origin fitur-anda`).
6. Buat Pull Request dari branch Anda ke branch `master` repositori ini.

## Lisensi

Proyek ini menggunakan lisensi MIT. Silakan lihat berkas [LISENSI](LISENSI) untuk informasi lebih lanjut.

---

*Catatan: Jika Anda mengalami masalah atau memiliki pertanyaan, silakan buat *issue* di repositori ini.*