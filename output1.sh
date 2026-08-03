PS D:\> mkdir hello-docker

    Directory: D:\

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d----            8/1/2026  8:34 PM                hello-docker

PS D:\> cd .\hello-docker\
PS D:\hello-docker> code .
PS D:\hello-docker> docker version
Client:
 Version:           29.6.2
 API version:       1.55
 Go version:        go1.26.5
 Git commit:        dfc4efb
 Built:             Thu Jul 16 16:14:59 2026
 OS/Arch:           windows/amd64
 Context:           desktop-linux
failed to connect to the docker API at npipe:////./pipe/dockerDesktopLinuxEngine; check if the path is correct and if the daemon is running: open //./pipe/dockerDesktopLinuxEngine: The system cannot find the file specified.
PS D:\hello-docker> docker version
Client:
 Version:           29.6.2
 API version:       1.55
 Go version:        go1.26.5
 Git commit:        dfc4efb
 Built:             Thu Jul 16 16:14:59 2026
 OS/Arch:           windows/amd64
 Context:           desktop-linux

Server: Docker Desktop 4.84.0 (234817)
 Engine:
  Version:          29.6.2
  API version:      1.55 (minimum version 1.40)
  Go version:       go1.26.5
  Git commit:       3d80467
  Built:            Thu Jul 16 16:12:20 2026
  OS/Arch:          linux/amd64
  Experimental:     false
 containerd:
  Version:          v2.2.5
  GitCommit:        e53c7c1516c3b2bff98eb76f1f4117477e6f4e66
 runc:
  Version:          1.3.6
  GitCommit:        v1.3.6-0-g491b69ba
 docker-init:
  Version:          0.19.0
  GitCommit:        de40ad0
PS D:\hello-docker> docker build -t hello-docker .
[+] Building 39.1s (9/9) FINISHED                                                                  docker:desktop-linux
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 97B                                                                                0.0s
 => [internal] load metadata for docker.io/library/node:alpine                                                     3.2s
 => [auth] library/node:pull token for registry-1.docker.io                                                        0.0s
 => [internal] load .dockerignore                                                                                  0.0s
 => => transferring context: 2B                                                                                    0.0s
 => [internal] load build context                                                                                  0.0s
 => => transferring context: 162B                                                                                  0.0s
 => [1/3] FROM docker.io/library/node:alpine@sha256:233761595746769ebfdb6090f44fc7cdf818ae0ce62d2b37e0367723b982  35.3s
 => => resolve docker.io/library/node:alpine@sha256:233761595746769ebfdb6090f44fc7cdf818ae0ce62d2b37e0367723b9823  0.0s
 => => sha256:ad98a8bae909af0cbe0575fe6cf8a7d4c79a3935cb808cb93756ba390fd74ebd 453B / 453B                         0.4s
 => => sha256:7046c3eaaadb8c3fb87a8838f36629a0459e8421fda3d0f88aeb294cb244e055 59.41MB / 59.41MB                  33.5s
 => => extracting sha256:7046c3eaaadb8c3fb87a8838f36629a0459e8421fda3d0f88aeb294cb244e055                          1.7s
 => => extracting sha256:ad98a8bae909af0cbe0575fe6cf8a7d4c79a3935cb808cb93756ba390fd74ebd                          0.0s
 => [2/3] COPY . /app                                                                                              0.2s
 => [3/3] WORKDIR /app                                                                                             0.0s
 => exporting to image                                                                                             0.2s
 => => exporting layers                                                                                            0.1s
 => => exporting manifest sha256:dead20c3bfacd1f2d75a1d7e09106747f4d77f8266a6b87f7387d7da0f08ad5a                  0.0s
 => => exporting config sha256:e50e0a1ecefcf30a9da948f229101b8458db378c9b65a6525fee88529aac9bba                    0.0s
 => => exporting attestation manifest sha256:a1c16a49a89d819f3b35589b9cecfb2ae49d6df9b5a621a7111900e12bcc3f4f      0.0s
 => => exporting manifest list sha256:b73094a667092d05ba0cb48517c07276b8c947abd8a08c5155ef2da2130c93a1             0.0s
 => => naming to docker.io/library/hello-docker:latest                                                             0.0s
 => => unpacking to docker.io/library/hello-docker:latest                                                          0.0s

 1 warning found (use docker --debug to expand):
 - JSONArgsRecommended: JSON arguments recommended for CMD to prevent unintended behavior related to OS signals (line 4)
PS D:\hello-docker> docker images
                                                                                                    i Info →   U  In Use
IMAGE                 ID             DISK USAGE   CONTENT SIZE   EXTRA
hello-docker:latest   b73094a66709        250MB         63.3MB
PS D:\hello-docker> docker image ls
                                                                                                    i Info →   U  In Use
IMAGE                 ID             DISK USAGE   CONTENT SIZE   EXTRA
hello-docker:latest   b73094a66709        250MB         63.3MB
PS D:\hello-docker> docker run hello-docker
Hello, Docker!
PS D:\hello-docker> docker run ubuntu
Unable to find image 'ubuntu:latest' locally
latest: Pulling from library/ubuntu
a3679419df18: Pull complete
ed819469700f: Pull complete
e16351a257e4: Download complete
Digest: sha256:3131b4cc82a783df6c9df078f86e01819a13594b865c2cad47bd1bca2b7063bb
Status: Downloaded newer image for ubuntu:latest
PS D:\hello-docker> docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
PS D:\hello-docker> docker ps -a
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS                      PORTS     NAMES
155dae1031d5   ubuntu         "/bin/bash"              17 minutes ago   Exited (0) 5 minutes ago              crazy_jemison
40ec048a6f92   hello-docker   "docker-entrypoint.s…"   24 minutes ago   Exited (0) 12 minutes ago             nostalgic_morse
PS D:\hello-docker> docker run -it ubuntu
root@9f390745bf63:/# echo hello
hello
root@9f390745bf63:/# whoami
root
root@9f390745bf63:/# echo &0
[1] 9

bash: 0: command not found
[1]+  Done                       echo
root@9f390745bf63:/# echo $0
/bin/bash
root@9f390745bf63:/# history
    1  echo hello
    2  whoami
    3  echo &0
    4  echo $0
    5  history
root@9f390745bf63:/# !4
echo $0
/bin/bash
root@9f390745bf63:/# nano
bash: nano: command not found
root@9f390745bf63:/# apt install nano
Error: Unable to locate package nano
root@9f390745bf63:/# apt update
Get:1 http://archive.ubuntu.com/ubuntu resolute InRelease [136 kB]
Get:2 http://security.ubuntu.com/ubuntu resolute-security InRelease [137 kB]
Get:3 http://archive.ubuntu.com/ubuntu resolute-updates InRelease [137 kB]
Get:4 http://security.ubuntu.com/ubuntu resolute-security/universe amd64 Packages [185 kB]
Get:5 http://archive.ubuntu.com/ubuntu resolute-backports InRelease [136 kB]
Get:6 http://archive.ubuntu.com/ubuntu resolute/multiverse amd64 Packages [352 kB]
Get:7 http://security.ubuntu.com/ubuntu resolute-security/main amd64 Packages [419 kB]
Get:8 http://security.ubuntu.com/ubuntu resolute-security/restricted amd64 Packages [355 kB]
Get:9 http://security.ubuntu.com/ubuntu resolute-security/multiverse amd64 Packages [11.2 kB]
Get:10 http://archive.ubuntu.com/ubuntu resolute/universe amd64 Packages [20.1 MB]
Get:11 http://archive.ubuntu.com/ubuntu resolute/restricted amd64 Packages [189 kB]
Get:12 http://archive.ubuntu.com/ubuntu resolute/main amd64 Packages [1874 kB]
Get:13 http://archive.ubuntu.com/ubuntu resolute-updates/universe amd64 Packages [280 kB]
Get:14 http://archive.ubuntu.com/ubuntu resolute-updates/main amd64 Packages [497 kB]
Get:15 http://archive.ubuntu.com/ubuntu resolute-updates/multiverse amd64 Packages [13.4 kB]
Get:16 http://archive.ubuntu.com/ubuntu resolute-updates/restricted amd64 Packages [368 kB]
Get:17 http://archive.ubuntu.com/ubuntu resolute-backports/universe amd64 Packages [567 B]
Fetched 25.2 MB in 35s (727 kB/s)
10 packages can be upgraded. Run 'apt list --upgradable' to see them.
root@9f390745bf63:/# apt install nano
Installing:
  nano

Suggested packages:
  hunspell

Summary:
  Upgrading: 0, Installing: 1, Removing: 0, Not Upgrading: 10
  Download size: 289 kB
  Space needed: 893 kB / 1024 GB available

Get:1 http://archive.ubuntu.com/ubuntu resolute-updates/main amd64 nano amd64 8.7.1-1ubuntu0.1 [289 kB]
Fetched 289 kB in 2s (145 kB/s)
debconf: unable to initialize frontend: Dialog
debconf: (No usable dialog-like program is installed, so the dialog based frontend cannot be used. at /usr/share/perl5/Debconf/FrontEnd/Dialog.pm line 79, <STDIN> line 1.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (Can't locate Term/ReadLine.pm in @INC (you may need to install the Term::ReadLine module) (@INC entries checked: /etc/perl/usr/local/lib/x86_64-linux-gnu/perl/5.40.1 /usr/local/share/perl/5.40.1 /usr/lib/x86_64-linux-gnu/perl5/5.40 /usr/share/perl5 /usr/lib/x86_64-linux-gnu/perl-base /usr/lib/x86_64-linux-gnu/perl/5.40 /usr/share/perl/5.40 /usr/local/lib/site_perl) at /usr/share/perl5/Debconf/FrontEnd/Readline.pm line 8, <STDIN> line 1.)
debconf: falling back to frontend: Teletype
anSelecting previously unselected package nano.
(Reading database ... 7724 files and directories currently installed.)
Preparing to unpack .../nano_8.7.1-1ubuntu0.1_amd64.deb ...
Unpacking nano (8.7.1-1ubuntu0.1) ...
Setting up nano (8.7.1-1ubuntu0.1) ...
update-alternatives: using /bin/nano to provide /usr/bin/editor (editor) in auto mode
update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/nano.1.gz(of link group editor) does not exist
update-alternatives: using /bin/nano to provide /usr/bin/pico (pico) in auto mode
update-alternatives: warning: skip creation of /usr/share/man/man1/pico.1.gz because associated file /usr/share/man/man1/nano.1.gz (of link group pico) does not exist
root@9f390745bf63:/# nano
root@9f390745bf63:/#
root@9f390745bf63:/# apt remove nano
REMOVING:
  nano

Summary:
  Upgrading: 0, Installing: 0, Removing: 1, Not Upgrading: 10
  Freed space: 893 kB

Continue? [Y/n] y
(Reading database ... 7798 files and directories currently installed.)
Removing nano (8.7.1-1ubuntu0.1) ...
root@9f390745bf63:/# nano
bash: /usr/bin/nano: No such file or directory
root@9f390745bf63:/# python
bash: python: command not found
root@9f390745bf63:/# python3
bash: python3: command not found
root@9f390745bf63:/# apt install python3
Installing:
  python3

Installing dependencies:
  ca-certificates  libpython3-stdlib      libreadline8t64  netbase          python3.14          tzdata
  libexpat1        libpython3.14-minimal  libsqlite3-0     openssl          python3.14-minimal
  libffi8          libpython3.14-stdlib   media-types      python3-minimal  readline-common

Suggested packages:
  python3-doc  python3-tk  python3-venv  python3.14-venv  python3.14-doc  binutils  binfmt-support  readline-doc

Summary:
  Upgrading: 0, Installing: 17, Removing: 0, Not Upgrading: 10
  Download size: 9482 kB
  Space needed: 32.2 MB / 1024 GB available

Continue? [Y/n] y
Get:1 http://archive.ubuntu.com/ubuntu resolute/main amd64 libexpat1 amd64 2.7.4-1 [94.0 kB]
Get:2 http://archive.ubuntu.com/ubuntu resolute-updates/main amd64 libpython3.14-minimal amd64 3.14.4-1ubuntu0.1 [916 kB]
Get:3 http://archive.ubuntu.com/ubuntu resolute-updates/main amd64 python3.14-minimal amd64 3.14.4-1ubuntu0.1 [2580 kB]
Get:4 http://archive.ubuntu.com/ubuntu resolute/main amd64 python3-minimal amd64 3.14.3-0ubuntu2 [25.8 kB]
Get:5 http://archive.ubuntu.com/ubuntu resolute/main amd64 media-types all 14.0.0build1 [31.4 kB]
Get:6 http://archive.ubuntu.com/ubuntu resolute/main amd64 netbase all 6.5build1 [13.0 kB]
Get:7 http://archive.ubuntu.com/ubuntu resolute-updates/main amd64 tzdata all 2026c-0ubuntu0.26.04.1 [193 kB]
Get:8 http://archive.ubuntu.com/ubuntu resolute/main amd64 libffi8 amd64 3.5.2-4 [26.3 kB]
Get:9 http://archive.ubuntu.com/ubuntu resolute/main amd64 readline-common all 8.3-4 [61.5 kB]
Get:10 http://archive.ubuntu.com/ubuntu resolute/main amd64 libreadline8t64 amd64 8.3-4 [164 kB]
Get:11 http://archive.ubuntu.com/ubuntu resolute-updates/main amd64 libsqlite3-0 amd64 3.46.1-9ubuntu0.2 [719 kB]
Get:12 http://archive.ubuntu.com/ubuntu resolute-updates/main amd64 libpython3.14-stdlib amd64 3.14.4-1ubuntu0.1 [2414 kB]
Get:13 http://archive.ubuntu.com/ubuntu resolute-updates/main amd64 python3.14 amd64 3.14.4-1ubuntu0.1 [830 kB]
Get:14 http://archive.ubuntu.com/ubuntu resolute/main amd64 libpython3-stdlib amd64 3.14.3-0ubuntu2 [8476 B]
Get:15 http://archive.ubuntu.com/ubuntu resolute/main amd64 python3 amd64 3.14.3-0ubuntu2 [22.9 kB]
Get:16 http://archive.ubuntu.com/ubuntu resolute-updates/main amd64 openssl amd64 3.5.5-1ubuntu3.3 [1243 kB]
Get:17 http://archive.ubuntu.com/ubuntu resolute-updates/main amd64 ca-certificates all 20260601~26.04.1 [139 kB]
Fetched 9482 kB in 20s (474 kB/s)
debconf: unable to initialize frontend: Dialog
debconf: (No usable dialog-like program is installed, so the dialog based frontend cannot be used. at /usr/share/perl5/Debconf/FrontEnd/Dialog.pm line 79, <STDIN> line 17.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (Can't locate Term/ReadLine.pm in @INC (you may need to install the Term::ReadLine module) (@INC entries checked: /etc/perl/usr/local/lib/x86_64-linux-gnu/perl/5.40.1 /usr/local/share/perl/5.40.1 /usr/lib/x86_64-linux-gnu/perl5/5.40 /usr/share/perl5 /usr/lib/x86_64-linux-gnu/perl-base /usr/lib/x86_64-linux-gnu/perl/5.40 /usr/share/perl/5.40 /usr/local/lib/site_perl) at /usr/share/perl5/Debconf/FrontEnd/Readline.pm line 8, <STDIN> line 17.)
debconf: falling back to frontend: Teletype
Preconfiguring packages ...
Configuring tzdata
------------------

Please select the geographic area in which you live. Subsequent configuration questions will narrow this down by
presenting a list of cities, representing the time zones in which they are located.

  1. Africa   3. Antarctica  5. Asia      7. Australia  9. Indian    11. Etc
  2. America  4. Arctic      6. Atlantic  8. Europe     10. Pacific
Geographic area: 2

Please select the city or region corresponding to your time zone.

  1. Adak                     41. Costa_Rica            81. Kentucky/Louisville      121. Porto_Acre
  2. Anchorage                42. Coyhaique             82. Kentucky/Monticello      122. Porto_Velho
  3. Anguilla                 43. Creston               83. Kralendijk               123. Puerto_Rico
  4. Antigua                  44. Cuiaba                84. La_Paz                   124. Punta_Arenas
  5. Araguaina                45. Curacao               85. Lima                     125. Rainy_River
  6. Argentina/Buenos_Aires   46. Danmarkshavn          86. Los_Angeles              126. Rankin_Inlet
  7. Argentina/Catamarca      47. Dawson                87. Lower_Princes            127. Recife
  8. Argentina/Cordoba        48. Dawson_Creek          88. Maceio                   128. Regina
  9. Argentina/Jujuy          49. Denver                89. Managua                  129. Resolute
  10. Argentina/La_Rioja      50. Detroit               90. Manaus                   130. Rio_Branco
  11. Argentina/Mendoza       51. Dominica              91. Marigot                  131. Santa_Isabel
  12. Argentina/Rio_Gallegos  52. Edmonton              92. Martinique               132. Santarem
  13. Argentina/Salta         53. Eirunepe              93. Matamoros                133. Santiago
  14. Argentina/San_Juan      54. El_Salvador           94. Mazatlan                 134. Santo_Domingo
  15. Argentina/San_Luis      55. Ensenada              95. Menominee                135. Sao_Paulo
  16. Argentina/Tucuman       56. Fort_Nelson           96. Merida                   136. Scoresbysund
  17. Argentina/Ushuaia       57. Fortaleza             97. Metlakatla               137. Shiprock
  18. Aruba                   58. Glace_Bay             98. Mexico_City              138. Sitka
  19. Asuncion                59. Goose_Bay             99. Miquelon                 139. St_Barthelemy
  20. Atikokan                60. Grand_Turk            100. Moncton                 140. St_Johns
  21. Atka                    61. Grenada               101. Monterrey               141. St_Kitts
  22. Bahia                   62. Guadeloupe            102. Montevideo              142. St_Lucia
  23. Bahia_Banderas          63. Guatemala             103. Montreal                143. St_Thomas
  24. Barbados                64. Guayaquil             104. Montserrat              144. St_Vincent
  25. Belem                   65. Guyana                105. Nassau                  145. Swift_Current
[More] 86

  26. Belize                  66. Halifax               106. New_York                146. Tegucigalpa
  27. Blanc-Sablon            67. Havana                107. Nipigon                 147. Thule
  28. Boa_Vista               68. Hermosillo            108. Nome                    148. Thunder_Bay
  29. Bogota                  69. Indiana/Indianapolis  109. Noronha                 149. Tijuana
  30. Boise                   70. Indiana/Knox          110. North_Dakota/Beulah     150. Toronto
  31. Cambridge_Bay           71. Indiana/Marengo       111. North_Dakota/Center     151. Tortola
  32. Campo_Grande            72. Indiana/Petersburg    112. North_Dakota/New_Salem  152. Vancouver
  33. Cancun                  73. Indiana/Tell_City     113. Nuuk                    153. Virgin
  34. Caracas                 74. Indiana/Vevay         114. Ojinaga                 154. Whitehorse
  35. Cayenne                 75. Indiana/Vincennes     115. Panama                  155. Winnipeg
  36. Cayman                  76. Indiana/Winamac       116. Pangnirtung             156. Yakutat
  37. Chicago                 77. Inuvik                117. Paramaribo              157. Yellowknife
  38. Chihuahua               78. Iqaluit               118. Phoenix
  39. Ciudad_Juarez           79. Jamaica               119. Port-au-Prince
  40. Coral_Harbour           80. Juneau                120. Port_of_Spain
Time zone: 79

Selecting previously unselected package libexpat1:amd64.
(Reading database ... 7725 files and directories currently installed.)
Preparing to unpack .../libexpat1_2.7.4-1_amd64.deb ...
Unpacking libexpat1:amd64 (2.7.4-1) ...
Selecting previously unselected package libpython3.14-minimal:amd64.
Preparing to unpack .../libpython3.14-minimal_3.14.4-1ubuntu0.1_amd64.deb ...
Unpacking libpython3.14-minimal:amd64 (3.14.4-1ubuntu0.1) ...
Selecting previously unselected package python3.14-minimal.
Preparing to unpack .../python3.14-minimal_3.14.4-1ubuntu0.1_amd64.deb ...
Unpacking python3.14-minimal (3.14.4-1ubuntu0.1) ...
Setting up libpython3.14-minimal:amd64 (3.14.4-1ubuntu0.1) ...
Setting up libexpat1:amd64 (2.7.4-1) ...
Setting up python3.14-minimal (3.14.4-1ubuntu0.1) ...
Selecting previously unselected package python3-minimal.
(Reading database ... 8079 files and directories currently installed.)
Preparing to unpack .../00-python3-minimal_3.14.3-0ubuntu2_amd64.deb ...
Unpacking python3-minimal (3.14.3-0ubuntu2) ...
Selecting previously unselected package media-types.
Preparing to unpack .../01-media-types_14.0.0build1_all.deb ...
Unpacking media-types (14.0.0build1) ...
Selecting previously unselected package netbase.
Preparing to unpack .../02-netbase_6.5build1_all.deb ...
Unpacking netbase (6.5build1) ...
Selecting previously unselected package tzdata.
Preparing to unpack .../03-tzdata_2026c-0ubuntu0.26.04.1_all.deb ...
Unpacking tzdata (2026c-0ubuntu0.26.04.1) ...
Selecting previously unselected package libffi8:amd64.
Preparing to unpack .../04-libffi8_3.5.2-4_amd64.deb ...
Unpacking libffi8:amd64 (3.5.2-4) ...
Selecting previously unselected package readline-common.
Preparing to unpack .../05-readline-common_8.3-4_all.deb ...
Unpacking readline-common (8.3-4) ...
Selecting previously unselected package libreadline8t64:amd64.
Preparing to unpack .../06-libreadline8t64_8.3-4_amd64.deb ...
Adding 'diversion of /lib/x86_64-linux-gnu/libhistory.so.8 to /lib/x86_64-linux-gnu/libhistory.so.8.usr-is-merged by libreadline8t64'
Adding 'diversion of /lib/x86_64-linux-gnu/libhistory.so.8.2 to /lib/x86_64-linux-gnu/libhistory.so.8.2.usr-is-merged by libreadline8t64'
Adding 'diversion of /lib/x86_64-linux-gnu/libreadline.so.8 to /lib/x86_64-linux-gnu/libreadline.so.8.usr-is-merged by libreadline8t64'
Adding 'diversion of /lib/x86_64-linux-gnu/libreadline.so.8.2 to /lib/x86_64-linux-gnu/libreadline.so.8.2.usr-is-merged by libreadline8t64'
Unpacking libreadline8t64:amd64 (8.3-4) ...
Selecting previously unselected package libsqlite3-0:amd64.
Preparing to unpack .../07-libsqlite3-0_3.46.1-9ubuntu0.2_amd64.deb ...
Unpacking libsqlite3-0:amd64 (3.46.1-9ubuntu0.2) ...
Selecting previously unselected package libpython3.14-stdlib:amd64.
Preparing to unpack .../08-libpython3.14-stdlib_3.14.4-1ubuntu0.1_amd64.deb ...
Unpacking libpython3.14-stdlib:amd64 (3.14.4-1ubuntu0.1) ...
Selecting previously unselected package python3.14.
Preparing to unpack .../09-python3.14_3.14.4-1ubuntu0.1_amd64.deb ...
Unpacking python3.14 (3.14.4-1ubuntu0.1) ...
Selecting previously unselected package libpython3-stdlib:amd64.
Preparing to unpack .../10-libpython3-stdlib_3.14.3-0ubuntu2_amd64.deb ...
Unpacking libpython3-stdlib:amd64 (3.14.3-0ubuntu2) ...
Setting up python3-minimal (3.14.3-0ubuntu2) ...
Selecting previously unselected package python3.
(Reading database ... 9110 files and directories currently installed.)
Preparing to unpack .../python3_3.14.3-0ubuntu2_amd64.deb ...
Unpacking python3 (3.14.3-0ubuntu2) ...
Selecting previously unselected package openssl.
Preparing to unpack .../openssl_3.5.5-1ubuntu3.3_amd64.deb ...
Unpacking openssl (3.5.5-1ubuntu3.3) ...
Selecting previously unselected package ca-certificates.
Preparing to unpack .../ca-certificates_20260601~26.04.1_all.deb ...
Unpacking ca-certificates (20260601~26.04.1) ...
Setting up media-types (14.0.0build1) ...
Setting up libsqlite3-0:amd64 (3.46.1-9ubuntu0.2) ...
Setting up tzdata (2026c-0ubuntu0.26.04.1) ...
debconf: unable to initialize frontend: Dialog
debconf: (No usable dialog-like program is installed, so the dialog based frontend cannot be used. at /usr/share/perl5/Debconf/FrontEnd/Dialog.pm line 79.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (Can't locate Term/ReadLine.pm in @INC (you may need to install the Term::ReadLine module) (@INC entries checked: /etc/perl/usr/local/lib/x86_64-linux-gnu/perl/5.40.1 /usr/local/share/perl/5.40.1 /usr/lib/x86_64-linux-gnu/perl5/5.40 /usr/share/perl5 /usr/lib/x86_64-linux-gnu/perl-base /usr/lib/x86_64-linux-gnu/perl/5.40 /usr/share/perl/5.40 /usr/local/lib/site_perl) at /usr/share/perl5/Debconf/FrontEnd/Readline.pm line 8.)
debconf: falling back to frontend: Teletype

Current default time zone: 'America/Jamaica'
Local time is now:      Sat Aug  1 12:51:23 EST 2026.
Universal Time is now:  Sat Aug  1 17:51:23 UTC 2026.
Run 'dpkg-reconfigure tzdata' if you wish to change it.

Setting up libffi8:amd64 (3.5.2-4) ...
Setting up netbase (6.5build1) ...
Setting up openssl (3.5.5-1ubuntu3.3) ...
Setting up readline-common (8.3-4) ...
Setting up ca-certificates (20260601~26.04.1) ...
debconf: unable to initialize frontend: Dialog
debconf: (No usable dialog-like program is installed, so the dialog based frontend cannot be used. at /usr/share/perl5/Debconf/FrontEnd/Dialog.pm line 79.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (Can't locate Term/ReadLine.pm in @INC (you may need to install the Term::ReadLine module) (@INC entries checked: /etc/perl/usr/local/lib/x86_64-linux-gnu/perl/5.40.1 /usr/local/share/perl/5.40.1 /usr/lib/x86_64-linux-gnu/perl5/5.40 /usr/share/perl5 /usr/lib/x86_64-linux-gnu/perl-base /usr/lib/x86_64-linux-gnu/perl/5.40 /usr/share/perl/5.40 /usr/local/lib/site_perl) at /usr/share/perl5/Debconf/FrontEnd/Readline.pm line 8.)
debconf: falling back to frontend: Teletype
Updating certificates in /etc/ssl/certs...
121 added, 0 removed; done.
Setting up libreadline8t64:amd64 (8.3-4) ...
Setting up libpython3.14-stdlib:amd64 (3.14.4-1ubuntu0.1) ...
Setting up python3.14 (3.14.4-1ubuntu0.1) ...
Setting up libpython3-stdlib:amd64 (3.14.3-0ubuntu2) ...
Setting up python3 (3.14.3-0ubuntu2) ...
running python rtupdate hooks for python3.14...
running python post-rtupdate hooks for python3.14...
Processing triggers for libc-bin (2.43-2ubuntu2) ...
Processing triggers for ca-certificates (20260601~26.04.1) ...
Updating certificates in /etc/ssl/certs...
0 added, 0 removed; done.
Running hooks in /etc/ca-certificates/update.d...
done.
root@9f390745bf63:/# python
bash: python: command not found
root@9f390745bf63:/# python3
Python 3.14.4 (main, Jun 18 2026, 14:25:02) [GCC 15.2.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>>
KeyboardInterrupt
>>>
KeyboardInterrupt
>>>
PS D:\hello-docker> ^C
PS D:\hello-docker> python3
Python 3.14.4 (tags/v3.14.4:23116f9, Apr  7 2026, 14:10:54) [MSC v.1944 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license" for more information.
>>> quit
PS D:\hello-docker> docker run -it ubuntu
root@dbf2e59d6b1a:/# python3
bash: python3: command not found
root@dbf2e59d6b1a:/# docker ps -a
bash: docker: command not found
root@dbf2e59d6b1a:/# quit
bash: quit: command not found
root@dbf2e59d6b1a:/# exit
exit

What's next:
    Debug this container error with Gordon → docker ai "help me fix this container error"
PS D:\hello-docker> docker ps -a
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS                       PORTS     NAMES
dbf2e59d6b1a   ubuntu         "/bin/bash"              41 seconds ago   Exited (127) 4 seconds ago             serene_euler
9f390745bf63   ubuntu         "/bin/bash"              10 minutes ago   Up 10 minutes                          quizzical_keller
155dae1031d5   ubuntu         "/bin/bash"              28 minutes ago   Exited (0) 28 minutes ago              crazy_jemison
40ec048a6f92   hello-docker   "docker-entrypoint.s…"   35 minutes ago   Exited (0) 35 minutes ago              nostalgic_morse
PS D:\hello-docker> docker run -it 9f339
Unable to find image '9f339:latest' locally

What's next:
    Debug this container error with Gordon → docker ai "help me fix this container error"
docker: Error response from daemon: pull access denied for 9f339, repository does not exist or may require 'docker login'

Run 'docker run --help' for more information
PS D:\hello-docker> docker start -i 9f
>>> quit
root@9f390745bf63:/# python3
Python 3.14.4 (main, Jun 18 2026, 14:25:02) [GCC 15.2.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>>
root@9f390745bf63:/# pwd
/
root@9f390745bf63:/# ls
bin  boot  dev  etc  home  lib  lib64  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var
root@9f390745bf63:/# ls -1
bin
boot
dev
etc
home
lib
lib64
media
mnt
opt
proc
root
run
sbin
srv
sys
tmp
usr
var
root@9f390745bf63:/# ls -l
total 60
lrwxrwxrwx   1 root root    7 Apr 20 03:46 bin -> usr/bin
drwxr-xr-x   2 root root 4096 Apr 20 03:46 boot
drwxr-xr-x   5 root root  360 Aug  1 12:42 dev
drwxr-xr-x   1 root root 4096 Aug  1 12:51 etc
drwxr-xr-x   3 root root 4096 Jul 13 11:06 home
lrwxrwxrwx   1 root root    7 Apr 20 03:46 lib -> usr/lib
lrwxrwxrwx   1 root root    9 Apr 20 03:46 lib64 -> usr/lib64
drwxr-xr-x   2 root root 4096 Jul 13 11:05 media
drwxr-xr-x   2 root root 4096 Jul 13 11:05 mnt
drwxr-xr-x   2 root root 4096 Jul 13 11:05 opt
dr-xr-xr-x 280 root root    0 Aug  1 12:42 proc
drwx------   1 root root 4096 Aug  1 12:57 root
drwxr-xr-x   4 root root 4096 Jul 13 11:06 run
lrwxrwxrwx   1 root root    8 Apr 20 03:46 sbin -> usr/sbin
drwxr-xr-x   2 root root 4096 Jul 13 11:05 srv
dr-xr-xr-x  13 root root    0 Aug  1 12:42 sys
drwxrwxrwt   1 root root 4096 Aug  1 12:51 tmp
drwxr-xr-x   1 root root 4096 Jul 13 11:05 usr
drwxr-xr-x   1 root root 4096 Jul 13 11:06 var
root@9f390745bf63:/# cd etc/
root@9f390745bf63:/etc# cd /etc/a
bash: cd: /etc/a: No such file or directory
root@9f390745bf63:/etc# cd /etc/a
bash: cd: /etc/a: No such file or directory
root@9f390745bf63:/etc# cd cd a
bash: cd: too many arguments
root@9f390745bf63:/etc# cd a
alternatives/ apt/
root@9f390745bf63:/etc# cd apt/
root@9f390745bf63:/etc/apt# ls
apt.conf.d  auth.conf.d  keyrings  preferences.d  sources.list  sources.list.d  trusted.gpg.d
root@9f390745bf63:/etc/apt# cd ../..
root@9f390745bf63:/# ls /bin
 '['                       dpkg-trigger   gnumv          hostname        pidwait             split
 apt                       du             gnunice        i386            pinky               stat
 apt-cache                 echo           gnunl          iconv           pkill               stdbuf
 apt-cdrom                 egrep          gnunohup       id              pldd                stty
 apt-config                env            gnunproc       infocmp         pmap                su
 apt-get                   expand         gnunumfmt      infotocap       pr                  sum
 apt-mark                  expiry         gnuod          install         printenv            sync
 arch                      expr           gnupaste       ionice          printf              tabs
 awk                       factor         gnupathchk     ipcmk           prlimit             tac
 b2sum                     fallocate      gnupinky       ipcrm           ps                  tail
 base32                    false          gnupr          ipcs            ptx                 tar
 base64                    fgrep          gnuprintenv    ischroot        pwd                 taskset
 basename                  find           gnuprintf      join            pwdx                tee
 basenc                    findmnt        gnuptx         kill            py3clean            tempfile
 bash                      flock          gnupwd         ld.so           py3compile          test
 bashbug                   fmt            gnureadlink    ldd             py3versions         tic
 c_rehash                  fold           gnurealpath    link            pydoc3              timeout
 captoinfo                 free           gnurm          linux32         pydoc3.14           tload
 cat                       getconf        gnurmdir       linux64         pygettext3          toe
 chage                     getent         gnuruncon      ln              pygettext3.14       top
 chattr                    getopt         gnuseq         locale          python3             touch
 chcon                     'gnu['         gnusha1sum     locale-check    python3.14          tput
 chfn                      gnuarch        gnusha224sum   localedef       rbash               tr
 chgrp                     gnub2sum       gnusha256sum   logger          readlink            true
 chmod                     gnubase32      gnusha384sum   login           realpath            truncate
 choom                     gnubase64      gnusha512sum   logname         renice              tset
 chown                     gnubasename    gnushred       ls              reset               tsort
 chroot                    gnubasenc      gnushuf        lsattr          rgrep               tty
 chrt                      gnucat         gnusleep       lsblk           rm                  tzselect
 chsh                      gnuchcon       gnusort        lscpu           rmdir               uclampset
 cksum                     gnuchgrp       gnusplit       lsipc           run-parts           umount
 clear                     gnuchmod       gnustat        lslocks         runcon              uname
 clear_console             gnuchown       gnustdbuf      lsns            savelog             uncompress
 cmp                       gnucksum       gnustty        man             script              unexpand
 comm                      gnucomm        gnusum         mawk            scriptlive          uniq
 coreutils                 gnucp          gnusync        mcookie         scriptreplay        unlink
 cp                        gnucsplit      gnutac         md5sum          sdiff               unshare
 csplit                    gnucut         gnutail        mkdir           sed                 update-alternatives
 cut                       gnudate        gnutee         mkfifo          select-editor       uptime
 dash                      gnudd          gnutest        mknod           sensible-browser    users
 date                      gnudf          gnutimeout     mktemp          sensible-editor     vdir
 dd                        gnudir         gnutouch       more            sensible-pager      vmstat
 deb-systemd-helper        gnudircolors   gnutr          mount           sensible-terminal   w
 deb-systemd-invoke        gnudirname     gnutrue        mountpoint      seq                 wall
 debconf                   gnudu          gnutruncate    mv              setarch             watch
 debconf-apt-progress      gnuecho        gnutsort       namei           setpriv             wc
 debconf-communicate       gnuenv         gnutty         nawk            setsid              whereis
 debconf-copydb            gnuexpand      gnuuname       nice            setterm             which
 debconf-escape            gnuexpr        gnuunexpand    nisdomainname   sh                  which.debianutils
 debconf-set-selections    gnufactor      gnuuniq        nl              sha1sum             who
 debconf-show              gnufalse       gnuunlink      nohup           sha224sum           whoami
 df                        gnufmt         gnuusers       nproc           sha256sum           x86_64
 diff                      gnufold        gnuvdir        nsenter         sha3-224sum         xargs
 diff3                     gnugroups      gnuwc          numfmt          sha3-256sum         yes
 dir                       gnuhead        gnuwho         od              sha3-384sum         ypdomainname
 dircolors                 gnuhostid      gnuwhoami      openssl         sha3-512sum         zcat
 dirname                   gnuid          gnuyes         pager           sha384sum           zcmp
 dmesg                     gnuinstall     gpasswd        partx           sha3sum             zdiff
 dnsdomainname             gnujoin        gpgv           passwd          sha512sum           zdump
 domainname                gnulink        grep           paste           shake128sum         zegrep
 dpkg                      gnuln          groups         pathchk         shake256sum         zfgrep
 dpkg-deb                  gnulogname     gunzip         pdb3            shred               zforce
 dpkg-divert               gnuls          gzexe          pdb3.14         shuf                zgrep
 dpkg-maintscript-helper   gnumd5sum      gzip           pebble          skill               zless
 dpkg-query                gnumkdir       hardlink       perl            slabtop             zmore
 dpkg-realpath             gnumkfifo      hashsum        perl5.40.1      sleep               znew
 dpkg-split                gnumknod       head           pgrep           snice
 dpkg-statoverride         gnumktemp      hostid         pidof           sort
root@9f390745bf63:/# cd /root/
root@9f390745bf63:~# cd ..
root@9f390745bf63:/# cd ~
root@9f390745bf63:~# mkdir test
root@9f390745bf63:~# ls
test
root@9f390745bf63:~# mv test docker
root@9f390745bf63:~# ls
docker
root@9f390745bf63:~# cd docker/
root@9f390745bf63:~/docker# touch hello.txt
root@9f390745bf63:~/docker# ls
hello.txt
root@9f390745bf63:~/docker# touch file1.txt file2.txt file3.txt
root@9f390745bf63:~/docker# ls
file1.txt  file2.txt  file3.txt  hello.txt
root@9f390745bf63:~/docker# ls -1
file1.txt
file2.txt
file3.txt
hello.txt
root@9f390745bf63:~/docker# mv hello.txt hello-docker.txt
root@9f390745bf63:~/docker# ls -1
file1.txt
file2.txt
file3.txt
hello-docker.txt
root@9f390745bf63:~/docker# rm file*
root@9f390745bf63:~/docker# ls
hello-docker.txt
root@9f390745bf63:~/docker# cd ..
root@9f390745bf63:~# ls
docker
root@9f390745bf63:~# rm docker
rm: cannot remove 'docker': Is a directory
root@9f390745bf63:~# rm -r docker
root@9f390745bf63:~# ls
root@9f390745bf63:~# nano
bash: /usr/bin/nano: No such file or directory
root@9f390745bf63:~# apt update
Hit:1 http://archive.ubuntu.com/ubuntu resolute InRelease
Hit:2 http://security.ubuntu.com/ubuntu resolute-security InRelease
Hit:3 http://archive.ubuntu.com/ubuntu resolute-updates InRelease
Hit:4 http://archive.ubuntu.com/ubuntu resolute-backports InRelease
10 packages can be upgraded. Run 'apt list --upgradable' to see them.
root@9f390745bf63:~# apt install nano
Installing:
  nano

Suggested packages:
  hunspell

Summary:
  Upgrading: 0, Installing: 1, Removing: 0, Not Upgrading: 10
  Download size: 289 kB
  Space needed: 893 kB / 1024 GB available

Get:1 http://archive.ubuntu.com/ubuntu resolute-updates/main amd64 nano amd64 8.7.1-1ubuntu0.1 [289 kB]
Fetched 289 kB in 1s (211 kB/s)
debconf: unable to initialize frontend: Dialog
debconf: (No usable dialog-like program is installed, so the dialog based frontend cannot be used. at /usr/share/perl5/Debconf/FrontEnd/Dialog.pm line 79, <STDIN> line 1.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (Can't locate Term/ReadLine.pm in @INC (you may need to install the Term::ReadLine module) (@INC entries checked: /etc/perl/usr/local/lib/x86_64-linux-gnu/perl/5.40.1 /usr/local/share/perl/5.40.1 /usr/lib/x86_64-linux-gnu/perl5/5.40 /usr/share/perl5 /usr/lib/x86_64-linux-gnu/perl-base /usr/lib/x86_64-linux-gnu/perl/5.40 /usr/share/perl/5.40 /usr/local/lib/site_perl) at /usr/share/perl5/Debconf/FrontEnd/Readline.pm line 8, <STDIN> line 1.)
debconf: falling back to frontend: Teletype
Selecting previously unselected package nano.
(Reading database ... 9665 files and directories currently installed.)
Preparing to unpack .../nano_8.7.1-1ubuntu0.1_amd64.deb ...
Unpacking nano (8.7.1-1ubuntu0.1) ...
Setting up nano (8.7.1-1ubuntu0.1) ...
update-alternatives: using /bin/nano to provide /usr/bin/editor (editor) in auto mode
update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/nano.1.gz(of link group editor) does not exist
update-alternatives: using /bin/nano to provide /usr/bin/pico (pico) in auto mode
update-alternatives: warning: skip creation of /usr/share/man/man1/pico.1.gz because associated file /usr/share/man/man1/nano.1.gz (of link group pico) does not exist
root@9f390745bf63:~# nano
root@9f390745bf63:~# cd ~
root@9f390745bf63:~# ls
root@9f390745bf63:~# nano file1.txt
root@9f390745bf63:~# ls
file1.txt
root@9f390745bf63:~# cat file1.txt
Hello
World
root@9f390745bf63:~# cat /etc/adduser.conf
cat: /etc/adduser.conf: No such file or directory
root@9f390745bf63:~# apt install adduser
Installing:
  adduser

Suggested packages:
  liblocale-gettext-perl  perl  cron  quota  ecryptfs-utils

Summary:
  Upgrading: 0, Installing: 1, Removing: 0, Not Upgrading: 10
  Download size: 194 kB
  Space needed: 447 kB / 1024 GB available

Get:1 http://archive.ubuntu.com/ubuntu resolute/main amd64 adduser all 3.153ubuntu1 [194 kB]
Fetched 194 kB in 1s (202 kB/s)
debconf: unable to initialize frontend: Dialog
debconf: (No usable dialog-like program is installed, so the dialog based frontend cannot be used. at /usr/share/perl5/Debconf/FrontEnd/Dialog.pm line 79, <STDIN> line 1.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (Can't locate Term/ReadLine.pm in @INC (you may need to install the Term::ReadLine module) (@INC entries checked: /etc/perl/usr/local/lib/x86_64-linux-gnu/perl/5.40.1 /usr/local/share/perl/5.40.1 /usr/lib/x86_64-linux-gnu/perl5/5.40 /usr/share/perl5 /usr/lib/x86_64-linux-gnu/perl-base /usr/lib/x86_64-linux-gnu/perl/5.40 /usr/share/perl/5.40 /usr/local/lib/site_perl) at /usr/share/perl5/Debconf/FrontEnd/Readline.pm line 8, <STDIN> line 1.)
debconf: falling back to frontend: Teletype
Selecting previously unselected package adduser.
(Reading database ... 9738 files and directories currently installed.)
Preparing to unpack .../adduser_3.153ubuntu1_all.deb ...
Unpacking adduser (3.153ubuntu1) ...
Setting up adduser (3.153ubuntu1) ...
root@9f390745bf63:~# cat /etc/adduser.conf
# /etc/adduser.conf: `adduser' configuration.
# See adduser(8) and adduser.conf(5) for full documentation.

# A commented out setting indicates that this is the default in the
# code. If you need to change those settings, remove the comment and
# make your intended change.

# STDERRMSGLEVEL, STDOUTMSGLEVEL, and LOGMSGLEVEL set the minimum
# priority for messages logged to syslog/journal and the console,
# respectively.
# Values are trace, debug, info, warn, err, and fatal.
# Messages with the set priority or higher get logged to the
# respective medium.
#STDOUTMSGLEVEL=warn
#STDERRMSGLEVEL=warn
#LOGMSGLEVEL=info

# The login shell to be used for all new users.
# Default: DSHELL=/bin/bash
#DSHELL=/bin/bash

# The directory in which new home directories should  be  created.
# Default: DHOME=/home
# DHOME=/home

# The directory from which skeletal user configuration files
# will be copied.
# Default: SKEL=/etc/skel
#SKEL=/etc/skel

# Specify inclusive ranges of UIDs and GIDs from which UIDs and GIDs
# for system users, system groups, non-system users and non-system groups
# can be dynamically allocated.
# Default: FIRST_SYSTEM_UID=100, LAST_SYSTEM_UID=999
#FIRST_SYSTEM_UID=100
#LAST_SYSTEM_UID=999

# Default: FIRST_SYSTEM_GID=100, LAST_SYSTEM_GID=999
#FIRST_SYSTEM_GID=100
#LAST_SYSTEM_GID=999

# Default: FIRST_UID=1000, LAST_UID=59999
#FIRST_UID=1000
#LAST_UID=59999

# Default: FIRST_GID=1000, LAST_GID=59999
#FIRST_GID=1000
#LAST_GID=59999

# Specify a file or a directory containing UID and GID pool.
#UID_POOL=/etc/adduser-pool.conf
#UID_POOL=/etc/adduser-pool.d/
#GID_POOL=/etc/adduser-pool.conf
#GID_POOL=/etc/adduser-pool.d/
#RESERVE_UID_POOL=yes
#RESERVE_GID_POOL=yes

# Specify whether each created non-system user will be
# given their own group to use.
# Default: USERGROUPS=yes
#USERGROUPS=yes

# Defines the groupname or GID of the group all newly-created
# non-system users are placed into.
# It is a configuration error to define both variables
# even if the values are consistent.
# Default: USERS_GID=undefined, USERS_GROUP=users
#USERS_GID=100
#USERS_GROUP=users

# The permissions mode for home directories of non-system users.
# Default: DIR_MODE=0750
#DIR_MODE=0750

# The permissions mode for home directories of system users.
# Default: SYS_DIR_MODE=0750
#SYS_DIR_MODE=0750

# If set to a nonempty value, new users will have quotas copied
# from that user with `edquota -p QUOTAUSER newuser'
# Default: QUOTAUSER=""
#QUOTAUSER=""

# Non-system user- and groupnames are checked against this regular
# expression. RFC8265 would allow all codepoints U+0021 through U+007E
# meaning: !"#$%&'()*+,-./:;<=>?@[\]^_`{|}~ plus digits, lower case and
# capital letters. ., / and : clash with special file names, path separator
# and /etc/passwd format, many other characters might cause issues in shell
# scripts. Therefore, the default is more restrictive than RFC8265 would
# allow. Local administrators might relax this regexp as far as useradd
# will allow.
# Default: NAME_REGEX="^[a-zA-Z][a-zA-Z0-9_-]*\$?$"
#NAME_REGEX="^[a-zA-Z][a-zA-Z0-9_-]*\$?$"

# System user- and groupnames are checked against this regular
# expression. Comments from above apply as well, but changes here may
# affect package installation.
# Default: SYS_NAME_REGEX="^[a-zA-Z_][a-zA-Z0-9_-]*\$?$"
#SYS_NAME_REGEX="^[a-zA-Z_][a-zA-Z0-9_-]*\$?$"

# When populating the newly created home directory of a non-system user,
# files in SKEL matching this regex are not copied.
# Default: SKEL_IGNORE_REGEX="\.(dpkg|ucf)-(old|new|dist|save)$"
#SKEL_IGNORE_REGEX="\.(dpkg|ucf)-(old|new|dist|save)$"

# list of groups that new non-system users will be added to
# if ADD_EXTRA_GROUPS is non-zero or set on the command line.
# Default: EXTRA_GROUPS="users"
#EXTRA_GROUPS="users"

# Setting this to something other than 0 will cause adduser to add
# newly created non-system users to the list of groups defined by
# EXTRA_GROUPS.
# Default: ADD_EXTRA_GROUPS=0
#ADD_EXTRA_GROUPS=0

# use extrausers by default
#USE_EXTRAUSERS=1
root@9f390745bf63:~# more /etc/adduser.conf
# /etc/adduser.conf: `adduser' configuration.
# See adduser(8) and adduser.conf(5) for full documentation.

# A commented out setting indicates that this is the default in the
# code. If you need to change those settings, remove the comment and
# make your intended change.

# STDERRMSGLEVEL, STDOUTMSGLEVEL, and LOGMSGLEVEL set the minimum
# priority for messages logged to syslog/journal and the console,
# respectively.
# Values are trace, debug, info, warn, err, and fatal.
# Messages with the set priority or higher get logged to the
# respective medium.
#STDOUTMSGLEVEL=warn
#STDERRMSGLEVEL=warn
#LOGMSGLEVEL=info

# The login shell to be used for all new users.
# Default: DSHELL=/bin/bash
#DSHELL=/bin/bash

# The directory in which new home directories should  be  created.
# Default: DHOME=/home
# DHOME=/home

# The directory from which skeletal user configuration files
# will be copied.
# Default: SKEL=/etc/skel
#SKEL=/etc/skel

# Specify inclusive ranges of UIDs and GIDs from which UIDs and GIDs
# for system users, system groups, non-system users and non-system groups
# can be dynamically allocated.
# Default: FIRST_SYSTEM_UID=100, LAST_SYSTEM_UID=999
#FIRST_SYSTEM_UID=100
#LAST_SYSTEM_UID=999

# Default: FIRST_SYSTEM_GID=100, LAST_SYSTEM_GID=999
#FIRST_SYSTEM_GID=100
#LAST_SYSTEM_GID=999

# Default: FIRST_UID=1000, LAST_UID=59999
#FIRST_UID=1000
#LAST_UID=59999

# Default: FIRST_GID=1000, LAST_GID=59999
#FIRST_GID=1000
#LAST_GID=59999

# Specify a file or a directory containing UID and GID pool.
#UID_POOL=/etc/adduser-pool.conf
#UID_POOL=/etc/adduser-pool.d/
#GID_POOL=/etc/adduser-pool.conf
#GID_POOL=/etc/adduser-pool.d/
#RESERVE_UID_POOL=yes
#RESERVE_GID_POOL=yes

# Specify whether each created non-system user will be
# given their own group to use.
# Default: USERGROUPS=yes
#USERGROUPS=yes

# Defines the groupname or GID of the group all newly-created
# non-system users are placed into.
# It is a configuration error to define both variables
# even if the values are consistent.
# Default: USERS_GID=undefined, USERS_GROUP=users
#USERS_GID=100
#USERS_GROUP=users

# The permissions mode for home directories of non-system users.
# Default: DIR_MODE=0750
#DIR_MODE=0750

# The permissions mode for home directories of system users.
# Default: SYS_DIR_MODE=0750
#SYS_DIR_MODE=0750

# If set to a nonempty value, new users will have quotas copied
# from that user with `edquota -p QUOTAUSER newuser'
# Default: QUOTAUSER=""
#QUOTAUSER=""

# Non-system user- and groupnames are checked against this regular
# expression. RFC8265 would allow all codepoints U+0021 through U+007E
# meaning: !"#$%&'()*+,-./:;<=>?@[\]^_`{|}~ plus digits, lower case and
# capital letters. ., / and : clash with special file names, path separator
# and /etc/passwd format, many other characters might cause issues in shell
# scripts. Therefore, the default is more restrictive than RFC8265 would
root@9f390745bf63:~# less file1.txt
bash: less: command not found
root@9f390745bf63:~# apt install less
Installing:
  less

Summary:
  Upgrading: 0, Installing: 1, Removing: 0, Not Upgrading: 10
  Download size: 172 kB
  Space needed: 382 kB / 1024 GB available

Get:1 http://archive.ubuntu.com/ubuntu resolute/main amd64 less amd64 668-1build1 [172 kB]
Fetched 172 kB in 1s (177 kB/s)
debconf: unable to initialize frontend: Dialog
debconf: (No usable dialog-like program is installed, so the dialog based frontend cannot be used. at /usr/share/perl5/Debconf/FrontEnd/Dialog.pm line 79, <STDIN> line 1.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (Can't locate Term/ReadLine.pm in @INC (you may need to install the Term::ReadLine module) (@INC entries checked: /etc/perl/usr/local/lib/x86_64-linux-gnu/perl/5.40.1 /usr/local/share/perl/5.40.1 /usr/lib/x86_64-linux-gnu/perl5/5.40 /usr/share/perl5 /usr/lib/x86_64-linux-gnu/perl-base /usr/lib/x86_64-linux-gnu/perl/5.40 /usr/share/perl/5.40 /usr/local/lib/site_perl) at /usr/share/perl5/Debconf/FrontEnd/Readline.pm line 8, <STDIN> line 1.)
debconf: falling back to frontend: Teletype
Selecting previously unselected package less.
(Reading database ... 9822 files and directories currently installed.)
Preparing to unpack .../less_668-1build1_amd64.deb ...
Unpacking less (668-1build1) ...
Setting up less (668-1build1) ...
root@9f390745bf63:~# less /etc/adduser.conf
root@9f390745bf63:~# head 5 /etc/adduser.conf
head: cannot open '5' for reading: No such file or directory
==> /etc/adduser.conf <==
# /etc/adduser.conf: `adduser' configuration.
# See adduser(8) and adduser.conf(5) for full documentation.

# A commented out setting indicates that this is the default in the
# code. If you need to change those settings, remove the comment and
# make your intended change.

# STDERRMSGLEVEL, STDOUTMSGLEVEL, and LOGMSGLEVEL set the minimum
# priority for messages logged to syslog/journal and the console,
# respectively.
root@9f390745bf63:~# head -n 5 /etc/adduser.conf
# /etc/adduser.conf: `adduser' configuration.
# See adduser(8) and adduser.conf(5) for full documentation.

# A commented out setting indicates that this is the default in the
# code. If you need to change those settings, remove the comment and
root@9f390745bf63:~# tail -n 5 /etc/adduser.conf
# Default: ADD_EXTRA_GROUPS=0
#ADD_EXTRA_GROUPS=0

# use extrausers by default
#USE_EXTRAUSERS=1
root@9f390745bf63:~# cat file1.txt
Hello
World
root@9f390745bf63:~# cat file1.txt > file2.txt
root@9f390745bf63:~# ls
file1.txt  file2.txt
root@9f390745bf63:~# cat file2.txt
Hello
World
root@9f390745bf63:~# cat file1.txt file2.txt
Hello
World
Hello
World
root@9f390745bf63:~# cat file1.txt file2.txt > combined.txt
root@9f390745bf63:~# ls
combined.txt  file1.txt  file2.txt
root@9f390745bf63:~# cat combined.txt
Hello
World
Hello
World
root@9f390745bf63:~# echo hello
hello
root@9f390745bf63:~# echo hello > hello.txt
root@9f390745bf63:~# cat hello.txt
hello
root@9f390745bf63:~# echo whatever > whatever.txt
root@9f390745bf63:~# cat whatever.txt
whatever
root@9f390745bf63:~# ls -l /etc > etc-content.txt
root@9f390745bf63:~# less etc-content.txt
root@9f390745bf63:~# exit
exit
PS D:\hello-docker> ls

    Directory: D:\hello-docker

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---            8/1/2026  8:35 PM             30 app.js
-a---            8/1/2026  8:39 PM             60 Dockerfile

PS D:\hello-docker> Get-ChildItem > output1.txt
PS D:\hello-docker>
