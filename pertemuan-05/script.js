// 1. SELEKSI ELEMEN DOM
const contactForm = document.getElementById("contactForm");
const formFeedback = document.getElementById("formFeedback");

// 2. LOGIKA VALIDASI FORMULIR
if (contactForm) {
    contactForm.addEventListener("submit", (event) => {
        // Mencegah halaman muat ulang (refresh) otomatis
        event.preventDefault();

        // Mengambil elemen input berdasarkan ID
        const namaInput = document.getElementById("nama");
        const emailInput = document.getElementById("email");
        const pesanInput = document.getElementById("pesan");

        const nama = namaInput ? namaInput.value.trim() : "";
        const email = emailInput ? emailInput.value.trim() : "";
        const pesan = pesanInput ? pesanInput.value.trim() : "";

        // Validasi Kolom Nama (Minimal 3 karakter)
        if (nama.length < 3) {
            if (formFeedback) {
                formFeedback.style.color = "red";
                formFeedback.textContent = "Nama lengkap harus diisi minimal 3 karakter.";
            }
            return;
        }

        // Validasi Pola Format Email
        const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailPattern.test(email)) {
            if (formFeedback) {
                formFeedback.style.color = "red";
                formFeedback.textContent = "Masukkan alamat email yang valid.";
            }
            return;
        }

        // Validasi Isi Pesan
        if (pesan === "") {
            if (formFeedback) {
                formFeedback.style.color = "red";
                formFeedback.textContent = "Isi pesan tidak boleh kosong.";
            }
            return;
        }

        // Jika lolos semua pemeriksaan validasi
        if (formFeedback) {
            formFeedback.style.color = "green";
            formFeedback.textContent = "Formulir berhasil divalidasi dan siap dikirim!";
        }
    });

    // Menghapus pesan peringatan otomatis saat pengguna mulai mengetik kembali
    contactForm.addEventListener("input", () => {
        if (formFeedback) formFeedback.textContent = "";
    });
}
