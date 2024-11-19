Return-Path: <devicetree+bounces-122743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2609D22CA
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 10:52:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D9A4A1F22953
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 09:52:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48F151C1F36;
	Tue, 19 Nov 2024 09:52:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236BE1C1AC7
	for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 09:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732009923; cv=none; b=tss0osOshkPkyzKV2O39+kt/BWo457WQlkWuKSOsIIDYx49Hx7IpEch4mjwZSj4BBO8P+qgSyfiDTJFkucNDuYpzzr7jNcJXnDgZLbxr4bxCY0SgDf+lFFOR8M8zJnKKdL9zCWhFiGJmcp1qfKfMcjaPlbtIVEIfY/bAXEvxozs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732009923; c=relaxed/simple;
	bh=F1D2YA43UFWw6Iq0Lr4gq5QdBg8OgFhppuM8wxrGv8Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Fuyfqck7UzmiEHGnBPa8bOn5DHD4+R4bJBStjMozLUMGSMTJQKckmwkWV3TQBp/HO4HAYtYPLLae2MGeW7DFSLrX0TVv2G9EEL0+VFprct2ae3kPxzm1OQ8/avO6/3MuxyjBPIU5vPkiPehSObcQBuZZ9NY5W/mXv39J8mLLQwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AJ9pHSP016079;
	Tue, 19 Nov 2024 18:51:19 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3 10/11] arm64: dts: rockchip: fix pmic dcdc-reg7 regulator-name for Radxa ROCK 5C
Date: Tue, 19 Nov 2024 09:51:11 +0000
Message-ID: <20241119095113.78151-10-naoki@radxa.com>
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

fix regulator-name to match with node label.

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v3:
- new
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 9f4779b9f3e7..4262ae9c2703 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -632,7 +632,7 @@ regulator-state-mem {
 			};
 
 			vcc_2v0_pldo_s3: dcdc-reg7 {
-				regulator-name = "vdd_2v0_pldo_s3";
+				regulator-name = "vcc_2v0_pldo_s3";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <2000000>;
-- 
2.43.0


