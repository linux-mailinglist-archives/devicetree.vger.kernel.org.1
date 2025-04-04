Return-Path: <devicetree+bounces-163162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB99A7BB7F
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 13:28:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3A10F189E845
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 11:28:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6014B1A315C;
	Fri,  4 Apr 2025 11:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="XkqPD76m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489A518EFD4
	for <devicetree@vger.kernel.org>; Fri,  4 Apr 2025 11:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743766087; cv=none; b=BpUW+8uBZhdCQmVmgdWvMF8J/SkF62HAZJfNLXachsNnPkZBOJ77CpoZmIQfKHeDIBgOgI+EH5CADrMqKkX3ym8L5pUJ4Qh9ZxfaPIp2fPjR6BYbn8kGra3i6MPFZ1tJvndCHsbvCkZlXP5tNRvn+bPCe0XWr6u7RuSwuvrjMb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743766087; c=relaxed/simple;
	bh=jMifiJvw5h0LZZCJFIsKFts25KfasHg8feUQEbjGfMQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=l3luNvNawfE5GhsIZZyavZ2cN0NQtbhXepBdrvJpaViBstMJ2S1rBSrM7WW38oTsqJMLEfBzIch46amo6ap80KAzb9c7SFC39erLM3XTVVqHywCDv/kNfSDMXrirM1kZJUp+xwmxAFWiv8dkFxcv9kd6GSY7nRHsfc5e60Zoz58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=XkqPD76m; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=6x83gL/65MaXsh
	ed1MGHV1G/Bw0QFznUQR/GQF+fLak=; b=XkqPD76mdJ00JpoIehCMiNifODzMbD
	9cRf8okGwgcSYvgpRDvKrjaEO7fOOizPDK33erHXYQaU0NmxtImlcOYUz0GjWjz9
	ZzeG7w7X7Hn3F5P29ZG5PLKtTngl7ivnbqmad2sGNxVsg3/Fy9xEHXpkBKUGaKc/
	zTFjS4JX3o9XFeW+A7mCjplDEj1vJ5vam92fdkPVMFg0I/V0W8ywaTSEg76SFWEh
	VZc0jdORHiX1Tsd9Rio+1zl71u1Bj7Uh9US7rOla+Ofo+swMiyWSJUbUNrbCsQVy
	imO4AyWG2Unc95z6GsVHxlLcC1sohBnUzgzQvLWy3VP+X36KilM6N34Q==
Received: (qmail 2751198 invoked from network); 4 Apr 2025 13:27:52 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 4 Apr 2025 13:27:52 +0200
X-UD-Smtp-Session: l3s3148p1@Q9xNLfIxNOQgAwDPXxG/ACep4iRxujz/
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>,
	devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: at91: usb_a9263: fix GPIO for Dataflash chip select
Date: Fri,  4 Apr 2025 13:27:43 +0200
Message-ID: <20250404112742.67416-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Dataflash did not work on my board. After checking schematics and using
the proper GPIO, it works now. Also, make it active low to avoid:

flash@0 enforce active low on GPIO handle

Fixes: 2432d201468d ("ARM: at91: dt: usb-a9263: add dataflash support")
Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/microchip/usb_a9263.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/microchip/usb_a9263.dts b/arch/arm/boot/dts/microchip/usb_a9263.dts
index ebaf198e1bc4..8e1a3fb61087 100644
--- a/arch/arm/boot/dts/microchip/usb_a9263.dts
+++ b/arch/arm/boot/dts/microchip/usb_a9263.dts
@@ -58,7 +58,7 @@ usb1: gadget@fff78000 {
 			};
 
 			spi0: spi@fffa4000 {
-				cs-gpios = <&pioB 15 GPIO_ACTIVE_HIGH>;
+				cs-gpios = <&pioA 5 GPIO_ACTIVE_LOW>;
 				status = "okay";
 				flash@0 {
 					compatible = "atmel,at45", "atmel,dataflash";
-- 
2.47.2


