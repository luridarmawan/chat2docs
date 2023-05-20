# Create a Chatbot for Your Data/Documents

Repositori ini berisi sistem AI *(Artificial Intelligence)* yang menggunakan teknologi chat untuk berinteraksi dengan data/dokumen. Sistem ini dibangun dengan menggunakan Docker untuk mempermudah penggunaan dan instalasi, sehingga tidak perlu lagi melakukan instalasi software/plugin/package dependensi satu-persatu.

## Penggunaan

1. Salin file yang ingin digunakan ke dalam folder `docs/nama_dokumen_kamu` di repositori ini.
2. Modifikasi konfigurasi yang diperlukan di file `.env` sesuai dengan kebutuhan Anda.

## Environment

Beberapa konfigurasi bisa diubah melalui file `.env`.

| Variabel | Deskripsi |
|---|---|
| DOCUMENT_NAME | Nama dokumen sesuai dengan nama folder yang kamu buat di `docs/nama_dokumen_kamu` |
| OPENAI_API_KEY | API Key OpenAI yang bisa didapat dari  https://platform.openai.com/account/api-keys |
| ANSWERING_MODE | Ada beberapa pilihan mode answering: `prompt`, `retrieval`, `conversational`, `similarity search`, `similarity with chatcompletion`<br>Masing-masing mempunyai kelebihan dan kekurangannya. |
| DB_TYPE | Platform ini mendukung database vector: `chromadb` atau `faiss`. |
| WEB_FRAMEWORK | Saat ini tersedia 2 mode web framework: `gradio` dan `flask` |
| PORT | Port untuk web server. Default menggunakan port 8088 |



## Instalasi dan Konfigurasi

1. Pastikan Docker telah terinstal di komputer Anda.
<br>Persiapkan space sebesar lebih kurang 8GB untuk mengunduh image docker yang dibutuhkan.
2. Jalankan perintah berikut untuk membangun image Docker:

    ```
    docker build . -t chat2doc-ex
    ```

3. Setelah proses *build* selesai, jalankan perintah berikut untuk menjalankan aplikasi:

    ```
    docker run -it --rm --name c2d -p 8088:8088 chat2doc-ex
    ```

4. Setelah aplikasi berjalan, Anda dapat mengaksesnya melalui browser dengan membuka tautan berikut: [http://localhost:8088](http://localhost:8088)

Kurang lebih tampilannya akan seperti berikut:

![chat2docs](screenshot.png)


## Catatan

1. Pertama kali melakukan build akan perlu waktu yang cukup lama, karena docker akan mengunduh image container siap pakai yang berukuran kira-kira 7 GB. Pastikan bandwidth dan kuota anda mencukupi.
2. Setiap ada perubahan di dokumen ataupun konfigurasi, Kamu harus build ulang docker image-nya. Jika anda memahami lebih dalam tentang docker..

---

*Catatan: Jika Anda mengalami masalah atau memiliki pertanyaan, silakan buat *issue* di repositori ini.*