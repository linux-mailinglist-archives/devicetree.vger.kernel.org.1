Return-Path: <devicetree+bounces-133438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 127239FA909
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 02:40:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 87BA51656DD
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 01:40:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E98910940;
	Mon, 23 Dec 2024 01:40:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350F510A1E
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 01:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734918004; cv=none; b=aRjSLDRZXBh8I2GHT1GLjKz7OWRGTBlUBaVZeFBqKmVyne7cndoMMagc99HPCbIr4ugGIEET4vW6rbPZezv8x3n5l5ZI1XlGpfcjLOqJxQo7/WUd/c8bXx8v8Blm+OC2eBCh5NqUCL4QcW8hKIWzqITEwt41qGCtKmIvd6WDIDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734918004; c=relaxed/simple;
	bh=uP3R77+xffTlziYizKryEDxWvMzvBIw4a8ir10KG97Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Yz909Cl8hEyN5aPScQIlgl2ZX4QOGYt03DOVkASTfLqW+9biE2Dw2P3uwtZP67M0zBqMzw77HmHEhn1+w8z3L64p73+SzumThdrEzIite6Fxw6RNgcF6yPTXTjX+ekZ13CwrUxFnNi59vYKVftslyqcqDdvTRSvpKhdNi+QvA34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BN1dW71024519;
	Mon, 23 Dec 2024 10:39:33 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v6 2/7] arm64: dts: rockchip: Use a longer PWM period for the fan on Radxa ROCK 5C
Date: Mon, 23 Dec 2024 01:39:21 +0000
Message-ID: <20241223013926.1134-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241223013926.1134-1-naoki@radxa.com>
References: <20241223013926.1134-1-naoki@radxa.com>
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
Changes in v6:
- none
Changes in v5:
- Reword commit message (Alexey Charkov)
Changes in v4:
- none
Changes in v3:
- none
Changes in v2:
- Reword commit message
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 23e9b447b6f0..910ec67bd4eb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -73,7 +73,7 @@ fan {
 		#cooling-cells = <2>;
 		cooling-levels = <0 64 128 192 255>;
 		fan-supply = <&vcc_5v0>;
-		pwms = <&pwm3 0 10000 0>;
+		pwms = <&pwm3 0 60000 0>;
 	};
 
 	pcie2x1l2_3v3: regulator-pcie2x1l2-3v3 {
-- 
2.43.0


