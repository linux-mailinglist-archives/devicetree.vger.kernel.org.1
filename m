Return-Path: <devicetree+bounces-121324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5340A9C65E4
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 01:22:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0BB5B1F224AB
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 00:22:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E45079FD;
	Wed, 13 Nov 2024 00:22:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FFBB3C2F
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 00:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731457365; cv=none; b=F0yMO7H7L7MzC67sXH5KG2CGZFziUJapqcC7CvkTsQjejMQ0JbE9pJ0CLqNrLql1T2DHOiSckbwrv/hkhhtGKrtddH00y4UMIcPP/e9/2AAgdizaydWwC0x0/X/X8d+QOBJbAxJrKR7B2R65szj13idb8VZpu1S1VvD2Q8DLEAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731457365; c=relaxed/simple;
	bh=za4g7KrJad12czCkK+ihOIZgRLD3FgMJsV1U4GR72D8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kybZyyInT5Hvmn+8u61hlx1ZoKl5i3t8rCg2FhMCoG04NmBnrJzBlfiILJYG7IPF0O1kigpmxaYImxzSvxSTa6ORHCTPvAfnTpYgW2ocD70MzVVFYdSyydSr8C00UAa4m3qUnABpTl8hFBa4cgnJrHaje6hnaHlpW9UOtQ0Ok2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AD0Dmht024846;
	Wed, 13 Nov 2024 09:13:48 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/5] arm64: dts: rockchip: add pcie2x1l2 properties for Radxa ROCK 5C
Date: Wed, 13 Nov 2024 00:13:37 +0000
Message-ID: <20241113001341.7952-1-naoki@radxa.com>
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


