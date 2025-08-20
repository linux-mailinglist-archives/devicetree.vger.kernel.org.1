Return-Path: <devicetree+bounces-206645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B85B2D215
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 04:50:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1EAF5188893C
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 02:50:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E83A2367AE;
	Wed, 20 Aug 2025 02:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=projectinitiative.io header.i=@projectinitiative.io header.b="pmrRVYY5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-107163.simplelogin.co (mail-107163.simplelogin.co [79.135.107.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7E9482866
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 02:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=79.135.107.163
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755658181; cv=pass; b=dy6Fe/tt2Q9MEiFsgrp/5h6EaaM9/LF08MjlDhEgey88IrqWAGHzO6EJ13GFHG2uFmKWgrWSNaDi6muZqMiJmY/bSmhCnsD2hhC31txtWwVlX5DQ8n9rx2OmaVbiR7ldijawyO9Uz3UOuM3OyF4DsONVZcvmtkBPGDA0F3lkRuI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755658181; c=relaxed/simple;
	bh=mE/FNXHmnDkXlnsGAUPUvCmd7qH+niPGFcQKPxcn5Fk=;
	h=Subject:Date:MIME-Version:From:To:Cc:Message-ID; b=YD/MuRSgqgiexdwFlAGJzvJLZle1/xzsA2+hfHCW/C9B+RoK1ImWwfISU8nq+8NtXoKEo3waRRY52XKJTE+vYzYefoh97E1ihEKImZZI1bdnLawnfGFYOKxhtJ5f6yFi2Dm1Dnx4j0XP6lF5v2vNXqiRo7EjX/vzGFUQZ+iFBDo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=projectinitiative.io; spf=pass smtp.mailfrom=projectinitiative.io; dkim=pass (1024-bit key) header.d=projectinitiative.io header.i=@projectinitiative.io header.b=pmrRVYY5; arc=pass smtp.client-ip=79.135.107.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=projectinitiative.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=projectinitiative.io
ARC-Seal: i=1; a=rsa-sha256; d=simplelogin.co; s=arc-20230626; t=1755657037;
	cv=none; b=hFs+mQlxgLBbdopKrhrtUMwXpK8cUhzNU0sPdtWxKJiBa0C8FgRlH9YjSV/oglpYwJn5VZJ4/qPlIK/8lcN46w4FL0tlt0KVYGm8jhUKnBJr55PZ0ViIFfLgF7nkYN0XDwIuDOn3m4+0A6lSOBK3TNri+mbewY8A/tSs9xlySa+1xU6XxsuwaHwAdKP0lnHJrzckoy8ev/0sJ/EBYTk5Dpn3ZDxgXcCXNKV+eTUc/kSey9iTOChdfo4Jmo7GcBVnNYL+r7shhXp7DDtzm0ULAkYVs23Vn2EXSWTDrXq2AfyPnRAp1wnyS+5EHVVeno33zTgV2pGFbZOghmH2EycXsw==
ARC-Message-Signature: i=1; a=rsa-sha256; d=simplelogin.co; s=arc-20230626;
	t=1755657037; c=relaxed/simple;
	bh=mE/FNXHmnDkXlnsGAUPUvCmd7qH+niPGFcQKPxcn5Fk=;
	h=Subject:Date:From:To:Cc; b=T5OSS3xG15zs0xt2HhfJVQDQqtFpM0JBQ4ComViM/+bEXcF3VSOwi1ncdWHs7D9heLZOl6hF/IT7MPqOD0wTh30B/QxOi24hx78acHljHiSc8KTdijnZe7o2dVtYtzUFVqP63Bo3HeFoGlz2fAKfMVb23HXZJoRAyXyNJOzQTeONBRG/EqfnQFKyg928eCtImJWq/jrvaqLUy9MXMzE7kRo2F2qUGOYnwNaFFsqz7aBoHt4kcv4FBUqrNfqvJ2dhunJE+MMrg895X6b4Y9bDIwy409DGMFhpm/qHRimubpWoeNmERwJoNTnO29+BFA9rixuigvft1ZpN4zPGcoi9cA==
ARC-Authentication-Results: i=1; mail.protonmail.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=projectinitiative.io;
	s=dkim; t=1755657037;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=bro9JjGbbaJ8cSHnyXnMRJZOIgl4PR8uy7wdbmoDRHM=;
	b=pmrRVYY58Q58irFZMMKFUaJtggwUH2A+WuewyrE9A/1xF06WPConJYRuUpZ1UBTnZg5s+b
	Z36vpYN9Ly4u7pSQcPlstKfEH2a4RESSddVYI2d5iqAPbuGAg2XSC4LUsUgQeAQBkBwOKn
	YZDHdnHClk5jYmfAZ+g1HJkiZmTvBGQ=
Subject: [PATCH] arm64: dts: rockchip: rk3588s-rock-5a: Add green power LED
Date: Tue, 19 Aug 2025 21:30:12 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: kylepzak@projectinitiative.io
To: heiko@sntech.de
Cc: 
 devicetree@vger.kernel.org,linux-arm-kernel@lists.infradead.org,linux-rockchip@lists.infradead.org,conor+dt@kernel.org,krzk+dt@kernel.org,robh@kernel.org
Message-ID: 
 <175565703702.6.15498212790604388615.862782045@projectinitiative.io>
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 862782045
X-SimpleLogin-Want-Signing: yes

The Radxa ROCK 5A board includes a green power LED that is defined in
the vendor device tree but is missing from the upstream kernel DTS file.

This causes the LED to be uncontrollable from the operating system, as no
entry is created for it under /sys/class/leds.

This patch adds the missing node to the leds block, creating a
"green:power" device and allowing the LED to be controlled by the kernel.

Signed-off-by: Kyle Petryszak <kylepzak@projectinitiative.io>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index f894742b1ebe..f70b49d9361a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -52,6 +52,13 @@ leds {
 		pinctrl-names = "default";
 		pinctrl-0 = <&io_led>;
 
+		power-led {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_POWER;
+			gpios = <&gpio3 RK_PC4 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "default-on";
+		};
+
 		io-led {
 			color = <LED_COLOR_ID_BLUE>;
 			function = LED_FUNCTION_STATUS;
-- 
2.49.0



