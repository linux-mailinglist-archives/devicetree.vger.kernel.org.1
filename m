Return-Path: <devicetree+bounces-78813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 370A6913762
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 04:35:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1DF5C1C2102F
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 02:35:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 104938BE7;
	Sun, 23 Jun 2024 02:35:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DC948F5B
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 02:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719110102; cv=none; b=vEomhHSJVLQtvVbQSUEiEVY7J4KSzzRL/MsB8gftMwA4aZpJHuJlGjLbrBNNTQCVJ43GQQcF+CjKqKxpWJ65JxCj+XrWu0sUYCFMCxnV64TPB75d5YNmgRd3q/PJSY3EKzKSa9SD1JETSG+uI+VrAruvPQNH2ji5qXvau9G53hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719110102; c=relaxed/simple;
	bh=P3ROdPte21BB1sRFu9t5HTmYbw9O92vqtg2Nb+A6R6Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gv9oEqhJJuVtP2XKIOB0Zr8kxufJYan0mHueiblml44NPMjadn42OLeLrtZHGvvzPOOFKrMBmqfP2lmTbXZll+4WEE47RzbwWR695V/D4Cc5sqpFYyVzOOIH9uguThqkIX0ICA7Fykdw/bJEwPzbJvEMpKErn/0Xx9XOHyK7PCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45N2XZ4K004959;
	Sun, 23 Jun 2024 11:33:38 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        amadeus@jmu.edu.cn, chris.obbard@collabora.com,
        sebastian.reichel@collabora.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: change spi-max-frequency for Radxa ROCK 3C
Date: Sun, 23 Jun 2024 11:33:29 +0900
Message-ID: <20240623023329.1044-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240623023329.1044-1-naoki@radxa.com>
References: <20240623023329.1044-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

SPI NOR flash chip may vary, so use safe(lowest) spi-max-frequency.

Fixes: ee219017ddb5 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
index b242409d378c..f2cc086e5001 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
@@ -633,7 +633,7 @@ &sfc {
 	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0x0>;
-		spi-max-frequency = <120000000>;
+		spi-max-frequency = <104000000>;
 		spi-rx-bus-width = <4>;
 		spi-tx-bus-width = <1>;
 	};
-- 
2.43.0


