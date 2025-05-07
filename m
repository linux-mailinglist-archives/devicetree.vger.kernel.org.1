Return-Path: <devicetree+bounces-174835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0BDAAECFF
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 22:23:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 544A77BC68F
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 20:21:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4312228F51A;
	Wed,  7 May 2025 20:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ND6EkNJa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DD8128EA7E
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 20:22:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746649368; cv=none; b=Ize1N5MpHib/Aiqy3z3YjeMwxndwuJAMGDKVckv3pPXdFaZDYCd++UglVdCPfV69/ckKqjzHOk++dHPDxJakuoDOAXzC16SlrutASY5C8rH2KPNVicJ/bYgDwTq2QNWA4a5wVQhq/DFxbsLseNZMlzcVxv7AgmD9HVMkOKB3NMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746649368; c=relaxed/simple;
	bh=QCzpVPQHNchf1q6nV+Jbu/0f+gEBfuqV3eX09A3d8fM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fFCTZoQBl9g0pr+BmMSrWgyGGtDpBLpJzin4wtEBoDdJNGVjvmz1LKjcMq15aeIMmY4LOiu73A94REGbb6BvtAt9bakKsoTFrpb68H2wVcT6suoAL+UHIhUirJ+OQxpQdBwAaHfnFgXAXA44tYb8DKJbAm4zktlaSJzDdUkdGZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ND6EkNJa; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7302a769534so142970a34.1
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 13:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746649365; x=1747254165; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1hb5ufZpV43bt8teP3h3YtOVqm0V+W6AkapWdcxcadM=;
        b=ND6EkNJamyS8htFvHKALbxSXd1cJqNBhk6o7tvXJ9jQnOhWaI0CU+qrB6vvtNHB49O
         ortQuXmE7BMipQlJVOsXCQ6ehkclOSsBLv+tGN80NGccgiaPPmm2VQBjTxMNldfyoeSL
         q3qfUqUPoK+1eewDm+RlBRBQ5CzntqJyJYcrkt261RvzvdXjCqNVTDSLL0xJYAXbThYU
         DQBvRiY/KpDgSOeH3DkN/e6YcM2P5U2smNHMReoTftqOua0Z7S2xz/VL5aMYYjqrwY7C
         d+/zXTLniEYjKqB5bgI48LOaC/jOcSFrwkcxKIq+IBd0Xi0Q15+KK/eL5N3kIB/HSY7a
         r1ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746649365; x=1747254165;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1hb5ufZpV43bt8teP3h3YtOVqm0V+W6AkapWdcxcadM=;
        b=hX95AZJGsQf+g0RfPv1xm/CkEq/e7Xu5tixlyv0ho+XkU11v8rB5P5HauIaDUjDkUF
         Wd5AGTFxL9VBslerELYOdJD963qB40TYPZLqAV6vfKkIxTPJAC/ylfU5nLrgna3eZe2/
         P3Ost3jhHIsKBbUeBfT3zng2j/idqxTYiR940ULzNm3ru+E6k9R+JuNwIQwY5SEubj9P
         Pp3wL6Uz7JK/IvEp4kPP1ouI705boETZ/TdH4s4+W92NxKbpXfmIH0la8WozY/88UZIB
         XMdMwAISVP5UsMjjweGb9+Cx4lBd+rHkMvbQcBbApwjAsjXgiquO2Q2N2AXzB/pDI4i/
         9AGA==
X-Gm-Message-State: AOJu0YzSNMtIEE0YMHuZ3d1C03f/fFmtJMNprHffgzsE3vwl8NlMmovA
	NnqVk62XRZcsJFQ4vr/4yFptBEk1VxEgOa5111evcKe+wCrMEk6Q
X-Gm-Gg: ASbGncvMv0Ua+Bas2DUiWuKTq+THMQ/B89/3MSx+BO7jeqzY0oujKX+htmdWEE9V4RE
	DsykEC+alw1Cyt7isko2jZWPSKbrHRcsLpjR2Zk8AphO7hCxRBG8wrUY7VXDihn26d1MrpDAXvY
	L2OlhpzpP3R4QiEqIPrEVYGj3rRhMw7sehRo4cHVB/muhwfSl/u4Ra1J2ocEuGbwB8H9aWCplRn
	MWoh5ZoPvCB7QRuqN96WR9illnBZGsUW4vsIaJl2BD2apucIk3Ugu5lISvTnCZYeCaC5vUatQBF
	zuW3qIoq1I3eltIijOjJEQgZ+kHq1pdNj/kuO3fPqogNAm2pqbg+5Xlorlvu
X-Google-Smtp-Source: AGHT+IEc2bzedU/Bbbz0Jce68RPz4itDPGQFZVpr2AL3l0c19gcdR7gdkcuLajDbJPMrYebzAIA4IQ==
X-Received: by 2002:a05:6830:6181:b0:72b:8a8b:e02c with SMTP id 46e09a7af769-73210a69ba6mr3020411a34.2.1746649365602;
        Wed, 07 May 2025 13:22:45 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:e46c:46ba:cecd:a52c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-732109df2dcsm725945a34.9.2025.05.07.13.22.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 13:22:45 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	ryan@testtoast.com,
	macromorgan@hotmail.com,
	p.zabel@pengutronix.de,
	tzimmermann@suse.de,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	mripard@kernel.org,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org
Subject: [PATCH V9 24/24] arm64: dts: allwinner: rg35xx: Enable LCD output
Date: Wed,  7 May 2025 15:19:43 -0500
Message-ID: <20250507201943.330111-25-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250507201943.330111-1-macroalpha82@gmail.com>
References: <20250507201943.330111-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The RG35XX has a 640x480 RGB/SPI LCD panel, supported by the SoC display
pipeline and an NV3052C controller. The H616 SOC's GPIO bank D contains
the muxed display pins for RGB and LVDS output support.

Enable the display engine and LCD timing controller, configure the
panel, and add a fixed 3.3v GPIO-controlled regulator for the panel, and
a VCC supply for the display pins as per the other GPIO banks.

Signed-off-by: Ryan Walklin <ryan@testtoast.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../sun50i-h700-anbernic-rg35xx-2024.dts      | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
index 95f2ae04bd95..260c2d55a86e 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
@@ -187,6 +187,49 @@ reg_vcc5v: regulator-vcc5v { /* USB-C power input */
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
+			backlight = <&backlight>;
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
@@ -199,6 +242,10 @@ &cpu0 {
 	cpu-supply = <&reg_dcdc1>;
 };
 
+&de {
+	status = "okay";
+};
+
 &ehci0 {
 	status = "okay";
 };
@@ -218,6 +265,7 @@ &ohci0 {
 &pio {
 	vcc-pa-supply = <&reg_cldo3>;
 	vcc-pc-supply = <&reg_cldo3>;
+	vcc-pd-supply = <&reg_cldo3>;
 	vcc-pe-supply = <&reg_cldo3>;
 	vcc-pf-supply = <&reg_cldo3>;
 	vcc-pg-supply = <&reg_aldo4>;
@@ -377,3 +425,14 @@ &usbotg {
 &usbphy {
 	status = "okay";
 };
+
+&tcon_lcd0 {
+	status = "okay";
+};
+
+&tcon_lcd0_out {
+	tcon_lcd0_out_lcd: endpoint@1 {
+		reg = <1>;
+		remote-endpoint = <&panel_in_rgb>;
+	};
+};
-- 
2.43.0


