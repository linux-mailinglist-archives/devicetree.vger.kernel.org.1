Return-Path: <devicetree+bounces-233769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8034BC255E6
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 14:56:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A33541A64EF5
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:56:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA70534B1AD;
	Fri, 31 Oct 2025 13:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m7Tkv0pl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D571034A3A9
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 13:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761918971; cv=none; b=D8fYbiBy11DuE8kgDMIwEz4AAv0tnTrR1TcsYfNqbvmj960fVJKaOMIbl4L+10YemQIR2JOX5ce0FlY8Q80IvSdMMYFtys/B8iNAsItnRKz3P1HSrEUfWyOHqH1BIBbPpBg7jngIIo+sgP886ULidItNT1R51CDPRWRnqdLWktI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761918971; c=relaxed/simple;
	bh=Vpbdj3bclO1IYf5ibUmMMs8iA77sDQKZSlUopeEmfHw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mIP7RtwKRUJrWMTCYJH6SG89nQQnXFedfjHDeyTAimKK20/tBFaDa6d8ld3AfjeyO5JZT4btvOLXfqNO6dTdT0Flp7Qv2A1FAvSzltNos9Y57EZKdMMT7cbThNhl9vHZgvLDCeqZ5WpY+fULLPNwkuHFZKet9GRT7spQoue7rFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m7Tkv0pl; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-78af3fe5b17so2274874b3a.2
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 06:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761918969; x=1762523769; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w+qPp9Nom/qlgE9wBBXw5mrITYD+xlno6ZmzaHvYtAs=;
        b=m7Tkv0pl8tW8nSITQmtzC8d48yur4AdAOr8CcrljG0J4R7jULS1L+4kd8gqT6zThnU
         RfqNS2VxubeDb8ahpW+vRKwaE/K1Ax+YepfMhS86NbKRB3ZkZ6YmouzKAvDd8tgRmADZ
         AYhZKhpvxhsVH8Q4h7ofCNws4nF1zTnnT78vYGkm1wDcp3wOaXzPoVd9mZj+bXZBW5yT
         IRThTcDP5BqCCY8iAa0r1GHGstoDK8HPicjEFeQ94Bvodr3t/CnqQ7/IHLewFF7NsSmc
         1Xv/yfCGOVDiU3XogQd/3nFU+WD1RXvqOLH61qwb1ifwtfPTspTcMSGcSYqPHkVGRFRX
         Ns2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761918969; x=1762523769;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w+qPp9Nom/qlgE9wBBXw5mrITYD+xlno6ZmzaHvYtAs=;
        b=kJv5ZGpj/sbyFXJA7rurk8y2A2VYGbKGloviSMEW8Bf/Sg6Ov+TlDLtowUwTHquGh7
         ybGuzOdgmeYRJBemkxa/hMQGYcDs/87OHwdbhhRkjVd7Ze9OYDN/KPj2zPn45s6NWMro
         FftwLjRYHq1ELdAuj+dg5P5bRzzz1nUQkd9fBcMgmTgLGB8e1eg3m0m7mT7F7IIHIvxP
         BVisfIdOY+Pce062iOIfUwDEAGEeMel0JMRmRxNawIW8itfw+xnEooRREgtoYraj9gQR
         pKeZVBPknIvRiEorjq6bAKmj1ERR9LhJXqV1aUDeOtF0kUnwl/MlzwpA5sKPlhMzBG/b
         zJlQ==
X-Forwarded-Encrypted: i=1; AJvYcCUPgqwKJkW9e4eu0AqUXO+aE0OA+rsUCAV6YA2um1b0L0SAvRVB9yMDrrhZ41fiQ0NiL34cULYpWAne@vger.kernel.org
X-Gm-Message-State: AOJu0YzfDfafLE9eVS6z/ERbJnt0b74jK1iwlUPnyWZy0eOFBeX6EJSS
	jBbThVJhYqP6Rgfu7+2AnNjOhnZ+c27yGhZ7BjPhtFZH+U/mkfF0FocC
X-Gm-Gg: ASbGncvs3ntOIaRYkKg43xWCnVKyDYr1+HXiCGm5GdWtvdkBFr1rZv333lEtDwKXdm6
	APx6g/+g3j/SWfQeO2ujNsHNg92gcWlwvbCjv7L0pX/kpF+f6W986f7eYsf0hGAFvv99WZpVAOj
	uu2Xk6/WiUH/ZRp1+NLPKg/JBYeNrPEDdlbeKPccUtHABgf3+DbeQrW0pzeKF8GPFVdfdMlXYwq
	poqzAYIuuvAH7tgHkecK+d1zQ7koKmS8SL6OcHZSjIWvEB8y0X6DuA14uE1bcuRZr/tv2D8nSe3
	qBynsjFtLi98MVykmIipokocZkXPeOiY54ev0ETfskk7K7c+guf+/Ic3RYECCWoyPhKN/bPey4N
	m6f4pWHUFh4BPBNkPGawQDRPG8lboeESl2BEO3dUc+4NShsdPGwnSB/D3AgL4IfclP4rxaXtWHe
	ewR67macPDWTx8NP3ycw==
X-Google-Smtp-Source: AGHT+IF+yZo/HkELTu51zAdwi2VUvyhB5//L6qA8F720WmKyqbYb7Nsmp4i9vLNIhrwE8nThFxOgOA==
X-Received: by 2002:aa7:8889:0:b0:7a2:7930:6857 with SMTP id d2e1a72fcca58-7a7794c4f7amr5471062b3a.17.1761918968909;
        Fri, 31 Oct 2025 06:56:08 -0700 (PDT)
Received: from archlinux ([103.189.130.36])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a7d8d72c5fsm2302271b3a.18.2025.10.31.06.56.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 06:56:08 -0700 (PDT)
From: Raihan Ahamed <raihan1999ahamed@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Tony Luck <tony.luck@intel.com>,
	"Guilherme G . Piccoli" <gpiccoli@igalia.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org
Cc: Raihan Ahamed <raihan1999ahamed@gmail.com>
Subject: [PATCH v4 2/2] arm64: dts: qcom: msm8953-lenovo-kuntao: Add initial device tree
Date: Fri, 31 Oct 2025 19:21:21 +0530
Message-ID: <20251031135506.214025-2-raihan1999ahamed@gmail.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251031135506.214025-1-raihan1999ahamed@gmail.com>
References: <20251031135506.214025-1-raihan1999ahamed@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Lenovo P2 is a handset using the MSM8953 SoC released in 2016

Add a device tree with initial support for:

- Enable accelerometer sensor
- Enable pinctrl for GPIO keys
- Enable gpu and add gpu_zap_shader
- GPIO keys
- SDHCI (internal and external storage)
- USB Device Mode
- WCNSS (WiFi/BT)
- Regulators

Signed-off-by: Raihan Ahamed <raihan1999ahamed@gmail.com>
---
version 4
- rebased on linux-next
- enabled accelerometer sensor
- enabled gpu and add gpu_zap_shader
- add homescreen and one-key-low-power gpio-keys
- enabled pinctrl for gpio-keys
- removed explicily added tag

version 3
- sorry for explicitly adding tags
linked-to v3: https://yhbt.net/lore/linux-devicetree/20240226195516.174737-1-raihan1999ahamed@gmail.com/

version 2
- document device compatible
linked-to v2: https://yhbt.net/lore/linux-devicetree/20240226094256.5736-1-raihan1999ahamed@gmail.com/

version 1
- add initial device tree support
linked-to v1: https://yhbt.net/lore/linux-devicetree/20240226055615.79195-1-raihan1999ahamed@gmail.com/

 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 .../boot/dts/qcom/msm8953-lenovo-kuntao.dts   | 294 ++++++++++++++++++
 2 files changed, 295 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/msm8953-lenovo-kuntao.dts

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 6f34d5ed331c4..fae8b337f4e74 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -83,6 +83,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= msm8939-sony-xperia-kanuti-tulip.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8939-wingtech-wt82918.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8939-wingtech-wt82918hd.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8953-flipkart-rimob.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= msm8953-lenovo-kuntao.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8953-motorola-potter.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8953-xiaomi-daisy.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8953-xiaomi-mido.dtb
diff --git a/arch/arm64/boot/dts/qcom/msm8953-lenovo-kuntao.dts b/arch/arm64/boot/dts/qcom/msm8953-lenovo-kuntao.dts
new file mode 100644
index 0000000000000..5e6f3a6213b3b
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/msm8953-lenovo-kuntao.dts
@@ -0,0 +1,294 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2024, Raihan Ahamed <raihan1999ahamed@gmail.com>
+ */
+/dts-v1/;
+
+#include "msm8953.dtsi"
+#include "pm8953.dtsi"
+#include "pmi8950.dtsi"
+
+/delete-node/ &qseecom_mem;
+
+/ {
+	model = "Lenovo P2";
+	compatible = "lenovo,kuntao", "qcom,msm8953";
+	chassis-type = "handset";
+	qcom,msm-id = <0x125 0x00>;
+	qcom,board-id = <0x41 0x82b1 0x41 0x83b0>;
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&gpio_key_default>;
+
+		key-volume-up {
+			label = "Volume Up";
+			gpios = <&tlmm 85 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_VOLUMEUP>;
+			debounce-interval = <15>;
+		};
+
+		one-key-low-power {
+			label = "onekeylowpower";
+			gpios = <&tlmm 86 GPIO_ACTIVE_LOW>;
+			linux,code = <ABS_HAT1Y>;
+			debounce-interval = <15>;
+		};
+
+		homepage {
+			label = "homepage";
+			gpios = <&tlmm 132 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_HOMEPAGE>;
+			debounce-interval = <15>;
+			gpio-key,wakeup;
+		};
+	};
+
+	reserved-memory {
+		qseecom_mem: qseecom@84a00000 {
+			reg = <0x0 0x84a00000 0x0 0x1900000>;
+			no-map;
+		};
+
+		ramoops@8ee00000 {
+			compatible = "ramoops";
+			reg = <0x0 0x8ee00000 0x0 0x80000>;
+			console-size = <0x40000>;
+			ftrace-size = <0x15000>;
+			record-size = <0x5000>;
+			pmsg-size = <0x2000>;
+		};
+	};
+
+	/*
+	 * We bitbang on &i2c_4 because BLSP is protected by TZ as sensors are
+	 * normally proxied via ADSP firmware. GPIOs aren't protected.
+	 */
+
+	i2c-sensors {
+		compatible = "i2c-gpio";
+		sda-gpios = <&tlmm 14 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
+		scl-gpios = <&tlmm 15 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
+		i2c-gpio,delay-us = <2>; /* ~100 kHz */
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		imu@6a {
+			compatible = "st,lsm6ds3";
+			reg = <0x6a>;
+			vdd-supply = <&pm8953_l22>;
+			vddio-supply = <&pm8953_l6>;
+			mount-matrix = "0", "-1", "0",
+				       "-1", "0", "0",
+				       "0", "0", "1";
+		};
+	};
+
+	vph_pwr: vph-pwr-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vph_pwr";
+		regulator-always-on;
+		regulator-boot-on;
+	};
+};
+
+&gpu {
+	status = "okay";
+};
+
+&gpu_zap_shader {
+	firmware-name = "qcom/msm8953/lenovo/kuntao/a506_zap.mbn";
+};
+
+&hsusb_phy {
+	vdd-supply = <&pm8953_l3>;
+	vdda-pll-supply = <&pm8953_l7>;
+	vdda-phy-dpdm-supply = <&pm8953_l13>;
+
+	status = "okay";
+};
+
+&pm8953_resin {
+	linux,code = <KEY_VOLUMEDOWN>;
+	status = "okay";
+};
+
+&rpm_requests {
+	regulators {
+		compatible = "qcom,rpm-pm8953-regulators";
+		vdd_s1-supply = <&vph_pwr>;
+		vdd_s2-supply = <&vph_pwr>;
+		vdd_s3-supply = <&vph_pwr>;
+		vdd_s4-supply = <&vph_pwr>;
+		vdd_s5-supply = <&vph_pwr>;
+		vdd_s6-supply = <&vph_pwr>;
+		vdd_s7-supply = <&vph_pwr>;
+		vdd_l1-supply = <&pm8953_s3>;
+		vdd_l2_l3-supply = <&pm8953_s3>;
+		vdd_l4_l5_l6_l7_l16_l19-supply = <&pm8953_s4>;
+		vdd_l8_l11_l12_l13_l14_l15-supply = <&vph_pwr>;
+		vdd_l9_l10_l17_l18_l22-supply = <&vph_pwr>;
+
+		pm8953_s1: s1 {
+			regulator-min-microvolt = <863000>;
+			regulator-max-microvolt = <1152000>;
+		};
+
+		pm8953_s3: s3 {
+			regulator-min-microvolt = <1224000>;
+			regulator-max-microvolt = <1224000>;
+		};
+
+		pm8953_s4: s4 {
+			regulator-min-microvolt = <1896000>;
+			regulator-max-microvolt = <2048000>;
+		};
+
+		pm8953_l1: l1 {
+			regulator-min-microvolt = <1000000>;
+			regulator-max-microvolt = <1100000>;
+		};
+
+		pm8953_l2: l2 {
+			regulator-min-microvolt = <1000000>;
+			regulator-max-microvolt = <1000000>;
+		};
+
+		pm8953_l3: l3 {
+			regulator-min-microvolt = <925000>;
+			regulator-max-microvolt = <925000>;
+			regulator-allow-set-load;
+		};
+
+		pm8953_l5: l5 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+		};
+
+		pm8953_l6: l6 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+		};
+
+		pm8953_l7: l7 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1900000>;
+		};
+
+		pm8953_l8: l8 {
+			regulator-min-microvolt = <2900000>;
+			regulator-max-microvolt = <2900000>;
+		};
+
+		pm8953_l9: l9 {
+			regulator-min-microvolt = <3000000>;
+			regulator-max-microvolt = <3300000>;
+		};
+
+		pm8953_l10: l10 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+		};
+
+		pm8953_l11: l11 {
+			regulator-min-microvolt = <2800000>;
+			regulator-max-microvolt = <3000000>;
+		};
+
+		pm8953_l12: l12 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <3000000>;
+		};
+
+		pm8953_l13: l13 {
+			regulator-min-microvolt = <3075000>;
+			regulator-max-microvolt = <3125000>;
+		};
+
+		pm8953_l15: l15 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+		};
+
+		pm8953_l16: l16 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+		};
+
+		pm8953_l17: l17 {
+			regulator-min-microvolt = <2800000>;
+			regulator-max-microvolt = <3000000>;
+		};
+
+		pm8953_l19: l19 {
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1350000>;
+		};
+
+		pm8953_l22: l22 {
+			regulator-min-microvolt = <2800000>;
+			regulator-max-microvolt = <2850000>;
+		};
+
+		pm8953_l23: l23 {
+			regulator-min-microvolt = <975000>;
+			regulator-max-microvolt = <1225000>;
+		};
+	};
+};
+
+&sdhc_1 {
+	vmmc-supply = <&pm8953_l8>;
+	vqmmc-supply = <&pm8953_l5>;
+
+	status = "okay";
+};
+
+&sdhc_2 {
+	vmmc-supply = <&pm8953_l11>;
+	vqmmc-supply = <&pm8953_l12>;
+
+	cd-gpios = <&tlmm 133 GPIO_ACTIVE_LOW>;
+
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&sdc2_clk_on &sdc2_cmd_on &sdc2_data_on &sdc2_cd_off>;
+	pinctrl-1 = <&sdc2_clk_off &sdc2_cmd_off &sdc2_data_off &sdc2_cd_off>;
+
+	status = "okay";
+};
+
+&tlmm {
+	gpio-reserved-ranges = <0 4>, <135 4>;
+
+	gpio_key_default: gpio-key-default-state {
+		pins = "gpio85", "gpio86", "gpio132";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+};
+
+&usb3 {
+	status = "okay";
+};
+
+&usb3_dwc3 {
+	dr_mode = "peripheral";
+};
+
+&wcnss {
+	vddpx-supply = <&pm8953_l5>;
+
+	status = "okay";
+};
+
+&wcnss_iris {
+	compatible = "qcom,wcn3660b";
+
+	vddxo-supply = <&pm8953_l7>;
+	vddrfa-supply = <&pm8953_l19>;
+	vddpa-supply = <&pm8953_l9>;
+	vdddig-supply = <&pm8953_l5>;
+};
-- 
2.51.2


