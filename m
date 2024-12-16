Return-Path: <devicetree+bounces-131374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 213109F2F93
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 12:37:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F109169300
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 11:35:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79E8E20550F;
	Mon, 16 Dec 2024 11:31:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EF02054EB
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 11:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734348702; cv=none; b=Jgtc8NBNAfgDEde3QN33rWM6TJpfD6k/Ia8bMkSNZlzU/Cr8np+CaXTW4u0SfVIopaE8ethf7xzU4KfqUGcT26rozLKQFn92jSU5ibblyaOeqJAf613hcxPjb0vhg8Ryy0jjufmbutjOogcXlum3V9+7AxCsVcoJnSA5LcggDdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734348702; c=relaxed/simple;
	bh=otPCkeQQDmseVNNoUdrpbdunq3GzS+9sAGqwAGOEAv8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kB66bWEodHC73LDj8U4hl9S7CUII+s301g/A6KwW+aeWl/fvr6dVR4uMb0dsD7wZB5jskYAQ4/LMmXjh9QnOBWlzAarjAHCqqOzvCnb2g7SIb2fG8A21W05wa8T40CyF2IdPn+scqTk5DPAxdwpIFcE6ARyjEDWvOLxKfLy8uUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BGBUxON028690;
	Mon, 16 Dec 2024 20:31:00 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v5 02/12] arm64: dts: rockchip: Change node name for pwm-fan for Radxa ROCK 5C
Date: Mon, 16 Dec 2024 11:30:42 +0000
Message-ID: <20241216113052.15696-3-naoki@radxa.com>
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

Use more common name "pwm-fan" for pwm-fan node. No functinal change.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v5
- Reword commit message
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


