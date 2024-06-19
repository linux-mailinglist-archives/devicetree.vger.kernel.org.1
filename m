Return-Path: <devicetree+bounces-77658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FFB90F9CA
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 01:28:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57C2D1C20E5E
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 23:28:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1958C15B14C;
	Wed, 19 Jun 2024 23:28:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9EA762C1
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 23:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718839720; cv=none; b=N9Y5OYl/2+agLJDNC2+h7bSpe0T1MnPipGPlxM0+BYhlQ3MNO0NqujL05ge7jzuxJi5hjdVzvdhCUQUfNY0NdrHL2Loj2EqYBiw82OHRUekvJ9zNqKUwlEW298hpyP+9g1hn+NmeQ1V63LOKZIEvkVrGFtHBqVwkppO7j+QOJYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718839720; c=relaxed/simple;
	bh=rWWe6ITV6bglpjBaeGgA1GENSTxnmklQWQQxqQ6v0L4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qQIEFe66z6FH+y6Iot3ArJrT7aLGUwQk53KAa8F9aOK3bRdGTfj0S+3XCpnte2fC3R3MmXYNNJRK3c7rnIXrP7ZfTPXIFTSAQ8QJFOdXjz9LO8jjXJKqEOJK1ktbwf56vIhmgr8z+vG+OM7jUONHJ7tfK+u8kfogZaKbtxBoVkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45JNRgmD026016;
	Thu, 20 Jun 2024 08:27:43 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: jonas@kwiboo.se, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: fix mmc aliases for Radxa ZERO 3E/3W
Date: Thu, 20 Jun 2024 08:27:34 +0900
Message-ID: <20240619232734.1126-1-naoki@radxa.com>
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

Fixes: 1a5c8d307c83 ("arm64: dts: rockchip: Add Radxa ZERO 3W/3E")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
index 623d5939d194..85d76d535338 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
@@ -7,7 +7,7 @@
 
 / {
 	aliases {
-		mmc0 = &sdmmc0;
+		mmc1 = &sdmmc0;
 	};
 
 	chosen {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
index 9bf4f464915f..188147c4b78b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
@@ -9,7 +9,7 @@ / {
 	compatible = "radxa,zero-3w", "rockchip,rk3566";
 
 	aliases {
-		mmc1 = &sdhci;
+		mmc0 = &sdhci;
 		mmc2 = &sdmmc1;
 	};
 
-- 
2.43.0


