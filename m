Return-Path: <devicetree+bounces-78187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABA29115CF
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 00:46:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F29B1F23793
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 22:46:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DDE779949;
	Thu, 20 Jun 2024 22:46:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1BD57E563
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 22:46:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718923567; cv=none; b=CzM3Xf+K60q1maJdxC5KzHkPXIymm5zZpDEfFbMQGFT60aUQk8xcY2Pb2j5xrSxYQJppdISnJMcYgCDnK9BYJplCgZZGkLd2UsuyFUZ7sfDAAh+c2qrlLz3xLK9asuJmHheuMuSBh6trHymEQCcOZERsXmQMOi/1qsa0wozBTrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718923567; c=relaxed/simple;
	bh=ecr2qRhWdzBm3Srt8n08Vtqlg0Z45yJ5F1fwWvGu/ww=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fLPodW4H2akU9JFi9/1K7GC74KYi1WvXvr8Y9Zfx0lVPHuXSvt5LSmBP6F0Twt9XyumJ0h7omFCsV/RgmcurLln6yAvw2AgQ03IiDGMzDx4tayUiUcsZqpGrpxVpV3D7YCsUyjFLN5LR5MsieT5rwPE0U+4X+4dj7f7o/WB11/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45KMigCN029151;
	Fri, 21 Jun 2024 07:44:42 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: jonas@kwiboo.se, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3] arm64: dts: rockchip: fix mmc aliases for Radxa ZERO 3E/3W
Date: Fri, 21 Jun 2024 07:44:35 +0900
Message-ID: <20240620224435.2752-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

align with other Radxa products.

- mmc0 is eMMC
- mmc1 is microSD

for ZERO 3E, there is no eMMC, but aliases should start at 0, so mmc0
is microSD as exception.

Fixes: 1a5c8d307c83 ("arm64: dts: rockchip: Add Radxa ZERO 3W/3E")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

Changes in v3:
- fix syntax error in rk3566-radxa-zero-3e.dts
Changes in v2:
- microSD is mmc0 instead of mmc1 for ZERO 3E
---
 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi | 4 ----
 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3e.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts | 3 ++-
 3 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
index 623d5939d194..081be841b286 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
@@ -6,10 +6,6 @@
 #include "rk3566.dtsi"
 
 / {
-	aliases {
-		mmc0 = &sdmmc0;
-	};
-
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3e.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3e.dts
index e166d66990b9..4a830eb09f0b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3e.dts
@@ -10,6 +10,7 @@ / {
 
 	aliases {
 		ethernet0 = &gmac1;
+		mmc0 = &sdmmc0;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
index 9bf4f464915f..f92475c59deb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
@@ -9,7 +9,8 @@ / {
 	compatible = "radxa,zero-3w", "rockchip,rk3566";
 
 	aliases {
-		mmc1 = &sdhci;
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc0;
 		mmc2 = &sdmmc1;
 	};
 
-- 
2.43.0


