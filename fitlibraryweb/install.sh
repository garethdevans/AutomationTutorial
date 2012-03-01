curl -O https://www.socialtext.net/data/workspaces/install/attachments/fitnesse_install_and_setup:20110503222247-0-2772/original/Fitnesse-Apr2011.zip
unzip Fitnesse-Apr2011.zip
mv Fitnesse-Apr2011 Fitnesse
cp -R wiki/SpiderFixture Fitnesse/FitnesseRoot/FitLibraryWeb
./open-test.sh
./start.sh