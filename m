Return-Path: <devicetree+bounces-236395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5ECC43FF9
	for <lists+devicetree@lfdr.de>; Sun, 09 Nov 2025 15:19:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 11D59188C418
	for <lists+devicetree@lfdr.de>; Sun,  9 Nov 2025 14:20:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC60F2FE041;
	Sun,  9 Nov 2025 14:19:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DC12FD7BD
	for <devicetree@vger.kernel.org>; Sun,  9 Nov 2025 14:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762697987; cv=none; b=pzqMjw2G/SpBqmq10qjwEUnnyKrin+mGAp177mYexYsmwcl6HAUSZuWFqVgJcav0WFEh/ZfPWFspA1KFGqDBXg0qe5e6mXIPbSEltOvT25swjTiTrsPfyHnjQdgKNOGq+7q/uHy28vDjz2svn9kEfgeH1Aeo4w1JpT6/v6E64t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762697987; c=relaxed/simple;
	bh=fVGK1SigOTIz2xVb8LIbCfS/JvaCHgp8JpGYKAJGr04=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OKEWmh8VYmrJ+l2rhD+RaYPoNrUlOsLlF0MtMEYWH/77qn0tm48OgS3we9cQFJ6lyt7EGllhzNiFw2uWZO1pXk9Jg0I3ZnoFaDONgbjdpudJPfT9/LcuWqFPT7gdbWlmEvIzlz6iP6+O802VFLQhB48TIoZuTSFjWx5QKQWNVP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5A9EJ5dq015030;
	Sun, 9 Nov 2025 23:19:07 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, alchark@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v7 06/14] arm64: dts: rockchip: Add missing properties for sdhci for Radxa ROCK 5C
Date: Sun,  9 Nov 2025 14:18:51 +0000
Message-ID: <20251109141859.206835-7-naoki@radxa.com>
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

Add cap-mmc-highspeed for high-speed timing.
Add v(q)mmc-supply for card(i/o) power.

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v7:
- New
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index eb0d5a0a41509..0f0a0b03fbf46 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -498,11 +498,14 @@ &saradc {
 
 &sdhci {
 	bus-width = <8>;
+	cap-mmc-highspeed;
 	mmc-hs400-1_8v;
 	mmc-hs400-enhanced-strobe;
 	no-sdio;
 	no-sd;
 	non-removable;
+	vmmc-supply = <&vcc_3v3_s0>;
+	vqmmc-supply = <&vcc_1v8_s3>;
 	status = "okay";
 };
 
-- 
2.43.0


