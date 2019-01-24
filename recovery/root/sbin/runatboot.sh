#!/sbin/sh

bootmid=$(getprop ro.boot.mid)
bootcid=$(getprop ro.boot.cid)

case $bootmid in
	"2PZC10000")
		resetprop ro.build.product "htc_ocnuhl"
		resetprop ro.product.device "htc_ocnuhl"
		resetprop ro.product.model "HTC U11"
		;;
	"2PZC20000")
		resetprop ro.build.product "htc_ocnuhljapan"
		resetprop ro.product.device "htc_ocnuhljapan"
		resetprop ro.product.model "601HT"
		;;
	"2PZC30000")
		resetprop ro.build.product "htc_ocndugl"
		resetprop ro.product.device "htc_ocndugl"
		resetprop ro.product.model "HTC_U-3u"
		;;
	"2PZC40000")
		resetprop ro.build.product "htc_ocndtwl"
		resetprop ro.product.device "htc_ocndtwl"
		resetprop ro.product.model "HTC U11"
		;;
	"2PZC50000")
		resetprop ro.build.product "htc_ocnwhl"
		resetprop ro.product.device "htc_ocnwhl"
		if [ $bootcid == 'SPCS_001' ]; then
			resetprop ro.product.model "2PZC5"
		else
			resetprop ro.product.model "HTC U11"
		fi
		;;
	*)
		resetprop ro.build.product "htc_ocnuhl"
		resetprop ro.product.device "htc_ocnuhl"
		resetprop ro.product.model "HTC U11"
		;;
esac

exit 0