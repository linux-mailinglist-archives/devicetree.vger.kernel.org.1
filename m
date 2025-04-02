Return-Path: <devicetree+bounces-162690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 518F6A796D8
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 22:49:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D62B41895D91
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 20:49:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8ECC1F3B82;
	Wed,  2 Apr 2025 20:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="cSH2PfcJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D216D193436
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 20:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743626948; cv=none; b=fyIeB1iUrvuMCoEEJ5v5GZHvjhXdayUsetin/PJxoHstvwEL4Qjim1h4STWyt0XAd0s6xCdx99n3f/p41jnhgVPRTrpW5ZllW38T1OWAXkM6tNt5HyGGt8y2K753ZYnT6OSRDmcjinqsqJP72yJOcM7dAp587hiVN31Eo9gYTsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743626948; c=relaxed/simple;
	bh=CXgM0cOOvQw6lO2kpuU1Qx3uj7F9kSv7ajEwrDYCuA0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ucc5RwmorYDP81iMK1WnFLfIk8lXMBzWU5hWMnYYqPhrBgigBZIQJjFPiBSiDg9T0CC0QrWt7jrQlK12GcL8q2r2MAlQk5dgBN0spqX4kHuWtWV+ecvFCDGmFQkoXIbp18AAnKcVGldFAfBoxE4/+za+3pZCVCU+2r4n7OArkJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=cSH2PfcJ; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=Uzga02gahQxraS2M+4bHTPzRSV1Qy0HHYmWPiH16T9o=; b=cSH2Pf
	cJ4Ib1+KODs94a6JqGeqS1ALQq1MDEU7tYDZxXO3l3Ty5AhxwRclQrXgyJMNn/+V
	Lx/U/GaXJqLSjpPHQgUFd+4h5JiYgc+LIng/cmlbWW21X854lFTPu3lpHb/lFBZs
	Akq1nxUSw0omIOMLQsiMSvWVCTBUkMNSAgs4I7PrjFdOlqMkhW1/OIQhhQovpoW9
	55rQeCicHZpJXzQUWZaJNIMdMO2RlxuOgzKLnpkC9Lcfb9/TP+Di8Bj0los2P72t
	/lFUsiBfKsRIhnnHt27NwEU5OdTE+gPpstdAt/jcFVwRSH60dd9ksbOqM4jBRpJ/
	0VUjjyeq70nTopOw==
Received: (qmail 2132837 invoked from network); 2 Apr 2025 22:49:00 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 2 Apr 2025 22:49:00 +0200
X-UD-Smtp-Session: l3s3148p1@bJ5lyNExoLwujnsv
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
Subject: [PATCH 1/4] ARM: dts: at91: calao_usb: simplify memory node
Date: Wed,  2 Apr 2025 22:48:51 +0200
Message-ID: <20250402204856.5197-2-wsa+renesas@sang-engineering.com>
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

All devices have 64MB RAM. So, the memory node can bet put into the
most generic DTSI.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/microchip/usb_a9260.dts         | 4 ----
 arch/arm/boot/dts/microchip/usb_a9260_common.dtsi | 4 ++++
 arch/arm/boot/dts/microchip/usb_a9g20_common.dtsi | 4 ----
 3 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/microchip/usb_a9260.dts b/arch/arm/boot/dts/microchip/usb_a9260.dts
index e7f7b259ccf3..de19904e9e91 100644
--- a/arch/arm/boot/dts/microchip/usb_a9260.dts
+++ b/arch/arm/boot/dts/microchip/usb_a9260.dts
@@ -16,10 +16,6 @@ chosen {
 		bootargs = "mem=64M console=ttyS0,115200 root=/dev/mtdblock5 rw rootfstype=ubifs";
 	};
 
-	memory@20000000 {
-		reg = <0x20000000 0x4000000>;
-	};
-
 	ahb {
 		apb {
 			shdwc: poweroff@fffffd10 {
diff --git a/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi b/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
index 8c3530638c6d..b094c31033b5 100644
--- a/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
+++ b/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
@@ -16,6 +16,10 @@ main_xtal {
 		};
 	};
 
+	memory@20000000 {
+		reg = <0x20000000 0x4000000>;
+	};
+
 	ahb {
 		apb {
 			dbgu: serial@fffff200 {
diff --git a/arch/arm/boot/dts/microchip/usb_a9g20_common.dtsi b/arch/arm/boot/dts/microchip/usb_a9g20_common.dtsi
index f1946e0996b7..b11ad0b29026 100644
--- a/arch/arm/boot/dts/microchip/usb_a9g20_common.dtsi
+++ b/arch/arm/boot/dts/microchip/usb_a9g20_common.dtsi
@@ -14,10 +14,6 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory@20000000 {
-		reg = <0x20000000 0x4000000>;
-	};
-
 	i2c-gpio-0 {
 		rtc@56 {
 			compatible = "microcrystal,rv3029";
-- 
2.47.2


