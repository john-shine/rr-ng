# RR-ng

This project is a system for redpill’s preinstallation and recovery environment.

Credits
* Arpl: @fbelavenuto
  * https://github.com/fbelavenuto/arpl
* Redpill: @RedPill-TTG @pocopico @jim3ma
  * https://github.com/RedPill-TTG
  * https://github.com/XPEnology-Community/redpill-lkm5
* Framework:
  * https://github.com/buildroot/buildroot
  * https://github.com/eudev-project/eudev
* Addons: @xbl3 @FOXBI @arabezar @007revad
  * https://github.com/xbl3/synocodectool-patch
  * https://github.com/FOXBI/ch_cpuinfo (https://github.com/arabezar/ch_cpuinfo)
  * https://github.com/007revad/Synology_HDD_db
  * https://github.com/007revad/Synology_enable_M2_volume
* Modules: @jim3ma @MoetaYuko
  * https://github.com/jim3ma/synology-igc
  * https://github.com/MoetaYuko/intel-gpu-i915-backports


### components: 
<b>https://github.com/john-shine/rr-ng</b>
* addons: https://github.com/john-shine/rr-ng-addons
* modules: https://github.com/john-shine/rr-ng-modules
* rp-lkms: https://github.com/john-shine/rr-ng-lkms

### About GPU: 
* vGPU: https://blog.kkk.rs/
* iGPU: https://jim.plus/
* iGPU: https://github.com/MoetaYuko/intel-gpu-i915-backports

## Translation
* Language translation work:
    ```shell
    # If it does not involve adding or deleting, the following process is not required.
    sudo apt install gettext
    git clone https://github.com/john-shine/rr-ng.git
    cd files/initrd/opt/rr
    xgettext -L Shell --keyword=TEXT *.sh -o lang/rr.pot
    sed -i 's/charset=CHARSET/charset=UTF-8/' lang/rr.pot
    # You need to replace the language you need and translate the po file.
    msginit -i lang/rr.pot -l zh_CN.UTF-8 -o lang/zh_CN.po
    # This process will be automatically processed during packaging.
    msgfmt lang/zh_CN.po -o lang/zh_CN.mo
    ```
* I am not proficient in language, and even my English is very poor. 
  Developers who are familiar with various languages are welcome to submit PR.
