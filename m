Return-Path: <devicetree+bounces-236398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE09C44002
	for <lists+devicetree@lfdr.de>; Sun, 09 Nov 2025 15:20:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC7383AD105
	for <lists+devicetree@lfdr.de>; Sun,  9 Nov 2025 14:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29A142FD7BD;
	Sun,  9 Nov 2025 14:19:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231DD2FCC1B
	for <devicetree@vger.kernel.org>; Sun,  9 Nov 2025 14:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762697988; cv=none; b=TW6+HX+lOYzHaK12YdhvYKzMx6AK6wSTub70Ym/TlkNoyHHWolEzE4QDDYsZbN35Mz5tb1I+FWZTLX3yBiHioqq7GkqD8OXaiETSE6zx8sOY2gAc8mWxdq3pIOTWReRoMPUKHjRvCsfWR2paXOLUGkctOJHM+UCiUWDN8Zpf26Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762697988; c=relaxed/simple;
	bh=lKUr55/ZEpEVgzdb//M9+Ci5t5J335kKe3g7p5Y7vcA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=m77gIrd4cMhVELiZ8akzsSgusemtb5QBTlJ5Of3fkmMSJW8hCx/JrQJuIesYx/wyJfmf+SdVWoLkcEI27y44rmyNmQp3OyY5j0eMGMNk889MH8t+r15ULzVGWtFZgADyhxaD2P6NgTF5r+yqW5s9XQAwrIaJrJaS0OJbspuhBoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5A9EJ5dm015030;
	Sun, 9 Nov 2025 23:19:07 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, alchark@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v7 02/14] arm64: dts: rockchip: Use a longer PWM period for the fan on Radxa ROCK 5C
Date: Sun,  9 Nov 2025 14:18:47 +0000
Message-ID: <20251109141859.206835-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251109141859.206835-1-naoki@radxa.com>
References: <20251109141859.206835-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The fan on Radxa ROCK 5C is driven via an AO3416 MOSFET, which has a
total switch-on time of 0.6us and a total switch-off time of 6us [1],
meaning that the current PWM period of just 10us is too short for
fine-grained fan speed control. Increase the PWM period to 60us, so
that the switch-on and switch-off time of the MOSFET fall within a
more reasonable ~10% of the full period, thus making lower PWM duty
cycles meaningful.

[1] https://www.aosmd.com/pdfs/datasheet/AO3416.pdf

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v7:
- Collect R-b tag
- Reword commit message
Changes in v6:
- None
Changes in v5:
- Reword commit message (Alexey Charkov)
Changes in v4:
- None
Changes in v3:
- None
Changes in v2:
- Reword commit message
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 378a65e2561ad..086b4f45fabf3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -73,7 +73,7 @@ fan: fan {
 		#cooling-cells = <2>;
 		cooling-levels = <0 24 44 64 128 192 255>;
 		fan-supply = <&vcc_5v0>;
-		pwms = <&pwm3 0 10000 0>;
+		pwms = <&pwm3 0 60000 0>;
 	};
 
 	pcie2x1l2_3v3: regulator-pcie2x1l2-3v3 {
-- 
2.43.0


