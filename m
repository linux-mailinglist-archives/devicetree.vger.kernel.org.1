Return-Path: <devicetree+bounces-253262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 63EDAD09045
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 12:51:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AF15F30C80F8
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 11:48:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BE723590AC;
	Fri,  9 Jan 2026 11:48:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="gA5Kk1g1"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286A533C52A;
	Fri,  9 Jan 2026 11:47:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767959285; cv=none; b=HrmypFYK9HgQ2JccwUy/zOO7+zGXpUgUITog4Y70x4yt2ZvskAmHfTTowdnt6gVptLGIAKuabsIr7XX4/icEq/q9/TOkpQV7w8qnforgCgcrOBGczAl8P7+L/GC4mQ/wLRA41yrfc15X7t41GnYV8HuXFmM5DomF0c0wcdwCiEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767959285; c=relaxed/simple;
	bh=BoAjm3UAgrVFXIrQANH5uYYVFLDwg61nJrQ4Bg2iHAg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UwwJrt2CpuQfYMJ9C/xPl7JLtaQF3Ia7e/fS5peYNXbR5h8ftRPGLTiej7y2kSfhwWzPt46ZstlhFTWj2kpsbRI5DKQ1bDBgwvI6UBWnyJ/lBdajO1iadIVp3iAXWlSHUZyZPK7fPxTMXegfzVtje7P5OLhziWcxlgKciRri9U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=gA5Kk1g1; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1767959277;
	bh=BoAjm3UAgrVFXIrQANH5uYYVFLDwg61nJrQ4Bg2iHAg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gA5Kk1g1eUbAUIswNvVkUrN9Yp2Z4+DY3nk/jwHMssft7ZowfugNNDumQdCwa4EVR
	 7x7ZmI9gGWdRGEeZACZ8pMKQPachBz59lCoHWJmcfOuGXo2B1fStyBo6l7HPgrzKuV
	 KA0h1vQW41yZNrPC2NmQChjkII1CzSuxS/3t5xQV2KzqydImP4ZFxYp0zdtcCLF8nK
	 kPVaeMD+sbgMlykbaUeCaSVGkGCEhrc0ZGhnPb98IDmMlUglTcxTL0brFMbSDFfA/E
	 tdVcnbi06gxLR4db3rNVLvJPwRedlKzoun24lOymDYvxfwILG18LXxNPeYfDU8dcSh
	 xgBCSTAENc3hQ==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 20B6217E14FA;
	Fri,  9 Jan 2026 12:47:57 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: linux-mediatek@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	sjoerd@collabora.com,
	hsinyi@chromium.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH 03/11] arm64: dts: mediatek: mt8183-evb: Fix dtbs_check warnings
Date: Fri,  9 Jan 2026 12:47:39 +0100
Message-ID: <20260109114747.37189-4-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260109114747.37189-1-angelogioacchino.delregno@collabora.com>
References: <20260109114747.37189-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change the Murata NCM03WF104 node name from "thermal-sensor" to
"thermistor" (as that's what it is, after all), and change all
of the pinmux main nodes to have a "-pins" suffix to satisfy
devicetree bindings checks.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts | 36 ++++++++++-----------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index f04baea5d6cb..acfdd5fb041f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -38,7 +38,7 @@ scp_mem_reserved: memory@50000000 {
 		};
 	};
 
-	thermal-sensor {
+	thermistor {
 		compatible = "murata,ncp03wf104";
 		pullup-uv = <1800000>;
 		pullup-ohm = <390000>;
@@ -155,7 +155,7 @@ &mt6358_vsram_gpu_reg {
 };
 
 &pio {
-	i2c_pins_0: i2c0 {
+	i2c_pins_0: i2c0-pins {
 		pins_i2c {
 			pinmux = <PINMUX_GPIO82__FUNC_SDA0>,
 				 <PINMUX_GPIO83__FUNC_SCL0>;
@@ -163,7 +163,7 @@ pins_i2c {
 		};
 	};
 
-	i2c_pins_1: i2c1 {
+	i2c_pins_1: i2c1-pins {
 		pins_i2c {
 			pinmux = <PINMUX_GPIO81__FUNC_SDA1>,
 				 <PINMUX_GPIO84__FUNC_SCL1>;
@@ -171,7 +171,7 @@ pins_i2c {
 		};
 	};
 
-	i2c_pins_2: i2c2 {
+	i2c_pins_2: i2c2-pins {
 		pins_i2c {
 			pinmux = <PINMUX_GPIO103__FUNC_SCL2>,
 				 <PINMUX_GPIO104__FUNC_SDA2>;
@@ -179,7 +179,7 @@ pins_i2c {
 		};
 	};
 
-	i2c_pins_3: i2c3 {
+	i2c_pins_3: i2c3-pins {
 		pins_i2c {
 			pinmux = <PINMUX_GPIO50__FUNC_SCL3>,
 				 <PINMUX_GPIO51__FUNC_SDA3>;
@@ -187,7 +187,7 @@ pins_i2c {
 		};
 	};
 
-	i2c_pins_4: i2c4 {
+	i2c_pins_4: i2c4-pins {
 		pins_i2c {
 			pinmux = <PINMUX_GPIO105__FUNC_SCL4>,
 				 <PINMUX_GPIO106__FUNC_SDA4>;
@@ -195,7 +195,7 @@ pins_i2c {
 		};
 	};
 
-	i2c_pins_5: i2c5 {
+	i2c_pins_5: i2c5-pins {
 		pins_i2c {
 			pinmux = <PINMUX_GPIO48__FUNC_SCL5>,
 				 <PINMUX_GPIO49__FUNC_SDA5>;
@@ -203,7 +203,7 @@ pins_i2c {
 		};
 	};
 
-	spi_pins_0: spi0 {
+	spi_pins_0: spi0-pins {
 		pins_spi {
 			pinmux = <PINMUX_GPIO85__FUNC_SPI0_MI>,
 				 <PINMUX_GPIO86__FUNC_SPI0_CSB>,
@@ -213,7 +213,7 @@ pins_spi {
 		};
 	};
 
-	mmc0_pins_default: mmc0default {
+	mmc0_pins_default: mmc0-default-pins {
 		pins_cmd_dat {
 			pinmux = <PINMUX_GPIO123__FUNC_MSDC0_DAT0>,
 				 <PINMUX_GPIO128__FUNC_MSDC0_DAT1>,
@@ -239,7 +239,7 @@ pins_rst {
 		};
 	};
 
-	mmc0_pins_uhs: mmc0 {
+	mmc0_pins_uhs: mmc0-uhs-pins {
 		pins_cmd_dat {
 			pinmux = <PINMUX_GPIO123__FUNC_MSDC0_DAT0>,
 				 <PINMUX_GPIO128__FUNC_MSDC0_DAT1>,
@@ -274,7 +274,7 @@ pins_rst {
 		};
 	};
 
-	mmc1_pins_default: mmc1default {
+	mmc1_pins_default: mmc1-default-pins {
 		pins_cmd_dat {
 			pinmux = <PINMUX_GPIO31__FUNC_MSDC1_CMD>,
 				   <PINMUX_GPIO32__FUNC_MSDC1_DAT0>,
@@ -298,7 +298,7 @@ pins_pmu {
 		};
 	};
 
-	mmc1_pins_uhs: mmc1 {
+	mmc1_pins_uhs: mmc1-pins {
 		pins_cmd_dat {
 			pinmux = <PINMUX_GPIO31__FUNC_MSDC1_CMD>,
 				   <PINMUX_GPIO32__FUNC_MSDC1_DAT0>,
@@ -318,7 +318,7 @@ pins_clk {
 		};
 	};
 
-	spi_pins_1: spi1 {
+	spi_pins_1: spi1-pins {
 		pins_spi {
 			pinmux = <PINMUX_GPIO161__FUNC_SPI1_A_MI>,
 				 <PINMUX_GPIO162__FUNC_SPI1_A_CSB>,
@@ -328,7 +328,7 @@ pins_spi {
 		};
 	};
 
-	spi_pins_2: spi2 {
+	spi_pins_2: spi2-pins {
 		pins_spi {
 			pinmux = <PINMUX_GPIO0__FUNC_SPI2_CSB>,
 				 <PINMUX_GPIO1__FUNC_SPI2_MO>,
@@ -338,7 +338,7 @@ pins_spi {
 		};
 	};
 
-	spi_pins_3: spi3 {
+	spi_pins_3: spi3-pins {
 		pins_spi {
 			pinmux = <PINMUX_GPIO21__FUNC_SPI3_MI>,
 				 <PINMUX_GPIO22__FUNC_SPI3_CSB>,
@@ -348,7 +348,7 @@ pins_spi {
 		};
 	};
 
-	spi_pins_4: spi4 {
+	spi_pins_4: spi4-pins {
 		pins_spi {
 			pinmux = <PINMUX_GPIO17__FUNC_SPI4_MI>,
 				 <PINMUX_GPIO18__FUNC_SPI4_CSB>,
@@ -358,7 +358,7 @@ pins_spi {
 		};
 	};
 
-	spi_pins_5: spi5 {
+	spi_pins_5: spi5-pins {
 		pins_spi {
 			pinmux = <PINMUX_GPIO13__FUNC_SPI5_MI>,
 				 <PINMUX_GPIO14__FUNC_SPI5_CSB>,
@@ -368,7 +368,7 @@ pins_spi {
 		};
 	};
 
-	pwm_pins_1: pwm1 {
+	pwm_pins_1: pwm1-pins {
 		pins_pwm {
 			pinmux = <PINMUX_GPIO90__FUNC_PWM_A>;
 		};
-- 
2.52.0


