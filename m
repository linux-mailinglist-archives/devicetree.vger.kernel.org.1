Return-Path: <devicetree+bounces-151368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 62017A458D3
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 09:50:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DB7111898AD0
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 08:50:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EB1320C033;
	Wed, 26 Feb 2025 08:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="gBLkDCyw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF6ED224227
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 08:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740559815; cv=none; b=uU5eJrTEcQ+7oKTcUxq1K9xyVSc6bW0NmkyQrUgNT6rUL/veym+J+Z15sWxD4yPPuvwsCO9vfMDO4RtgHAbKYr6F2xBIO5ovf3bQGtj6zKDTLrbYoRfhV1XF1siy/74aWS3Bb6qKzUZztWz9hxWHLG/PFFPIwoGTql0lrTY+n3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740559815; c=relaxed/simple;
	bh=7DtbnNvBAcMInk6vCDv//Zq0sqZ2AyoSGuGK4IGBJeo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GTNXDGudwBmI4A55aVxuvLp2xISL5v+gxaPhyMtt7jz5OcE8bnCPSG/FsTVpPECrjhbthpmRNCjT3QzCUS7pIOt/lSqiEGD2YbERbpPxoa061quJCZI1lzebvL0hlAGUOGp85FlcMDPrnbOvA0llEodqL0fZ7f6goTI/0pEOCyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=gBLkDCyw; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=Qfb35/5UiLgwlMFtawueyYugBdWMmL6ETxU27vQRyQg=; b=gBLkDC
	ywxw1NlOXpIfHjJTU9YBQiD7Ip67jJ7qVIwGTPenaOmtW6dRbqGhAAG0loD4WUmO
	ihsgNgOwJedWocRRXArbwSZvvesMJU9tYF+kYwj0v1iUtd8ais+47NsD7CB6zjFQ
	a6vyCyPpjry0g+0hN39luUVe1aJGqyddLEdUzvGgrY6hzLXr+eBSH/ITCpKV6MDJ
	aIsUDGJ26qJHq35wV4AAVm3k4RTdHBvMS0vcfjq5HxGQ5I/ZiFuOecE/VoM0EcPk
	I6mqPx6sX05vzFNi0HVnIUkUO5V/tRNZ8/coLrm9kAX9/CWR+FSFEtTy37ox0VFT
	Pcz9cVLPGhLALTBA==
Received: (qmail 500520 invoked from network); 26 Feb 2025 09:50:09 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 26 Feb 2025 09:50:09 +0100
X-UD-Smtp-Session: l3s3148p1@XBAoqQcvfq4gAwDPXxaLANR24ZQNPy5l
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 4/4] ARM: dts: at91: fix faulty ohci/ehci node names
Date: Wed, 26 Feb 2025 09:49:39 +0100
Message-ID: <20250226084938.3436-10-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250226084938.3436-6-wsa+renesas@sang-engineering.com>
References: <20250226084938.3436-6-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

They should be named "usb@".

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/microchip/aks-cdu.dts               | 2 +-
 arch/arm/boot/dts/microchip/animeo_ip.dts             | 2 +-
 arch/arm/boot/dts/microchip/at91-foxg20.dts           | 2 +-
 arch/arm/boot/dts/microchip/at91-qil_a9260.dts        | 2 +-
 arch/arm/boot/dts/microchip/at91-sam9_l9260.dts       | 2 +-
 arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts | 4 ++--
 arch/arm/boot/dts/microchip/at91-sama5d2_ptc_ek.dts   | 4 ++--
 arch/arm/boot/dts/microchip/at91-sama5d2_xplained.dts | 4 ++--
 arch/arm/boot/dts/microchip/at91-sama5d3_xplained.dts | 4 ++--
 arch/arm/boot/dts/microchip/at91-sama5d4_ma5d4evk.dts | 4 ++--
 arch/arm/boot/dts/microchip/at91-sama5d4_xplained.dts | 4 ++--
 arch/arm/boot/dts/microchip/at91-sama5d4ek.dts        | 4 ++--
 arch/arm/boot/dts/microchip/at91-vinco.dts            | 4 ++--
 arch/arm/boot/dts/microchip/at91rm9200.dtsi           | 2 +-
 arch/arm/boot/dts/microchip/at91rm9200ek.dts          | 2 +-
 arch/arm/boot/dts/microchip/at91sam9260.dtsi          | 2 +-
 arch/arm/boot/dts/microchip/at91sam9260ek.dts         | 2 +-
 arch/arm/boot/dts/microchip/at91sam9261.dtsi          | 2 +-
 arch/arm/boot/dts/microchip/at91sam9261ek.dts         | 2 +-
 arch/arm/boot/dts/microchip/at91sam9263.dtsi          | 2 +-
 arch/arm/boot/dts/microchip/at91sam9263ek.dts         | 2 +-
 arch/arm/boot/dts/microchip/at91sam9g20ek_common.dtsi | 2 +-
 arch/arm/boot/dts/microchip/at91sam9g45.dtsi          | 4 ++--
 arch/arm/boot/dts/microchip/at91sam9m10g45ek.dts      | 4 ++--
 arch/arm/boot/dts/microchip/at91sam9n12.dtsi          | 2 +-
 arch/arm/boot/dts/microchip/at91sam9n12ek.dts         | 2 +-
 arch/arm/boot/dts/microchip/at91sam9x5.dtsi           | 4 ++--
 arch/arm/boot/dts/microchip/ethernut5.dts             | 2 +-
 arch/arm/boot/dts/microchip/evk-pro3.dts              | 2 +-
 arch/arm/boot/dts/microchip/mpa1600.dts               | 2 +-
 arch/arm/boot/dts/microchip/pm9g45.dts                | 4 ++--
 arch/arm/boot/dts/microchip/sam9x60.dtsi              | 4 ++--
 arch/arm/boot/dts/microchip/sama5d2.dtsi              | 4 ++--
 arch/arm/boot/dts/microchip/sama5d3.dtsi              | 4 ++--
 arch/arm/boot/dts/microchip/sama5d3xmb.dtsi           | 4 ++--
 arch/arm/boot/dts/microchip/sama5d4.dtsi              | 4 ++--
 arch/arm/boot/dts/microchip/usb_a9260_common.dtsi     | 2 +-
 arch/arm/boot/dts/microchip/usb_a9263.dts             | 2 +-
 38 files changed, 55 insertions(+), 55 deletions(-)

diff --git a/arch/arm/boot/dts/microchip/aks-cdu.dts b/arch/arm/boot/dts/microchip/aks-cdu.dts
index b65f80e1ef05..302cb872efa1 100644
--- a/arch/arm/boot/dts/microchip/aks-cdu.dts
+++ b/arch/arm/boot/dts/microchip/aks-cdu.dts
@@ -56,7 +56,7 @@ usb1: gadget@fffa4000 {
 			};
 		};
 
-		usb0: ohci@500000 {
+		usb0: usb@500000 {
 			num-ports = <2>;
 			status = "okay";
 		};
diff --git a/arch/arm/boot/dts/microchip/animeo_ip.dts b/arch/arm/boot/dts/microchip/animeo_ip.dts
index 7f527622d3f2..c11f4f7dac94 100644
--- a/arch/arm/boot/dts/microchip/animeo_ip.dts
+++ b/arch/arm/boot/dts/microchip/animeo_ip.dts
@@ -136,7 +136,7 @@ ubi@60000 {
 			};
 		};
 
-		usb0: ohci@500000 {
+		usb0: usb@500000 {
 			num-ports = <2>;
 			atmel,vbus-gpio = <&pioB 15 GPIO_ACTIVE_LOW>;
 			status = "okay";
diff --git a/arch/arm/boot/dts/microchip/at91-foxg20.dts b/arch/arm/boot/dts/microchip/at91-foxg20.dts
index 9dfd5de808d1..8e9e87665045 100644
--- a/arch/arm/boot/dts/microchip/at91-foxg20.dts
+++ b/arch/arm/boot/dts/microchip/at91-foxg20.dts
@@ -131,7 +131,7 @@ watchdog@fffffd40 {
 			};
 		};
 
-		usb0: ohci@500000 {
+		usb0: usb@500000 {
 			num-ports = <2>;
 			status = "okay";
 		};
diff --git a/arch/arm/boot/dts/microchip/at91-qil_a9260.dts b/arch/arm/boot/dts/microchip/at91-qil_a9260.dts
index 5ccb3c139592..892dbd8dbbed 100644
--- a/arch/arm/boot/dts/microchip/at91-qil_a9260.dts
+++ b/arch/arm/boot/dts/microchip/at91-qil_a9260.dts
@@ -114,7 +114,7 @@ shdwc: poweroff@fffffd10 {
 			};
 		};
 
-		usb0: ohci@500000 {
+		usb0: usb@500000 {
 			num-ports = <2>;
 			status = "okay";
 		};
diff --git a/arch/arm/boot/dts/microchip/at91-sam9_l9260.dts b/arch/arm/boot/dts/microchip/at91-sam9_l9260.dts
index 2fb51b9aca2a..49dc1a4ccb36 100644
--- a/arch/arm/boot/dts/microchip/at91-sam9_l9260.dts
+++ b/arch/arm/boot/dts/microchip/at91-sam9_l9260.dts
@@ -105,7 +105,7 @@ nand0: nand@40000000 {
 			status = "okay";
 		};
 
-		usb0: ohci@500000 {
+		usb0: usb@500000 {
 			status = "okay";
 		};
 
diff --git a/arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts b/arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts
index f3ffb8f01d8a..45edf6214cf7 100644
--- a/arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts
+++ b/arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts
@@ -37,7 +37,7 @@ usb0: gadget@300000 {
 			status = "okay";
 		};
 
-		usb1: ohci@400000 {
+		usb1: usb@400000 {
 			num-ports = <3>;
 			atmel,vbus-gpio = <0 /* &pioA PIN_PD20 GPIO_ACTIVE_HIGH */
 					   &pioA PIN_PA27 GPIO_ACTIVE_HIGH
@@ -48,7 +48,7 @@ &pioA PIN_PA27 GPIO_ACTIVE_HIGH
 			status = "okay";
 		};
 
-		usb2: ehci@500000 {
+		usb2: usb@500000 {
 			status = "okay";
 		};
 
diff --git a/arch/arm/boot/dts/microchip/at91-sama5d2_ptc_ek.dts b/arch/arm/boot/dts/microchip/at91-sama5d2_ptc_ek.dts
index e4ae60ef5f8a..10d69f6957cf 100644
--- a/arch/arm/boot/dts/microchip/at91-sama5d2_ptc_ek.dts
+++ b/arch/arm/boot/dts/microchip/at91-sama5d2_ptc_ek.dts
@@ -47,7 +47,7 @@ usb0: gadget@300000 {
 			status = "okay";
 		};
 
-		usb1: ohci@400000 {
+		usb1: usb@400000 {
 			num-ports = <3>;
 			atmel,vbus-gpio = <0
 					   &pioA PIN_PB12 GPIO_ACTIVE_HIGH
@@ -58,7 +58,7 @@ &pioA PIN_PB12 GPIO_ACTIVE_HIGH
 			status = "okay";
 		};
 
-		usb2: ehci@500000 {
+		usb2: usb@500000 {
 			status = "okay";
 		};
 
diff --git a/arch/arm/boot/dts/microchip/at91-sama5d2_xplained.dts b/arch/arm/boot/dts/microchip/at91-sama5d2_xplained.dts
index 4bab3f25b855..7e77a55ed41d 100644
--- a/arch/arm/boot/dts/microchip/at91-sama5d2_xplained.dts
+++ b/arch/arm/boot/dts/microchip/at91-sama5d2_xplained.dts
@@ -46,7 +46,7 @@ usb0: gadget@300000 {
 			status = "okay";
 		};
 
-		usb1: ohci@400000 {
+		usb1: usb@400000 {
 			num-ports = <3>;
 			atmel,vbus-gpio = <0 /* &pioA PIN_PB9 GPIO_ACTIVE_HIGH */
 					   &pioA PIN_PB10 GPIO_ACTIVE_HIGH
@@ -57,7 +57,7 @@ &pioA PIN_PB10 GPIO_ACTIVE_HIGH
 			status = "okay";
 		};
 
-		usb2: ehci@500000 {
+		usb2: usb@500000 {
 			status = "okay";
 		};
 
diff --git a/arch/arm/boot/dts/microchip/at91-sama5d3_xplained.dts b/arch/arm/boot/dts/microchip/at91-sama5d3_xplained.dts
index 5662992cf213..d2c43957497d 100644
--- a/arch/arm/boot/dts/microchip/at91-sama5d3_xplained.dts
+++ b/arch/arm/boot/dts/microchip/at91-sama5d3_xplained.dts
@@ -283,7 +283,7 @@ usb0: gadget@500000 {
 			status = "okay";
 		};
 
-		usb1: ohci@600000 {
+		usb1: usb@600000 {
 			num-ports = <3>;
 			atmel,vbus-gpio = <0
 					   &pioE 3 GPIO_ACTIVE_LOW
@@ -294,7 +294,7 @@ &pioE 4 GPIO_ACTIVE_LOW
 			status = "okay";
 		};
 
-		usb2: ehci@700000 {
+		usb2: usb@700000 {
 			status = "okay";
 		};
 
diff --git a/arch/arm/boot/dts/microchip/at91-sama5d4_ma5d4evk.dts b/arch/arm/boot/dts/microchip/at91-sama5d4_ma5d4evk.dts
index 8adf567f2f0f..b9725e400501 100644
--- a/arch/arm/boot/dts/microchip/at91-sama5d4_ma5d4evk.dts
+++ b/arch/arm/boot/dts/microchip/at91-sama5d4_ma5d4evk.dts
@@ -22,7 +22,7 @@ usb0: gadget@400000 {
 			status = "okay";
 		};
 
-		usb1: ohci@500000 {
+		usb1: usb@500000 {
 			num-ports = <3>;
 			atmel,vbus-gpio = <0
 					   &pioE 11 GPIO_ACTIVE_LOW
@@ -31,7 +31,7 @@ &pioE 14 GPIO_ACTIVE_LOW
 			status = "okay";
 		};
 
-		usb2: ehci@600000 {
+		usb2: usb@600000 {
 			status = "okay";
 		};
 
diff --git a/arch/arm/boot/dts/microchip/at91-sama5d4_xplained.dts b/arch/arm/boot/dts/microchip/at91-sama5d4_xplained.dts
index 95d701d13fef..0ecccb9a809d 100644
--- a/arch/arm/boot/dts/microchip/at91-sama5d4_xplained.dts
+++ b/arch/arm/boot/dts/microchip/at91-sama5d4_xplained.dts
@@ -164,7 +164,7 @@ usb0: gadget@400000 {
 			status = "okay";
 		};
 
-		usb1: ohci@500000 {
+		usb1: usb@500000 {
 			num-ports = <3>;
 			atmel,vbus-gpio = <0
 					   &pioE 11 GPIO_ACTIVE_HIGH
@@ -175,7 +175,7 @@ &pioE 14 GPIO_ACTIVE_HIGH
 			status = "okay";
 		};
 
-		usb2: ehci@600000 {
+		usb2: usb@600000 {
 			status = "okay";
 		};
 
diff --git a/arch/arm/boot/dts/microchip/at91-sama5d4ek.dts b/arch/arm/boot/dts/microchip/at91-sama5d4ek.dts
index 20ac775059ca..69107d6cd26c 100644
--- a/arch/arm/boot/dts/microchip/at91-sama5d4ek.dts
+++ b/arch/arm/boot/dts/microchip/at91-sama5d4ek.dts
@@ -198,7 +198,7 @@ usb0: gadget@400000 {
 			status = "okay";
 		};
 
-		usb1: ohci@500000 {
+		usb1: usb@500000 {
 			num-ports = <3>;
 			atmel,vbus-gpio = <0 /* &pioE 10 GPIO_ACTIVE_LOW */
 					   &pioE 11 GPIO_ACTIVE_LOW
@@ -207,7 +207,7 @@ &pioE 12 GPIO_ACTIVE_LOW
 			status = "okay";
 		};
 
-		usb2: ehci@600000 {
+		usb2: usb@600000 {
 			status = "okay";
 		};
 
diff --git a/arch/arm/boot/dts/microchip/at91-vinco.dts b/arch/arm/boot/dts/microchip/at91-vinco.dts
index ecbdacf48708..c5fc51667066 100644
--- a/arch/arm/boot/dts/microchip/at91-vinco.dts
+++ b/arch/arm/boot/dts/microchip/at91-vinco.dts
@@ -162,7 +162,7 @@ usb0: gadget@400000 {
 			status = "disabled";
 		};
 
-		usb1: ohci@500000 {
+		usb1: usb@500000 {
 			num-ports = <3>;
 			atmel,vbus-gpio = <0
 					   &pioE 11 GPIO_ACTIVE_LOW
@@ -171,7 +171,7 @@ &pioE 12 GPIO_ACTIVE_LOW
 			status = "disabled";
 		};
 
-		usb2: ehci@600000 {
+		usb2: usb@600000 {
 			/* 4G Modem */
 			status = "okay";
 		};
diff --git a/arch/arm/boot/dts/microchip/at91rm9200.dtsi b/arch/arm/boot/dts/microchip/at91rm9200.dtsi
index 02a838541dc3..2a4c83d88733 100644
--- a/arch/arm/boot/dts/microchip/at91rm9200.dtsi
+++ b/arch/arm/boot/dts/microchip/at91rm9200.dtsi
@@ -702,7 +702,7 @@ &pioB 1 GPIO_ACTIVE_HIGH
 			status = "disabled";
 		};
 
-		usb0: ohci@300000 {
+		usb0: usb@300000 {
 			compatible = "atmel,at91rm9200-ohci", "usb-ohci";
 			reg = <0x00300000 0x100000>;
 			interrupts = <23 IRQ_TYPE_LEVEL_HIGH 2>;
diff --git a/arch/arm/boot/dts/microchip/at91rm9200ek.dts b/arch/arm/boot/dts/microchip/at91rm9200ek.dts
index 0bf472b157a5..ce691c4692b9 100644
--- a/arch/arm/boot/dts/microchip/at91rm9200ek.dts
+++ b/arch/arm/boot/dts/microchip/at91rm9200ek.dts
@@ -89,7 +89,7 @@ rtc: rtc@fffffe00 {
 			};
 		};
 
-		usb0: ohci@300000 {
+		usb0: usb@300000 {
 			num-ports = <2>;
 			status = "okay";
 		};
diff --git a/arch/arm/boot/dts/microchip/at91sam9260.dtsi b/arch/arm/boot/dts/microchip/at91sam9260.dtsi
index 0038183e9a53..ec973f07a961 100644
--- a/arch/arm/boot/dts/microchip/at91sam9260.dtsi
+++ b/arch/arm/boot/dts/microchip/at91sam9260.dtsi
@@ -742,7 +742,7 @@ gpbr: syscon@fffffd50 {
 			};
 		};
 
-		usb0: ohci@500000 {
+		usb0: usb@500000 {
 			compatible = "atmel,at91rm9200-ohci", "usb-ohci";
 			reg = <0x00500000 0x100000>;
 			interrupts = <20 IRQ_TYPE_LEVEL_HIGH 2>;
diff --git a/arch/arm/boot/dts/microchip/at91sam9260ek.dts b/arch/arm/boot/dts/microchip/at91sam9260ek.dts
index e8e65e60564d..8522a210b484 100644
--- a/arch/arm/boot/dts/microchip/at91sam9260ek.dts
+++ b/arch/arm/boot/dts/microchip/at91sam9260ek.dts
@@ -131,7 +131,7 @@ gpbr: syscon@fffffd50 {
 			};
 		};
 
-		usb0: ohci@500000 {
+		usb0: usb@500000 {
 			num-ports = <2>;
 			status = "okay";
 		};
diff --git a/arch/arm/boot/dts/microchip/at91sam9261.dtsi b/arch/arm/boot/dts/microchip/at91sam9261.dtsi
index b57a7fd67197..0b556c234557 100644
--- a/arch/arm/boot/dts/microchip/at91sam9261.dtsi
+++ b/arch/arm/boot/dts/microchip/at91sam9261.dtsi
@@ -77,7 +77,7 @@ ahb {
 		#size-cells = <1>;
 		ranges;
 
-		usb0: ohci@500000 {
+		usb0: usb@500000 {
 			compatible = "atmel,at91rm9200-ohci", "usb-ohci";
 			reg = <0x00500000 0x100000>;
 			interrupts = <20 IRQ_TYPE_LEVEL_HIGH 2>;
diff --git a/arch/arm/boot/dts/microchip/at91sam9261ek.dts b/arch/arm/boot/dts/microchip/at91sam9261ek.dts
index a8f523131cd6..313bc2797fde 100644
--- a/arch/arm/boot/dts/microchip/at91sam9261ek.dts
+++ b/arch/arm/boot/dts/microchip/at91sam9261ek.dts
@@ -31,7 +31,7 @@ main_xtal {
 	};
 
 	ahb {
-		usb0: ohci@500000 {
+		usb0: usb@500000 {
 			status = "okay";
 		};
 
diff --git a/arch/arm/boot/dts/microchip/at91sam9263.dtsi b/arch/arm/boot/dts/microchip/at91sam9263.dtsi
index b95d4016ae9f..3e9e5ce7c6c8 100644
--- a/arch/arm/boot/dts/microchip/at91sam9263.dtsi
+++ b/arch/arm/boot/dts/microchip/at91sam9263.dtsi
@@ -768,7 +768,7 @@ fb0: fb@700000 {
 			status = "disabled";
 		};
 
-		usb0: ohci@a00000 {
+		usb0: usb@a00000 {
 			compatible = "atmel,at91rm9200-ohci", "usb-ohci";
 			reg = <0x00a00000 0x100000>;
 			interrupts = <29 IRQ_TYPE_LEVEL_HIGH 2>;
diff --git a/arch/arm/boot/dts/microchip/at91sam9263ek.dts b/arch/arm/boot/dts/microchip/at91sam9263ek.dts
index f25692543d71..471ea25296aa 100644
--- a/arch/arm/boot/dts/microchip/at91sam9263ek.dts
+++ b/arch/arm/boot/dts/microchip/at91sam9263ek.dts
@@ -207,7 +207,7 @@ data@7ca0000 {
 			};
 		};
 
-		usb0: ohci@a00000 {
+		usb0: usb@a00000 {
 			num-ports = <2>;
 			status = "okay";
 			atmel,vbus-gpio = <&pioA 24 GPIO_ACTIVE_HIGH
diff --git a/arch/arm/boot/dts/microchip/at91sam9g20ek_common.dtsi b/arch/arm/boot/dts/microchip/at91sam9g20ek_common.dtsi
index 4e7cfbbd4241..84a7287107f8 100644
--- a/arch/arm/boot/dts/microchip/at91sam9g20ek_common.dtsi
+++ b/arch/arm/boot/dts/microchip/at91sam9g20ek_common.dtsi
@@ -211,7 +211,7 @@ data@7ca0000 {
 			};
 		};
 
-		usb0: ohci@500000 {
+		usb0: usb@500000 {
 			num-ports = <2>;
 			status = "okay";
 		};
diff --git a/arch/arm/boot/dts/microchip/at91sam9g45.dtsi b/arch/arm/boot/dts/microchip/at91sam9g45.dtsi
index 157d306ef5c9..535e26e05e99 100644
--- a/arch/arm/boot/dts/microchip/at91sam9g45.dtsi
+++ b/arch/arm/boot/dts/microchip/at91sam9g45.dtsi
@@ -964,7 +964,7 @@ fb0: fb@500000 {
 			status = "disabled";
 		};
 
-		usb0: ohci@700000 {
+		usb0: usb@700000 {
 			compatible = "atmel,at91rm9200-ohci", "usb-ohci";
 			reg = <0x00700000 0x100000>;
 			interrupts = <22 IRQ_TYPE_LEVEL_HIGH 2>;
@@ -973,7 +973,7 @@ usb0: ohci@700000 {
 			status = "disabled";
 		};
 
-		usb1: ehci@800000 {
+		usb1: usb@800000 {
 			compatible = "atmel,at91sam9g45-ehci", "usb-ehci";
 			reg = <0x00800000 0x100000>;
 			interrupts = <22 IRQ_TYPE_LEVEL_HIGH 2>;
diff --git a/arch/arm/boot/dts/microchip/at91sam9m10g45ek.dts b/arch/arm/boot/dts/microchip/at91sam9m10g45ek.dts
index 071db4f16313..2a31b2f14893 100644
--- a/arch/arm/boot/dts/microchip/at91sam9m10g45ek.dts
+++ b/arch/arm/boot/dts/microchip/at91sam9m10g45ek.dts
@@ -303,14 +303,14 @@ data@4000000 {
 			};
 		};
 
-		usb0: ohci@700000 {
+		usb0: usb@700000 {
 			status = "okay";
 			num-ports = <2>;
 			atmel,vbus-gpio = <&pioD 1 GPIO_ACTIVE_LOW
 					   &pioD 3 GPIO_ACTIVE_LOW>;
 		};
 
-		usb1: ehci@800000 {
+		usb1: usb@800000 {
 			status = "okay";
 		};
 	};
diff --git a/arch/arm/boot/dts/microchip/at91sam9n12.dtsi b/arch/arm/boot/dts/microchip/at91sam9n12.dtsi
index 844bd50943fc..2f930c39ce4d 100644
--- a/arch/arm/boot/dts/microchip/at91sam9n12.dtsi
+++ b/arch/arm/boot/dts/microchip/at91sam9n12.dtsi
@@ -748,7 +748,7 @@ usb1: gadget@f803c000 {
 			};
 		};
 
-		usb0: ohci@500000 {
+		usb0: usb@500000 {
 			compatible = "atmel,at91rm9200-ohci", "usb-ohci";
 			reg = <0x00500000 0x00100000>;
 			interrupts = <22 IRQ_TYPE_LEVEL_HIGH 2>;
diff --git a/arch/arm/boot/dts/microchip/at91sam9n12ek.dts b/arch/arm/boot/dts/microchip/at91sam9n12ek.dts
index 643c3b2ab97e..b06a54e8e237 100644
--- a/arch/arm/boot/dts/microchip/at91sam9n12ek.dts
+++ b/arch/arm/boot/dts/microchip/at91sam9n12ek.dts
@@ -180,7 +180,7 @@ nand@3 {
 			};
 		};
 
-		usb0: ohci@500000 {
+		usb0: usb@500000 {
 			num-ports = <1>;
 			atmel,vbus-gpio = <&pioB 7 GPIO_ACTIVE_LOW>;
 			status = "okay";
diff --git a/arch/arm/boot/dts/microchip/at91sam9x5.dtsi b/arch/arm/boot/dts/microchip/at91sam9x5.dtsi
index 27c1f2861cc3..17bdf1e4db01 100644
--- a/arch/arm/boot/dts/microchip/at91sam9x5.dtsi
+++ b/arch/arm/boot/dts/microchip/at91sam9x5.dtsi
@@ -886,7 +886,7 @@ pwm0: pwm@f8034000 {
 			};
 		};
 
-		usb0: ohci@600000 {
+		usb0: usb@600000 {
 			compatible = "atmel,at91rm9200-ohci", "usb-ohci";
 			reg = <0x00600000 0x100000>;
 			interrupts = <22 IRQ_TYPE_LEVEL_HIGH 2>;
@@ -895,7 +895,7 @@ usb0: ohci@600000 {
 			status = "disabled";
 		};
 
-		usb1: ehci@700000 {
+		usb1: usb@700000 {
 			compatible = "atmel,at91sam9g45-ehci", "usb-ehci";
 			reg = <0x00700000 0x100000>;
 			interrupts = <22 IRQ_TYPE_LEVEL_HIGH 2>;
diff --git a/arch/arm/boot/dts/microchip/ethernut5.dts b/arch/arm/boot/dts/microchip/ethernut5.dts
index ad7a0850252a..52ccef31b391 100644
--- a/arch/arm/boot/dts/microchip/ethernut5.dts
+++ b/arch/arm/boot/dts/microchip/ethernut5.dts
@@ -101,7 +101,7 @@ data@20000 {
 			};
 		};
 
-		usb0: ohci@500000 {
+		usb0: usb@500000 {
 			num-ports = <2>;
 			status = "okay";
 		};
diff --git a/arch/arm/boot/dts/microchip/evk-pro3.dts b/arch/arm/boot/dts/microchip/evk-pro3.dts
index 6d519d02d190..40c5111c2f0a 100644
--- a/arch/arm/boot/dts/microchip/evk-pro3.dts
+++ b/arch/arm/boot/dts/microchip/evk-pro3.dts
@@ -45,7 +45,7 @@ watchdog@fffffd40 {
 			};
 		};
 
-		usb0: ohci@500000 {
+		usb0: usb@500000 {
 			num-ports = <2>;
 			status = "okay";
 		};
diff --git a/arch/arm/boot/dts/microchip/mpa1600.dts b/arch/arm/boot/dts/microchip/mpa1600.dts
index 005c2758e229..2a97e2c0b894 100644
--- a/arch/arm/boot/dts/microchip/mpa1600.dts
+++ b/arch/arm/boot/dts/microchip/mpa1600.dts
@@ -57,7 +57,7 @@ ssc1: ssc@fffd4000 {
 			};
 		};
 
-		usb0: ohci@300000 {
+		usb0: usb@300000 {
 			num-ports = <1>;
 			status = "okay";
 		};
diff --git a/arch/arm/boot/dts/microchip/pm9g45.dts b/arch/arm/boot/dts/microchip/pm9g45.dts
index c349fd3758a6..2258e62f5864 100644
--- a/arch/arm/boot/dts/microchip/pm9g45.dts
+++ b/arch/arm/boot/dts/microchip/pm9g45.dts
@@ -139,12 +139,12 @@ data@900000 {
 			};
 		};
 
-		usb0: ohci@700000 {
+		usb0: usb@700000 {
 			status = "okay";
 			num-ports = <2>;
 		};
 
-		usb1: ehci@800000 {
+		usb1: usb@800000 {
 			status = "okay";
 		};
 	};
diff --git a/arch/arm/boot/dts/microchip/sam9x60.dtsi b/arch/arm/boot/dts/microchip/sam9x60.dtsi
index b8b2c1ddf3f1..b075865e6a76 100644
--- a/arch/arm/boot/dts/microchip/sam9x60.dtsi
+++ b/arch/arm/boot/dts/microchip/sam9x60.dtsi
@@ -88,7 +88,7 @@ usb0: gadget@500000 {
 			status = "disabled";
 		};
 
-		usb1: ohci@600000 {
+		usb1: usb@600000 {
 			compatible = "atmel,at91rm9200-ohci", "usb-ohci";
 			reg = <0x00600000 0x100000>;
 			interrupts = <22 IRQ_TYPE_LEVEL_HIGH 2>;
@@ -97,7 +97,7 @@ usb1: ohci@600000 {
 			status = "disabled";
 		};
 
-		usb2: ehci@700000 {
+		usb2: usb@700000 {
 			compatible = "atmel,at91sam9g45-ehci", "usb-ehci";
 			reg = <0x00700000 0x100000>;
 			interrupts = <22 IRQ_TYPE_LEVEL_HIGH 2>;
diff --git a/arch/arm/boot/dts/microchip/sama5d2.dtsi b/arch/arm/boot/dts/microchip/sama5d2.dtsi
index 3f99451aef83..dc22fb679333 100644
--- a/arch/arm/boot/dts/microchip/sama5d2.dtsi
+++ b/arch/arm/boot/dts/microchip/sama5d2.dtsi
@@ -136,7 +136,7 @@ usb0: gadget@300000 {
 			status = "disabled";
 		};
 
-		usb1: ohci@400000 {
+		usb1: usb@400000 {
 			compatible = "atmel,at91rm9200-ohci", "usb-ohci";
 			reg = <0x00400000 0x100000>;
 			interrupts = <41 IRQ_TYPE_LEVEL_HIGH 2>;
@@ -145,7 +145,7 @@ usb1: ohci@400000 {
 			status = "disabled";
 		};
 
-		usb2: ehci@500000 {
+		usb2: usb@500000 {
 			compatible = "atmel,at91sam9g45-ehci", "usb-ehci";
 			reg = <0x00500000 0x100000>;
 			interrupts = <41 IRQ_TYPE_LEVEL_HIGH 2>;
diff --git a/arch/arm/boot/dts/microchip/sama5d3.dtsi b/arch/arm/boot/dts/microchip/sama5d3.dtsi
index 70f380c399ce..e95799c17fdb 100644
--- a/arch/arm/boot/dts/microchip/sama5d3.dtsi
+++ b/arch/arm/boot/dts/microchip/sama5d3.dtsi
@@ -1074,7 +1074,7 @@ usb0: gadget@500000 {
 			status = "disabled";
 		};
 
-		usb1: ohci@600000 {
+		usb1: usb@600000 {
 			compatible = "atmel,at91rm9200-ohci", "usb-ohci";
 			reg = <0x00600000 0x100000>;
 			interrupts = <32 IRQ_TYPE_LEVEL_HIGH 2>;
@@ -1083,7 +1083,7 @@ usb1: ohci@600000 {
 			status = "disabled";
 		};
 
-		usb2: ehci@700000 {
+		usb2: usb@700000 {
 			compatible = "atmel,at91sam9g45-ehci", "usb-ehci";
 			reg = <0x00700000 0x100000>;
 			interrupts = <32 IRQ_TYPE_LEVEL_HIGH 2>;
diff --git a/arch/arm/boot/dts/microchip/sama5d3xmb.dtsi b/arch/arm/boot/dts/microchip/sama5d3xmb.dtsi
index 3652c9e24124..90da04b84b39 100644
--- a/arch/arm/boot/dts/microchip/sama5d3xmb.dtsi
+++ b/arch/arm/boot/dts/microchip/sama5d3xmb.dtsi
@@ -172,7 +172,7 @@ usb0: gadget@500000 {
 			status = "okay";
 		};
 
-		usb1: ohci@600000 {
+		usb1: usb@600000 {
 			num-ports = <3>;
 			atmel,vbus-gpio = <&pioD 25 GPIO_ACTIVE_HIGH
 					   &pioD 26 GPIO_ACTIVE_LOW
@@ -181,7 +181,7 @@ &pioD 27 GPIO_ACTIVE_LOW
 			status = "okay";
 		};
 
-		usb2: ehci@700000 {
+		usb2: usb@700000 {
 			status = "okay";
 		};
 	};
diff --git a/arch/arm/boot/dts/microchip/sama5d4.dtsi b/arch/arm/boot/dts/microchip/sama5d4.dtsi
index 355132628604..59a7d557c7cb 100644
--- a/arch/arm/boot/dts/microchip/sama5d4.dtsi
+++ b/arch/arm/boot/dts/microchip/sama5d4.dtsi
@@ -119,7 +119,7 @@ usb0: gadget@400000 {
 			status = "disabled";
 		};
 
-		usb1: ohci@500000 {
+		usb1: usb@500000 {
 			compatible = "atmel,at91rm9200-ohci", "usb-ohci";
 			reg = <0x00500000 0x100000>;
 			interrupts = <46 IRQ_TYPE_LEVEL_HIGH 2>;
@@ -128,7 +128,7 @@ usb1: ohci@500000 {
 			status = "disabled";
 		};
 
-		usb2: ehci@600000 {
+		usb2: usb@600000 {
 			compatible = "atmel,at91sam9g45-ehci", "usb-ehci";
 			reg = <0x00600000 0x100000>;
 			interrupts = <46 IRQ_TYPE_LEVEL_HIGH 2>;
diff --git a/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi b/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
index ae369ff04267..8c3530638c6d 100644
--- a/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
+++ b/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
@@ -111,7 +111,7 @@ data@7ca0000 {
 			};
 		};
 
-		usb0: ohci@500000 {
+		usb0: usb@500000 {
 			num-ports = <2>;
 			status = "okay";
 		};
diff --git a/arch/arm/boot/dts/microchip/usb_a9263.dts b/arch/arm/boot/dts/microchip/usb_a9263.dts
index bc85d8aaf378..60d7936dc562 100644
--- a/arch/arm/boot/dts/microchip/usb_a9263.dts
+++ b/arch/arm/boot/dts/microchip/usb_a9263.dts
@@ -139,7 +139,7 @@ data@7ca0000 {
 			};
 		};
 
-		usb0: ohci@a00000 {
+		usb0: usb@a00000 {
 			num-ports = <2>;
 			status = "okay";
 		};
-- 
2.45.2


