Visualisasi data Palmer Penguin
================
Andhika Nurrafli Putra
2024-11-01

## Loading my Environment

Kode di bawah ini merupakan kode untuk memuat data dari palmer penguins

## Mencoba Untuk mevisualisasikan data palmer penguins

Data Palmer penguin adalah sebuah data yang populer untuk mempelajar
data science dan juga data analisis, karena hal itu data ini kemudian
menjadi data yang banyak diolah oleh pemula, seperti saya.

## Dibawah ini adalah sebuah summary dari data penguin

``` r
summary(penguins)
```

    ##       species          island    bill_length_mm  bill_depth_mm  
    ##  Adelie   :152   Biscoe   :168   Min.   :32.10   Min.   :13.10  
    ##  Chinstrap: 68   Dream    :124   1st Qu.:39.23   1st Qu.:15.60  
    ##  Gentoo   :124   Torgersen: 52   Median :44.45   Median :17.30  
    ##                                  Mean   :43.92   Mean   :17.15  
    ##                                  3rd Qu.:48.50   3rd Qu.:18.70  
    ##                                  Max.   :59.60   Max.   :21.50  
    ##                                  NA's   :2       NA's   :2      
    ##  flipper_length_mm  body_mass_g       sex           year     
    ##  Min.   :172.0     Min.   :2700   female:165   Min.   :2007  
    ##  1st Qu.:190.0     1st Qu.:3550   male  :168   1st Qu.:2007  
    ##  Median :197.0     Median :4050   NA's  : 11   Median :2008  
    ##  Mean   :200.9     Mean   :4202                Mean   :2008  
    ##  3rd Qu.:213.0     3rd Qu.:4750                3rd Qu.:2009  
    ##  Max.   :231.0     Max.   :6300                Max.   :2009  
    ##  NA's   :2         NA's   :2

## Visualisasi flipper length vs body mass

Ini merupakan sebuah scatter plot dari penguin pak palmer

![](R-markdown-2_files/figure-gfm/visualisasi-1.png)<!-- -->

## Menambahkan Warna kedalam visualisasi tersebut agar bisa dilihat dengan mudah

dibawah ini merupakan sebuah visualisasi yang sudah menggunakan warna
berdasarkan Species yang ada.

``` r
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, 
  y = body_mass_g,color=species))
```

![](R-markdown-2_files/figure-gfm/visualisasi%20+%20warna-1.png)<!-- -->

## kalau yang ini dengan menambahkan label

Label seperti judul sumber dan subjudul merupakan hal yang penting agar
data yang ada dapat dilihat sumber dan juga keabsahannya.

``` r
ggplot(data = penguins) +
  geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g, color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length")
```

![](R-markdown-2_files/figure-gfm/unnamed-chunk-1-1.png)<!-- -->

## Fungsi Facet Wrap

Fungsi facet wrap merupakan sebuah fungsi yang digunakan untuk
mengklasifikasikannya berdasarkan kelompok-kelompok yang ada. Sehingga
dapat dilihat kelompok mana yang memiliki bentuk tubuh dan sirip yang
besar.

``` r
ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g, color=species))+
  facet_grid(~species)
```

![](R-markdown-2_files/figure-gfm/unnamed-chunk-2-1.png)<!-- -->

## Fungsi anotasi

Annotation merupakan sebuah fungsi yang berguna untuk menambahkan
komentar seperti contohnya adalah memberitahu species mana yang memiliki
tubuh yang besar.

``` r
ggplot(data = penguins) +
  geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g, color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length",subtitle = "Sample of Three Penguins Species")+
  annotate("text", x = 220, y = 3500, label="The Gentoos are the largest",color="Purple", fontface="bold",
           size=4, angle=35)
```

![](R-markdown-2_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->

## caption

Terdapat juga fungsi caption yang dapat kita lihat untuk memberitahu
sumber data yang didapat

``` r
ggplot(data = penguins) +
  geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g, color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length",subtitle = "Sample of Three Penguins Species",
       caption = "Data Collected by Dr. Kristen Gorman")+
  annotate("text", x = 220, y = 3500, label="The Gentoos are the largest",color="Purple", fontface="bold",
           size=4.5, angle=35)
```

![](R-markdown-2_files/figure-gfm/unnamed-chunk-4-1.png)<!-- -->

### Penutup

Sekian hasil belajar saya selama 1 bulan mungkin? saya rasa saya harus
lebih banyak belajar lagi tentang pembersihan data di R dan perbanyak
latihan SQL juga agar bisa lebih mahir dalam hal ini.
