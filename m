Return-Path: <devicetree+bounces-162691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1FBA796D7
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 22:49:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4F7CF7A550E
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 20:48:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 194091F3FDD;
	Wed,  2 Apr 2025 20:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="bO4D2hn9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF4DE1F3BBF
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 20:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743626953; cv=none; b=TxmEBmYcrrkW7DKk2lBJ7eFKMAETZ1HlWWVeHnGMB/6qemuJ/vxxjKxPUfS6JR2R0dZoD87rstNJCz1rrMRu2qHBRn5waKtJXmsfr+tmPXIFovpf9SUDkI/SpxNydmqN2/0UkzqEJ5Cbi+TnGEM3cpCm2m/NdF43f/QUpQVOBMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743626953; c=relaxed/simple;
	bh=p81AGgkjvAaOgH7RWoA/xvLZc1TExAVAsr++50fUsPI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=q+cJYfZZHYhxRi6kRNdawno7PMroL4LCc3y18zxXAIhpsPi1LG8Ue8bSx2t1vWAbjhGYjdTTE4Q+QMuk7n++LADJLVoHz7zSnpmt74s9hgkPWfOp9AV/4d/TewoyEhWFIrkW07lgMW13IHs1xVDUyTHkAP/1DuWEav4LpmOohek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=bO4D2hn9; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=miiQgbVc/Fy7PZMHYxtwsXXU5MxHGcWvgj0JliIHdAo=; b=bO4D2h
	n9CaRrILrppllC2U/zyLB6fq86N7gzmo2KWTwPtyRVcp9pnT3YXxPh3NQg88qQO6
	sLQXMLmMwHU9zvkGBTVOo3bP7vw/Ey45ewDtXTbaLH1USNo3UOVrkFFPE0gojTIo
	L8Z9tS/Ca7Fq9fuqx3TNMSpPSOPoT9Vn0qz1FcPfjQWLXaUlWZbhH7Z06OzxA/2M
	JflW43kHkgS97c0k57ntYcPSW4dwg6lg/H5uxTSsPJOg4J13DrdCK4V76Cp1tfXX
	AC47PIDc2e2Bs99Dx/iO0eHLFqe5vLzWDYImz9tIQEfDttgK30D1ihU4gR9Ik6hJ
	jcuq7RCJUabKLVpA==
Received: (qmail 2132930 invoked from network); 2 Apr 2025 22:49:02 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 2 Apr 2025 22:49:02 +0200
X-UD-Smtp-Session: l3s3148p1@hnmGyNExuLwujnsv
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
Subject: [PATCH 3/4] ARM: dts: at91: calao_usb: simplify chosen node
Date: Wed,  2 Apr 2025 22:48:53 +0200
Message-ID: <20250402204856.5197-4-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250402204856.5197-1-wsa+renesas@sang-engineering.com>
References: <20250402204856.5197-1-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

All devices use equal parameters in 'chosen'. So, the memory node can
bet put into the most generic DTSI.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/microchip/usb_a9260.dts         | 5 -----
 arch/arm/boot/dts/microchip/usb_a9260_common.dtsi | 5 +++++
 arch/arm/boot/dts/microchip/usb_a9g20_common.dtsi | 5 -----
 3 files changed, 5 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/microchip/usb_a9260.dts b/arch/arm/boot/dts/microchip/usb_a9260.dts
index 1de2864b4cf6..3b61e7145060 100644
--- a/arch/arm/boot/dts/microchip/usb_a9260.dts
+++ b/arch/arm/boot/dts/microchip/usb_a9260.dts
@@ -12,11 +12,6 @@ / {
 	model = "Calao USB A9260";
 	compatible = "calao,usb-a9260", "atmel,at91sam9260", "atmel,at91sam9";
 
-	chosen {
-		bootargs = "mem=64M root=/dev/mtdblock5 rw rootfstype=ubifs";
-		stdout-path = "serial0:115200n8";
-	};
-
 	ahb {
 		apb {
 			shdwc: poweroff@fffffd10 {
diff --git a/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi b/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
index b094c31033b5..da32c5fdcc47 100644
--- a/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
+++ b/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
@@ -6,6 +6,11 @@
  */
 
 / {
+	chosen {
+		bootargs = "mem=64M root=/dev/mtdblock5 rw rootfstype=ubifs";
+		stdout-path = "serial0:115200n8";
+	};
+
 	clocks {
 		slow_xtal {
 			clock-frequency = <32768>;
diff --git a/arch/arm/boot/dts/microchip/usb_a9g20_common.dtsi b/arch/arm/boot/dts/microchip/usb_a9g20_common.dtsi
index b11ad0b29026..6bc307c91d65 100644
--- a/arch/arm/boot/dts/microchip/usb_a9g20_common.dtsi
+++ b/arch/arm/boot/dts/microchip/usb_a9g20_common.dtsi
@@ -9,11 +9,6 @@
 #include "usb_a9260_common.dtsi"
 
 / {
-	chosen {
-		bootargs = "mem=64M root=/dev/mtdblock5 rw rootfstype=ubifs";
-		stdout-path = "serial0:115200n8";
-	};
-
 	i2c-gpio-0 {
 		rtc@56 {
 			compatible = "microcrystal,rv3029";
-- 
2.47.2


