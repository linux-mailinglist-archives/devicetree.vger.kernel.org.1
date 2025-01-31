Return-Path: <devicetree+bounces-142132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09962A2444E
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 22:03:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 488977A27ED
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 21:02:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 856F71F3D5A;
	Fri, 31 Jan 2025 21:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="NWH3uhs5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 946641F3D59
	for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 21:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738357379; cv=none; b=WAvWnQflxLRYW6e8ZIccQoaJIVz1E/vekUOct0Dt4V0VMQE6Phmlzf0pu2rDvIdm0nEGZ8zU45kLdrhChdBo/3YzLjHRluFcPNTqmS9oPg7cSMCubLfnj/L6UfU7kZTC2UjaFkRR7p7RiLZaYHCnGymeSkDiq6UCXgWEUHnqBh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738357379; c=relaxed/simple;
	bh=/89jM5/MOWhUu7fmjj+/rhinHxWD3d/J1vJDzB4uBvE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qdmlnODIat4D4ubWDwcbKRAMjrDRDpuVSuZpS7nbIOWeEPcGJiEvxna13IBrsRHltXADthYrR8kDx3KJMjt7CmouEusXV7Wel/fLiraOMj9H4cdrGqailR68e/Ktz1LbDIJzSdZjJYvAyGOXwwe0Jr+6OFY7RkQAE2SBUv3cuP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=NWH3uhs5; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=1LGZwXFDvGhM2ypSbrPOE8q4tiwj4t7HCxUVFxGryRM=; b=NWH3uh
	s5RuVe0hw/ORsnRuoXaFiRYGWgT1BC8PIfCA287KPDAAJ/qU/diMW573fzZGek6X
	cbFxYAmt81qpYUYuwo+8amFtxBdDuTCFJ2ZjopfZwlV49znf4sXNTbw37Xwsh5aF
	jbOpKVuK0wPo00OIw+tA+bhBu/rzGW0E9KdQOYXjvFWlld4IbUfYqseWSy5biqx7
	W634PAXcbv51pD4M4CJIuzGkUVchKxEgvHqy7+obLXyQzsi1xbMJ3omIuNkqWWHJ
	uLeWCiqbIY/STvSnNVrxwv42Z8MTjsPMX3sEShfEMIh74ifq7j0XnX5q9IP5TUA0
	GRkO8H3TMe03ZKOQ==
Received: (qmail 1802101 invoked from network); 31 Jan 2025 22:02:53 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 31 Jan 2025 22:02:53 +0100
X-UD-Smtp-Session: l3s3148p1@VAu03QYtrBHUph5e
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
Subject: [PATCH 3/4] ARM: dts: at91: calao_usb: fix button nodes
Date: Fri, 31 Jan 2025 22:02:38 +0100
Message-ID: <20250131210236.36212-9-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250131210236.36212-6-wsa+renesas@sang-engineering.com>
References: <20250131210236.36212-6-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adhere naming to DT schema. And remove the unneeded #*-cells. Found by
'make dtbs_check'.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/microchip/usb_a9260_common.dtsi  |  4 +---
 arch/arm/boot/dts/microchip/usb_a9263.dts          |  4 +---
 arch/arm/boot/dts/microchip/usb_a9g20-dab-mmx.dtsi | 10 ++++------
 3 files changed, 6 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi b/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
index 19084ba75883..ae369ff04267 100644
--- a/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
+++ b/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
@@ -128,10 +128,8 @@ user_led {
 
 	gpio_keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
-		user_pb {
+		button-user-pb {
 			label = "user_pb";
 			gpios = <&pioB 10 GPIO_ACTIVE_LOW>;
 			linux,code = <28>;
diff --git a/arch/arm/boot/dts/microchip/usb_a9263.dts b/arch/arm/boot/dts/microchip/usb_a9263.dts
index e1f6dd7ed2d4..bc85d8aaf378 100644
--- a/arch/arm/boot/dts/microchip/usb_a9263.dts
+++ b/arch/arm/boot/dts/microchip/usb_a9263.dts
@@ -156,10 +156,8 @@ user_led {
 
 	gpio_keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
-		user_pb {
+		button-user-pb {
 			label = "user_pb";
 			gpios = <&pioB 10 GPIO_ACTIVE_LOW>;
 			linux,code = <28>;
diff --git a/arch/arm/boot/dts/microchip/usb_a9g20-dab-mmx.dtsi b/arch/arm/boot/dts/microchip/usb_a9g20-dab-mmx.dtsi
index 08d58081201a..5b1d80c0ab26 100644
--- a/arch/arm/boot/dts/microchip/usb_a9g20-dab-mmx.dtsi
+++ b/arch/arm/boot/dts/microchip/usb_a9g20-dab-mmx.dtsi
@@ -65,28 +65,26 @@ green {
 
 	gpio_keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
-		user_pb1 {
+		button-user-pb1 {
 			label = "user_pb1";
 			gpios = <&pioB 25 GPIO_ACTIVE_LOW>;
 			linux,code = <0x100>;
 		};
 
-		user_pb2 {
+		button-user-pb2 {
 			label = "user_pb2";
 			gpios = <&pioB 13 GPIO_ACTIVE_LOW>;
 			linux,code = <0x101>;
 		};
 
-		user_pb3 {
+		button-user-pb3 {
 			label = "user_pb3";
 			gpios = <&pioA 26 GPIO_ACTIVE_LOW>;
 			linux,code = <0x102>;
 		};
 
-		user_pb4 {
+		button-user-pb4 {
 			label = "user_pb4";
 			gpios = <&pioC 9 GPIO_ACTIVE_LOW>;
 			linux,code = <0x103>;
-- 
2.45.2


