for dir in *
do
cd ${dir}
if [ -e *.pkg.tar.xz ]
then
    gpg --default-key 070453E5 --batch -b *.pkg.tar.xz
    repo-add -s ~/blackarch_related/repo/admin.db.tar.gz *.pkg.tar.xz
    repo-add -s ~/blackarch_related/repo/obsidian.db.tar.gz *.pkg.tar.xz
    repo-add -s ~/blackarch_related/quarry_n/index/quarry.db.tar.gz *.pkg.tar.xz
else
makechrootpkg -D ${INDEX_DIR}:${CHROOT_QUARRY_PATH} -c -r $CHROOT
gpg --default-key 070453E5 --batch -b *.pkg.tar.xz
cp *.pkg.tar.xz* ~/blackarch_related/repo/
cp *.pkg.tar.xz* ~/blackarch_related/quarry_n/index/
repo-add -s ~/blackarch_related/repo/admin.db.tar.gz *.pkg.tar.xz
repo-add -s ~/blackarch_related/repo/obsidian.db.tar.gz *.pkg.tar.xz
repo-add -s ~/blackarch_related/quarry_n/index/quarry.db.tar.gz *.pkg.tar.xz
cd ~/blackarch_related/blackarch-ruby_n
fi
done
