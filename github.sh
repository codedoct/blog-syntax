$ git init => initialize .git membuat folder .git

$ git config --global user.name "YOUR NAME" => menambahkan username global github
$ git config --global user.email "YOUR EMAIL ADDRESS" => menambahkan email global github

$ git add -A => manambahkan semua perubahan pada folder ke log github
$ git add (folder/file) => menambah file / folder ke log github 
$ git checkout -- (folder/file) => menghapus perubahan git

$ git status => melihat status perubahan pada folder

$ git commit -m " " => commit ke log github dengan comment

$ git log => melihat log github

$ git checkout -f => kembalikan perubahan
$ git checkout (nama_branch) => pindah branch
$ git branch -d (nama_branch) => delete branch local yang belum di push
$ git branch -D (nama_branch) => delete branch yang sudah di push
$ git push origin :(nama_branch) => delete branch remote
$ git checkout -b (nama_branch) => menambah branch baru
$ git checkout . => hapus semua perubahan

$ git remote add origin https://github.com/username/project.git => with login
$ git remote add origin git@github.com:/project.git => with key
$ git remote set-url origin (new_url) => mengganti remote url
$ git remote -v => melihat list remote url

$ git pull origin master => menarik data master dari github
$ git pull --rebase => sinkronisasi

$ git push -u origin (master/branch) => push ke origin github

$ git merge => merger master ke branch

$ git clone => cloning git folder

$ gitg => show modify 

$ git reset --hard => back to top HEAD
