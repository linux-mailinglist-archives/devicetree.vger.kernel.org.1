Return-Path: <devicetree+bounces-270839-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOrjNNWfp2nTigAAu9opvQ
	(envelope-from <devicetree+bounces-270839-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 03:58:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3045C1FA1FC
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 03:58:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 167003116714
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 02:55:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8BCA3537E9;
	Wed,  4 Mar 2026 02:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b="ROjTUp5q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f228.google.com (mail-pf1-f228.google.com [209.85.210.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BC23542D4
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 02:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772592934; cv=none; b=OWFRej1qEVXgaxUJGhDVdudUAWY1RH+vGBtuR9UmBn2nuarwZo0rgi+2SOCgEsUkL3HQiF2QfxOyQKD50WJP+lq9zt25xbkNAopM+DW3mE6qcmWE8l5JiMOfsyVY+AHdMIB4OQ2UxzsX7WZGeWUIchp4ZsUmyGnnFpzHRMaLiDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772592934; c=relaxed/simple;
	bh=l2F65hctVvbLUgSBsy2T20gFUKOLqF0a3g4h/by3QQA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=R9UeWjFqQihR1pxDkImFAH2/KhENrrbaosB4aaZmT37WscxO4DXx9z7jx8Og5kGowEOsnRUpFZSkQ1XGQBda1A0ixH9Lrot1Jg5eJeg8Ec8BzeyHgef1ydXlqgiolZCys2r1S26NmxVtZIoaAkDXZZ16abbC0PvOWwBU1nSZPQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ausil.us; spf=pass smtp.mailfrom=ausil.us; dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b=ROjTUp5q; arc=none smtp.client-ip=209.85.210.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ausil.us
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ausil.us
Received: by mail-pf1-f228.google.com with SMTP id d2e1a72fcca58-829756f3ee9so3263b3a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 18:55:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1772592933; x=1773197733; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vc/mKMQHWBKWISLIX5zCISp9R0i/eqeNN9jxcO1amd4=;
        b=ROjTUp5qsEofZaBG0Fxlr5P3BXbR6GTFufLQMDjNdziZG88KRUJbBx3SOsCt16scqS
         o+2Fu8VcTOAu4R3wfZhvubTbvg2r4xtG1SkmQPV3oJMu7KFPaVpuez2WIuZeMSQ1QY36
         U+7EU1Or9/BZuUB82Ij2RWSuN9F/ksu0N1822Oo+YAv3drakb81reSW/UFtmac0Kn4kM
         HEfvFSS3144Ac0PqN/kRLRNvZ/BC0iEsZGGsbYUiiKd7plI+u73sRjurMLQEkYArZlmw
         1PxcnxT7UGMYGbaU4en4cxxPf73by0lMa1BVpiCU7NVPqsSUY6+dK/E7otiJo1Zszxpf
         zu7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772592933; x=1773197733;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vc/mKMQHWBKWISLIX5zCISp9R0i/eqeNN9jxcO1amd4=;
        b=X4REWkh2g1VXShIQIroE/AWLo4N7HEb98Kcg9JOVoaJKle/cBLwtpWmN/Kc1QS2w7k
         hBNTxhm8ibouCcNMT4J/XpRw10tmqKNoSezDjvF9JXd+gN/TGC+vXnRO9MWe8NlAxMjm
         KsLrvdJe4U4XUs53OH2teqtOtc1wNEr16SQeDvqtGK2IxupncM8jcDa1cEUA4T6HNUyn
         b4ZX+8SNKF5WLO5jtYtNYROtD1jPkOSDgkSu5O6Z2Vn1GmAc4FACAdmR52J4vXA3heCm
         GmjtE26UQobAdcnnalo8wvC34zZbULUwPLHYx1N4XpDZiMaTzQzbm+XFLG3mShwV/ojV
         QbiQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHUnuj1aC8BT9KvAUnqoeacgcjBi/CJQJdxD7xX8U31gydHBIQqSIxY54TCASZZtvbfnj3bPEu6hnc@vger.kernel.org
X-Gm-Message-State: AOJu0YyupjPForwscknh1PHH38favvVDoTpVJrsLtcBkx1IhJ5nbMg7D
	1BrDsyDRCs3V2j3/Eypl8RKWJmfKZ2FnoBawcQC8FbUh8ofixJC0RGKI70rOh45KEj/4uUDz7gs
	dP7mHoM4Jf7fz9sLgBt679aqT60YppIdYZqxB
X-Gm-Gg: ATEYQzxbS+q3PwKmXi6Yne83naMlQMCeG069nGEYjryYMKpx1S2s5fAU04gHOW3WA19
	tdYJ/igwbE0nIaxqEOnXbABMMj/PofQ0tuRIuRviZx8fd5LAhXZJMkGdHc3ymBBXsiGUY2412cM
	9EPEpwbVM/dyYjMmSozaIzsckq1TbZ+ua4CfYMIhTC/zWeZ/a15GJmQ9iAljZxt8OFpg+hBeTXA
	sTFveZK3C4aStT4qKWVFpgaXbbDAFeMu4BAHocx8KYAs9IXcNsjobbHsG0V9Mj/Qc30BBEpN6Oj
	+eDUuFbf7KN8VIo8j7+4R6mGJ3aGZ2zwGqgHq8J2xh3uLz2AQA3USa0tpv1pI4I/WT1YT3qTQv1
	/r81WVJ+JyjjirtICaHMbrp3F8Vpb57yGgJ6njXedlwFN
X-Received: by 2002:a05:6a21:7d06:b0:395:101e:9b40 with SMTP id adf61e73a8af0-3982dda4262mr500384637.1.1772592932621;
        Tue, 03 Mar 2026 18:55:32 -0800 (PST)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 41be03b00d2f7-c70fa7d59b3sm1374096a12.7.2026.03.03.18.55.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 18:55:32 -0800 (PST)
X-Relaying-Domain: ausil.us
From: dennis@ausil.us
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: FUKAUMI Naoki <naoki@radxa.com>,
	Hsun Lai <i@chainsx.cn>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	John Clark <inindev@gmail.com>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Andrew Lunn <andrew@lunn.ch>,
	Alexey Charkov <alchark@gmail.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dennis Gilmore <dennis@ausil.us>
Subject: [PATCH V2 3/3] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
Date: Tue,  3 Mar 2026 20:55:20 -0600
Message-ID: <20260304025521.210377-4-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260304025521.210377-1-dennis@ausil.us>
References: <20260304025521.210377-1-dennis@ausil.us>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 3045C1FA1FC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ausil.us:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270839-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[dennis@ausil.us,devicetree@vger.kernel.org];
	DMARC_BAD_POLICY(0.00)[ausil.us : Multiple policies defined in DNS];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[radxa.com,chainsx.cn,kwiboo.se,rock-chips.com,gmail.com,rootcommit.com,cherry.de,lunn.ch,vger.kernel.org,lists.infradead.org,ausil.us];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[ausil.us:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.0.1:email,ausil.us:dkim,ausil.us:email,ausil.us:mid,0.0.0.11:email]
X-Rspamd-Action: no action

From: Dennis Gilmore <dennis@ausil.us>

Add device tree for the Xunlong Orange Pi 5 Pro (RK3588S). The Pro
differs from the base Orange Pi 5 in the following ways:

- No SPI NOR flash; eMMC module slot instead, you can optionally solder
  a SPI NOR fin place and turn off the eMMC
- PCIe-attached NIC (pcie2x1l1) replaces the GMAC1 ethernet
- PCIe NVMe slot (pcie2x1l2)
- AP6256 WiFi (BCM43456) via SDIO with mmc-pwrseq
- BCM4345C5 Bluetooth via uart9 with full RTS/CTS
- Two-colour (blue/green) GPIO LED using modern color/function binding
- audio is wired up differently

Vendors description and links to schematics available:
http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/details/Orange-Pi-5-Pro.html

Signed-off-by: Dennis Gilmore <dennis@ausil.us>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588s-orangepi-5-pro.dts   | 376 ++++++++++++++++++
 2 files changed, 377 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 4d384f153c13..c99dca2ae9e7 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -214,6 +214,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-odroid-m2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5b.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5-pro.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-cm5-base.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-radxa-cm5-io.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-roc-pc.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts
new file mode 100644
index 000000000000..d656328c906d
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts
@@ -0,0 +1,376 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3588s-orangepi-5.dtsi"
+
+/ {
+	model = "Xunlong Orange Pi 5 Pro";
+	compatible = "xunlong,orangepi-5-pro", "rockchip,rk3588s";
+
+	aliases {
+		/delete-property/ ethernet0;
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc;
+		mmc2 = &sdio;
+	};
+
+	/* Pro uses gpio-leds instead; pwm0 LED is not wired up */
+	/delete-node/ pwm-leds;
+
+	/*
+	 * Pro uses i2s2 (i2s2m1 mux) for audio, not i2s1. Recreate the sound
+	 * card node pointing at i2s2_2ch instead.
+	 */
+	/delete-node/ analog-sound;
+
+	analog-sound {
+		compatible = "simple-audio-card";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hp_detect>;
+		simple-audio-card,bitclock-master = <&masterdai>;
+		simple-audio-card,format = "i2s";
+		simple-audio-card,frame-master = <&masterdai>;
+		simple-audio-card,hp-det-gpios = <&gpio1 RK_PD5 GPIO_ACTIVE_HIGH>;
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,name = "rockchip,es8388";
+		simple-audio-card,routing =
+			"Headphones", "LOUT1",
+			"Headphones", "ROUT1",
+			"LINPUT1", "Microphone Jack",
+			"RINPUT1", "Microphone Jack",
+			"LINPUT2", "Onboard Microphone",
+			"RINPUT2", "Onboard Microphone";
+		simple-audio-card,widgets =
+			"Microphone", "Microphone Jack",
+			"Microphone", "Onboard Microphone",
+			"Headphone", "Headphones";
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s2_2ch>;
+		};
+
+		masterdai: simple-audio-card,codec {
+			sound-dai = <&es8388>;
+			system-clock-frequency = <12288000>;
+		};
+	};
+
+	fan: pwm-fan {
+		compatible = "pwm-fan";
+		#cooling-cells = <2>;
+		cooling-levels = <0 50 100 150 200 255>;
+		fan-supply = <&vcc5v0_sys>;
+		pwms = <&pwm2 0 20000000 0>;
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&leds_rgb>;
+
+		blue-led {
+			color = <LED_COLOR_ID_BLUE>;
+			function = LED_FUNCTION_STATUS;
+			gpios = <&gpio1 RK_PC6 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+
+		green-led {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_ACTIVITY;
+			gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "mmc0";
+		};
+	};
+
+	vcc5v0_otg: regulator-vcc5v0-otg {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_otg_en>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-max-microvolt = <5000000>;
+		regulator-min-microvolt = <5000000>;
+		regulator-name = "vcc5v0_otg";
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&hym8563>;
+		clock-names = "ext_clock";
+		post-power-on-delay-ms = <200>;
+		reset-gpios = <&gpio0 RK_PD0 GPIO_ACTIVE_LOW>;
+	};
+
+	vcc3v3_pcie20: regulator-vcc3v3-pcie20 {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio3 RK_PB7 GPIO_ACTIVE_HIGH>;
+		regulator-boot-on;
+		regulator-max-microvolt = <3300000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-name = "vcc3v3_pcie20";
+		startup-delay-us = <50000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc3v3_pcie_eth: regulator-vcc3v3-pcie-eth {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-max-microvolt = <3300000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-name = "vcc3v3_pcie_eth";
+		vin-supply = <&vcc5v0_sys>;
+	};
+};
+
+/* disable gmac1 as the pro has a PCIe attached NIC */
+&gmac1 {
+	status = "disabled";
+};
+
+/* 40-pin header pins 3/5 */
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c1m4_xfer>;
+	status = "okay";
+};
+
+/*
+ * Pro routes audio codec via i2c3 (not i2c6) and i2s2m1 (not i2s1m0).
+ * Delete the inherited es8388 node from i2c6 and redeclare it here.
+ */
+/delete-node/ &es8388;
+
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c3m0_xfer>;
+	status = "okay";
+
+	es8388: audio-codec@11 {
+		compatible = "everest,es8388", "everest,es8328";
+		reg = <0x11>;
+		#sound-dai-cells = <0>;
+		AVDD-supply = <&vcc_3v3_s0>;
+		DVDD-supply = <&vcc_1v8_s0>;
+		HPVDD-supply = <&vcc_3v3_s0>;
+		PVDD-supply = <&vcc_3v3_s0>;
+		assigned-clock-rates = <12288000>;
+		assigned-clocks = <&cru I2S2_2CH_MCLKOUT>;
+		clocks = <&cru I2S2_2CH_MCLKOUT>;
+	};
+};
+
+/* 40-pin header pins 27/28 */
+&i2c4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c4m3_xfer>;
+	status = "okay";
+};
+
+/*
+ * i2s1_8ch uses i2s1m0 which occupies GPIO4_PA0 (CLKREQ#) and GPIO4_PA1
+ * (WAKE#) needed for the NVMe M.2 slot. Disable it; audio is on i2s2_2ch.
+ */
+&i2s1_8ch {
+	status = "disabled";
+};
+
+/* Audio codec on i2s2, m1 mux; add mclk pin to the base pinctrl */
+&i2s2_2ch {
+	pinctrl-0 = <&i2s2m1_lrck &i2s2m1_mclk &i2s2m1_sclk
+		     &i2s2m1_sdi &i2s2m1_sdo>;
+	status = "okay";
+};
+
+&package_thermal {
+	polling-delay = <1000>;
+
+	cooling-maps {
+		map0 {
+			trip = <&package_fan0>;
+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+		};
+
+		map1 {
+			trip = <&package_fan1>;
+			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
+		};
+	};
+
+	trips {
+		package_fan0: package-fan0 {
+			hysteresis = <2000>;
+			temperature = <55000>;
+			type = "active";
+		};
+
+		package_fan1: package-fan1 {
+			hysteresis = <2000>;
+			temperature = <65000>;
+			type = "active";
+		};
+	};
+};
+
+/* NVMe */
+&pcie2x1l1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie30x1m1_1_clkreqn &pcie30x1m1_1_waken>;
+	reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
+	supports-clkreq;
+	vpcie3v3-supply = <&vcc3v3_pcie_eth>;
+	status = "okay";
+};
+
+/* NIC */
+&pcie2x1l2 {
+	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie20>;
+	status = "okay";
+};
+
+&pinctrl {
+	bluetooth {
+		bt_wake_gpio: bt-wake-pin {
+			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_wake_host_irq: bt-wake-host-irq {
+			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
+	gpio-leds {
+		leds_rgb: leds-rgb {
+			rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>,
+					<1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	usb {
+		vcc5v0_otg_en: vcc5v0-otg-en {
+			rockchip,pins = <0 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	wlan {
+		wifi_host_wake_irq: wifi-host-wake-irq {
+			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+};
+
+/* pwm0 pin conflicts with i2c4 pin 27 Pro */
+&pwm0 {
+	status = "disabled";
+};
+
+&pwm2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm2m1_pins>;
+	status = "okay";
+};
+
+&sdhci {
+	status = "okay";
+};
+
+&sdio {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	disable-wp;
+	keep-power-in-suspend;
+	max-frequency = <150000000>;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	no-mmc;
+	no-sd;
+	non-removable;
+	sd-uhs-sdr104;
+	status = "okay";
+
+	ap6256: wifi@1 {
+		compatible = "brcm,bcm43456-fmac", "brcm,bcm4329-fmac";
+		reg = <1>;
+		interrupt-names = "host-wake";
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA0 IRQ_TYPE_LEVEL_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_host_wake_irq>;
+	};
+};
+
+&uart9 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart9m2_xfer &uart9m2_ctsn &uart9m2_rtsn>;
+	uart-has-rtscts;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm4345c5";
+		clocks = <&hym8563>;
+		clock-names = "lpo";
+		device-wakeup-gpios = <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
+		interrupt-names = "host-wakeup";
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PC5 IRQ_TYPE_LEVEL_HIGH>;
+		max-speed = <1500000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_wake_host_irq &bt_wake_gpio>;
+		shutdown-gpios = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
+		vbat-supply = <&vcc_3v3_s3>;
+		vddio-supply = <&vcc_1v8_s3>;
+	};
+};
+
+/* USB2 OTG PHY for usb_host0_xhci; phy-supply enables VBUS to USB3 Type-A port */
+&u2phy0_otg {
+	phy-supply = <&vcc5v0_otg>;
+};
+
+/* Pro has no FUSB302; the USB-C port is power delivery only */
+/delete-node/ &usbc0;
+
+/*
+ * The Pro's USB-C port is power delivery only: no FUSB302, no data lines,
+ * no alt-mode switching. The parent DTSI enables usbdp_phy0 (status = "okay")
+ * and adds FUSB302 alt-mode/orientation properties; delete those here.
+ *
+ * dp-lane-mux = <0 1>: PHY lanes 0/1 are DP (physically routed to the
+ * LT8711UXD DP→HDMI2 bridge), lanes 2/3 are USB3 SuperSpeed (physically
+ * routed to the USB3 Type-A port P3). Without this property the driver
+ * defaults to USB-only mode and places USB3 on lanes 0/1, which do not
+ * reach the Type-A connector and makes the USB3 port non-functional.
+ */
+&usbdp_phy0 {
+	rockchip,dp-lane-mux = <0 1>;
+	/delete-property/ mode-switch;
+	/delete-property/ orientation-switch;
+	/delete-property/ sbu1-dc-gpios;
+	/delete-property/ sbu2-dc-gpios;
+	/delete-node/ port;
+};
+
+/* USB3 Type-A port*/
+&usb_host0_xhci {
+	dr_mode = "host";
+	/delete-property/ usb-role-switch;
+	status = "okay";
+	/delete-node/ port;
+};
+
+/*
+ * combphy2_psu is shared between usb_host2_xhci (USB3) and pcie2x1l1 (PCIe).
+ * Disable USB3 so the PHY can be used for the NVMe M.2 slot.
+ */
+&usb_host2_xhci {
+	status = "disabled";
+};
-- 
2.53.0


