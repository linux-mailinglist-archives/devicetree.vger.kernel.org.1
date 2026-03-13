Return-Path: <devicetree+bounces-275485-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNMEMn1OtGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275485-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:50:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C1328852C
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:50:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A5EB9322D34B
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:47:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B6033CF68A;
	Fri, 13 Mar 2026 17:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FzA+Dhxl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F3B93CFF51
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 17:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773424064; cv=none; b=buZ55gBlrUrgTgDQ1qIlsDqzc0DLXgQa7g/4NAJqrElZUDs6ZFi4zKC70iSFFbYHZdtf39Wf2CuuXIHHbJxJxW4O5TgLTEeRm7lL9gKazH4LD+HHVb3dS9aob63C83+rjp5tatY72lN7/3G0BZkvC/0pyeTTrSuQwJBWg8SXfpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773424064; c=relaxed/simple;
	bh=L1E3dWyWdDd7jZD1Ljd/tvmAAf/s8p29tGRQi/gW3oQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=D3JwR6CfiJPTwt1aDJw1RUFatgohlZVAD5Qk3O9ZwmisINVAVFHF2qzyYDYcesq4QVODT7XuRJ58a9Pum6mTQUmNXpRsAnHa/8v8Hk82Sz4ukj1DU8gh4eOCKP76onkwnd94ep4kiuVuL0hXpbDxTsxKBsknz1qbbO9y9iY8tCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FzA+Dhxl; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-482f454be5bso35656995e9.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773424060; x=1774028860; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q89IZ5f7lnuVieQ6fXoMMk/Jf/u8T4bXJfz9kjG6XDc=;
        b=FzA+DhxlBrMERTfXbdtMCmS1IwLDLiH9lxuO2El7Wau1Uf+VevdfLvaZv1YSR0SgiB
         3EUHb4wJMWuNPf3fmieOkqtEECUHLb08/BisZ1IpcuPePiThuFXCRBRIKwyWt3AXORpS
         81nIbNwtzVhUlE3fuifgMiJFxKKL5bmaJoyyCQgxw/zhXgJRfizSaX7TIYntrO80u3mr
         xQo0O2dzWCtF/edI1xsTkhslFHuw1wzEEpfPdGNKT+Gj99EU4uEUSeGEcoQsMwwPCpOB
         pOSsBREfQ/ZBO+EoXdX2Lp238lHGOrj/NbljXyNE4JBTVPfP9duJNA/i1AXmCx/MfB64
         dcUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773424060; x=1774028860;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Q89IZ5f7lnuVieQ6fXoMMk/Jf/u8T4bXJfz9kjG6XDc=;
        b=oMhgobJD8vKw5hsUTJv5+p5hwcefM3+WyOJTI8+RmsrmkTKjO3IrsytX+/6sxq70mD
         6+zq32IbYa7KRTChJS+oiIcyfBqDedzM2VcZBfiIi0m6VucxCWm/netrGerNeodKY4wU
         tepspIvQSnb2JJD0gb3xt1vuKBdf5clr3OMVM3bi94FcAnvG+I/n19OvkKrwUS7tQ6rH
         NF0tM3iU3o1NExvgNf1GQF4r+7PO5aRDshxcuqPdlLgw/eq7C1vzBxlR3hz80wnUXhk4
         BgECZaPJcndr64hukvfSyZN6gtUJIDkgl5Vk87Stk5qFw5uW5wObnm+1hVowNYYZktiU
         wkOA==
X-Gm-Message-State: AOJu0YxlICt7Sp09ZoaxiZWXRZ3l9sA64dLIap9sfLo67qqkBHFZgXUe
	eJJOrSRj4yKCUmySKZEIIUyZE4QjXqe0hQi7oC3aVGrlfN0NoHclKq6FETf1uSTq
X-Gm-Gg: ATEYQzypwTTFJJ1FdWFlyemVgj/4taiJNCb+o9QBkB4ZfdcCb/lWaO1fa+50M3G4wwk
	nbQ3Y9p1F+0m7kY9FohQ2EbLYEyUZmQWPQ5eIp6RGdwqBz6FSXWaJPkNAc2qiqbgdBXUw9CPmgj
	cPMXcdM2HLugqjKj/CRgP0hhjwIUNxCnTiRiR5OVR15qyAIbdBG+9woaehngpMo9rswcIJTgJPv
	vAfhjbN3/sC+5eKPJj2LBezbedf3OoiJviWr7B059zxFXyddG85OUw7+DiPScXKtdXjYHMm0gyL
	zZ0htzIQboVBkxAY1mIfOPoepVhWuSxl7G8LH4ERib3yTSEuQcFDalyZq/7H7j6eCjYaeNGAn3s
	9cfJc0u+BX0d+/H3TeZ1OJXfKbZgqnNmuF9Qec0GAvrFBYEeHt0RAsTujHwjeCZma44pO8Ihsu/
	mK08R8UdNG/06b/e9qMUxLP837Vr+mOw5g8Xm8pKgjKuQGpCPgCRrLZ59rr1y1fnolEnG6fqIpp
	+r+9JWS8rvIbfra/ItbvqKMkxi1CWaEeYzY8Ao=
X-Received: by 2002:a05:600c:a016:b0:47e:e981:78b4 with SMTP id 5b1f17b1804b1-48555b2c949mr60023095e9.12.1773424059512;
        Fri, 13 Mar 2026 10:47:39 -0700 (PDT)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854b6756e4sm257213575e9.15.2026.03.13.10.47.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 10:47:39 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 1/2] arm64: dts: freescale: Add support for Variscite DART-MX95
Date: Fri, 13 Mar 2026 18:47:02 +0100
Message-ID: <20260313174707.26902-2-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313174707.26902-1-stefano.r@variscite.com>
References: <20260313174707.26902-1-stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-275485-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,pengutronix.de,gmail.com,lists.linux.dev,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,4.196.180.0:email,0.0.0.1:email,variscite.com:email,variscite.com:mid,variscite.com:url,1a:email]
X-Rspamd-Queue-Id: 28C1328852C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Stefano Radaelli <stefano.r@variscite.com>

Add device tree support for the Variscite DART-MX95 system on module.
This SOM is designed to be used with various carrier boards.

The module includes:
- NXP i.MX95 MPU processor
- Up to 16GB of LPDDR5 memory
- Up to 128GB of eMMC storage memory
- Integrated 10/100/1000 Mbps Ethernet Transceiver
- Codec audio WM8904
- WIFI6 dual-band 802.11ax/ac/a/b/g/n with optional 802.15.4 and Bluetooth

Only SOM-specific peripherals are enabled by default. Carrier board
specific interfaces are left disabled to be enabled in the respective
carrier board device trees.

Link: https://variscite.com/system-on-module-som/i-mx-9/i-mx-95/dart-mx95/
Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v6:
- Order by node name instead of by label
v4:
- Fix typo in spacing
- Remove vpu and cm7 reserved memory
- Add GPIO_OPEN_DRAIN to i2c gpios
- Move pinmux to eof
v3:
- Fix specific node name with generic one
- Audio regulator cleanup

 .../boot/dts/freescale/imx95-var-dart.dtsi    | 425 ++++++++++++++++++
 1 file changed, 425 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx95-var-dart.dtsi

diff --git a/arch/arm64/boot/dts/freescale/imx95-var-dart.dtsi b/arch/arm64/boot/dts/freescale/imx95-var-dart.dtsi
new file mode 100644
index 000000000000..588b283a4742
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx95-var-dart.dtsi
@@ -0,0 +1,425 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Common dtsi for Variscite DART-MX95
+ *
+ * Link: https://variscite.com/system-on-module-som/i-mx-9/i-mx-95/dart-mx95/
+ *
+ * Copyright (C) 2025 Variscite Ltd. - https://www.variscite.com/
+ *
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/usb/pd.h>
+#include "imx95.dtsi"
+
+/ {
+	model = "Variscite DART-MX95 Module";
+	compatible = "variscite,var-dart-mx95", "fsl,imx95";
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x0 0x80000000 0 0x80000000>;
+	};
+
+	reg_1p8v: regulator-1p8v {
+		compatible = "regulator-fixed";
+		regulator-max-microvolt = <1800000>;
+		regulator-min-microvolt = <1800000>;
+		regulator-name = "+V1.8_SW";
+	};
+
+	reg_3p3v: regulator-3p3v {
+		compatible = "regulator-fixed";
+		regulator-max-microvolt = <3300000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-name = "+V3.3_SW";
+	};
+
+	reg_vref_1v8: regulator-adc-vref {
+		compatible = "regulator-fixed";
+		regulator-name = "vref_1v8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+	};
+
+	reg_audio: regulator-audio-vdd {
+		compatible = "regulator-fixed";
+		regulator-name = "wm8904_supply";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	reserved-memory {
+		ranges;
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		linux_cma: linux,cma {
+			compatible = "shared-dma-pool";
+			alloc-ranges = <0 0x80000000 0 0x7F000000>;
+			reusable;
+			size = <0 0x3c000000>;
+			linux,cma-default;
+		};
+	};
+
+	sound-wm8904 {
+		compatible = "simple-audio-card";
+		simple-audio-card,bitclock-master = <&codec_dai>;
+		simple-audio-card,format = "i2s";
+		simple-audio-card,frame-master = <&codec_dai>;
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,name = "wm8904-audio";
+		simple-audio-card,routing =
+			"Headphone Jack", "HPOUTL",
+			"Headphone Jack", "HPOUTR",
+			"IN2L", "Line In Jack",
+			"IN2R", "Line In Jack",
+			"IN1L", "Microphone Jack",
+			"IN1R", "Microphone Jack";
+		simple-audio-card,widgets =
+			"Microphone", "Microphone Jack",
+			"Headphone", "Headphone Jack",
+			"Line", "Line In Jack";
+
+		codec_dai: simple-audio-card,codec {
+			sound-dai = <&wm8904>;
+		};
+
+		simple-audio-card,cpu {
+			sound-dai = <&sai3>;
+		};
+	};
+
+	wifi_pwrseq: wifi-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		post-power-on-delay-ms = <100>;
+		power-off-delay-us = <10000>;
+		reset-gpios = <&gpio4 29 GPIO_ACTIVE_LOW>, /* WIFI_RESET */
+			      <&gpio2 27 GPIO_ACTIVE_LOW>; /* WIFI_PWR_EN */
+	};
+};
+
+&adc1 {
+	vref-supply = <&reg_vref_1v8>;
+	status = "okay";
+};
+
+&enetc_port0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enetc0>;
+	phy-handle = <&ethphy0>;
+	/*
+	 * The required RGMII TX and RX 2ns delays are implemented directly
+	 * in hardware via passive delay elements on the SOM PCB.
+	 * No delay configuration is needed in software via PHY driver.
+	 */
+	phy-mode = "rgmii";
+	status = "okay";
+};
+
+&lpi2c8 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default","gpio","sleep";
+	pinctrl-0 = <&pinctrl_lpi2c8>;
+	pinctrl-1 = <&pinctrl_lpi2c8_gpio>;
+	pinctrl-2 = <&pinctrl_lpi2c8_gpio>;
+	scl-gpios = <&gpio2 10 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio2 11 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+
+	wm8904: audio-codec@1a {
+		compatible = "wlf,wm8904";
+		reg = <0x1a>;
+		#sound-dai-cells = <0>;
+		clocks = <&scmi_clk IMX95_CLK_SAI3>;
+		clock-names = "mclk";
+		AVDD-supply = <&reg_audio>;
+		CPVDD-supply = <&reg_audio>;
+		DBVDD-supply = <&reg_audio>;
+		DCVDD-supply = <&reg_audio>;
+		MICVDD-supply = <&reg_audio>;
+		wlf,drc-cfg-names = "default", "peaklimiter", "tradition",
+				    "soft", "music";
+		/*
+		 * Config registers per name, respectively:
+		 * KNEE_IP = 0,   KNEE_OP = 0,     HI_COMP = 1,   LO_COMP = 1
+		 * KNEE_IP = -24, KNEE_OP = -6,    HI_COMP = 1/4, LO_COMP = 1
+		 * KNEE_IP = -42, KNEE_OP = -3,    HI_COMP = 0,   LO_COMP = 1
+		 * KNEE_IP = -45, KNEE_OP = -9,    HI_COMP = 1/8, LO_COMP = 1
+		 * KNEE_IP = -30, KNEE_OP = -10.5, HI_COMP = 1/4, LO_COMP = 1
+		 */
+		wlf,drc-cfg-regs = /bits/ 16 <0x01af 0x3248 0x0000 0x0000>,
+				   /bits/ 16 <0x04af 0x324b 0x0010 0x0408>,
+				   /bits/ 16 <0x04af 0x324b 0x0028 0x0704>,
+				   /bits/ 16 <0x04af 0x324b 0x0018 0x078c>,
+				   /bits/ 16 <0x04af 0x324b 0x0010 0x050e>;
+		/* GPIO1 = DMIC_CLK, don't touch others */
+		wlf,gpio-cfg = <0x0018>, <0xffff>, <0xffff>, <0xffff>;
+	};
+};
+
+/* BT */
+&lpuart5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart5>, <&pinctrl_bt>;
+	status = "okay";
+
+	bluetooth {
+		compatible = "nxp,88w8987-bt";
+	};
+};
+
+&mu7 {
+	status = "okay";
+};
+
+&netc_emdio {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_emdio>, <&pinctrl_phy0res>;
+	status = "okay";
+
+	ethphy0: ethernet-phy@0 {
+		reg = <0>;
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reset-gpios = <&gpio5 16 GPIO_ACTIVE_LOW>;
+		reset-assert-us = <10000>;
+		reset-deassert-us = <100000>;
+
+		leds {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			led@0 {
+				reg = <0>;
+				color = <LED_COLOR_ID_YELLOW>;
+				function = LED_FUNCTION_LAN;
+				linux,default-trigger = "netdev";
+			};
+
+			led@1 {
+				reg = <1>;
+				color = <LED_COLOR_ID_GREEN>;
+				function = LED_FUNCTION_LAN;
+				linux,default-trigger = "netdev";
+			};
+		};
+	};
+};
+
+&netc_timer {
+	status = "okay";
+};
+
+&sai3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sai3>;
+	assigned-clocks = <&scmi_clk IMX95_CLK_AUDIOPLL1_VCO>,
+			  <&scmi_clk IMX95_CLK_AUDIOPLL2_VCO>,
+			  <&scmi_clk IMX95_CLK_AUDIOPLL1>,
+			  <&scmi_clk IMX95_CLK_AUDIOPLL2>,
+			  <&scmi_clk IMX95_CLK_SAI3>;
+	assigned-clock-parents = <0>, <0>, <0>, <0>,
+				 <&scmi_clk IMX95_CLK_AUDIOPLL1>;
+	assigned-clock-rates = <3932160000>,
+			       <3612672000>, <393216000>,
+			       <361267200>, <12288000>;
+	#sound-dai-cells = <0>;
+	fsl,sai-mclk-direction-output;
+	status = "okay";
+};
+
+/* eMMC */
+&usdhc1 {
+	pinctrl-names = "default","state_100mhz","state_200mhz","sleep";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc1_200mhz>;
+	pinctrl-3 = <&pinctrl_usdhc1>;
+	bus-width = <8>;
+	non-removable;
+	no-sdio;
+	no-sd;
+	status = "okay";
+};
+
+/* WiFi */
+&usdhc3 {
+	pinctrl-names = "default","state_100mhz","state_200mhz","sleep";
+	pinctrl-0 = <&pinctrl_usdhc3>, <&pinctrl_usdhc3_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>, <&pinctrl_usdhc3_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>, <&pinctrl_usdhc3_gpio>;
+	pinctrl-3 = <&pinctrl_usdhc3>, <&pinctrl_usdhc3_gpio>;
+	mmc-pwrseq = <&wifi_pwrseq>;
+	bus-width = <4>;
+	non-removable;
+	wakeup-source;
+	keep-power-in-suspend;
+	status = "okay";
+};
+
+&wdog3 {
+	fsl,ext-reset-output;
+	status = "okay";
+};
+
+&scmi_iomuxc {
+	pinctrl_bt: btgrp {
+		fsl,pins = <
+			IMX95_PAD_CCM_CLKO3__GPIO4_IO_BIT28				0x31e
+		>;
+	};
+
+	pinctrl_emdio: emdiogrp {
+		fsl,pins = <
+			IMX95_PAD_ENET1_MDC__NETCMIX_TOP_NETC_MDC			0x57e
+			IMX95_PAD_ENET1_MDIO__NETCMIX_TOP_NETC_MDIO			0x97e
+		>;
+	};
+
+	pinctrl_enetc0: enetc0grp {
+		fsl,pins = <
+			IMX95_PAD_ENET1_TD3__NETCMIX_TOP_ETH0_RGMII_TD3			0x57e
+			IMX95_PAD_ENET1_TD2__NETCMIX_TOP_ETH0_RGMII_TD2			0x57e
+			IMX95_PAD_ENET1_TD1__NETCMIX_TOP_ETH0_RGMII_TD1			0x57e
+			IMX95_PAD_ENET1_TD0__NETCMIX_TOP_ETH0_RGMII_TD0			0x57e
+			IMX95_PAD_ENET1_TX_CTL__NETCMIX_TOP_ETH0_RGMII_TX_CTL		0x57e
+			IMX95_PAD_ENET1_TXC__NETCMIX_TOP_ETH0_RGMII_TX_CLK		0x58e
+			IMX95_PAD_ENET1_RX_CTL__NETCMIX_TOP_ETH0_RGMII_RX_CTL		0x57e
+			IMX95_PAD_ENET1_RXC__NETCMIX_TOP_ETH0_RGMII_RX_CLK		0x58e
+			IMX95_PAD_ENET1_RD0__NETCMIX_TOP_ETH0_RGMII_RD0			0x57e
+			IMX95_PAD_ENET1_RD1__NETCMIX_TOP_ETH0_RGMII_RD1			0x57e
+			IMX95_PAD_ENET1_RD2__NETCMIX_TOP_ETH0_RGMII_RD2			0x57e
+			IMX95_PAD_ENET1_RD3__NETCMIX_TOP_ETH0_RGMII_RD3			0x57e
+		>;
+	};
+
+	pinctrl_lpi2c8: lpi2c8grp {
+		fsl,pins = <
+			IMX95_PAD_GPIO_IO10__LPI2C8_SDA					0x40000b9e
+			IMX95_PAD_GPIO_IO11__LPI2C8_SCL					0x40000b9e
+		>;
+	};
+
+	pinctrl_lpi2c8_gpio: lpi2c8gpiogrp {
+		fsl,pins = <
+			IMX95_PAD_GPIO_IO10__GPIO2_IO_BIT10				0x31e
+			IMX95_PAD_GPIO_IO11__GPIO2_IO_BIT11				0x31e
+		>;
+	};
+
+	pinctrl_phy0res: phy0resgrp {
+		fsl,pins = <
+			IMX95_PAD_GPIO_IO36__GPIO5_IO_BIT16				0x31e
+		>;
+	};
+
+	pinctrl_sai3: sai3grp {
+		fsl,pins = <
+			IMX95_PAD_GPIO_IO17__SAI3_MCLK					0x31e
+			IMX95_PAD_GPIO_IO16__SAI3_TX_BCLK				0x31e
+			IMX95_PAD_GPIO_IO26__SAI3_TX_SYNC				0x31e
+			IMX95_PAD_GPIO_IO20__SAI3_RX_DATA_BIT0				0x31e
+			IMX95_PAD_GPIO_IO21__SAI3_TX_DATA_BIT0				0x31e
+		>;
+	};
+
+	pinctrl_uart5: uart5grp {
+		fsl,pins = <
+			IMX95_PAD_GPIO_IO00__LPUART5_TX					0x31e
+			IMX95_PAD_GPIO_IO01__LPUART5_RX					0x31e
+			IMX95_PAD_GPIO_IO02__LPUART5_CTS_B				0x31e
+			IMX95_PAD_GPIO_IO03__LPUART5_RTS_B				0x31e
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			IMX95_PAD_SD1_CLK__USDHC1_CLK					0x158e
+			IMX95_PAD_SD1_CMD__USDHC1_CMD					0x138e
+			IMX95_PAD_SD1_DATA0__USDHC1_DATA0				0x138e
+			IMX95_PAD_SD1_DATA1__USDHC1_DATA1				0x138e
+			IMX95_PAD_SD1_DATA2__USDHC1_DATA2				0x138e
+			IMX95_PAD_SD1_DATA3__USDHC1_DATA3				0x138e
+			IMX95_PAD_SD1_DATA4__USDHC1_DATA4				0x138e
+			IMX95_PAD_SD1_DATA5__USDHC1_DATA5				0x138e
+			IMX95_PAD_SD1_DATA6__USDHC1_DATA6				0x138e
+			IMX95_PAD_SD1_DATA7__USDHC1_DATA7				0x138e
+			IMX95_PAD_SD1_STROBE__USDHC1_STROBE				0x158e
+		>;
+	};
+
+	pinctrl_usdhc1_100mhz: usdhc1-100mhzgrp {
+		fsl,pins = <
+			IMX95_PAD_SD1_CLK__USDHC1_CLK					0x158e
+			IMX95_PAD_SD1_CMD__USDHC1_CMD					0x138e
+			IMX95_PAD_SD1_DATA0__USDHC1_DATA0				0x138e
+			IMX95_PAD_SD1_DATA1__USDHC1_DATA1				0x138e
+			IMX95_PAD_SD1_DATA2__USDHC1_DATA2				0x138e
+			IMX95_PAD_SD1_DATA3__USDHC1_DATA3				0x138e
+			IMX95_PAD_SD1_DATA4__USDHC1_DATA4				0x138e
+			IMX95_PAD_SD1_DATA5__USDHC1_DATA5				0x138e
+			IMX95_PAD_SD1_DATA6__USDHC1_DATA6				0x138e
+			IMX95_PAD_SD1_DATA7__USDHC1_DATA7				0x138e
+			IMX95_PAD_SD1_STROBE__USDHC1_STROBE				0x158e
+		>;
+	};
+
+	pinctrl_usdhc1_200mhz: usdhc1-200mhzgrp {
+		fsl,pins = <
+			IMX95_PAD_SD1_CLK__USDHC1_CLK					0x15fe
+			IMX95_PAD_SD1_CMD__USDHC1_CMD					0x13fe
+			IMX95_PAD_SD1_DATA0__USDHC1_DATA0				0x13fe
+			IMX95_PAD_SD1_DATA1__USDHC1_DATA1				0x13fe
+			IMX95_PAD_SD1_DATA2__USDHC1_DATA2				0x13fe
+			IMX95_PAD_SD1_DATA3__USDHC1_DATA3				0x13fe
+			IMX95_PAD_SD1_DATA4__USDHC1_DATA4				0x13fe
+			IMX95_PAD_SD1_DATA5__USDHC1_DATA5				0x13fe
+			IMX95_PAD_SD1_DATA6__USDHC1_DATA6				0x13fe
+			IMX95_PAD_SD1_DATA7__USDHC1_DATA7				0x13fe
+			IMX95_PAD_SD1_STROBE__USDHC1_STROBE				0x15fe
+		>;
+	};
+
+	pinctrl_usdhc3_gpio: usdhc3gpiogrp {
+		fsl,pins = <
+			IMX95_PAD_GPIO_IO27__GPIO2_IO_BIT27				0x31e
+			IMX95_PAD_CCM_CLKO4__GPIO4_IO_BIT29				0x31e
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			IMX95_PAD_SD3_CLK__USDHC3_CLK					0x158e
+			IMX95_PAD_SD3_CMD__USDHC3_CMD					0x138e
+			IMX95_PAD_SD3_DATA0__USDHC3_DATA0				0x138e
+			IMX95_PAD_SD3_DATA1__USDHC3_DATA1				0x138e
+			IMX95_PAD_SD3_DATA2__USDHC3_DATA2				0x138e
+			IMX95_PAD_SD3_DATA3__USDHC3_DATA3				0x138e
+		>;
+	};
+
+	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
+		fsl,pins = <
+			IMX95_PAD_SD3_CLK__USDHC3_CLK					0x158e
+			IMX95_PAD_SD3_CMD__USDHC3_CMD					0x138e
+			IMX95_PAD_SD3_DATA0__USDHC3_DATA0				0x138e
+			IMX95_PAD_SD3_DATA1__USDHC3_DATA1				0x138e
+			IMX95_PAD_SD3_DATA2__USDHC3_DATA2				0x138e
+			IMX95_PAD_SD3_DATA3__USDHC3_DATA3				0x138e
+		>;
+	};
+
+	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
+		fsl,pins = <
+			IMX95_PAD_SD3_CLK__USDHC3_CLK					0x15fe
+			IMX95_PAD_SD3_CMD__USDHC3_CMD					0x13fe
+			IMX95_PAD_SD3_DATA0__USDHC3_DATA0				0x13fe
+			IMX95_PAD_SD3_DATA1__USDHC3_DATA1				0x13fe
+			IMX95_PAD_SD3_DATA2__USDHC3_DATA2				0x13fe
+			IMX95_PAD_SD3_DATA3__USDHC3_DATA3				0x13fe
+		>;
+	};
+};
-- 
2.47.3


