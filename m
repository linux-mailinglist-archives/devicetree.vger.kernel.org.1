Return-Path: <devicetree+bounces-261622-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id g0/lBEYygGkI4QIAu9opvQ
	(envelope-from <devicetree+bounces-261622-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 06:12:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E69A7C8452
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 06:12:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5174B3004607
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 05:12:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5B3929ACD7;
	Mon,  2 Feb 2026 05:12:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com [74.125.82.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A08122206B1
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 05:12:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770009154; cv=none; b=oDYWW3i3vwgZ6ileMo3BBgsIge8gU+Kj71VpOiEM6wSoUFBFgCj32L3IoZzdVaGIMHqNExPTx3NBf3FTTleC5j5Ns8PHBBBjRJ3KG7S+/w03ARhNQxyhneIqHIZwlm9GInEiEh2+91oKTixQNjWBgfnZ2h+bbYePzre8S7t4ze8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770009154; c=relaxed/simple;
	bh=oAJHes6f7HezFiSQXxYC6Xj5zKYhnixbq3uIwa7SaJk=;
	h=Message-ID:From:To:Cc:Date:Subject; b=KKFKKBNWXouRXPKGlDe/ZXBUits4Lcc7jeTj++2Fcf0aQTWmf31X+ilxSBXJIt7MzHTWNu5Mw+BqiUNq/MqtA02rWIvPhg+SRVkR3VYV5T5kNjzIt1XLC5ygjVSLj9oz/RpTwNfCA1YR0aBqbNJfy6ZWBjBWdyFCiX8kbHrCufw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=74.125.82.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f180.google.com with SMTP id 5a478bee46e88-2b74f839bdfso3505363eec.1
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 21:12:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770009152; x=1770613952;
        h=subject:date:cc:to:from:message-id:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6pEVg9LS82/oOQMsIhfWwGt21B88jY3XREaUNCqzviE=;
        b=UITsyurlPY0LlqG7ZEcpswvtHJrh+4izTMEo+t5xVGKF/lUBjnbSPvwewDiXO8FEjt
         PM2Il/M8KZM7Kl0Dw/RFtoFIyc+fAPNu/p5ZJwkxvQg0KgjbD5SgLRYWsyP7z3g6cF1o
         Z0ETgBb/R7xhJn32/yH4Q45oKti3se5rT5EQlSf6hjUW+hQYhpIE/2GKL1jqLcjJ2t8o
         Mo9FMS2WWDOe7VPFXiiAcCiIVEfJksGA/K8dTfVd3BH+x+ZniR7Pvr43CvwRpYnrlQrl
         v0Yv4hyuVNMtmHnBirkBSIraUFDUtCfbNMINRPOjZMK7+NW+VdmCIAqCcwOmYLR6YnBu
         XVzA==
X-Forwarded-Encrypted: i=1; AJvYcCXB5YP936NroIL8j8EBQMT1Ss6MaA2fsUCIvmBXiMqVZyhIyBRD/137HeE4KzJZTmRu92/Q9bbMFDYt@vger.kernel.org
X-Gm-Message-State: AOJu0Yxi9tp/dceKU1osVqKK+GZkMSApvNRxXEgQvP2H4EMuqVsNlcjU
	BvXad0+m0A9HPdNZxdA5q4t8qe4N7Pkjp4Cws4rdPLBhPRr1P/yOF+Ar
X-Gm-Gg: AZuq6aL4OaQvjjs1CYp898auHVAsMuH4z0o5Z/LaXnsEKx4FtatBdbO4V8or1eMmcoF
	oU3wes53SLm2jXKNiCVAEUpURqGMXpVngpdXoxgiiiVTcJHQKjvB+m2eR0s2utF1jQr6Mh4Hevb
	su3L3yBNqGf0pTPVhA0CEeDaS3CMUDipWuiBEJa/LWXRdl6LgAr6lZHq/3qfJIdxGNz7txQy/a6
	EDIimfvTVNIYHVkwMZ/pOIl3uWM01xI5yQOHfVXDgOIdWtQwuRB7INX2bxAVPYJUKidwaZHImsB
	cxVJJouzCDSuux3QTQ1xGsqPyoLxokmh9EBrHboB+jUKlfSfEno574F6eUtIytdz+oZtc7JTgxe
	6EfIvY6b87q4ZJU3U4qMUow21cZI52uLdamAWFMiU3NW9J2+KWuXZLLsQTPuboZfJ+U7A4PVvM5
	fKLh7L3Fg=
X-Received: by 2002:a05:693c:805c:b0:2b7:e7bb:7959 with SMTP id 5a478bee46e88-2b7e7bb7e74mr1770064eec.12.1770009151614;
        Sun, 01 Feb 2026 21:12:31 -0800 (PST)
Received: from localhost ([76.88.4.82])
        by smtp.gmail.com with UTF8SMTPSA id 5a478bee46e88-2b7a1add664sm19562331eec.26.2026.02.01.21.12.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 21:12:31 -0800 (PST)
Message-ID: <6cd569ad19ae8efb5f4244b3aa185754@gmail.com>
From: Roger Shimizu <rosh@debian.org>
To: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Sat, 31 Jan 2026 02:31:25 -0800
Subject: [PATCH] arm64: dts: qcom: qcs6490: Add Thundercomm AI Mini PC G1 IoT
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DATE_IN_PAST(1.00)[42];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261622-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[debian.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[rosh@debian.org,devicetree@vger.kernel.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E69A7C8452
X-Rspamd-Action: no action

Thundercomm AI MiniPC G1 IoT is single board computer with
AI capability based on Qualcomm QCS6490 platform.

This device tree is confirmed to work as below:
- GPU
- HDMI output port
- PCIe M.2 port (for external Wi-Fi or 5G connectivity)
- UART / serial console port
- UFS
- USB Type-C port, with Display Port

Signed-off-by: Roger Shimizu <rosh@debian.org>
---
 arch/arm64/boot/dts/qcom/Makefile             |    1 +
 .../qcom/qcs6490-thundercomm-minipc-g1iot.dts | 1110 +++++++++++++++++
 2 files changed, 1111 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/qcs6490-thundercomm-minipc-g1iot.dts

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index f80b5d9cf1e80..b2b62b3eedda4 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -145,6 +145,7 @@ qcs6490-rb3gen2-industrial-mezzanine-dtbs := qcs6490-rb3gen2.dtb qcs6490-rb3gen2
 
 dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-rb3gen2-industrial-mezzanine.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-rb3gen2-vision-mezzanine.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-thundercomm-minipc-g1iot.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-thundercomm-rubikpi3.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qcs8300-ride.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qcs8550-aim300-aiot.dtb
diff --git a/arch/arm64/boot/dts/qcom/qcs6490-thundercomm-minipc-g1iot.dts b/arch/arm64/boot/dts/qcom/qcs6490-thundercomm-minipc-g1iot.dts
new file mode 100644
index 0000000000000..0886de928789e
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/qcs6490-thundercomm-minipc-g1iot.dts
@@ -0,0 +1,1110 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) 2026, Roger Shimizu <rosh@debian.org>
+ */
+
+/dts-v1/;
+
+/* PM7250B is configured to use SID8/9 */
+#define PM7250B_SID 8
+#define PM7250B_SID1 9
+
+#include <dt-bindings/iio/qcom,spmi-adc7-pmk8350.h>
+#include <dt-bindings/iio/qcom,spmi-adc7-pm7325.h>
+#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
+#include "kodiak.dtsi"
+#include "pm7250b.dtsi"
+#include "pm7325.dtsi"
+#include "pm8350c.dtsi" /* PM7350C */
+#include "pmk8350.dtsi" /* PMK7325 */
+
+/delete-node/ &adsp_mem;
+/delete-node/ &cdsp_mem;
+/delete-node/ &ipa_fw_mem;
+/delete-node/ &mpss_mem;
+/delete-node/ &remoteproc_mpss;
+/delete-node/ &remoteproc_wpss;
+/delete-node/ &rmtfs_mem;
+/delete-node/ &video_mem;
+/delete-node/ &wifi;
+/delete-node/ &wlan_ce_mem;
+/delete-node/ &wlan_fw_mem;
+/delete-node/ &wpss_mem;
+/delete-node/ &xbl_mem;
+
+/ {
+	model = "Thundercomm AI Mini PC G1 IoT";
+	compatible = "qcom,sc7280", "qcom,qcm6490";
+	chassis-type = "embedded";
+
+	aliases {
+		serial0 = &uart5;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	hdmi-connector {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con: endpoint {
+				remote-endpoint = <&lt9611_out>;
+			};
+		};
+	};
+
+	lt9611_1v2: lt9611-vdd12-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "LT9611_1V2";
+
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+	};
+
+	reserved-memory {
+		xbl_mem: xbl@80700000 {
+			reg = <0x0 0x80700000 0x0 0x100000>;
+			no-map;
+		};
+
+		cdsp_secure_heap_mem: cdsp-secure-heap@81800000 {
+			reg = <0x0 0x81800000 0x0 0x1e00000>;
+			no-map;
+		};
+
+		camera_mem: camera@84300000 {
+			reg = <0x0 0x84300000 0x0 0x500000>;
+			no-map;
+		};
+
+		adsp_mem: adsp@86100000 {
+			reg = <0x0 0x86100000 0x0 0x2800000>;
+			no-map;
+		};
+
+		cdsp_mem: cdsp@88900000 {
+			reg = <0x0 0x88900000 0x0 0x1e00000>;
+			no-map;
+		};
+
+		video_mem: video@8a700000 {
+			reg = <0x0 0x8a700000 0x0 0x700000>;
+			no-map;
+		};
+
+		cvp_mem: cvp@8ae00000 {
+			reg = <0x0 0x8ae00000 0x0 0x500000>;
+			no-map;
+		};
+
+		gpu_microcode_mem: gpu-microcode@8b31a000 {
+			reg = <0x0 0x8b31a000 0x0 0x2000>;
+			no-map;
+		};
+
+		tz_stat_mem: tz-stat@c0000000 {
+			reg = <0x0 0xc0000000 0x0 0x100000>;
+			no-map;
+		};
+
+		tags_mem: tags@c0100000 {
+			reg = <0x0 0xc0100000 0x0 0x1200000>;
+			no-map;
+		};
+
+		qtee_mem: qtee@c1300000 {
+			reg = <0x0 0xc1300000 0x0 0x500000>;
+			no-map;
+		};
+
+		trusted_apps_mem: trusted-apps@c1800000 {
+			reg = <0x0 0xc1800000 0x0 0x1c00000>;
+			no-map;
+		};
+
+		debug_vm_mem: debug-vm@d0600000 {
+			reg = <0x0 0xd0600000 0x0 0x100000>;
+			no-map;
+		};
+	};
+
+	pmic-glink {
+		compatible = "qcom,qcm6490-pmic-glink", "qcom,pmic-glink";
+
+		#address-cells = <1>;
+		#size-cells = <0>;
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
+					pmic_glink_ss_in: endpoint {
+						remote-endpoint = <&redriver_usb_con_ss>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					pmic_glink_sbu_in: endpoint {
+						remote-endpoint = <&redriver_usb_con_sbu>;
+					};
+				};
+			};
+		};
+	};
+
+	vph_pwr: regulator-vph-pwr {
+		compatible = "regulator-fixed";
+		regulator-name = "vph_pwr";
+		regulator-min-microvolt = <3700000>;
+		regulator-max-microvolt = <3700000>;
+	};
+
+	thermal-zones {
+		sdm-skin-thermal {
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
+		quiet-thermal {
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
+		xo-thermal {
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
+	vdd_ntn_0p9: regulator-vdd-ntn-0p9 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDD_NTN_0P9";
+		gpio = <&pm8350c_gpios 2 GPIO_ACTIVE_HIGH>;
+		regulator-min-microvolt = <899400>;
+		regulator-max-microvolt = <899400>;
+		enable-active-high;
+		pinctrl-0 = <&ntn_0p9_en>;
+		pinctrl-names = "default";
+		regulator-enable-ramp-delay = <4300>;
+	};
+
+	vdd_ntn_1p8: regulator-vdd-ntn-1p8 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDD_NTN_1P8";
+		gpio = <&pm8350c_gpios 3 GPIO_ACTIVE_HIGH>;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		enable-active-high;
+		pinctrl-0 = <&ntn_1p8_en>;
+		pinctrl-names = "default";
+		regulator-enable-ramp-delay = <10000>;
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
+		vdd-s3-supply = <&vph_pwr>;
+		vdd-s4-supply = <&vph_pwr>;
+		vdd-s5-supply = <&vph_pwr>;
+		vdd-s6-supply = <&vph_pwr>;
+		vdd-s7-supply = <&vph_pwr>;
+		vdd-s8-supply = <&vph_pwr>;
+		vdd-l1-l4-l12-l15-supply = <&vreg_s7b_0p972>;
+		vdd-l2-l7-supply = <&vreg_bob_3p296>;
+		vdd-l6-l9-l10-supply = <&vreg_s8b_1p272>;
+		vdd-l8-supply = <&vreg_s7b_0p972>;
+		vdd-l11-l17-l18-l19-supply = <&vreg_s1b_1p872>;
+		vdd-l13-supply = <&vreg_s7b_0p972>;
+		vdd-l14-l16-supply = <&vreg_s8b_1p272>;
+
+		vreg_s1b_1p872: smps1 {
+			regulator-name = "vreg_s1b_1p872";
+			regulator-min-microvolt = <1840000>;
+			regulator-max-microvolt = <2040000>;
+		};
+
+		vreg_s7b_0p972: smps7 {
+			regulator-name = "vreg_s7b_0p972";
+			regulator-min-microvolt = <535000>;
+			regulator-max-microvolt = <1120000>;
+		};
+
+		vreg_s8b_1p272: smps8 {
+			regulator-name = "vreg_s8b_1p272";
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
+		vreg_l2b_3p072: ldo2 {
+			regulator-name = "vreg_l2b_3p072";
+			regulator-min-microvolt = <2700000>;
+			regulator-max-microvolt = <3544000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l3b_0p504: ldo3 {
+			regulator-name = "vreg_l3b_0p504";
+			regulator-min-microvolt = <312000>;
+			regulator-max-microvolt = <650000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l6b_1p2: ldo6 {
+			regulator-name = "vreg_l6b_1p2";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1260000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l7b_2p952: ldo7 {
+			regulator-name = "vreg_l7b_2p952";
+			regulator-min-microvolt = <2952000>;
+			regulator-max-microvolt = <2952000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l8b_0p904: ldo8 {
+			regulator-name = "vreg_l8b_0p904";
+			regulator-min-microvolt = <870000>;
+			regulator-max-microvolt = <970000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l9b_1p2: ldo9 {
+			regulator-name = "vreg_l9b_1p2";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l11b_1p504: ldo11 {
+			regulator-name = "vreg_l11b_1p504";
+			regulator-min-microvolt = <1776000>;
+			regulator-max-microvolt = <2000000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l12b_0p751: ldo12 {
+			regulator-name = "vreg_l12b_0p751";
+			regulator-min-microvolt = <751000>;
+			regulator-max-microvolt = <824000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l13b_0p53: ldo13 {
+			regulator-name = "vreg_l13b_0p53";
+			regulator-min-microvolt = <530000>;
+			regulator-max-microvolt = <824000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l14b_1p08: ldo14 {
+			regulator-name = "vreg_l14b_1p08";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1304000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l15b_0p765: ldo15 {
+			regulator-name = "vreg_l15b_0p765";
+			regulator-min-microvolt = <765000>;
+			regulator-max-microvolt = <1020000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l16b_1p1: ldo16 {
+			regulator-name = "vreg_l16b_1p1";
+			regulator-min-microvolt = <1100000>;
+			regulator-max-microvolt = <1300000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l17b_1p7: ldo17 {
+			regulator-name = "vreg_l17b_1p7";
+			regulator-min-microvolt = <1700000>;
+			regulator-max-microvolt = <1900000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l18b_1p8: ldo18 {
+			regulator-name = "vreg_l18b_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <2000000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
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
+		vdd-s3-supply = <&vph_pwr>;
+		vdd-s4-supply = <&vph_pwr>;
+		vdd-s5-supply = <&vph_pwr>;
+		vdd-s6-supply = <&vph_pwr>;
+		vdd-s7-supply = <&vph_pwr>;
+		vdd-s8-supply = <&vph_pwr>;
+		vdd-s9-supply = <&vph_pwr>;
+		vdd-s10-supply = <&vph_pwr>;
+		vdd-l1-l12-supply = <&vreg_s1b_1p872>;
+		vdd-l2-l8-supply = <&vreg_s1b_1p872>;
+		vdd-l3-l4-l5-l7-l13-supply = <&vreg_bob_3p296>;
+		vdd-l6-l9-l11-supply = <&vreg_bob_3p296>;
+		vdd-l10-supply = <&vreg_s7b_0p972>;
+		vdd-bob-supply = <&vph_pwr>;
+
+		vreg_s1c_2p19: smps1 {
+			regulator-name = "vreg_s1c_2p19";
+			regulator-min-microvolt = <2200000>;
+			regulator-max-microvolt = <2208000>;
+		};
+
+		vreg_s9c_1p084: smps9 {
+			regulator-name = "vreg_s9c_1p084";
+			regulator-min-microvolt = <1010000>;
+			regulator-max-microvolt = <1170000>;
+		};
+
+		vreg_l1c_1p8: ldo1 {
+			regulator-name = "vreg_l1c_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1980000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l2c_1p62: ldo2 {
+			regulator-name = "vreg_l2c_1p62";
+			regulator-min-microvolt = <1620000>;
+			regulator-max-microvolt = <1980000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l3c_2p8: ldo3 {
+			regulator-name = "vreg_l3c_2p8";
+			regulator-min-microvolt = <2800000>;
+			regulator-max-microvolt = <3540000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l4c_1p62: ldo4 {
+			regulator-name = "vreg_l4c_1p62";
+			regulator-min-microvolt = <1620000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l5c_1p62: ldo5 {
+			regulator-name = "vreg_l5c_1p62";
+			regulator-min-microvolt = <1620000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l6c_2p96: ldo6 {
+			regulator-name = "vreg_l6c_2p96";
+			regulator-min-microvolt = <1650000>;
+			regulator-max-microvolt = <3544000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l7c_3p0: ldo7 {
+			regulator-name = "vreg_l7c_3p0";
+			regulator-min-microvolt = <3000000>;
+			regulator-max-microvolt = <3544000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l8c_1p62: ldo8 {
+			regulator-name = "vreg_l8c_1p62";
+			regulator-min-microvolt = <1800000>;
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
+		vreg_l10c_0p88: ldo10 {
+			regulator-name = "vreg_l10c_0p88";
+			regulator-min-microvolt = <720000>;
+			regulator-max-microvolt = <1050000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l11c_2p8: ldo11 {
+			regulator-name = "vreg_l11c_2p8";
+			regulator-min-microvolt = <2800000>;
+			regulator-max-microvolt = <3544000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l12c_1p65: ldo12 {
+			regulator-name = "vreg_l12c_1p65";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <2000000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l13c_2p7: ldo13 {
+			regulator-name = "vreg_l13c_2p7";
+			regulator-min-microvolt = <2700000>;
+			regulator-max-microvolt = <3544000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_bob_3p296: bob {
+			regulator-name = "vreg_bob_3p296";
+			regulator-min-microvolt = <3008000>;
+			regulator-max-microvolt = <3960000>;
+		};
+	};
+};
+
+&gcc {
+	protected-clocks = <GCC_CFG_NOC_LPASS_CLK>,
+			   <GCC_MSS_CFG_AHB_CLK>,
+			   <GCC_MSS_GPLL0_MAIN_DIV_CLK_SRC>,
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
+&gpu {
+	status = "okay";
+};
+
+&gpu_zap_shader {
+	firmware-name = "qcom/qcs6490/a660_zap.mbn";
+};
+
+&i2c0 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	lt9611_codec: hdmi-bridge@2b {
+		compatible = "lontium,lt9611uxc";
+		reg = <0x2b>;
+
+		interrupts-extended = <&tlmm 24 IRQ_TYPE_EDGE_FALLING>;
+		reset-gpios = <&pm7250b_gpios 2 GPIO_ACTIVE_HIGH>;
+
+		vdd-supply = <&lt9611_1v2>;
+		vcc-supply = <&vreg_l11c_2p8>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&lt9611_irq_pin &lt9611_rst_pin>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				lt9611_a: endpoint {
+					remote-endpoint = <&mdss_dsi0_out>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+
+				lt9611_out: endpoint {
+					remote-endpoint = <&hdmi_con>;
+				};
+			};
+		};
+	};
+};
+
+&i2c1 {
+	clock-frequency = <100000>;
+
+	status = "okay";
+
+	typec-mux@1c {
+		compatible = "onnn,nb7vpq904m";
+		reg = <0x1c>;
+
+		vcc-supply = <&vreg_l18b_1p8>;
+
+		retimer-switch;
+		orientation-switch;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				redriver_usb_con_ss: endpoint {
+					remote-endpoint = <&pmic_glink_ss_in>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				redriver_phy_con_ss: endpoint {
+					remote-endpoint = <&usb_dp_qmpphy_out>;
+					data-lanes = <0 1 2 3>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+
+				redriver_usb_con_sbu: endpoint {
+					remote-endpoint = <&pmic_glink_sbu_in>;
+				};
+			};
+		};
+	};
+};
+
+&mdss {
+	status = "okay";
+};
+
+&mdss_dp {
+	status = "okay";
+};
+
+&mdss_dp_out {
+	data-lanes = <0 1>;
+	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
+
+	remote-endpoint = <&usb_dp_qmpphy_dp_in>;
+};
+
+&mdss_dsi {
+	vdda-supply = <&vreg_l6b_1p2>;
+
+	status = "okay";
+};
+
+&mdss_dsi0_out {
+	remote-endpoint = <&lt9611_a>;
+	data-lanes = <0 1 2 3>;
+};
+
+&mdss_dsi_phy {
+	vdds-supply = <&vreg_l10c_0p88>;
+
+	status = "okay";
+};
+
+&pcie0 {
+	perst-gpios = <&tlmm 87 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 89 GPIO_ACTIVE_HIGH>;
+
+	pinctrl-0 = <&pcie0_clkreq_n>,
+		    <&pcie0_reset_n>,
+		    <&pcie0_wake_n>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&pcie0_phy {
+	vdda-phy-supply = <&vreg_l10c_0p88>;
+	vdda-pll-supply = <&vreg_l6b_1p2>;
+
+	status = "okay";
+};
+
+&pcie1 {
+	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 3 GPIO_ACTIVE_HIGH>;
+
+	pinctrl-0 = <&pcie1_clkreq_n>,
+		    <&pcie1_reset_n>,
+		    <&pcie1_wake_n>;
+	pinctrl-names = "default";
+
+	iommu-map = <0x0 &apps_smmu 0x1c80 0x1>,
+		    <0x100 &apps_smmu 0x1c81 0x1>,
+		    <0x208 &apps_smmu 0x1c84 0x1>,
+		    <0x210 &apps_smmu 0x1c85 0x1>,
+		    <0x218 &apps_smmu 0x1c86 0x1>,
+		    <0x300 &apps_smmu 0x1c87 0x1>,
+		    <0x400 &apps_smmu 0x1c88 0x1>,
+		    <0x500 &apps_smmu 0x1c89 0x1>,
+		    <0x501 &apps_smmu 0x1c90 0x1>;
+
+	status = "okay";
+};
+
+&pcie1_phy {
+	vdda-phy-supply = <&vreg_l10c_0p88>;
+	vdda-pll-supply = <&vreg_l6b_1p2>;
+
+	status = "okay";
+};
+
+&pcie1_port0 {
+	pcie@0,0 {
+		compatible = "pci1179,0623";
+		reg = <0x10000 0x0 0x0 0x0 0x0>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+
+		device_type = "pci";
+		ranges;
+		bus-range = <0x2 0xff>;
+
+		vddc-supply = <&vdd_ntn_0p9>;
+		vdd18-supply = <&vdd_ntn_1p8>;
+		vdd09-supply = <&vdd_ntn_0p9>;
+		vddio1-supply = <&vdd_ntn_1p8>;
+		vddio2-supply = <&vdd_ntn_1p8>;
+		vddio18-supply = <&vdd_ntn_1p8>;
+
+		i2c-parent = <&i2c0 0x77>;
+
+		resx-gpios = <&pm8350c_gpios 1 GPIO_ACTIVE_LOW>;
+
+		pinctrl-0 = <&tc9563_resx_n>;
+		pinctrl-names = "default";
+
+		pcie@1,0 {
+			reg = <0x20800 0x0 0x0 0x0 0x0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			device_type = "pci";
+			ranges;
+			bus-range = <0x3 0xff>;
+		};
+
+		pcie@2,0 {
+			reg = <0x21000 0x0 0x0 0x0 0x0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			device_type = "pci";
+			ranges;
+			bus-range = <0x4 0xff>;
+		};
+
+		pcie@3,0 {
+			reg = <0x21800 0x0 0x0 0x0 0x0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+			device_type = "pci";
+			ranges;
+			bus-range = <0x5 0xff>;
+
+			pci@0,0 {
+				reg = <0x50000 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				device_type = "pci";
+				ranges;
+			};
+
+			pci@0,1 {
+				reg = <0x50100 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				device_type = "pci";
+				ranges;
+			};
+		};
+	};
+};
+
+&pm7250b_gpios {
+	lt9611_rst_pin: lt9611-rst-state {
+		pins = "gpio2";
+		function = "normal";
+
+		output-high;
+		input-disable;
+		power-source = <0>;
+	};
+};
+
+&pm7325_temp_alarm {
+	io-channels = <&pmk8350_vadc PM7325_ADC7_DIE_TEMP>;
+	io-channel-names = "thermal";
+};
+
+&pmk8350_adc_tm {
+	status = "okay";
+
+	xo-therm@0 {
+		reg = <0>;
+		io-channels = <&pmk8350_vadc PMK8350_ADC7_AMUX_THM1_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+
+	quiet-therm@1 {
+		reg = <1>;
+		io-channels = <&pmk8350_vadc PM7325_ADC7_AMUX_THM1_100K_PU>;
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
+};
+
+&pm8350c_gpios {
+	ntn_0p9_en: ntn-0p9-en-state {
+		pins = "gpio2";
+		function = "normal";
+
+		bias-disable;
+		input-disable;
+		output-enable;
+		power-source = <0>;
+	};
+
+	ntn_1p8_en: ntn-1p8-en-state {
+		pins = "gpio3";
+		function = "normal";
+
+		bias-disable;
+		input-disable;
+		output-enable;
+		power-source = <0>;
+	};
+
+	tc9563_resx_n: tc9563-resx-state {
+		pins = "gpio1";
+		function = "normal";
+
+		bias-disable;
+		input-disable;
+		output-enable;
+		power-source = <0>;
+	};
+};
+
+&pm8350c_pwm {
+	nvmem = <&pmk8350_sdam_21>,
+		<&pmk8350_sdam_22>;
+	nvmem-names = "lpg_chan_sdam",
+		      "lut_sdam";
+
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	status = "okay";
+};
+
+&pmk8350_rtc {
+	status = "okay";
+};
+
+&pmk8350_vadc {
+	channel@3 {
+		reg = <PMK8350_ADC7_DIE_TEMP>;
+		label = "pmk7325_die_temp";
+		qcom,pre-scaling = <1 1>;
+	};
+
+	channel@44 {
+		reg = <PMK8350_ADC7_AMUX_THM1_100K_PU>;
+		label = "xo_therm";
+		qcom,hw-settle-time = <200>;
+		qcom,pre-scaling = <1 1>;
+		qcom,ratiometric;
+	};
+
+	channel@103 {
+		reg = <PM7325_ADC7_DIE_TEMP>;
+		label = "pm7325_die_temp";
+		qcom,pre-scaling = <1 1>;
+	};
+
+	channel@144 {
+		reg = <PM7325_ADC7_AMUX_THM1_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+		qcom,pre-scaling = <1 1>;
+		label = "pm7325_quiet_therm";
+	};
+
+	channel@146 {
+		reg = <PM7325_ADC7_AMUX_THM3_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+		qcom,pre-scaling = <1 1>;
+		label = "pm7325_sdm_skin_therm";
+	};
+};
+
+&pon_pwrkey {
+	status = "okay";
+};
+
+&pon_resin {
+	linux,code = <KEY_VOLUMEDOWN>;
+
+	status = "okay";
+};
+
+&qupv3_id_0 {
+	firmware-name = "qcom/qcs6490/qupv3fw.elf";
+
+	status = "okay";
+};
+
+&qupv3_id_1 {
+	firmware-name = "qcom/qcs6490/qupv3fw.elf";
+
+	status = "okay";
+};
+
+&remoteproc_adsp {
+	firmware-name = "qcom/qcs6490/adsp.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_cdsp {
+	firmware-name = "qcom/qcs6490/cdsp.mbn";
+
+	status = "okay";
+};
+
+&sdc2_clk {
+	bias-disable;
+	drive-strength = <16>;
+};
+
+&sdc2_cmd {
+	bias-pull-up;
+	drive-strength = <10>;
+};
+
+&sdc2_data {
+	bias-pull-up;
+	drive-strength = <10>;
+};
+
+&sdhc_2 {
+	pinctrl-0 = <&sdc2_clk>, <&sdc2_cmd>, <&sdc2_data>, <&sd_cd>;
+	pinctrl-1 = <&sdc2_clk_sleep>, <&sdc2_cmd_sleep>, <&sdc2_data_sleep>, <&sd_cd>;
+
+	vmmc-supply = <&vreg_l9c_2p96>;
+	vqmmc-supply = <&vreg_l6c_2p96>;
+
+	cd-gpios = <&tlmm 91 GPIO_ACTIVE_LOW>;
+
+	status = "okay";
+};
+
+&tlmm {
+	gpio-reserved-ranges = <32 2>, /* ADSP */
+			       <48 4>; /* NFC */
+
+	lt9611_irq_pin: lt9611-irq-state {
+		pins = "gpio24";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
+	pcie0_reset_n: pcie0-reset-n-state {
+		pins = "gpio87";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
+	pcie0_wake_n: pcie0-wake-n-state {
+		pins = "gpio89";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+
+	pcie1_reset_n: pcie1-reset-n-state {
+		pins = "gpio2";
+		function = "gpio";
+		drive-strength = <16>;
+		output-low;
+		bias-disable;
+	};
+
+	pcie1_wake_n: pcie1-wake-n-state {
+		pins = "gpio3";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+
+	sd_cd: sd-cd-state {
+		pins = "gpio91";
+		function = "gpio";
+		bias-pull-up;
+	};
+};
+
+&uart5 {
+	status = "okay";
+};
+
+&usb_1 {
+	dr_mode = "otg";
+	usb-role-switch;
+
+	status = "okay";
+};
+
+&usb_1_dwc3_hs {
+	remote-endpoint = <&pmic_glink_hs_in>;
+};
+
+&usb_1_dwc3_ss {
+	remote-endpoint = <&usb_dp_qmpphy_usb_ss_in>;
+};
+
+&usb_1_hsphy {
+	vdda-pll-supply = <&vreg_l10c_0p88>;
+	vdda33-supply = <&vreg_l2b_3p072>;
+	vdda18-supply = <&vreg_l1c_1p8>;
+
+	status = "okay";
+};
+
+&usb_1_qmpphy {
+	vdda-phy-supply = <&vreg_l6b_1p2>;
+	vdda-pll-supply = <&vreg_l1b_0p912>;
+
+	status = "okay";
+};
+
+&usb_dp_qmpphy_out {
+	remote-endpoint = <&redriver_phy_con_ss>;
+};
+
+&usb_dp_qmpphy_usb_ss_in {
+	remote-endpoint = <&usb_1_dwc3_ss>;
+};
+
+&usb_dp_qmpphy_dp_in {
+	remote-endpoint = <&mdss_dp_out>;
+};
+
+&ufs_mem_hc {
+	reset-gpios = <&tlmm 175 GPIO_ACTIVE_LOW>;
+	vcc-supply = <&vreg_l7b_2p952>;
+	vcc-max-microamp = <800000>;
+	vccq-supply = <&vreg_l9b_1p2>;
+	vccq-max-microamp = <900000>;
+	vccq2-supply = <&vreg_l9b_1p2>;
+	vccq2-max-microamp = <900000>;
+
+	status = "okay";
+};
+
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l10c_0p88>;
+	vdda-pll-supply = <&vreg_l6b_1p2>;
+
+	status = "okay";
+};
+
+&venus {
+	status = "okay";
+};

