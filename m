Return-Path: <devicetree+bounces-10638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 468D17D24FF
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 19:38:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6A2661C20930
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 17:38:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E36AD111AF;
	Sun, 22 Oct 2023 17:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XWEkYjE+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1DA523C9;
	Sun, 22 Oct 2023 17:38:33 +0000 (UTC)
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09806F2;
	Sun, 22 Oct 2023 10:38:31 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9c3aec5f326so763186566b.1;
        Sun, 22 Oct 2023 10:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697996309; x=1698601109; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5YH1420sGojEJgai5oiOJamXoAcJ7p2XNQa1UPBrX/0=;
        b=XWEkYjE+geZKr3q3x3v+pFFdv8yFWjGWw28KJcKLDEOPxK0Ra8M6SvV3HImMy1CzSt
         BjrIy6qU7T8S4+3aQLL2Ug3qY8jbhGfnouI+L1PUwYoy9ffGqHh36UAgcRDfC5xZSK8B
         YHdpevbAVTBp4ef6vShx428bQ8tHKojNKxr32XZrLqLjh5W+t43yG702uWpxh70BJwyp
         D8XrXpkq9qrT5OFQz90XmfwGjPyjSdBemb47fkCWfUcwZuglGxzwy4TBCz5kEzuGloqR
         c0kzdjpJp44Xm86lRhLkShAfaSFwr3eAkovzjhMMhEKJCbcatKptvnoN9Y8sFwZuUo/h
         ym3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697996309; x=1698601109;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5YH1420sGojEJgai5oiOJamXoAcJ7p2XNQa1UPBrX/0=;
        b=GLfs5BGs/EJnitwYhNGvuCntDCW0qfNn7jVo1JRbRGsKuk4fK059Mw3yQJzDT8c/Mm
         8m3p6p3Bp0tpqvVJ3852pYFoFFlXH02TcJMRz4Odvsn1tS3laupGK6Ts9XKRw9fWMZeq
         eHSctVoCY7mZ4hECowPxD3tUKLsnSUD6ppsrTGNpI+HovXRqg9QARcrtMFY04aHUuc9Q
         jKtsQM/3PP/bDWcTzeH6OvkDCqahLRI4Ucsnu0cXouJSR89cafs2Be5l2+vVhtLCOzsL
         fM8Lz18lRjhbUOZEPSFT59EVlXkXBRCPAOK01OkZy1aPePOrKbkEQmFIC6UPYQLJweYk
         hrOA==
X-Gm-Message-State: AOJu0YySK2SGRd4NHWmJ0F0eTDQxClKI9FiwRLjU2848QqBZTeurhHxe
	V0DdRT9/Tx3KS5Rx3ciEr0c=
X-Google-Smtp-Source: AGHT+IF1du8wHxgRpnSbW6oL1q5b5QVm+KP073KilVLO7NxGESjiYLhuK6ifO4z4PCcgvOIogomBGg==
X-Received: by 2002:a17:907:72c5:b0:9b2:bdbb:f145 with SMTP id du5-20020a17090772c500b009b2bdbbf145mr5903078ejc.34.1697996309022;
        Sun, 22 Oct 2023 10:38:29 -0700 (PDT)
Received: from localhost.localdomain ([2a0d:3344:1b7d:7200::eba])
        by smtp.gmail.com with ESMTPSA id h25-20020a170906261900b0099293cdbc98sm5472634ejc.145.2023.10.22.10.38.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Oct 2023 10:38:28 -0700 (PDT)
From: Luka Panio <lukapanio@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Tony Luck <tony.luck@intel.com>,
	"Guilherme G . Piccoli" <gpiccoli@igalia.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org
Cc: Luka Panio <lukapanio@gmail.com>
Subject: [PATCH v6 2/2] arm64: dts: qcom: sm8250-xiaomi-pipa: Add initial device tree
Date: Sun, 22 Oct 2023 19:38:11 +0200
Message-ID: <20231022173811.8229-2-lukapanio@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231022173811.8229-1-lukapanio@gmail.com>
References: <20231022173811.8229-1-lukapanio@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Initial support for Xiaomi Pad 6 tablet, that have sm8250 soc.

Signed-off-by: Luka Panio <lukapanio@gmail.com>
---
v2:
Update commit message. Drop reserved gpio's as this device in reality do not have gpio, and pins are not protected.

v3:
Update commit message.

v4:
Update commit message.

v5:
Update commit message.

v6:
Update commit message.
---
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 .../boot/dts/qcom/sm8250-xiaomi-pipa.dts      | 625 ++++++++++++++++++
 2 files changed, 626 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sm8250-xiaomi-pipa.dts

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 2cca20563a1d..41ab333d1f81 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -208,6 +208,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sm8250-sony-xperia-edo-pdx203.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8250-sony-xperia-edo-pdx206.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8250-xiaomi-elish-boe.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8250-xiaomi-elish-csot.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= sm8250-xiaomi-pipa.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8350-hdk.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8350-microsoft-surface-duo2.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8350-mtp.dtb
diff --git a/arch/arm64/boot/dts/qcom/sm8250-xiaomi-pipa.dts b/arch/arm64/boot/dts/qcom/sm8250-xiaomi-pipa.dts
new file mode 100644
index 000000000000..41eae1aaa2a8
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/sm8250-xiaomi-pipa.dts
@@ -0,0 +1,625 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) 2023 luka177 <lukapanio@gmail.com>
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/arm/qcom,ids.h>
+#include <dt-bindings/phy/phy.h>
+#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
+#include "sm8250.dtsi"
+#include "pm8150.dtsi"
+#include "pm8150b.dtsi"
+#include "pm8150l.dtsi"
+#include "pm8009.dtsi"
+
+/*
+ * Delete following upstream (sm8250.dtsi) reserved
+ * memory mappings which are different on this device.
+ */
+/delete-node/ &adsp_mem;
+/delete-node/ &cdsp_secure_heap;
+/delete-node/ &slpi_mem;
+/delete-node/ &spss_mem;
+/delete-node/ &xbl_aop_mem;
+
+/ {
+
+	model = "Xiaomi Pad 6";
+	compatible = "xiaomi,pipa", "qcom,sm8250";
+
+	classis-type = "tablet";
+
+	/* required for bootloader to select correct board */
+	qcom,msm-id = <QCOM_ID_SM8250 0x20001>; /* SM8250 v2.1 */
+	qcom,board-id = <0x34 0>;
+
+	chosen {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		framebuffer: framebuffer@9c000000 {
+			compatible = "simple-framebuffer";
+			reg = <0x0 0x9c000000 0x0 0x2300000>;
+			width = <1800>;
+			height = <2880>;
+			stride = <(1800 * 4)>;
+			format = "a8r8g8b8";
+		};
+	};
+
+	battery_l: battery-l {
+		compatible = "simple-battery";
+		voltage-min-design-microvolt = <3870000>;
+		energy-full-design-microwatt-hours = <16700000>;
+		charge-full-design-microamp-hours = <4420000>;
+	};
+
+	battery_r: battery-r {
+		compatible = "simple-battery";
+		voltage-min-design-microvolt = <3870000>;
+		energy-full-design-microwatt-hours = <16700000>;
+		charge-full-design-microamp-hours = <4420000>;
+	};
+
+	bl_vddpos_5p5: bl-vddpos-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "bl_vddpos_5p5";
+		regulator-min-microvolt = <5500000>;
+		regulator-max-microvolt = <5500000>;
+		regulator-enable-ramp-delay = <233>;
+		gpio = <&tlmm 130 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-boot-on;
+	};
+
+	bl_vddneg_5p5: bl-vddneg-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "bl_vddneg_5p5";
+		regulator-min-microvolt = <5500000>;
+		regulator-max-microvolt = <5500000>;
+		regulator-enable-ramp-delay = <233>;
+		gpio = <&tlmm 131 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-boot-on;
+	};
+
+	gpio_keys: gpio-keys {
+		compatible = "gpio-keys";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&vol_up_n>;
+
+		key-vol-up {
+			label = "Volume Up";
+			gpios = <&pm8150_gpios 6 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_VOLUMEUP>;
+			debounce-interval = <15>;
+			linux,can-disable;
+			wakeup-source;
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
+	/* S6c is really ebi.lvl but it's there for supply map completeness sake. */
+	vreg_s6c_0p88: smpc6-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vreg_s6c_0p88";
+		regulator-min-microvolt = <880000>;
+		regulator-max-microvolt = <880000>;
+		regulator-always-on;
+		vin-supply = <&vph_pwr>;
+	};
+
+	reserved-memory {
+		xbl_aop_mem: xbl-aop@80700000 {
+			reg = <0x0 0x80600000 0x0 0x260000>;
+			no-map;
+		};
+
+		slpi_mem: slpi@88c00000 {
+			reg = <0x0 0x88c00000 0x0 0x2f00000>;
+			no-map;
+		};
+
+		adsp_mem: adsp@8bb00000 {
+			reg = <0x0 0x8bb00000 0x0 0x2500000>;
+			no-map;
+		};
+
+		spss_mem: spss@8e000000 {
+			reg = <0x0 0x8e000000 0x0 0x100000>;
+			no-map;
+		};
+
+		cdsp_secure_heap: cdsp-secure-heap@8e100000 {
+			reg = <0x0 0x8e100000 0x0 0x4600000>;
+			no-map;
+		};
+
+		cont_splash_mem: cont-splash@9c000000 {
+			reg = <0x0 0x9c000000 0x0 0x2300000>;
+			no-map;
+		};
+
+		ramoops@b0000000 {
+			compatible = "ramoops";
+			reg = <0x0 0xb0000000 0x0 0x400000>;
+			record-size = <0x1000>;
+			console-size = <0x200000>;
+			ecc-size = <16>;
+			no-map;
+		};
+	};
+};
+
+&adsp {
+	firmware-name = "qcom/sm8250/xiaomi/pipa/adsp.mbn";
+	status = "okay";
+};
+
+&apps_rsc {
+	regulators-0 {
+		compatible = "qcom,pm8150-rpmh-regulators";
+		qcom,pmic-id = "a";
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
+		vdd-l1-l8-l11-supply = <&vreg_s6c_0p88>;
+		vdd-l2-l10-supply = <&vreg_bob>;
+		vdd-l3-l4-l5-l18-supply = <&vreg_s6a_0p95>;
+		vdd-l6-l9-supply = <&vreg_s8c_1p35>;
+		vdd-l7-l12-l14-l15-supply = <&vreg_s5a_1p9>;
+		vdd-l13-l16-l17-supply = <&vreg_bob>;
+
+		/* (S1+S2+S3) - cx.lvl (ARC) */
+
+		vreg_s4a_1p8: smps4 {
+			regulator-name = "vreg_s4a_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1920000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_s5a_1p9: smps5 {
+			regulator-name = "vreg_s5a_1p9";
+			regulator-min-microvolt = <1900000>;
+			regulator-max-microvolt = <2040000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_s6a_0p95: smps6 {
+			regulator-name = "vreg_s6a_0p95";
+			regulator-min-microvolt = <600000>;
+			regulator-max-microvolt = <1128000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l2a_3p1: ldo2 {
+			regulator-name = "vreg_l2a_3p1";
+			regulator-min-microvolt = <3072000>;
+			regulator-max-microvolt = <3072000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l3a_0p9: ldo3 {
+			regulator-name = "vreg_l3a_0p9";
+			regulator-min-microvolt = <928000>;
+			regulator-max-microvolt = <932000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		/* L4 - lmx.lvl (ARC) */
+
+		vreg_l5a_0p88: ldo5 {
+			regulator-name = "vreg_l5a_0p88";
+			regulator-min-microvolt = <880000>;
+			regulator-max-microvolt = <880000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l6a_1p2: ldo6 {
+			regulator-name = "vreg_l6a_1p2";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		/* L7 is unused. */
+
+		vreg_l9a_1p2: ldo9 {
+			regulator-name = "vreg_l9a_1p2";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		/* L10 is unused, L11 - lcx.lvl (ARC) */
+
+		vreg_l12a_1p8: ldo12 {
+			regulator-name = "vreg_l12a_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		/* L13 is unused. */
+
+		vreg_l14a_1p88: ldo14 {
+			regulator-name = "vreg_l14a_1p88";
+			regulator-min-microvolt = <1880000>;
+			regulator-max-microvolt = <1880000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		/* L15 & L16 are unused. */
+
+		vreg_l17a_3p0: ldo17 {
+			regulator-name = "vreg_l17a_3p0";
+			regulator-min-microvolt = <2496000>;
+			regulator-max-microvolt = <3008000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l18a_0p9: ldo18 {
+			regulator-name = "vreg_l18a_0p9";
+			regulator-min-microvolt = <800000>;
+			regulator-max-microvolt = <920000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+
+	regulators-1 {
+		compatible = "qcom,pm8150l-rpmh-regulators";
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
+		vdd-l1-l8-supply = <&vreg_s4a_1p8>;
+		vdd-l2-l3-supply = <&vreg_s8c_1p35>;
+		vdd-l4-l5-l6-supply = <&vreg_bob>;
+		vdd-l7-l11-supply = <&vreg_bob>;
+		vdd-l9-l10-supply = <&vreg_bob>;
+		vdd-bob-supply = <&vph_pwr>;
+
+		vreg_bob: bob {
+			regulator-name = "vreg_bob";
+			regulator-min-microvolt = <3350000>;
+			regulator-max-microvolt = <3960000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_AUTO>;
+		};
+
+		/*
+		 * S1-S6 are ARCs:
+		 * (S1+S2) - gfx.lvl,
+		 * S3 - mx.lvl,
+		 * (S4+S5) - mmcx.lvl,
+		 * S6 - ebi.lvl
+		 */
+
+		vreg_s7c_0p35: smps7 {
+			regulator-name = "vreg_s7c_0p35";
+			regulator-min-microvolt = <348000>;
+			regulator-max-microvolt = <1000000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_s8c_1p35: smps8 {
+			regulator-name = "vreg_s8c_1p35";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1400000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l1c_1p8: ldo1 {
+			regulator-name = "vreg_l1c_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		/* L2-4 are unused. */
+
+		vreg_l5c_1p8: ldo5 {
+			regulator-name = "vreg_l5c_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <2800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l6c_2p9: ldo6 {
+			regulator-name = "vreg_l6c_2p9";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <2960000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l7c_2p85: ldo7 {
+			regulator-name = "vreg_l7c_2p85";
+			regulator-min-microvolt = <2856000>;
+			regulator-max-microvolt = <3104000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l8c_1p8: ldo8 {
+			regulator-name = "vreg_l8c_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l9c_2p9: ldo9 {
+			regulator-name = "vreg_l9c_2p9";
+			regulator-min-microvolt = <2704000>;
+			regulator-max-microvolt = <2960000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l10c_3p3: ldo10 {
+			regulator-name = "vreg_l10c_3p3";
+			regulator-min-microvolt = <3000000>;
+			regulator-max-microvolt = <3312000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l11c_3p0: ldo11 {
+			regulator-name = "vreg_l11c_3p0";
+			regulator-min-microvolt = <3104000>;
+			regulator-max-microvolt = <3304000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+
+	regulators-2 {
+		compatible = "qcom,pm8009-rpmh-regulators";
+		qcom,pmic-id = "f";
+
+		vdd-s1-supply = <&vph_pwr>;
+		vdd-s2-supply = <&vreg_bob>;
+		vdd-l2-supply = <&vreg_s8c_1p35>;
+		vdd-l5-l6-supply = <&vreg_bob>;
+		vdd-l7-supply = <&vreg_s4a_1p8>;
+
+		vreg_s1f_1p2: smps1 {
+			regulator-name = "vreg_s1f_1p2";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1300000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_s2f_0p5: smps2 {
+			regulator-name = "vreg_s2f_0p5";
+			regulator-min-microvolt = <512000>;
+			regulator-max-microvolt = <1100000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		/* L1 is unused. */
+
+		vreg_l2f_1p3: ldo2 {
+			regulator-name = "vreg_l2f_1p3";
+			regulator-min-microvolt = <1056000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		/* L3 & L4 are unused. */
+
+		vreg_l5f_2p8: ldo5 {
+			regulator-name = "vreg_l5f_2p85";
+			regulator-min-microvolt = <2800000>;
+			regulator-max-microvolt = <3000000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l6f_2p8: ldo6 {
+			regulator-name = "vreg_l6f_2p8";
+			regulator-min-microvolt = <2800000>;
+			regulator-max-microvolt = <3000000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l7f_1p8: ldo7 {
+			regulator-name = "vreg_l7f_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+};
+
+&cdsp {
+	firmware-name = "qcom/sm8250/xiaomi/pipa/cdsp.mbn";
+	status = "okay";
+};
+
+&gmu {
+	status = "okay";
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
+&gpi_dma2 {
+	status = "okay";
+};
+
+&gpu {
+	status = "okay";
+
+	zap-shader {
+		memory-region = <&gpu_mem>;
+		firmware-name = "qcom/sm8250/xiaomi/pipa/a650_zap.mbn";
+	};
+};
+
+&i2c0 {
+	clock-frequency = <400000>;
+	status = "okay";
+
+	fuel-gauge@55 {
+		compatible = "ti,bq27z561";
+		reg = <0x55>;
+		monitored-battery = <&battery_r>;
+	};
+};
+
+&i2c11 {
+	clock-frequency = <400000>;
+	status = "okay";
+
+	backlight: backlight@11 {
+		compatible = "kinetic,ktz8866";
+		reg = <0x11>;
+		vddpos-supply = <&bl_vddpos_5p5>;
+		vddneg-supply = <&bl_vddneg_5p5>;
+		enable-gpios = <&tlmm 139 GPIO_ACTIVE_HIGH>;
+		current-num-sinks = <5>;
+		kinetic,current-ramp-delay-ms = <128>;
+		kinetic,led-enable-ramp-delay-ms = <1>;
+		kinetic,enable-lcd-bias;
+	};
+};
+
+&i2c13 {
+	clock-frequency = <400000>;
+	status = "okay";
+
+	fuel-gauge@55 {
+		compatible = "ti,bq27z561";
+		reg = <0x55>;
+		monitored-battery = <&battery_l>;
+	};
+};
+
+
+
+&pcie0 {
+	status = "okay";
+};
+
+&pcie0_phy {
+	vdda-phy-supply = <&vreg_l5a_0p88>;
+	vdda-pll-supply = <&vreg_l9a_1p2>;
+	status = "okay";
+};
+
+&pm8150_gpios {
+	vol_up_n: vol-up-n-state {
+		pins = "gpio6";
+		function = "normal";
+		power-source = <1>;
+		input-enable;
+		bias-pull-up;
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
+&qupv3_id_0 {
+	status = "okay";
+};
+
+&qupv3_id_1 {
+	status = "okay";
+};
+
+&qupv3_id_2 {
+	status = "okay";
+};
+
+&slpi {
+	firmware-name = "qcom/sm8250/xiaomi/pipa/slpi.mbn";
+	status = "okay";
+};
+
+&usb_1 {
+	status = "okay";
+};
+
+&usb_1_dwc3 {
+	dr_mode = "peripheral";
+};
+
+&usb_1_hsphy {
+	vdda-pll-supply = <&vreg_l5a_0p88>;
+	vdda18-supply = <&vreg_l12a_1p8>;
+	vdda33-supply = <&vreg_l2a_3p1>;
+	status = "okay";
+};
+
+&usb_1_qmpphy {
+	status = "okay";
+	vdda-phy-supply = <&vreg_l9a_1p2>;
+	vdda-pll-supply = <&vreg_l18a_0p9>;
+};
+
+&ufs_mem_hc {
+	vcc-supply = <&vreg_l17a_3p0>;
+	vcc-max-microamp = <800000>;
+	vccq-supply = <&vreg_l6a_1p2>;
+	vccq-max-microamp = <800000>;
+	vccq2-supply = <&vreg_s4a_1p8>;
+	vccq2-max-microamp = <800000>;
+	status = "okay";
+};
+
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l5a_0p88>;
+	vdda-pll-supply = <&vreg_l9a_1p2>;
+	status = "okay";
+};
+
+&venus {
+	firmware-name = "qcom/sm8250/xiaomi/pipa/venus.mbn";
+	status = "okay";
+};
-- 
2.42.0


