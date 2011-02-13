
#!/usr/bin/env sh
PackageName=com.modmyi.plants_vs_zombies_coin_sms_tone
phone=root@nathans-iphone
package_file=`ls | grep $PackageName`

echo "== Copying package file..."
scp $package_file $phone:/var/mobile
echo "== Installing..."
ssh $phone "dpkg -r $PackageName; cd /var/mobile; dpkg -i $package_file; ## killall SpringBoard"
echo "===== Done."

