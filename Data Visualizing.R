# to install the data

install.packages("palmerpenguins")
library("palmerpenguins")
data("penguins")
view(penguins)

# to visual basics

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y = body_mass_g))

# to visualize plus mengelompokkannya (ini yang bikin sendiri ehek)

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y = body_mass_g)) + 
  facet_grid(cols = vars(island)) + 
  theme_bw()+ 
  labs(x="Flipper_Length", y="Body_Mass",title = "xxx di setiap pulau")

# another example with different variables to visualization

ggplot(data=penguins)+
  geom_point(mapping=aes(x=bill_length_mm, y = bill_depth_mm)) + 
  facet_grid(cols = vars(island)) + 
  theme_bw()+ labs(x="Bill Length", y="Bill Depth",title = "xxx di setiap pulau")

# kalau bingung tentang suatu fungsi gunakan <?> di suatu fungsi

?glimpse
?geom_point
?ggplot

# menambahkan Aesthetics untuk memisahkan tapi masih dalam satu grafik bisa menggunakan
# variable <shape> dan <color> bisa juga untuk menambahkan ukuran menggunakan <size>
# variable <alpha> juga bisa digunakan untuk data yang memiliki tingkat densitas tinggi

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y = body_mass_g,shape=island,color=species))

# jika ingin membuat salah satu warna saja yang ada maka bisa gunakan seperti ini
# color di taruh diluar aesthetic atau setelah command aes

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y = body_mass_g,shape=species), color="purple")

# geom function dalam ggplot2

ggplot(data=penguins)+
  geom_smooth(mapping=aes(x=flipper_length_mm, y = body_mass_g))

# seperti warna dan bentuk, geom smooth juga bisa dibedakan

ggplot(data=penguins)+
  geom_smooth(mapping=aes(x=flipper_length_mm, y = body_mass_g,linetype = species))

# bisa digabungkan juga geom functions

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y = body_mass_g))+
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g))

# pakai <geom_jitter> untuk lebih mudah melihat data yang saling bertumpuk

ggplot(data=penguins)+
  geom_jitter(mapping=aes(x=flipper_length_mm, y = body_mass_g))

# menggunakan <geom_bar> di ggplot2, kali ini menggunakan data diamonds

ggplot(data=diamonds)+
  geom_bar(mapping = aes(x=cut))

# menambahkan warna dalam bar chart menggunakan <fill> dan <color>

ggplot(data=diamonds)+
  geom_bar(mapping = aes(x=cut,color=cut,fill=clarity))

# facet alias mengelompokkan dalam ggplot2
# ada <facet_wrap> dan <facet_grid>

# <facet_wrap>
ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g, color=species))+
  facet_wrap(~species)

ggplot(data=diamonds)+
  geom_bar(mapping = aes(x=color,fill=cut))+
  facet_wrap(~cut)

# <facet_grid>
ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g, color=sex))+
  facet_grid(~species)

# label dan anotasi dalam ggplot2
# menambahkan fungsi labs(...) lalu diikuti dengan anotasi atau label apa yang ingin ditambahkan

#<title>
ggplot(data = penguins) +
  geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g, color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length")

#<subtitle>
ggplot(data = penguins) +
  geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g, color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length",subtitle = "Sample of Three Penguins Species" )

#<caption>
ggplot(data = penguins) +
  geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g, color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length",subtitle = "Sample of Three Penguins Species",
       caption = "Data Collected by Dr. Kristen Gorman")

# annotation dibuat untuk memberikan komentar didalam visual, bisa menambahkan color juga sama seperti
# visualisasi-visualisasi yang ada di atas <color>, selain itu juga bisa 
# mengubah fontface <fontface> dan juga size <size>. Angle juga bisa diubah dengan <angle>

ggplot(data = penguins) +
  geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g, color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length",subtitle = "Sample of Three Penguins Species",
       caption = "Data Collected by Dr. Kristen Gorman")+
  annotate("text", x = 220, y = 3500, label="The Gentoos are the largest",color="Purple", fontface="bold",
           size=4.5, angle=35)

# untuk mempersingkat kode bisa dengan menyimpan kode menjadi variable lalu ditambah dengan apa yang kita 
# mau selanjutnya

p <- ggplot(data = penguins) +
  geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g, color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length",subtitle = "Sample of Three Penguins Species",
       caption = "Data Collected by Dr. Kristen Gorman")

# lalu tambahkan saja

p+annotate("text", x = 220, y = 3500, label="The Gentoos are the largest",color="Purple", fontface="bold",
           size=4.5, angle=35)+
  annotate("text", x= 175, y = 5500, label="Dhika Ganteng", color="blue", angle=35)

# don't forget to save your progress
# gunakan fitur export yang ada diatas gambar plot
# yang kedua ada fitur <ggsave("nama file.format yang diinginkan")>

ggsave("Palmer's Penguins2.png")

