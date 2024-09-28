Return-Path: <devicetree+bounces-106027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4E0988ED2
	for <lists+devicetree@lfdr.de>; Sat, 28 Sep 2024 11:30:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA4EE1C20E05
	for <lists+devicetree@lfdr.de>; Sat, 28 Sep 2024 09:30:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1C3C19F11C;
	Sat, 28 Sep 2024 09:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="klJK5fdd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D77C519E989
	for <devicetree@vger.kernel.org>; Sat, 28 Sep 2024 09:30:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727515813; cv=none; b=cc0ZNUitedrXVbXsJJ+kY2AHx8AGa3Sbj3p3J1qve2nYnyRq81bd5yk905NAQ7uGm/wHck65XxBw+cCxVsvdUcYHKEXxjWUlM4nFROKFNIV1MVWKM8c21bkejDNzhNwwP4azg8KUlwcWDq2xPoBxrC9nvRhHccN0yrU9yjwgjyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727515813; c=relaxed/simple;
	bh=u1Mao6Pt1hD/05TXRxjRStZ7jugPNQNY3310P1oBfYk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=o8/XhQaCmWBcm0zDbKzw4oTENqpTXe3gtgVvUA2rjo7y0or8W3eOlPFhg8iQnl4Rjhpk+eI6bCkM4rYRxZpex7z09VZ0BomdbVih3g/mDY2YeTrU9+cWeyNLsOTRrYJ4KPG3vhVtTS0tIunz9zs+wUW/xFCCeaosLETjDZlO1b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=klJK5fdd; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=8maR6u45YPSDoUaReOHVbKQEN6AYER8eFMxpt0e1MMs=; b=klJK5f
	ddjZ6vgXibS4BXBt6x85l28OEf2Y6DRalGlpi7kyBImlkfOYM6aSxSwCE838NEtT
	6lSPc+VPBkII0yDQSzKRQVdXbpPUjo7tPUqkkX4gFNoTrOlDmYNCzA0VgKY4qRjS
	kItOZyK39olsnvXbI8yl8Hkkb4unVAz72dQpWzZb6o545/Q/pZrta6uCTlTzenzw
	M/Sk6YQ50576BXkuTLwbAsIxdKIYoX6wCgFdHYdcSUY7BgdWTt5L+xqt9qVZn0h1
	ZB0MXD3QEwB1oELLclG/Thj9dm5OC5q+5cR39cucJkz8alOAy1KPdIphZL+uDmWL
	ns8aZ51UpixwE8RA==
Received: (qmail 1576673 invoked from network); 28 Sep 2024 11:30:07 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 28 Sep 2024 11:30:07 +0200
X-UD-Smtp-Session: l3s3148p1@OxwCniojuuIgAQnoAHS0AAL7owIOnAiN
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/3] ARM: dts: renesas: genmai: enable SDHI0
Date: Sat, 28 Sep 2024 11:29:54 +0200
Message-ID: <20240928092953.2982-6-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240928092953.2982-5-wsa+renesas@sang-engineering.com>
References: <20240928092953.2982-5-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

For this to work, User LEDs must be disabled because they share their
pins with SD data lines.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/renesas/r7s72100-genmai.dts | 23 ++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/renesas/r7s72100-genmai.dts b/arch/arm/boot/dts/renesas/r7s72100-genmai.dts
index 2d72daa4fac2..e93f444b2442 100644
--- a/arch/arm/boot/dts/renesas/r7s72100-genmai.dts
+++ b/arch/arm/boot/dts/renesas/r7s72100-genmai.dts
@@ -76,7 +76,8 @@ key-1 {
 	};
 
 	leds {
-		status = "okay";
+		/* Needs SDHI0 to be disabled */
+		status = "disabled";
 		compatible = "gpio-leds";
 
 		led1 {
@@ -227,6 +228,18 @@ scif2_pins: serial2 {
 		/* P3_0 as TxD2; P3_2 as RxD2 */
 		pinmux = <RZA1_PINMUX(3, 0, 6)>, <RZA1_PINMUX(3, 2, 4)>;
 	};
+
+	sdhi0_pins: sdhi0 {
+		/* SDHI0: P4_8 up to P4_15 */
+		pinmux = <RZA1_PINMUX(4, 8, 3)>,	/* SD_CD_0 */
+			 <RZA1_PINMUX(4, 9, 3)>,	/* SD_WP_0 */
+			 <RZA1_PINMUX(4, 10, 3)>,	/* SD_D1_0 */
+			 <RZA1_PINMUX(4, 11, 3)>,	/* SD_D0_0 */
+			 <RZA1_PINMUX(4, 12, 3)>,	/* SD_CLK_0 */
+			 <RZA1_PINMUX(4, 13, 3)>,	/* SD_CMD_0 */
+			 <RZA1_PINMUX(4, 14, 3)>,	/* SD_D3_0 */
+			 <RZA1_PINMUX(4, 15, 3)>;	/* SD_D2_0 */
+	};
 };
 
 &rtc_x1_clk {
@@ -244,6 +257,14 @@ &scif2 {
 	status = "okay";
 };
 
+&sdhi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdhi0_pins>;
+
+	bus-width = <4>;
+	status = "okay";
+};
+
 &spi4 {
 	status = "okay";
 
-- 
2.45.2


