Return-Path: <devicetree+bounces-78909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 040EC913A5A
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 14:06:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B29C028236F
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 12:06:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72F70180A92;
	Sun, 23 Jun 2024 12:06:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91F84180A7D
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 12:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719144364; cv=none; b=iLXqoWEY2SSmrE/CmSuCK8vUV/5ItpK7+dGnwsBSJPoLxRuQrKgqlXgHID24/uCgM0eMQ9wKxVb7UnbeiUVoEGl9CGYIuIsnPbeW4JAjDur5u775dxw6VS6vP4LNytbF8Ti+KcNdZVLuTZCWi8n3uHd8lNmolwcgWsXw+ST//kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719144364; c=relaxed/simple;
	bh=DowWKf4MH4eyaDEXJcE82Am07OmYG+d0aPulWFi5Mxw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BjaQ8VHDMtbvbm5K5XIGiwLnYSXPphwysjgnnfEs0Bt6h84YSyh28VRhKRz8E35ArAwpffRP8jLHMcXyt7DB3vlZog4jsk7w2tjAco2FRmUxfWGfl2miXRQtEiVPN1cfJHcCWLrd7voAOOzhhJxchE6SkZJSp8uVN93XA7fgSjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45NC0fJB006059;
	Sun, 23 Jun 2024 21:00:42 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/3] arm64: dts: rockchip: prepare common .dtsi for Radxa ROCK Pi E
Date: Sun, 23 Jun 2024 21:00:15 +0900
Message-ID: <20240623120016.82990-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240623120016.82990-1-naoki@radxa.com>
References: <20240623120016.82990-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Radxa ROCK Pi E v1.2x and ROCK Pi E v3.0 share most of their parts.
prepare rk3328-rock-pi-e-base.dtsi as a common dtsi for both boards.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../{rk3328-rock-pi-e.dts => rk3328-rock-pi-e-base.dtsi}       | 3 ---
 1 file changed, 3 deletions(-)
 rename arch/arm64/boot/dts/rockchip/{rk3328-rock-pi-e.dts => rk3328-rock-pi-e-base.dtsi} (99%)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-base.dtsi
similarity index 99%
rename from arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
rename to arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-base.dtsi
index a608a219543e..b2c5089ad2f8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-base.dtsi
@@ -17,9 +17,6 @@
 #include "rk3328.dtsi"
 
 / {
-	model = "Radxa ROCK Pi E";
-	compatible = "radxa,rockpi-e", "rockchip,rk3328";
-
 	aliases {
 		ethernet0 = &gmac2io;
 		ethernet1 = &gmac2phy;
-- 
2.43.0


