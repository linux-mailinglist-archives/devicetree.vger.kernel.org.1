Return-Path: <devicetree+bounces-89103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBDD93FF5C
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 22:27:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D7DE1C22461
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 20:27:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38599194083;
	Mon, 29 Jul 2024 20:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=jiaxyga.com header.i=@jiaxyga.com header.b="p75IL4FU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp45.i.mail.ru (smtp45.i.mail.ru [95.163.41.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF46A189F54;
	Mon, 29 Jul 2024 20:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.163.41.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722284425; cv=none; b=XnZWiRl5V62AD7Y/X2KfeMUtYbeOlYhfFa7fM1XLj5c7bVF0w9SldDHvES0DelUnIsWRl9Mf+TfCy1bRGKC2VSBQPl2Kw642dwwEVxLtD9qq1V0P18nRQ1dw+IO5+scSL46AS0pQuCbFqi8p7uab9K6b2itna6+Hrd4OuWmAME8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722284425; c=relaxed/simple;
	bh=oL4uJN4SnUQ/FH9LPNGpsq3HZBE20iR6oLBQoo8X48M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ESejojnc2UyGSh36xlNFp8XlMBErjlLvZMgkvYNPS9lHAtNPaJa+2pbijHamPy6g4hpIeoxzgn6BgLacm9Ox5f4xYmBNVsiGO0q0NyIrXDXm2WgYIHUliqc52J4XOQkQWXihmtGBpo8ZrjbFwg8swE9ibM48xUUOIv2yKx3yDW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jiaxyga.com; spf=pass smtp.mailfrom=jiaxyga.com; dkim=pass (1024-bit key) header.d=jiaxyga.com header.i=@jiaxyga.com header.b=p75IL4FU; arc=none smtp.client-ip=95.163.41.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jiaxyga.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jiaxyga.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jiaxyga.com
	; s=mailru; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:From:Sender:Reply-To:To:Cc:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive:
	X-Cloud-Ids:Disposition-Notification-To;
	bh=dI2zWusPNa65ponZE9WJ281V7A9j0Ij+ntG5UYtpY3s=; t=1722284421; x=1722374421; 
	b=p75IL4FUonfKS0hY0ySkiTNZnv9OUSykVsZJGiTRdhkLz2nK4aKVQgF+kRqC0Th9+GwPy8fAE2V
	QoQDSzwTOOLEPf4CcuV9CoUgL09UwZ4gO/O+C4VRygHT8Rag3gJ5BD8UTVjpbPYb/QKTiDP4QLjvX
	LXl31PG6tlAXmeBw9QM=;
Received: by exim-smtp-868bf69f6c-8kchf with esmtpa (envelope-from <danila@jiaxyga.com>)
	id 1sYWqs-00000000CoU-3v6z; Mon, 29 Jul 2024 23:20:15 +0300
From: Danila Tikhonov <danila@jiaxyga.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	rafael@kernel.org,
	viresh.kumar@linaro.org,
	heikki.krogerus@linux.intel.com,
	gregkh@linuxfoundation.org,
	kees@kernel.org,
	tony.luck@intel.com,
	gpiccoli@igalia.com,
	sudeep.holla@arm.com,
	quic_rjendra@quicinc.com,
	andre.przywara@arm.com,
	ulf.hansson@linaro.org,
	davidwronek@gmail.com,
	neil.armstrong@linaro.org,
	heiko.stuebner@cherry.de,
	rafal@milecki.pl,
	macromorgan@hotmail.com,
	linus.walleij@linaro.org,
	dmitry.baryshkov@linaro.org,
	johan+linaro@kernel.org,
	javier.carrasco.cruz@gmail.com,
	quic_kriskura@quicinc.com,
	lpieralisi@kernel.org,
	fekz115@gmail.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	linux@mainlining.org,
	Danila Tikhonov <danila@jiaxyga.com>
Subject: [PATCH 11/11] arm64: dts: qcom: sm7325: Add device-tree for Nothing Phone 1
Date: Mon, 29 Jul 2024 23:18:18 +0300
Message-ID: <20240729201843.142918-12-danila@jiaxyga.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240729201843.142918-1-danila@jiaxyga.com>
References: <20240729201843.142918-1-danila@jiaxyga.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Authentication-Results: exim-smtp-868bf69f6c-8kchf; auth=pass smtp.auth=danila@jiaxyga.com smtp.mailfrom=danila@jiaxyga.com
X-Mailru-Src: smtp
X-4EC0790: 10
X-7564579A: B8F34718100C35BD
X-77F55803: 4F1203BC0FB41BD9000B6812E77BE1C65D76B8F852291B0987B035B9E54BA07F182A05F538085040C4674E6E89A9522A3DE06ABAFEAF670507A53B0B59296EDE9EC546CAE4A36CAC07272706DC71EDAD
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE78ECF34BFCFFD7E95EA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F7900637BB46061768088B55EA1F7E6F0F101C6723150C8DA25C47586E58E00D9D99D84E1BDDB23E98D2D38B043BF0FB74779F366FB71B091AFCC8C3FAF42C0DC8CB880F99BDB0F96E95754DA471835C12D1D9774AD6D5ED66289B5278DA827A17800CE709B92020B71E24959FA2833FD35BB23D2EF20D2F80756B5F868A13BD56FB6657A471835C12D1D977725E5C173C3A84C353FA85A707D24CADCC7F00164DA146DA6F5DAA56C3B73B237318B6A418E8EAB8D32BA5DBAC0009BE9E8FC8737B5C2249327163B1064B1AFF76E601842F6C81A12EF20D2F80756B5FB606B96278B59C4276E601842F6C81A127C277FBC8AE2E8BDA0EE77BD570A4D93AA81AA40904B5D99C9F4D5AE37F343AD1F44FA8B9022EA23BBE47FD9DD3FB595F5C1EE8F4F765FC72CEEB2601E22B093A03B725D353964B0B7D0EA88DDEDAC722CA9DD8327EE4930A3850AC1BE2E7352686C055BC15B7FBC4224003CC83647689D4C264860C145E
X-C1DE0DAB: 0D63561A33F958A595CC5B67F0C2E9D95002B1117B3ED696F12AE7735EA2BB16F5FEB6EB1EB183FD823CB91A9FED034534781492E4B8EEAD58730AC226DEBCC9C79554A2A72441328621D336A7BC284946AD531847A6065A535571D14F44ED41
X-C8649E89: 1C3962B70DF3F0ADE00A9FD3E00BEEDF3FED46C3ACD6F73ED3581295AF09D3DF87807E0823442EA2ED31085941D9CD0AF7F820E7B07EA4CF5F659CDE10C2A01D02628B9F797CC22DB7BFAD8D4399FA5E72E1CEE8429CD6FEF31E0254ADC75A0667C7AAC6E25A208623C1A42207BBB5FF633D7FB3044967C297F9F7301E1F6CEE61A41C79C593F3F002C26D483E81D6BE72B480F99247062FEE42F474E8A1C6FD34D382445848F2F3
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojX2k8aL79D6Vfglv3tvlKPA==
X-Mailru-Sender: 9EB879F2C80682A09F26F806C7394981FAF4174D7AEDC04E05E38EDE555C28062726E3D40AF5779C947DD126D55C93312C62728BC403A049225EC17F3711B6CF1A6F2E8989E84EC137BFB0221605B344978139F6FA5A77F05FEEDEB644C299C0ED14614B50AE0675
X-Mras: Ok

From: Eugene Lepshy <fekz115@gmail.com>

Add device tree for the Nothing Phone 1 (nothing,spacewar) smartphone
which is based on the SM7325 SoC.

Supported features are, as of now:
* USB & UFS
* Debug UART
* Display via SimpleFB
* Power & volume buttons
* PMIC GLink
* Remoteprocs (ADSP, CDSP, MPSS, WPSS)
* WiFi & Bluetooth
* IPA
* VPU Iris (Venus)
* NFC
* Flash/torch LED
* RTC
* Device-specific thermals
* Various plumbing like regulators, i2c, spi, cci, etc

Signed-off-by: Eugene Lepshy <fekz115@gmail.com>
Co-developed-by: Danila Tikhonov <danila@jiaxyga.com>
Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
---
 arch/arm64/boot/dts/qcom/Makefile             |    1 +
 .../boot/dts/qcom/sm7325-nothing-spacewar.dts | 1261 +++++++++++++++++
 2 files changed, 1262 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 0e5c810304fb..0226dde205ba 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -228,6 +228,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sm6375-sony-xperia-murray-pdx225.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm7125-xiaomi-curtana.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm7125-xiaomi-joyeuse.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm7225-fairphone-fp4.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= sm7325-nothing-spacewar.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8150-hdk.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8150-microsoft-surface-duo.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8150-mtp.dtb
diff --git a/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts b/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts
new file mode 100644
index 000000000000..94b10ca1c299
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts
@@ -0,0 +1,1261 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) 2024, Eugene Lepshy <fekz115@gmail.com>
+ * Copyright (c) 2024, Danila Tikhonov <danila@jiaxyga.com>
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/arm/qcom,ids.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/iio/qcom,spmi-adc7-pm7325.h>
+#include <dt-bindings/iio/qcom,spmi-adc7-pm8350b.h>
+#include <dt-bindings/iio/qcom,spmi-adc7-pmk8350.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
+#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
+#include <dt-bindings/sound/qcom,q6afe.h>
+#include <dt-bindings/sound/qcom,q6asm.h>
+
+#include "sm7325.dtsi"
+#include "pm7325.dtsi"
+#include "pm8350b.dtsi" /* PM7325B */
+#include "pm8350c.dtsi" /* PM7350C */
+#include "pmk8350.dtsi" /* PMK7325 */
+
+/delete-node/ &rmtfs_mem;
+
+/ {
+	model = "Nothing Phone (1)";
+	compatible = "nothing,spacewar", "qcom,sm7325";
+	chassis-type = "handset";
+
+	qcom,msm-id = <QCOM_ID_SM7325 0x10000>;
+	qcom,board-id = <QCOM_BOARD_ID(QRD, 1, 0) 0>;
+
+	aliases {
+		bluetooth0 = &bluetooth;
+		serial0 = &uart5;
+		serial1 = &uart7;
+		wifi0 = &wifi;
+	};
+
+	chosen {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		stdout-path = "serial0:115200n8";
+
+		framebuffer0: framebuffer@e1000000 {
+			compatible = "simple-framebuffer";
+			reg = <0x0 0xe1000000 0x0 (1080 * 2400 * 4)>;
+			width = <1080>;
+			height = <2400>;
+			stride = <(1080 * 4)>;
+			format = "a8r8g8b8";
+
+			clocks = <&gcc GCC_DISP_HF_AXI_CLK>,
+				 <&dispcc DISP_CC_MDSS_MDP_CLK>,
+				 <&dispcc DISP_CC_MDSS_BYTE0_CLK>,
+				 <&dispcc DISP_CC_MDSS_BYTE0_INTF_CLK>,
+				 <&dispcc DISP_CC_MDSS_PCLK0_CLK>,
+				 <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
+			power-domains = <&dispcc DISP_CC_MDSS_CORE_GDSC>;
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		pinctrl-0 = <&kypd_volp_n>;
+		pinctrl-names = "default";
+
+		key-volume-up {
+			label = "Volume up";
+			gpios = <&pm7325_gpios 6 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_VOLUMEUP>;
+		};
+	};
+
+	pmic-glink {
+		compatible = "qcom,sm7325-pmic-glink",
+			     "qcom,pmic-glink";
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		orientation-gpios = <&tlmm 140 GPIO_ACTIVE_HIGH>;
+
+		connector@0 {
+			compatible = "usb-c-connector";
+			reg = <0>;
+			power-role = "dual";
+			data-role = "dual";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					pmic_glink_hs_in: endpoint {
+						remote-endpoint = <&usb_1_dwc3_hs>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					pmic_glink_sbu: endpoint {
+						remote-endpoint = <&fsa4480_sbu_mux>;
+					};
+				};
+			};
+		};
+	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		ramoops_mem: ramoops@83a00000 {
+			compatible = "ramoops";
+			reg = <0x0 0x83a00000 0x0 0x400000>;
+			pmsg-size = <0x200000>;
+			mem-type = <2>;
+			console-size = <0x200000>;
+		};
+
+		cdsp_mem: cdsp@88f00000 {
+			reg = <0x0 0x88f00000 0x0 0x1e00000>;
+			no-map;
+		};
+
+		removed_mem: removed@c0000000 {
+			reg = <0x0 0xc0000000 0x0 0x5100000>;
+			no-map;
+		};
+
+		cont_splash_mem: cont-splash@e1000000 {
+			reg = <0x0 0xe1000000 0x0 (1080 * 2400 * 4)>;
+			no-map;
+		};
+
+		rmtfs_mem: rmtfs@f8500000 {
+			compatible = "qcom,rmtfs-mem";
+			reg = <0x0 0xf8500000 0x0 0x600000>;
+			no-map;
+
+			qcom,client-id = <1>;
+			qcom,vmid = <QCOM_SCM_VMID_MSS_MSA>,
+				    <QCOM_SCM_VMID_NAV>;
+		};
+	};
+
+	thermal-zones {
+		camera-thermal {
+			polling-delay-passive = <0>;
+			thermal-sensors = <&pmk8350_adc_tm 2>;
+
+			trips {
+				active-config0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+			};
+		};
+
+		chg-skin-thermal {
+			polling-delay-passive = <0>;
+			thermal-sensors = <&pmk8350_adc_tm 6>;
+
+			trips {
+				active-config0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+			};
+		};
+
+		conn-thermal {
+			polling-delay-passive = <0>;
+			thermal-sensors = <&pmk8350_adc_tm 5>;
+
+			trips {
+				active-config0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+			};
+		};
+
+		quiet-thermal {
+			polling-delay-passive = <0>;
+			thermal-sensors = <&pmk8350_adc_tm 1>;
+
+			trips {
+				active-config0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+			};
+		};
+
+		rear-cam-thermal {
+			polling-delay-passive = <0>;
+			thermal-sensors = <&pmk8350_adc_tm 4>;
+
+			trips {
+				active-config0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+			};
+		};
+
+		sdm-skin-thermal {
+			polling-delay-passive = <0>;
+			thermal-sensors = <&pmk8350_adc_tm 3>;
+
+			trips {
+				active-config0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+			};
+		};
+
+		xo-thermal {
+			polling-delay-passive = <0>;
+			thermal-sensors = <&pmk8350_adc_tm 0>;
+
+			trips {
+				active-config0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+			};
+		};
+	};
+
+	vph_pwr: vph-pwr-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vph_pwr";
+		regulator-min-microvolt = <3700000>;
+		regulator-max-microvolt = <3700000>;
+	};
+
+	// S2B is really ebi.lvl but it's there for supply map completeness sake.
+	vreg_s2b_0p7: smpa3-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vreg_s2b_0p7";
+
+		regulator-min-microvolt = <65535>;
+		regulator-max-microvolt = <65535>;
+		regulator-always-on;
+		vin-supply = <&vph_pwr>;
+	};
+};
+
+&apps_rsc {
+	regulators-0 {
+		compatible = "qcom,pm7325-rpmh-regulators";
+		qcom,pmic-id = "b";
+
+		vdd-s1-supply = <&vph_pwr>;
+		vdd-s2-supply = <&vph_pwr>;
+		vdd-s7-supply = <&vph_pwr>;
+		vdd-s8-supply = <&vph_pwr>;
+
+		vdd-l1-l4-l12-l15-supply = <&vreg_s7b_0p952>;
+		vdd-l2-l7-supply = <&vreg_bob>;
+		vdd-l3-supply = <&vreg_s2b_0p7>;
+		vdd-l5-supply = <&vreg_s2b_0p7>;
+		vdd-l6-l9-l10-supply = <&vreg_s8b_1p256>;
+		vdd-l8-supply = <&vreg_s7b_0p952>;
+		vdd-l11-l17-l18-l19-supply = <&vreg_s1b_1p856>;
+		vdd-l13-supply = <&vreg_s7b_0p952>;
+		vdd-l14-l16-supply = <&vreg_s8b_1p256>;
+
+		/*
+		 * S2, L4-L5 are ARCs:
+		 * S2 - ebi.lvl,
+		 * L4 - lmx.lvl,
+		 * l5 - lcx.lvl.
+		 *
+		 * L10 are unused.
+		 */
+
+		vdd19_pmu_rfa_i:
+		vreg_s1b_1p856: smps1 {
+			regulator-name = "vreg_s1b_1p856";
+			regulator-min-microvolt = <1840000>;
+			regulator-max-microvolt = <2040000>;
+		};
+
+		vdd_pmu_aon_i:
+		vdd09_pmu_rfa_i:
+		vdd095_mx_pmu:
+		vdd095_pmu_1:
+		vdd095_pmu_2:
+		vreg_s7b_0p952: smps7 {
+			regulator-name = "vreg_s7b_0p952";
+			regulator-min-microvolt = <535000>;
+			regulator-max-microvolt = <1120000>;
+		};
+
+		vdd13_pmu_rfa_i:
+		vreg_s8b_1p256: smps8 {
+			regulator-name = "vreg_s8b_1p256";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1500000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_RET>;
+		};
+
+		vreg_l1b_0p912: ldo1 {
+			regulator-name = "vreg_l1b_0p912";
+			regulator-min-microvolt = <825000>;
+			regulator-max-microvolt = <925000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vdd_a_usbhs_3p1:
+		vreg_l2b_3p072: ldo2 {
+			regulator-name = "vreg_l2b_3p072";
+			regulator-min-microvolt = <2700000>;
+			regulator-max-microvolt = <3544000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vdd_io_ebi0_1:
+		vdd_io_ebi0_2:
+		vdd_io_ebi0_3:
+		vdd_io_ebi0_4:
+		vdd_io_ebi1_1:
+		vdd_io_ebi1_2:
+		vdd_io_ebi1_3:
+		vdd_io_ebi1_4:
+		vreg_l3b_0p6: ldo3 {
+			regulator-name = "vreg_l3b_0p6";
+			regulator-min-microvolt = <312000>;
+			regulator-max-microvolt = <910000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vdd_a_csi_01_1p2:
+		vdd_a_csi_23_1p2:
+		vdd_a_csi_4_1p2:
+		vdd_a_dsi_0_1p2:
+		vdd_a_qlink_0_1p2_ck:
+		vdd_a_qlink_1_1p2:
+		vdd_a_ufs_0_1p2:
+		vdd_vref_1p2_1:
+		vdd_vref_1p2_2:
+		vreg_l6b_1p2: ldo6 {
+			regulator-name = "vreg_l6b_1p2";
+			regulator-min-microvolt = <1140000>;
+			regulator-max-microvolt = <1260000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l7b_2p96: ldo7 {
+			regulator-name = "vreg_l7b_2p96";
+			regulator-min-microvolt = <2400000>;
+			regulator-max-microvolt = <3544000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l8b_0p904: ldo8 {
+			regulator-name = "vreg_l8b_0p904";
+			regulator-min-microvolt = <870000>;
+			regulator-max-microvolt = <970000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vdd_px10:
+		vreg_l9b_1p2: ldo9 {
+			regulator-name = "vreg_l9b_1p2";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1304000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vddah_0:
+		vddah_1:
+		vddah_fbrx:
+		vddah_tx0:
+		vddah_tx0_1:
+		vddah_tx1:
+		vddah_tx1_1:
+		vreg_l11b_1p776: ldo11 {
+			regulator-name = "vreg_l11b_1p776";
+			regulator-min-microvolt = <1504000>;
+			regulator-max-microvolt = <2000000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vddal_dig0:
+		vddal_dig_1:
+		vddal_dig_2:
+		vddal_dig_xo:
+		vddal_gps_l1:
+		vddal_gps_l5:
+		vddal_icon:
+		vddal_rx:
+		vddal_rx0:
+		vddal_rx1:
+		vddal_rx2:
+		vddal_tx0:
+		vddal_tx0_1:
+		vddal_tx1:
+		vddal_tx1_2:
+		vreg_l12b_0p8: ldo12 {
+			regulator-name = "vreg_l12b_0p8";
+			regulator-min-microvolt = <751000>;
+			regulator-max-microvolt = <824000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vdd_cx1:
+		vdd_cx2:
+		vreg_l13b_0p8: ldo13 {
+			regulator-name = "vreg_l13b_0p8";
+			regulator-min-microvolt = <530000>;
+			regulator-max-microvolt = <824000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vdd_1p2:
+		vdd_lna:
+		vddam_fbrx:
+		vddam_rx_0:
+		vddam_rx_1:
+		vddam_rx0:
+		vddam_rx1:
+		vddam_rx2:
+		vddam_rxe_a:
+		vddam_rxe_b:
+		vddam_rxe_c:
+		vddam_rxe_d:
+		vddam_rxe_e:
+		vddam_tx0:
+		vddam_tx0_1:
+		vddam_tx1:
+		vddam_tx1_1:
+		vddam_xo:
+		vreg_l14b_1p2: ldo14 {
+			regulator-name = "vreg_l14b_1p2";
+			regulator-min-microvolt = <1080000>;
+			regulator-max-microvolt = <1304000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vdd_mx:
+		vddmx_tx:
+		vdd_phy:
+		vreg_l15b_0p88: ldo15 {
+			regulator-name = "vreg_l15b_0p88";
+			regulator-min-microvolt = <765000>;
+			regulator-max-microvolt = <1020000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l16b_1p2: ldo16 {
+			regulator-name = "vreg_l16b_1p2";
+			regulator-min-microvolt = <1100000>;
+			regulator-max-microvolt = <1300000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vdd_buck:
+		vreg_l17b_1p8: ldo17 {
+			regulator-name = "vreg_l17b_1p8";
+			regulator-min-microvolt = <1700000>;
+			regulator-max-microvolt = <1900000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vdd_px_wcd9385:
+		vdd_txrx:
+		vdd_px0:
+		vdd_px3:
+		vdd_px7:
+		vreg_l18b_1p8: ldo18 {
+			regulator-name = "vreg_l18b_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <2000000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vdd_1p8:
+		vdd_px_sdr735:
+		vdd_pxm:
+		vddio_px_1:
+		vddio_px_2:
+		vddio_px_3:
+		vdd18_io:
+		vddpx_ts:
+		vddpx_wl4otp:
+		vreg_l19b_1p8: ldo19 {
+			regulator-name = "vreg_l19b_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <2000000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+
+	regulators-1 {
+		compatible = "qcom,pm8350c-rpmh-regulators";
+		qcom,pmic-id = "c";
+
+		vdd-s1-supply = <&vph_pwr>;
+		vdd-s2-supply = <&vph_pwr>;
+		vdd-s5-supply = <&vph_pwr>;
+		vdd-s7-supply = <&vph_pwr>;
+		vdd-s9-supply = <&vph_pwr>;
+		vdd-s10-supply = <&vph_pwr>;
+
+		vdd-l1-l12-supply = <&vreg_s1b_1p856>;
+		vdd-l2-l8-supply = <&vreg_s1b_1p856>;
+		vdd-l3-l4-l5-l7-l13-supply = <&vreg_bob>;
+		vdd-l6-l9-l11-supply = <&vreg_bob>;
+		vdd-l10-supply = <&vreg_s7b_0p952>;
+
+		vdd-bob-supply = <&vph_pwr>;
+
+		/*
+		 * S2, S5, S7, S10 are ARCs:
+		 * S2 - cx.lvl,
+		 * S5 - mss.lvl,
+		 * S7 - gfx.lvl,
+		 * S10 - mx.lvl.
+		 */
+
+		vdd22_wlbtpa_ch0:
+		vdd22_wlbtpa_ch1:
+		vdd22_wlbtppa_ch0:
+		vdd22_wlbtppa_ch1:
+		vdd22_wlpa5g_ch0:
+		vdd22_wlpa5g_ch1:
+		vdd22_wlppa5g_ch0:
+		vdd22_wlppa5g_ch1:
+		vreg_s1c_2p2: smps1 {
+			regulator-name = "vreg_s1c_2p2";
+			regulator-min-microvolt = <2190000>;
+			regulator-max-microvolt = <2210000>;
+		};
+
+		vdd_px1:
+		vreg_s9c_0p676: smps9 {
+			regulator-name = "vreg_s9c_0p676";
+			regulator-min-microvolt = <1010000>;
+			regulator-max-microvolt = <1170000>;
+		};
+
+		vdd_a_apc_cs_1p8:
+		vdd_a_cxo_1p8:
+		vdd_a_gfx_cs_1p8:
+		vdd_a_qrefs_1p8:
+		vdd_a_turing_q6_cs_1p8:
+		vdd_a_usbhs_1p8:
+		vdd_qfprom:
+		vreg_l1c_1p8: ldo1 {
+			regulator-name = "vreg_l1c_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1980000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l2c_1p8: ldo2 {
+			regulator-name = "vreg_l2c_1p8";
+			regulator-min-microvolt = <1620000>;
+			regulator-max-microvolt = <1980000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vdd_ts:
+		vreg_l3c_3p0: ldo3 {
+			regulator-name = "vreg_l3c_3p0";
+			regulator-min-microvolt = <2800000>;
+			regulator-max-microvolt = <3540000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vdd_px5:
+		vreg_l4c_1p8_3p0: ldo4 {
+			regulator-name = "vreg_l4c_1p8_3p0";
+			regulator-min-microvolt = <1620000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vdd_px6:
+		vreg_l5c_1p8_3p0: ldo5 {
+			regulator-name = "vreg_l5c_1p8_3p0";
+			regulator-min-microvolt = <1620000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vdd_px2:
+		vreg_l6c_2p96: ldo6 {
+			regulator-name = "vreg_l6c_2p96";
+			regulator-min-microvolt = <1650000>;
+			regulator-max-microvolt = <3544000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vdd_sensor_3p3:
+		vreg_l7c_3p0: ldo7 {
+			regulator-name = "vreg_l7c_3p0";
+			regulator-min-microvolt = <3000000>;
+			regulator-max-microvolt = <3544000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vdd_sensor_1p8:
+		vreg_l8c_1p8: ldo8 {
+			regulator-name = "vreg_l8c_1p8";
+			regulator-min-microvolt = <1620000>;
+			regulator-max-microvolt = <2000000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l9c_2p96: ldo9 {
+			regulator-name = "vreg_l9c_2p96";
+			regulator-min-microvolt = <2700000>;
+			regulator-max-microvolt = <3544000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vdd_a_csi_01_0p9:
+		vdd_a_csi_23_0p9:
+		vdd_a_csi_4_0p9:
+		vdd_a_dsi_0_0p9:
+		vdd_a_dsi_0_pll_0p9:
+		vdd_a_gnss_0p9:
+		vdd_a_qlink_0_0p9:
+		vdd_a_qlink_0_0p9_ck:
+		vdd_a_qlink_1_0p9:
+		vdd_a_qlink_1_0p9_ck:
+		vdd_a_qrefs_0p875_1:
+		vdd_a_qrefs_0p875_2:
+		vdd_a_qrefs_0p875_3:
+		vdd_a_qrefs_0p875_4:
+		vdd_a_qrefs_0p875_5:
+		vdd_a_qrefs_0p875_6:
+		vdd_a_qrefs_0p875_7:
+		vdd_a_qrefs_0p875_8:
+		vdd_a_qrefs_0p875_9:
+		vdd_a_ufs_0_core:
+		vdd_a_usbhs_core:
+		vdd_vref_0p9:
+		vreg_l10c_0p88: ldo10 {
+			regulator-name = "vreg_l10c_0p88";
+			regulator-min-microvolt = <720000>;
+			regulator-max-microvolt = <1050000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vdd_fm:
+		vdd_wlan_fem:
+		vreg_l11c_2p8: ldo11 {
+			regulator-name = "vreg_l11c_2p8";
+			regulator-min-microvolt = <2800000>;
+			regulator-max-microvolt = <3544000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vdd_io_oled:
+		vreg_l12c_1p8: ldo12 {
+			regulator-name = "vreg_l12c_1p8";
+			regulator-min-microvolt = <1650000>;
+			regulator-max-microvolt = <2000000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vdd_oled:
+		vreg_l13c_3p0: ldo13 {
+			regulator-name = "vreg_l13c_3p0";
+			regulator-min-microvolt = <2700000>;
+			regulator-max-microvolt = <3544000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vdd_flash:
+		vdd_mic_bias:
+		vreg_bob: bob {
+			regulator-name = "vreg_bob";
+			regulator-min-microvolt = <3008000>;
+			regulator-max-microvolt = <3960000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_AUTO>;
+		};
+	};
+};
+
+&cci0 {
+	status = "okay";
+};
+
+&cci0_i2c0 {
+	/* sony,imx471 (Front) */
+};
+
+&cci1 {
+	status = "okay";
+};
+
+&cci1_i2c0 {
+	/* samsung,s5kjn1 (Rear-aux UW) */
+};
+
+&cci1_i2c1 {
+	/* sony,imx766 (Rear Wide) */
+};
+
+&gcc {
+	protected-clocks = <GCC_CFG_NOC_LPASS_CLK>,
+			   <GCC_MSS_CFG_AHB_CLK>,
+			   <GCC_MSS_OFFLINE_AXI_CLK>,
+			   <GCC_MSS_Q6SS_BOOT_CLK_SRC>,
+			   <GCC_MSS_Q6_MEMNOC_AXI_CLK>,
+			   <GCC_MSS_SNOC_AXI_CLK>,
+			   <GCC_QSPI_CNOC_PERIPH_AHB_CLK>,
+			   <GCC_QSPI_CORE_CLK>,
+			   <GCC_QSPI_CORE_CLK_SRC>,
+			   <GCC_SEC_CTRL_CLK_SRC>,
+			   <GCC_WPSS_AHB_BDG_MST_CLK>,
+			   <GCC_WPSS_AHB_CLK>,
+			   <GCC_WPSS_RSCP_CLK>;
+};
+
+&gpi_dma0 {
+	status = "okay";
+};
+
+&gpi_dma1 {
+	status = "okay";
+};
+
+&gpu_zap_shader {
+	firmware-name = "qcom/sm7325/nothing/spacewar/a660_zap.mbn";
+};
+
+&i2c1 {
+	clock-frequency = <100000>;
+	status = "okay";
+
+	/* awinic,aw21018 (Glyph LED) @ 20 */
+
+	typec-mux@42 {
+		compatible = "fcs,fsa4480";
+		reg = <0x42>;
+
+		vcc-supply = <&vreg_bob>;
+
+		mode-switch;
+		orientation-switch;
+
+		port {
+			fsa4480_sbu_mux: endpoint {
+				remote-endpoint = <&pmic_glink_sbu>;
+			};
+		};
+	};
+};
+
+&i2c2 {
+	clock-frequency = <100000>;
+	status = "okay";
+
+	/* nxp,tfa9873 (EAR speaker codec) @ 34 */
+	/* nxp,tfa9873 (Main speaker codec) @ 35 */
+};
+
+&i2c9 {
+	clock-frequency = <1000000>;
+	status = "okay";
+
+	nfc@28 {
+		compatible = "nxp,nxp-nci-i2c";
+		reg = <0x28>;
+
+		interrupt-parent = <&tlmm>;
+		interrupts = <41 IRQ_TYPE_NONE>;
+
+		enable-gpios = <&tlmm 38 GPIO_ACTIVE_HIGH>;
+		firmware-gpios = <&tlmm 40 GPIO_ACTIVE_HIGH>;
+
+		pinctrl-0 = <&nfc_en>,
+			    <&nfc_clk_req>,
+			    <&nfc_dwl_req>,
+			    <&nfc_int_req>;
+		pinctrl-names = "default";
+	};
+};
+
+&ipa {
+	qcom,gsi-loader = "self";
+	memory-region = <&ipa_fw_mem>;
+	firmware-name = "qcom/sm7325/nothing/spacewar/ipa_fws.mbn";
+
+	status = "okay";
+};
+
+/* MDSS remains disabled until the panel driver is present. */
+&mdss_dsi {
+	vdda-supply = <&vdd_a_dsi_0_1p2>;
+
+	/* Visionox RM692E5 panel */
+};
+
+&mdss_dsi_phy {
+	vdds-supply = <&vdd_a_dsi_0_0p9>;
+};
+
+&pm7325_gpios {
+	gpio-line-names = "NC", /* GPIO_1 */
+			  "PA_THERM3",
+			  "PA_THERM4",
+			  "NC",
+			  "NC",
+			  "KYPD_VOLP_N",
+			  "NC",
+			  "NC",
+			  "NC",
+			  "NC"; /* GPIO_10 */
+
+	kypd_volp_n: kypd-volp-n-state {
+		pins = "gpio6";
+		function = PMIC_GPIO_FUNC_NORMAL;
+		bias-pull-up;
+		input-enable;
+		power-source = <1>;
+	};
+};
+
+&pm8350c_flash {
+	status = "okay";
+
+	led-0 {
+		function = LED_FUNCTION_FLASH;
+		color = <LED_COLOR_ID_WHITE>;
+		led-sources = <1>, <4>;
+		led-max-microamp = <500000>;
+		flash-max-microamp = <1500000>;
+		flash-max-timeout-us = <1280000>;
+	};
+};
+
+&pmk8350_adc_tm {
+	status = "okay";
+
+	/* PMK8350 */
+	xo-therm@0 {
+		reg = <0>;
+		io-channels = <&pmk8350_vadc PMK8350_ADC7_AMUX_THM1_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+
+	/* PM7325 */
+	quiet-therm@1 {
+		reg = <1>;
+		io-channels = <&pmk8350_vadc PM7325_ADC7_AMUX_THM1_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+
+	cam-flash-therm@2 {
+		reg = <2>;
+		io-channels = <&pmk8350_vadc PM7325_ADC7_AMUX_THM2_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+
+	sdm-skin-therm@3 {
+		reg = <3>;
+		io-channels = <&pmk8350_vadc PM7325_ADC7_AMUX_THM3_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+
+	wide-rfc-therm@4 {
+		reg = <4>;
+		io-channels = <&pmk8350_vadc PM7325_ADC7_AMUX_THM4_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+
+	/* PM8350B */
+	usb-conn-therm@5 {
+		reg = <5>;
+		io-channels = <&pmk8350_vadc PM8350B_ADC7_AMUX_THM4_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+
+	chg-skin-therm@6 {
+		reg = <6>;
+		io-channels = <&pmk8350_vadc PM8350B_ADC7_GPIO2_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+};
+
+&pmk8350_rtc {
+	status = "okay";
+};
+
+&pmk8350_vadc {
+	/* PMK8350 */
+	channel@44 {
+		reg = <PMK8350_ADC7_AMUX_THM1_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+		qcom,pre-scaling = <1 1>;
+		label = "pmk8350_xo_therm";
+	};
+
+	/* PM7325 */
+	channel@144 {
+		reg = <PM7325_ADC7_AMUX_THM1_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+		qcom,pre-scaling = <1 1>;
+		label = "pm7325_quiet_therm";
+	};
+
+	channel@145 {
+		reg = <PM7325_ADC7_AMUX_THM2_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+		qcom,pre-scaling = <1 1>;
+		label = "pm7325_cam_flash_therm";
+	};
+
+	channel@146 {
+		reg = <PM7325_ADC7_AMUX_THM3_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+		qcom,pre-scaling = <1 1>;
+		label = "pm7325_sdm_skin_therm";
+	};
+
+	channel@147 {
+		reg = <PM7325_ADC7_AMUX_THM4_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+		qcom,pre-scaling = <1 1>;
+		label = "pm7325_wide_rfc_therm";
+	};
+
+	channel@14a {
+		reg = <PM7325_ADC7_GPIO1_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+		qcom,pre-scaling = <1 1>;
+		label = "pm7325_pa3_therm";
+	};
+
+	channel@14b {
+		reg = <PM7325_ADC7_GPIO2_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+		qcom,pre-scaling = <1 1>;
+		label = "pm7325_pa4_therm";
+	};
+
+	/* PM8350B */
+	channel@344 {
+		reg = <PM8350B_ADC7_AMUX_THM1_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+		qcom,pre-scaling = <1 1>;
+		label = "pm8350b_batt_therm";
+	};
+
+	channel@347 {
+		reg = <PM8350B_ADC7_AMUX_THM4_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+		qcom,pre-scaling = <1 1>;
+		label = "pm8350b_usb_conn_therm";
+	};
+
+	channel@34b {
+		reg = <PM8350B_ADC7_GPIO2_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+		qcom,pre-scaling = <1 1>;
+		label = "pm8350b_chg_skin_therm";
+	};
+
+	channel@34c {
+		reg = <PM8350B_ADC7_GPIO3_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+		qcom,pre-scaling = <1 1>;
+		label = "pm8350b_usb_therm2";
+	};
+};
+
+&pon_pwrkey {
+	status = "okay";
+};
+
+&pon_resin {
+	linux,code = <KEY_VOLUMEDOWN>;
+	status = "okay";
+};
+
+&q6afedai {
+	dai@16 {
+		reg = <PRIMARY_MI2S_RX>;
+		qcom,sd-lines = <1>;
+	};
+};
+
+&q6asmdai {
+	dai@0 {
+		reg = <0>;
+	};
+};
+
+&qfprom {
+	vcc-supply = <&vdd_qfprom>;
+};
+
+&qup_uart5_rx {
+	drive-strength = <2>;
+	bias-disable;
+};
+
+&qup_uart5_tx {
+	drive-strength = <2>;
+	bias-disable;
+};
+
+&qupv3_id_0 {
+	status = "okay";
+};
+
+&qupv3_id_1 {
+	status = "okay";
+};
+
+&remoteproc_adsp {
+	firmware-name = "qcom/sm7325/nothing/spacewar/adsp.mbn";
+	status = "okay";
+};
+
+&remoteproc_cdsp {
+	firmware-name = "qcom/sm7325/nothing/spacewar/cdsp.mbn";
+	status = "okay";
+};
+
+&remoteproc_mpss {
+	firmware-name = "qcom/sm7325/nothing/spacewar/modem.mbn";
+	status = "okay";
+};
+
+&remoteproc_wpss {
+	firmware-name = "qcom/sm7325/nothing/spacewar/wpss.mbn";
+	status = "okay";
+};
+
+&spi13 {
+	status = "okay";
+
+	/* focaltech,ft3680 (Touchscreen) @ 0 */
+};
+
+&tlmm {
+	/* 56-59: Fingerprint reader (SPI) */
+	gpio-reserved-ranges = <56 4>;
+
+	bt_uart_sleep_cts: bt-uart-sleep-cts-state {
+		pins = "gpio28";
+		function = "gpio";
+		bias-bus-hold;
+	};
+
+	bt_uart_sleep_rts: bt-uart-sleep-rts-state {
+		pins = "gpio29";
+		function = "gpio";
+		bias-pull-down;
+	};
+
+	bt_uart_sleep_txd: bt-uart-sleep-txd-state {
+		pins = "gpio30";
+		function = "gpio";
+		bias-pull-up;
+	};
+
+	bt_uart_sleep_rxd: bt-uart-sleep-rxd-state {
+		pins = "gpio31";
+		function = "gpio";
+		bias-pull-up;
+	};
+
+	nfc_en: nfc-en-state {
+		pins = "gpio38";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
+	nfc_clk_req: nfc-clk-req-state {
+		pins = "gpio39";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
+	nfc_dwl_req: nfc-dwl-req-state {
+		pins = "gpio40";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
+	nfc_int_req: nfc-int-req-state {
+		pins = "gpio41";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+
+	hst_bt_en: hst-bt-en-state {
+		pins = "gpio85";
+		function = "gpio";
+		output-low;
+		bias-disable;
+	};
+
+	hst_sw_ctrl: hst-sw-ctrl-state {
+		pins = "gpio86";
+		function = "gpio";
+		bias-pull-down;
+	};
+};
+
+&uart5 {
+	status = "okay";
+};
+
+&uart7 {
+	/delete-property/interrupts;
+	interrupts-extended = <&intc GIC_SPI 608 IRQ_TYPE_LEVEL_HIGH>,
+			      <&tlmm 31 IRQ_TYPE_EDGE_FALLING>;
+
+	pinctrl-1 = <&bt_uart_sleep_cts>,
+		    <&bt_uart_sleep_rts>,
+		    <&bt_uart_sleep_txd>,
+		    <&bt_uart_sleep_rxd>;
+	pinctrl-names = "default", "sleep";
+
+	status = "okay";
+
+	bluetooth: bluetooth {
+		compatible = "qcom,wcn6750-bt";
+
+		pinctrl-0 = <&hst_bt_en>,
+			    <&hst_sw_ctrl>;
+		pinctrl-names = "default";
+
+		enable-gpios = <&tlmm 85 GPIO_ACTIVE_HIGH>;
+		swctrl-gpios = <&tlmm 86 GPIO_ACTIVE_HIGH>;
+
+		vddio-supply = <&vreg_l19b_1p8>;
+		vddaon-supply = <&vreg_s7b_0p952>;
+		vddbtcxmx-supply = <&vreg_s7b_0p952>;
+		vddrfacmn-supply = <&vreg_s7b_0p952>;
+		vddrfa0p8-supply = <&vreg_s7b_0p952>;
+		vddrfa1p7-supply = <&vdd19_pmu_rfa_i>;
+		vddrfa1p2-supply = <&vdd13_pmu_rfa_i>;
+		vddrfa2p2-supply = <&vreg_s1c_2p2>;
+		vddasd-supply = <&vreg_l11c_2p8>;
+		max-speed = <3200000>;
+
+		qcom,local-bd-address-broken;
+	};
+};
+
+&ufs_mem_hc {
+	reset-gpios = <&tlmm 175 GPIO_ACTIVE_LOW>;
+
+	vcc-supply = <&vreg_l7b_2p96>;
+	vcc-max-microamp = <800000>;
+	/*
+	 * Technically l9b enables an eLDO (supplied by s1b) which then powers
+	 * VCCQ2 of the UFS.
+	 */
+	vccq-supply = <&vreg_l9b_1p2>;
+	vccq-max-microamp = <900000>;
+
+	status = "okay";
+};
+
+&ufs_mem_phy {
+	vdda-phy-supply = <&vdd_a_ufs_0_core>;
+	vdda-pll-supply = <&vdd_a_ufs_0_1p2>;
+	status = "okay";
+};
+
+&usb_1 {
+	/* USB 2.0 only */
+	qcom,select-utmi-as-pipe-clk;
+	status = "okay";
+};
+
+&usb_1_dwc3 {
+	dr_mode = "otg";
+	usb-role-switch;
+	maximum-speed = "high-speed";
+	/* Remove USB3 phy */
+	phys = <&usb_1_hsphy>;
+	phy-names = "usb2-phy";
+};
+
+&usb_1_dwc3_hs {
+	remote-endpoint = <&pmic_glink_hs_in>;
+};
+
+&usb_1_hsphy {
+	vdda-pll-supply = <&vdd_a_usbhs_core>;
+	vdda18-supply = <&vdd_a_usbhs_1p8>;
+	vdda33-supply = <&vdd_a_usbhs_3p1>;
+	status = "okay";
+};
+
+&venus {
+	firmware-name = "qcom/sm7325/nothing/spacewar/vpu20_1v.mbn";
+	status = "okay";
+};
+
+&wifi {
+	status = "okay";
+};
-- 
2.45.2


