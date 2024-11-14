Return-Path: <devicetree+bounces-121711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 249009C80E4
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 03:38:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C33821F21DF6
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 02:38:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61B051E7C0F;
	Thu, 14 Nov 2024 02:38:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552291E25F7
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 02:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731551929; cv=none; b=s9r1O/Lk/7ldkVQIsfGghADCKt+2QFGra2/pG45CVL/ZaPXiUPogfnF2Duu+x6TaCSZeU+e/+VuVhapJRxAQrvohqHtIWRYwWbkWCdFS1rJk+J1NW6uxgxhNHw3NJz25u73g3qGkeoYpIulL6btoC0TKCocZv1hGAIJuTsHOOx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731551929; c=relaxed/simple;
	bh=ngAppB6bRFZrNqDPKje2xk/UXeQgybYSLZTXzlwyGFU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=FY/Cf6Wr9yU4M7BBGQLji8ttzEK7RwtADXTc3f5WUjKBB8Dg/ptahSYwJaAs6ZQpxSCAsNa34JfxGSWlu9/B6albcfA8RKTB5YLmcJv7pEEDjLomai7cUHpjEk5+dpo98IkBc6UWWwro3tYLLEHHSCiGJG1+g8u8RwsiGWNdie0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AE2bpln029356;
	Thu, 14 Nov 2024 11:37:52 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 1/9] arm64: dts: rockchip: add properties for pcie2x1l2 for Radxa ROCK 5C
Date: Thu, 14 Nov 2024 02:37:38 +0000
Message-ID: <20241114023746.4867-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

by schematic[1], pcie2x1l2 CLKREQ and WAKE pins are connected.
describe them in dts.

[1] https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa_rock_5c_schematic_v1100.pdf

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- reword commit message
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 9b14d5383cdc..997e95bb5b74 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -419,7 +419,9 @@ rgmii_phy1: ethernet-phy@1 {
 
 &pcie2x1l2 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie20x1_2_perstn_m0>;
+	pinctrl-0 = <&pcie20x1_2_perstn_m0>,
+		    <&pcie20x1m0_clkreqn>,
+		    <&pcie20x1m0_waken>;
 	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&pcie2x1l2_3v3>;
 	status = "okay";
-- 
2.43.0


