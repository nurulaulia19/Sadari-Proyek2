DESKRIPSI : 

Aplikasi SADARI merupakan aplikasi yang dirancang untuk membantu pengguna melakukan pemeriksaan kesehatan secara mandiri, terutama untuk mendeteksi dini adanya gejala-gejala yang mungkin berkaitan dengan kondisi kesehatan tertentu, seperti kanker atau penyakit lainnya.

Aplikasi ini menyediakan fitur-fitur seperti kuis kesehatan untuk membantu pengguna menilai risiko terkena penyakit, daftar gejala dan tanda-tanda penyakit yang perlu diperhatikan, serta instruksi tentang cara melakukan pemeriksaan sendiri.


SPESIFIKASI DAN KEBUTUHAN SOFTWARE: 
Laravel Versi 9.0
PHP Versi 8.0.2
MySQL Versi 10.4.22
Bootstrap Versi 5.2.1
Tailwindcss: 3.2.4
Node JS Versi 18.15.0


CARA INSTALL :
Installasi SADARI dari GitHub

- Pertama-tama, pastikan bahwa Anda memiliki perangkat lunak Git terbaru diinstal di komputer Anda. Anda dapat mengunduh dan menginstal Git dari situs web resmi mereka di https://git-scm.com/downloads.

- Setelah menginstal Git, buka terminal atau command prompt pada komputer Anda. Pilih direktori di mana Anda ingin menyalin proyek dari GitHub, kemudian ketikkan perintah berikut untuk mengkloning repositori:

- git clone https://github.com/nurulaulia19/Sadari-Proyek2.git

- Setelah proyek telah berhasil diunduh, buka folder proyek di komputer Anda. Kemudian, buat file .env dengan menyalin isi file .env.example yang sudah disediakan di dalam folder proyek, dan ubah nama file .env.example menjadi .env.

- Selanjutnya, Anda perlu menginstal dependensi yang dibutuhkan oleh proyek ini. Untuk melakukannya, buka terminal/command prompt lagi di direktori proyek dan ketikkan perintah berikut:

    composer install

- Pastikan bahwa Anda telah menginstal Composer terbaru sebelum menjalankan perintah ini. Anda dapat mengunduh dan menginstal Composer dari situs web resmi mereka di https://getcomposer.org/download/.

- Selanjutnya, jalankan perintah npm install pada terminal untuk menginstall semua dependencies yang dibutuhkan oleh project.

- Setelah berhasil menginstal dependensi, selanjutnya Anda perlu membuat basis data kosong dengan nama sadari. Anda dapat melakukannya melalui program manajemen basis data seperti MySQL atau phpMyAdmin.

- Setelah berhasil membuat basis data kosong, salin file .env.example dan ubah nama salinan menjadi .env. Di dalam file .env, ubah informasi koneksi basis data sesuai dengan informasi yang dibutuhkan untuk menghubungkan aplikasi dengan basis data Anda.

- Setelah informasi koneksi basis data diisi dengan benar, Anda dapat mengimpor skema basis data yang sudah disediakan di dalam proyek dengan menjalankan perintah berikut di terminal/command prompt:

    php artisan migrate

   Perintah ini akan menjalankan semua migrasi yang diperlukan untuk membuat tabel-tabel di basis data Anda.

- Setelah migrasi selesai, jalankan perintah berikut untuk mengisi data awal ke dalam tabel:

    php artisan db:seed

- Selanjutnya, jalankan perintah berikut untuk menghasilkan kunci enkripsi aplikasi:

    php artisan key:generate

- Terakhir, Anda dapat menjalankan proyek dengan mengetikkan perintah berikut di terminal/command prompt:

    php artisan serve

    npm run dev

- Proyek sekarang akan dijalankan pada server lokal Anda dan dapat diakses melalui browser Anda dengan mengunjungi alamat http://localhost:8000.



INFO CREDENTIALS :   
Email : admin@sadari.test
        superadmin@sadari.test
        omjhello0@gmail.com

pw: 12345678

