Return-Path: <devicetree+bounces-197928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC642B0B462
	for <lists+devicetree@lfdr.de>; Sun, 20 Jul 2025 10:52:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0FEC23B2A7D
	for <lists+devicetree@lfdr.de>; Sun, 20 Jul 2025 08:51:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C4CF1E47B3;
	Sun, 20 Jul 2025 08:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="eR/0RPPV";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="UhQ49MEj"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-b3-smtp.messagingengine.com (fout-b3-smtp.messagingengine.com [202.12.124.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE0511E1A33
	for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 08:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753001536; cv=none; b=jFdyO6DKRmtvqSvfrVK8ArFmmvPwfOD3GxfyhoMh9adjFZXHYq/B0SthBrLRWuYARrqMZ0fjTfoFCdar3B0hpjgIh/nLbA5cg3s79QD+Pcd8+CIHwu+HKKAkh8Ki0oSOm066whTiKbVVpJoW3n9CsY9qIY9cMPURWjUwajQ+wng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753001536; c=relaxed/simple;
	bh=Jr8gfTfSFvTSsVwehEXbOF5RzI8yWevzV4MOkL/Lp8k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gI7n1zYMdsfNmHvs02emzZPeSZ5suQHFP6DghvTjbqtUVpbDonch0nMOmCGq6jKXQAQerYEFbJxWiwYIgagaY9ZUEqJbMhbA/+hR3k12rdhJcCOVHEPIUzrq9EAdCCJ343+H4zfAKGPRJkRe0uWzO5cxSoFAs9s8Xrb5hnjZPCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=eR/0RPPV; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=UhQ49MEj; arc=none smtp.client-ip=202.12.124.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from phl-compute-01.internal (phl-compute-01.phl.internal [10.202.2.41])
	by mailfout.stl.internal (Postfix) with ESMTP id 0659D1D00173;
	Sun, 20 Jul 2025 04:52:14 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-01.internal (MEProxy); Sun, 20 Jul 2025 04:52:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1753001533; x=
	1753087933; bh=2Cq+yCGapDwyKPChXnRev/CmW/kDVVVBDCyd5GJYNcY=; b=e
	R/0RPPVe2sk9LFqNgF7Wb0n0iVV+kpoa4vOksIH5AyGCERV/E3a6BhLW5JHZGw7a
	ETrXjZaG6Rkd2kxBjUc0r2KxyDwXwIAVTU4aTGRoisUJxz/WMmgo8PefR+WJ08hF
	uqvcP5VMjXUoFGurNQI0qV12e2spqi3LnualvhWVy1mDODJdMmAUiPTi7aKSqSc4
	5vRV2urYWpdzZlnxA0yW+R8NFrrRuSA+ZshklWJvYOhXEC90wGKptNz9D9Wdpmrz
	cElJm8LDIIhRmJ84NPfHKWTDzxRW43jhBno+sbJ+f5HZsPPXQk4/L1g774J9PNNO
	nmaDM+aUpKILlP6HH2ubg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; t=1753001533; x=1753087933; bh=2
	Cq+yCGapDwyKPChXnRev/CmW/kDVVVBDCyd5GJYNcY=; b=UhQ49MEjPzKa6Qltx
	N6a75JjeUJ/XaKOWQ5vdGa/CHJux+gSUGwEjYl3rdh9hrCMD54bQIcM2oPtA2S+D
	5MFByNm6uPfxDIIoVRokKJDtx3YgzQqWNN8NEjB4RMoAW57PUDGV+uTAx9kE9rGk
	FrFsHqNn3/0e34CimU6OewLNeDWjPR+A3k6J2xgaNpXJ5LK1VzUCFWLFAbhRBVUL
	f6yZTxgFfzaNMVGdXEGRyFHk7iNd3l0F0gdDHbpZeXyP0enUblSgDnNqTARhmr3E
	wGjPspWBs5mn6yoLRP1KESaW2fgbLkuq6X20eWfpOudi+cn7BQYvbKIJUETxsSdS
	4Skjg==
X-ME-Sender: <xms:Pa58aCPomVWdvw3ZSXxiSQMsq2qfckuF9GMwJi9y09GSZ3-rJA7LYA>
    <xme:Pa58aL1kV4nl9qWmHwgVHr7e4aqAwkJd4dPu-IqeT-i76Fd367nD3Lb0hK0CruCiY
    yYnbT50GRoSUAME7A>
X-ME-Received: <xmr:Pa58aDf-WZSwZAQoWitYDsaNhoOHatiGuHobu7IY__zAJgK08HOosnssV_N4P4pdLfn1-PjDqvpzTUz2oXqMGeu7smq5YA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdeikeejjecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefthigrnhcuhggr
    lhhklhhinhcuoehrhigrnhesthgvshhtthhorghsthdrtghomheqnecuggftrfgrthhtvg
    hrnhepffehieffgedtgfffjeetveegfeekleeileekveeuteffteetudffveegieeiheet
    necuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomheprhihrg
    hnsehtvghsthhtohgrshhtrdgtohhmpdhnsggprhgtphhtthhopeduiedpmhhouggvpehs
    mhhtphhouhhtpdhrtghpthhtoheprhhosghhsehkvghrnhgvlhdrohhrghdprhgtphhtth
    hopehkrhiikhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopegtohhnohhrodgu
    theskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepfigvnhhssegtshhivgdrohhrghdprh
    gtphhtthhopehjvghrnhgvjhdrshhkrhgrsggvtgesghhmrghilhdrtghomhdprhgtphht
    thhopehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgpdhrtghpthhtoheprghnughrvg
    drphhriiihfigrrhgrsegrrhhmrdgtohhmpdhrtghpthhtohepmhgrtghrohgrlhhphhgr
    kedvsehgmhgrihhlrdgtohhmpdhrtghpthhtohepkhhikhhutghhrghnleeksehgmhgrih
    hlrdgtohhm
X-ME-Proxy: <xmx:Pa58aEblaeFeTWY-TCNOY2NCjiaIBPnNSEcCfaRdJAZTdYCMQXnk6g>
    <xmx:Pa58aAUB1GpmY0-HRa32uwAfBrpdQgkWuQc0XLe8aPuOw4E8CROZAg>
    <xmx:Pa58aPTydxrhGfFAjGhCIBw_iLEePAUJujM-q2bfd8DwBLLJDTX3_A>
    <xmx:Pa58aNFzy0f1wdx4AdVIL0cA1vhTgIQA1gkPpTVXa6FZKfIoSIHi6g>
    <xmx:Pa58aHobzA92A2wBIZZI9_B4agccR9WP8xSmGEMJ5zuJ4y8ckchDKgtc>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 20 Jul 2025 04:52:09 -0400 (EDT)
From: Ryan Walklin <ryan@testtoast.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: Andre Przywara <andre.przywara@arm.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	Hironori KIKUCHI <kikuchan98@gmail.com>,
	Philippe Simons <simons.philippe@gmail.com>,
	linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	Ryan Walklin <ryan@testtoast.com>,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v2 12/12] arm64: dts: allwinner: rg35xx: Enable LCD output
Date: Sun, 20 Jul 2025 20:48:50 +1200
Message-ID: <20250720085047.5340-13-ryan@testtoast.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250720085047.5340-1-ryan@testtoast.com>
References: <20250720085047.5340-1-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RG35XX has a 640x480 RGB/SPI LCD panel, supported by the SoC display
pipeline and an NV3052C controller. The H616 SOC's GPIO bank D contains
the muxed display pins for RGB and LVDS output support.

The backlight for this device is not modelled as the PWM driver for the
H616 is not yet implemented.

Enable the display engine and LCD timing controller, configure the
panel, and add a fixed 3.3v GPIO-controlled regulator for the panel, and
a VCC supply for the display pins as per the other GPIO banks.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Tested-by: Philippe Simons <simons.philippe@gmail.com>
Signed-off-by: Ryan Walklin <ryan@testtoast.com>

Changelog v1..v2:
- Remove GPIO backlight node.
---
 .../sun50i-h700-anbernic-rg35xx-2024.dts      | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
index 1a750c5f6fac..7d1da4463adf 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
@@ -181,6 +181,49 @@ reg_vcc5v: regulator-vcc5v { /* USB-C power input */
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
 	};
+
+	reg_lcd: regulator-gpio-lcd-vdd {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-name = "vdd-lcd";
+		gpio = <&pio 8 15 GPIO_ACTIVE_HIGH>; // PI15
+		enable-active-high;
+	};
+
+	spi_lcd: spi {
+		compatible = "spi-gpio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		sck-gpios = <&pio 8 9 GPIO_ACTIVE_HIGH>; // PI9
+		mosi-gpios = <&pio 8 10 GPIO_ACTIVE_HIGH>; // PI10
+		cs-gpios = <&pio 8 8 GPIO_ACTIVE_HIGH>; // PI8
+		num-chipselects = <1>;
+
+		panel: panel@0 {
+			compatible = "anbernic,rg35xx-plus-panel";
+
+			reg = <0>;
+
+			spi-max-frequency = <3125000>;
+			spi-3wire;
+
+			reset-gpios = <&pio 8 14 GPIO_ACTIVE_LOW>; // PI14
+
+			power-supply = <&reg_lcd>;
+
+			pinctrl-0 = <&lcd0_rgb888_pins>;
+			pinctrl-names = "default";
+
+			port {
+				panel_in_rgb: endpoint {
+					remote-endpoint = <&tcon_lcd0_out_lcd>;
+				};
+			};
+		};
+	};
 };
 
 &codec {
@@ -196,6 +239,10 @@ &cpu0 {
 	cpu-supply = <&reg_dcdc1>;
 };
 
+&de {
+	status = "okay";
+};
+
 &ehci0 {
 	status = "okay";
 };
@@ -220,6 +267,7 @@ &ohci0 {
 &pio {
 	vcc-pa-supply = <&reg_cldo3>;
 	vcc-pc-supply = <&reg_cldo3>;
+	vcc-pd-supply = <&reg_cldo3>;
 	vcc-pe-supply = <&reg_cldo3>;
 	vcc-pf-supply = <&reg_cldo3>;
 	vcc-pg-supply = <&reg_aldo4>;
@@ -379,3 +427,11 @@ &usbotg {
 &usbphy {
 	status = "okay";
 };
+
+&tcon_lcd0 {
+	status = "okay";
+};
+
+&tcon_lcd0_out_lcd {
+	remote-endpoint = <&panel_in_rgb>;
+};
-- 
2.50.1


