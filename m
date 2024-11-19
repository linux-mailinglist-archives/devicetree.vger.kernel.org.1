Return-Path: <devicetree+bounces-122750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 787689D22D3
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 10:52:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D17628266D
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 09:52:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 311051C2420;
	Tue, 19 Nov 2024 09:52:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4795C1C07DB
	for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 09:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732009926; cv=none; b=l99jsODerHwqOMD8v+Bq1geLZrg9CrVwLvz/WGg6xPKlpq3+80Ce/TQpq4fEMXiGcXSfup/FggVIFydG/6C52TDoew4JbLX3jmMVYQO7xVwK9bxAA7WUhNFycaiGyPYvw+4HwNxIutGUJ5QI8lkDY1+rN40tSzeLhrHk/kvKf9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732009926; c=relaxed/simple;
	bh=PCqieTaS7JOX9MavKqnHoq4CpOAmdx+5Q9fOcY2+LaY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=V1bYTTiUnCZ36VZyLXFMKY/ELp2ZcnktSikleipuY50hQXdGy5racmfbFtiJaTffK98oXvgyOeUBWb/w1jOcHVdCaBg4nv27ATWqgdM79JWHkqUHLsWXY7qhmss2a97NofJEGalqJG+B+ddRt2Aldb0qAR7BVLG3ph4nlfWMTE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AJ9pHSJ016079;
	Tue, 19 Nov 2024 18:51:18 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3 04/11] arm64: dts: rockchip: fix proparties for pmic regulators for Radxa ROCK 5C
Date: Tue, 19 Nov 2024 09:51:05 +0000
Message-ID: <20241119095113.78151-4-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241119095113.78151-1-naoki@radxa.com>
References: <20241119095113.78151-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

fix proparties for dcdc-reg7 and nldo-reg3 regulators to match with
vendor kernel[1].

[1] https://github.com/radxa/kernel/blob/linux-6.1-stan-rkr1/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v3:
- none
Changes in v2:
- split from "arm64: dts: rockchip: fix pmic properties for Radxa ROCK 5C"
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 7e7ba14ba151..e6a0d123ed71 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -660,7 +660,6 @@ vcc_2v0_pldo_s3: dcdc-reg7 {
 				regulator-boot-on;
 				regulator-min-microvolt = <2000000>;
 				regulator-max-microvolt = <2000000>;
-				regulator-ramp-delay = <12500>;
 
 				regulator-state-mem {
 					regulator-on-in-suspend;
@@ -814,7 +813,8 @@ vdda_0v75_s0: nldo-reg3 {
 				regulator-max-microvolt = <750000>;
 
 				regulator-state-mem {
-					regulator-off-in-suspend;
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <750000>;
 				};
 			};
 
-- 
2.43.0


