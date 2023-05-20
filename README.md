# Create a Chatbot for Your Data/Documents

Repositori ini berisi Kecerdasan Buatan AI *(Artificial Intelligence)* yang menggunakan media *chat* untuk berinteraksi dengan data/dokumen. Sistem ini dibangun menggunakan Docker untuk mempermudah penggunaan dan instalasi sehingga tidak perlu lagi melakukan instalasi perangkat lunak/plugin/paket dependensi satu-persatu.

## Penggunaan

1. Salin file yang ingin gunakan ke dalam folder `docs/nama_dokumen_anda` di repositori ini.
2. Sesuaikan konfigurasi yang diperlukan dalam file `.env` sesuai dengan kebutuhan Anda.

## Environment

Beberapa konfigurasi dapat diubah melalui file `.env`.

| Variabel | Deskripsi |
|---|---|
| DOCUMENT_NAME | Nama dokumen sesuai dengan nama folder yang Anda buat di `docs/nama_dokumen_anda` |
| OPENAI_API_KEY | API Key OpenAI yang dapat diperoleh dari  https://platform.openai.com/account/api-keys |
| ANSWERING_MODE | Terdapat beberapa mode answering yang tersedia: `prompt`, `retrieval`, `conversational`, `similarity search`, dan `similarity with chatcompletion`. <br>Masing-masing mempunyai kelebihan dan kekurangannya. |
| DB_TYPE | Platform ini mendukung database vector: `chromadb` atau `faiss`. |
| WEB_FRAMEWORK | Saat ini tersedia 2 mode web framework: `gradio` dan `flask` |
| PORT | Port untuk server web. Default menggunakan port 8088 |



## Instalasi dan Konfigurasi

1. Pastikan Docker telah terinstall di komputer Anda.
<br>Persiapkan ruang penyimpanan sebesar lebih kurang 8GB untuk mengunduh image docker yang dibutuhkan.
2. Jalankan perintah berikut untuk membangun image Docker:

    ```
    docker build . -t chat2doc-ex
    ```

3. Setelah proses *build* selesai, jalankan perintah berikut untuk menjalankan aplikasi:

    ```
    docker run -it --rm --name c2d -p 8088:8088 chat2doc-ex
    ```

    Jika proses berjalan lancar, akan aktif sebuah web server yang berjalan di port 8088.

4. Setelah web server berjalan, Anda dapat mengaksesnya aplikasi melalui browser dengan membuka tautan berikut: [http://localhost:8088](http://localhost:8088)

Tampilannya akan kurang lebih seperti ini::

![chat2docs](screenshot.png)


## Catatan

1. Proses *build* pertama kali akan memakan waktu yang cukup lama karena Docker akan mengunduh gambar kontainer siap pakai dengan ukuran sekitar 7 GB. Pastikan bandwidth dan kuota Anda mencukupi.
2. Setiap ada perubahan pada dokumen ataupun konfigurasi, Anda harus build ulang docker image-nya, keculai kika anda memahami lebih dalam tentang docker. ATAU, Anda bisa melakukan perubahan konfigurasi melalui *command line* docker.

---

*Catatan: Jika Anda mengalami masalah atau memiliki pertanyaan, silakan buat *issue* di repositori ini.*