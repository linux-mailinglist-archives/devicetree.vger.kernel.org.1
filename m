Return-Path: <devicetree+bounces-162764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2901BA79C43
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 08:44:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E8391718DA
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 06:43:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E0F01A0BE1;
	Thu,  3 Apr 2025 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="lxowoy/s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2DFC19D891
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 06:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743662633; cv=none; b=QxThrUlLOHNvB8JiTmr5zFg4xxnnKBw1YaBuVCL5RT0vCumSxuwIIlRTE6OdQfB1bm4mvD5hCsdVBnDd6RnJj1wQtDB/aojPyBqNon2YxbTKqfj9xjcDHp33p9PZimVrR0cybhVIcCemVkVVAkres32Dp95iV1eLKmdwRnK2bBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743662633; c=relaxed/simple;
	bh=trZDa03W+SaCymueNLmQy92Bk6GeiRL9+6gtvP80rYM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pXGHPNgXVH1FLCFAWpQmB/gggfBLt7R/8k1gGgwyH+dvPpwD8mXyjPjOZCi6SRBD+7LQ3gEvMAfUpQQHkHWypx/95ardNYz3pTT4uz33Fb61271nJZADsF24qyueTVoqnhfYFoP1OFPqmRbwAePVDEfVLuUx5ZAwP+KqHijWBqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=lxowoy/s; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=Fw5J2bwP9Wx3DI
	VhWgD5cLvSR6UG2CRnpvSbLDR6590=; b=lxowoy/sdt9UgZr73cE4HCc1dJy/oA
	vu7H2fYCj5km55fjVAcEkAJmQwtmDP0H4f/e8K1q+ZniXifzlittJK1GHCNyuKwD
	gCVhgX6Kqw6aWiC6j419LbN627mSfHUGgUU3S3v6Fj+XLUt6MBLkt3AoYwEL4Xkg
	6e1srJos7T+ci49GqdvHX+4mWOcnrPa+xo0g11FL2Ed2SJW6x9rGrPZHn7nbNDHA
	MqF38i7nstRUsf591X/bf1sss72SDSdu/YI74jqZxSEeBE7vHWVe+Z+QAvYJKkrx
	orrWawS4bGr4ZKpXdNLk2c6hWdS24WL+/Awifzm+bL6cLc/d/Bf6nWbQ==
Received: (qmail 2262937 invoked from network); 3 Apr 2025 08:43:45 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 3 Apr 2025 08:43:45 +0200
X-UD-Smtp-Session: l3s3148p1@ZQpiF9ox2qUujnsA
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
Subject: [PATCH] ARM: dts: at91: usb_a9g20: add SPI EEPROM
Date: Thu,  3 Apr 2025 08:43:37 +0200
Message-ID: <20250403064336.4846-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Schematics and board layout indicate that versions with a dataflash
instead of an EEPROM might exist. Let's handle that once we have
hardware to test.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/microchip/usb_a9g20.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/microchip/usb_a9g20.dts b/arch/arm/boot/dts/microchip/usb_a9g20.dts
index bdaf35c6526e..555291cd30b3 100644
--- a/arch/arm/boot/dts/microchip/usb_a9g20.dts
+++ b/arch/arm/boot/dts/microchip/usb_a9g20.dts
@@ -12,3 +12,17 @@ / {
 	model = "Calao USB A9G20";
 	compatible = "calao,usb-a9g20", "atmel,at91sam9g20", "atmel,at91sam9";
 };
+
+&spi0 {
+	cs-gpios = <&pioC 11 GPIO_ACTIVE_LOW>;
+	status = "okay";
+	/* TODO: Some revisions might have a dataflash here instead of an EEPROM */
+	eeprom@0 {
+		compatible = "st,m95640", "atmel,at25";
+		reg = <0>;
+		spi-max-frequency = <2000000>;
+		size = <8192>;
+		pagesize = <32>;
+		address-width = <16>;
+	};
+};
-- 
2.47.2


