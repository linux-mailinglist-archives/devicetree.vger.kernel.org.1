Return-Path: <devicetree+bounces-205923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B91DB2AE48
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 18:35:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4916D16AB43
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 16:35:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D965E341ACF;
	Mon, 18 Aug 2025 16:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b="TrtS4mC1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx4.wp.pl (mx4.wp.pl [212.77.101.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145E23375AE
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 16:35:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.77.101.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755534935; cv=none; b=ZvYx4cxfpmufuw66okFwFkz5U7chwVCIhPdXiE37rBGK7AELSAFAtOQ4vb+H4qhudv4mvy8P5750iqhKmeggVszycMvSb0vsC7uBNiUPhEUwqEVdm607uUSh3XuvvdkPa3dWMoL7fn+bSsXUJqmzaoJckpq8czQMAAoxOHZ0amo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755534935; c=relaxed/simple;
	bh=SvvF3RruBxBPPuaic3E3TB3nL2auo3yTVwtiWd9Kc0A=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DnB8xRbJIbLZeCXcQVrxPy1bsvaLGvlHgdnb2CVUIzlamKBDXXQPlKqdsvfLRLjPVKwy1mdw4wH+EzlPFG8h8OFqEcYJxSHmPXPhRWBEjIGG8AeCwZH0nE43cXifmS2seEURAlwQ2L5ODHj3HbZBw7tkn1On07N/uH2FRdS5+E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl; spf=pass smtp.mailfrom=wp.pl; dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b=TrtS4mC1; arc=none smtp.client-ip=212.77.101.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wp.pl
Received: (wp-smtpd smtp.wp.pl 16057 invoked from network); 18 Aug 2025 18:35:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=20241105;
          t=1755534921; bh=NqaOq+Y6A6JWpwec3qqcrxStuJiFGsFgWtQL28Pp3AY=;
          h=From:To:Cc:Subject;
          b=TrtS4mC1X8oObk0ejFm+RC81OOm1sQu4vfXTCe92WeIw9oRL/QmcoRynsDsyPNPIi
           sfTqB1vTKZqFdD8IpDF8itULE1X8s2iBOJxXAcC+rAgQdfKS33KhKX6mD7CCI/+GRi
           +1S8wA9zPV9PCK2hAhmcVYw1N1fyTpy3gIi5gYcLjugwk+yx0A+u2S/dCn9W2M9xli
           LTaeVpN/J8nX5jbILInuAW9egK9czxrV+G5tliXSBL9zNN4LBjqjIBK7u9EtvQtkPh
           UwvZxmQN1ByhJy9EmrteuVV2JzXzUJp3e4cPDpwww8vrNodieFZBtFHQbM5kghg5qE
           YoZY0i9egMUAw==
Received: from 83.24.134.210.ipv4.supernova.orange.pl (HELO laptop-olek.lan) (olek2@wp.pl@[83.24.134.210])
          (envelope-sender <olek2@wp.pl>)
          by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <robh@kernel.org>; 18 Aug 2025 18:35:21 +0200
From: Aleksander Jan Bajkowski <olek2@wp.pl>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	wens@csie.org,
	jernej.skrabec@gmail.com,
	samuel@sholland.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: Aleksander Jan Bajkowski <olek2@wp.pl>
Subject: [PATCH] arm64: dts: allwiner: h5: OrangePi PC2: add ethernet LEDs
Date: Mon, 18 Aug 2025 18:35:13 +0200
Message-ID: <20250818163520.1004528-1-olek2@wp.pl>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-WP-DKIM-Status: good (id: wp.pl)                                                      
X-WP-MailID: c4c82e302e075cf6c3724b38962be065
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [ESMk]                               

This patch adds support for Ethernet LEDs.

Signed-off-by: Aleksander Jan Bajkowski <olek2@wp.pl>
---
 .../dts/allwinner/sun50i-h5-orangepi-pc2.dts  | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
index 0f29da7d51e6..7688f565ec9b 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
@@ -7,6 +7,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/sun4i-a10.h>
 
 / {
@@ -132,6 +133,25 @@ &external_mdio {
 	ext_rgmii_phy: ethernet-phy@1 {
 		compatible = "ethernet-phy-ieee802.3-c22";
 		reg = <1>;
+
+		leds {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			led@0 {
+				reg = <0>;
+				color = <LED_COLOR_ID_GREEN>;
+				function = LED_FUNCTION_LAN;
+				linux,default-trigger = "netdev";
+			};
+
+			led@1 {
+				reg = <1>;
+				color = <LED_COLOR_ID_AMBER>;
+				function = LED_FUNCTION_LAN;
+				linux,default-trigger = "netdev";
+			};
+		};
 	};
 };
 
-- 
2.47.2


