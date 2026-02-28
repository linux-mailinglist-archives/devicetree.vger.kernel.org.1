Return-Path: <devicetree+bounces-269623-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMSYNBpWo2nW/AQAu9opvQ
	(envelope-from <devicetree+bounces-269623-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 21:54:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D95F1C89C8
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 21:54:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5EBA73046AA8
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 20:54:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D133B3093DF;
	Sat, 28 Feb 2026 20:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b="ebkRQSQ0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f231.google.com (mail-yw1-f231.google.com [209.85.128.231])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FAD2FFDD6
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 20:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.231
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772312065; cv=none; b=K2dUkEjOcta0IaOl/0JXq1+ZDaDkETENFkWkVCfEuIZyH9JQLJ4LGwU0H0LLMEB7QTSyLBludhS0s5+siMG5NNoyDhkGUe5G6eJDWdX7U5gubKblEHayQ+PFbdvGSwmN8KTjvWua3Gd7Y1oSeuQdRlECpE5bSMjrgVVtNlTaPIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772312065; c=relaxed/simple;
	bh=l2F65hctVvbLUgSBsy2T20gFUKOLqF0a3g4h/by3QQA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Tk3Aijap78BE1F/jqGUHZjDJCSuVQX8eguo8J0ZNsJfuqguf8XtloGn1SxdVpySpPTU4gy2y2kTbTZjR/4XkbU71nKdr3jUQiHuukmrMY5YQi9KSA0U16MYmsvMTw4on+Hei45rLcKUHJRBMhqhfigVgym4ls0/h0ijlpEy/l+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ausil.us; spf=pass smtp.mailfrom=ausil.us; dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b=ebkRQSQ0; arc=none smtp.client-ip=209.85.128.231
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ausil.us
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ausil.us
Received: by mail-yw1-f231.google.com with SMTP id 00721157ae682-79868cde1eeso33527277b3.2
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 12:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1772312063; x=1772916863; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vc/mKMQHWBKWISLIX5zCISp9R0i/eqeNN9jxcO1amd4=;
        b=ebkRQSQ0+8f9owVUVAUZUUP8L+Gq1AxSD4r7LcZiAp/tezrlQFQxhVyvcvviKBxxGu
         tapMthaEQQw2JkgkmI97GFN/+1xPgX+oAXWWiibG0rbAfZruWHQjX8Ehi4nebwFa9rrU
         3E6P5p2m+N6foOfxVjwAEEGCTD9to4OftT9Pgx6/cuudzHx/QedV50XzvwWxOBGvGIt1
         tE7ESQLB88G086jkb9K/OAyua/Fa1qXKomX0PJaWIC6D/7G+79Dj3IFfd3QjAQq95jgN
         4qxa25Cob927xcxcUbdHcQcf4sBURHdrkX69gRlkUNaIP3dPc7ts5n80+UN/D8ruTHai
         37kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772312063; x=1772916863;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vc/mKMQHWBKWISLIX5zCISp9R0i/eqeNN9jxcO1amd4=;
        b=V3G1+2BBt5x1S7TK6nSGJc6dBTcJSjwKel31NDtQojwhLEnm26NP3T+mbowxVtVAul
         LmqOf3IDElvPf9AGHW17oy1+mpNE8ZkFlTW7UHkjXQOHOFRqNr+POYFmS1ztRGUyQZCJ
         geeWqhJVxSY0otgrf9v3ImxCfVgM4CeWbfTHrZBv7bWwFQdxU6ekrRZerRhZTLW9KbnH
         RJ5km8OZtzkbilJIrmdWG0Omv0OeGmwi56ln1cmfn2uwnWaBFNUlA1z+QuCbDNWbmIGE
         oaVNmCu2HBYjslmI0bz6ggvaXjBrdm10ayS5gzirSFPA2aWVME+f2NHWJltAPYosYlri
         XtbQ==
X-Forwarded-Encrypted: i=1; AJvYcCUclzDRJU5TPtwQ0DFPTp860KoEtEaqkPx64c7ebr5+6Dy6TPZKTuSUdGl9Zc4MnBzthLm7PzEpp2rq@vger.kernel.org
X-Gm-Message-State: AOJu0YzygoSpNFTeD8q/7KvTzIes+h3QvhHm1+KwR9Nipl7QyXZQfULa
	+d0nPZsaUiwNDIsBjEQQ7akWfolWmDXwySJzqvegvOL5OkSd6H47Ftr5wHS9zN8QXgXbJffyHv8
	BmUlSKusbx1LGtBIgTIjrOFZyyzt7DIQxG8OL
X-Gm-Gg: ATEYQzzhb66Wc38izsXWAPdd2upQxuGrFWsqY6Ki3mm+hA7R6VtYovOWKN9+g1hrok4
	7vq1egd9oyRQitTZ1B6TkgW0sN8/4a0XJvGxupPSsKVX5GoYghMzYlwCssVsogLVhzu14Y2KJs3
	Jy2FwRYcq/d+8X/DwskG7HfMBY96D11hDwIdvQ8Qqxo2QXDThi1Ug1wdfRd+hFeBA/bGtMcirnc
	5w52SUojyaP0mhCfX8x/Gjkgvm+0SAwDGf+I0FpS3eTkT2FJjnGPhM7+4S0gg2fbK3Ejb+GnUxp
	6AjQ819q9+DdUf+rtlktgTjeUq709Pv0/ANoxWFykX2AeFmF3hs1noxAIWt+/krK7xhy3IGGO/3
	nTXOPLgwFjHE/8+yBjIVsFh5cVacKnz3Fra6EG+rykqZV
X-Received: by 2002:a05:690c:480a:b0:794:f36a:c97 with SMTP id 00721157ae682-798855ecdfdmr64726337b3.55.1772312063114;
        Sat, 28 Feb 2026 12:54:23 -0800 (PST)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 00721157ae682-79876bf333esm10213567b3.16.2026.02.28.12.54.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 12:54:23 -0800 (PST)
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
Subject: [PATCH 2/2] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
Date: Sat, 28 Feb 2026 14:54:17 -0600
Message-ID: <20260228205418.2944620-3-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260228205418.2944620-1-dennis@ausil.us>
References: <20260228205418.2944620-1-dennis@ausil.us>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[ausil.us:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269623-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_BAD_POLICY(0.00)[ausil.us : Multiple policies defined in DNS];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[radxa.com,chainsx.cn,kwiboo.se,rock-chips.com,gmail.com,rootcommit.com,cherry.de,lunn.ch,vger.kernel.org,lists.infradead.org,ausil.us];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[dennis@ausil.us,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.11:email];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[ausil.us:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.1:email,ausil.us:mid,ausil.us:dkim,ausil.us:email]
X-Rspamd-Queue-Id: 4D95F1C89C8
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


