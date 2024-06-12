Return-Path: <devicetree+bounces-74780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D60390482E
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 03:14:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A989FB20EB7
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 01:13:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D37A0A21;
	Wed, 12 Jun 2024 01:13:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A79A4411
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718154835; cv=none; b=KWKSQOtvh+RXKkhUUEVuaRtrcA+GT+6UokUY7lQPhrRlLUUJRPwKomgHmqaInmVg6l/bbzDE24O1dxC9foa7cckUateCKZ4fO+646pRIiZ+e56IIiZmtKIOFZipcnspQmBA005gcW5oZ1zlrSHaKkqw9VsE+mLrzXTddnOg+9SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718154835; c=relaxed/simple;
	bh=ub1/fXsMjTFX2Ovapo7mFavi4RgXz6/VHnuW30sJjgA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ayCpKUgIjlkVhZKiRkdKiJuKyDcvit+WriyArPXKJ3GIGHZmpr0KC6aBuKJp7ymEkR/HzVTqDvNm5o0te9PgGBJrs1A5g33bA3nAUHfuDQvQPhIv1CweC032jPh+dadubj0z0xpUw0mFhJxyWpTorEBOO4Ew+ltgU9OQSP0pmW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45C1CUMf030131;
	Wed, 12 Jun 2024 10:12:30 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>
Subject: [PATCH v2] arm64: dts: rockchip: make poweroff(8) work on Radxa ROCK 5A
Date: Wed, 12 Jun 2024 10:12:21 +0900
Message-ID: <20240612011221.822-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240611122746.751-1-naoki@radxa.com>
References: <20240611122746.751-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Designate the RK806 PMIC on the Radxa ROCK 5A as the system power
controller, so the board shuts down properly on poweroff(8).

Fixes: 75fdcbc8f4c1 ("arm64: dts: rockchip: add PMIC to rock-5a")

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>

Changes in v2:
- remove an empty line above "system-power-controller;"
- reword commit message
- add R-b tag
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index b070955627be..3b9a349362db 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -394,6 +394,7 @@ pmic@0 {
 		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
 			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
 		spi-max-frequency = <1000000>;
+		system-power-controller;
 
 		vcc1-supply = <&vcc5v0_sys>;
 		vcc2-supply = <&vcc5v0_sys>;
-- 
2.43.0


