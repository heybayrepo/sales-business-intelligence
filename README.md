# Sales Business Intelligence Project

## Overview
Project ini bertujuan untuk membangun master table penjualan menggunakan BigQuery dan melakukan analisis bisnis melalui dashboard di Looker Studio.

## Dataset
Menggunakan 4 tabel:
- Customers
- Orders
- Products
- Product Category

Relasi antar tabel membentuk skema transaksi penjualan (one-to-many).

## Data Processing
Data digabungkan menggunakan INNER JOIN untuk membentuk master table penjualan.
Total sales dihitung sebagai Quantity × Price dan diurutkan berdasarkan tanggal transaksi.

Query lengkap dapat dilihat pada folder `sql/`.

## Dashboard
Dashboard dibuat menggunakan Looker Studio dan menampilkan:
- Total Sales
- Sales & Quantity by Category
- Sales & Quantity by City
- Top 5 Category by Sales & Quantity

![Dashboard](dashboard/dashboard.png)

## Key Insights
- Revenue didominasi oleh kategori Robots dan Drones.
- Volume tertinggi berasal dari eBooks dan Training Videos.
- Terdapat perbedaan antara kategori dengan volume tinggi dan revenue tinggi.

## Recommendation
- Terapkan strategi bundling antara produk volume tinggi dan produk bernilai tinggi.
- Fokuskan campaign premium pada kota dengan kontribusi revenue terbesar.
- Optimalkan kategori middle-tier untuk meningkatkan kontribusi pendapatan.
