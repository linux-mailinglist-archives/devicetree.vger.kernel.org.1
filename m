Return-Path: <devicetree+bounces-131372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CCE9F2F91
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 12:37:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E3937162AC9
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 11:35:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E42D7205500;
	Mon, 16 Dec 2024 11:31:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0625B203D6A
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 11:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734348701; cv=none; b=GD/bBzI8VAD/jQgtqGV7mcQexnWpRRMA/dc7bODYk6wdhIEBxVsy+8rIO7OpHf9jCjdkKE/ciF7vmTn1NIc7us/hoiaBXdJRmTSDR1EBGLZQ7gEK7lQvmbX+1sdC9DdoxoZHZKiDDtgznJBP+PnY5IOmakwaqjRuUdiRIKAeEWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734348701; c=relaxed/simple;
	bh=bfmqmPheQBk7UY3e97uCXs7r2n2wIqSrEAeHw4+Y8Ik=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=n41KjsSAdvts945rxpi0XBrLcq7oDVbwBxgd5Z5r82xJ4LGlajoq1XNQobAEKr9Njnb6+6fCM0TMIJmZmcyVcYJCC8YeGSe2YLuX2dK0gZgaTQOQTJrOzRmoOmXH0+15oZoumNOlxgo+SCqe2krUOjqUZdcjvxPK7xYMzBiU32o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BGBUxOO028690;
	Mon, 16 Dec 2024 20:31:00 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v5 03/12] arm64: dts: rockchip: Use a longer PWM period for the fan on Radxa ROCK 5C
Date: Mon, 16 Dec 2024 11:30:43 +0000
Message-ID: <20241216113052.15696-4-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241216113052.15696-1-naoki@radxa.com>
References: <20241216113052.15696-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The fan on Radxa ROCK 5C is driven via an AO3416 MOSFET, which has a
total switch-on time of 0,6us and a total switch-off time of 6us [1],
meaning that the current PWM period of just 10us is too short for
fine-grained fan speed control. Increase the PWM period to 60us, so
that the switch-on and switch-off time of the MOSFET fall within a
more reasonable ~10% of the full period, thus making lower PWM duty
cycles meaningful.

[1] https://www.aosmd.com/pdfs/datasheet/AO3416.pdf

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v5:
- Reword commit message (Alexey Charkov)
Changes in v4:
- none
Changes in v3:
- none
Changes in v2:
- reword commit message
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 630f026d856c..85589d1a6d3b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -73,7 +73,7 @@ pwm-fan {
 		#cooling-cells = <2>;
 		cooling-levels = <0 64 128 192 255>;
 		fan-supply = <&vcc_5v0>;
-		pwms = <&pwm3 0 10000 0>;
+		pwms = <&pwm3 0 60000 0>;
 	};
 
 	pcie2x1l2_3v3: regulator-pcie2x1l2-3v3 {
-- 
2.43.0


