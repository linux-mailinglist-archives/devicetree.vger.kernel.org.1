Return-Path: <devicetree+bounces-128714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 426459E94E0
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 13:52:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 184C3281E04
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 12:52:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5152F228CAC;
	Mon,  9 Dec 2024 12:52:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549C2227572
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 12:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733748749; cv=none; b=uoUrlNyeRCFS936EfqqFVfpehU3koOvwFzZYuQScwCQN7poeqpBLZAcc/RIC5gdkiR36sK8sywbJRSYAqX0JIB5heRQjCBmnPHB5XbPauG4BHFNIXqFLVM2rnefg6vIkQgQlIrVNPbSrklitj8XD0SRuhbQBHRTLK+JT2xMAPso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733748749; c=relaxed/simple;
	bh=XrlHg1Zc7QdYj2UlqgrGp1w4ZN1KJUcCDvuOo4H4rbg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RjbLgFNkcpFlBE6jvI+4QgRkHO4rJmynzeUZQ4EEjtzd09shNsPXLbwVJielzxC/hTPnpo8WHRP2v1Hiz7RKqgNOkZt/GLyLtEKi9bJ43tDx3X3OGxz3T8LfEUmvOiHSPAtNHkJ4Uew6M5hZPHhASoKuGC+TgRW4zbf4evWPSFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4B9CpdQ2031943;
	Mon, 9 Dec 2024 21:51:46 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v4 02/12] arm64: dts: rockchip: change node name for pwm-fan for Radxa ROCK 5C
Date: Mon,  9 Dec 2024 12:51:21 +0000
Message-ID: <20241209125131.4101-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241209125131.4101-1-naoki@radxa.com>
References: <20241209125131.4101-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"pwm-fan" is more common node name.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v4
- new
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 23e9b447b6f0..630f026d856c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -68,7 +68,7 @@ led-1 {
 		};
 	};
 
-	fan {
+	pwm-fan {
 		compatible = "pwm-fan";
 		#cooling-cells = <2>;
 		cooling-levels = <0 64 128 192 255>;
-- 
2.43.0


