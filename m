Return-Path: <devicetree+bounces-252719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E945D0265E
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 12:31:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 996B730A39ED
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 11:30:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FD5D3D3491;
	Thu,  8 Jan 2026 10:00:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m155101.qiye.163.com (mail-m155101.qiye.163.com [101.71.155.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 889CE451DD0;
	Thu,  8 Jan 2026 10:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767866423; cv=none; b=hnl7eoKh0Xiz7AlIzpcOXJR1YL4MvLZ44ED24J6jdK/gLyY5K2Fo3/XxNDMe0jSgCu5RlZ6k9OrNpcETOCWiSnmhBC3HGOf1d04OPHo+wb96JD3b2b4bLM2/JRXZPQ5rYx3H6azZbkha1a0qQ7fdLZ9eATLk557PTIeH3GMIDG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767866423; c=relaxed/simple;
	bh=rAw21f8/XeeT1HlG1DJrsmNod/WfsxDB1loH/y4u33I=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=qWEMdwHxJ0tkF+xV19d1oIhW7TvqnJ+rdbp8aUBGDEZFE6gdKfPAOMuZVUNZWp4KhBM1LIqOLz4APLwa5RMh51u78Sl3/TwAGVJeXocgWBWK1bUxMiWY4e/6Blpz9+7b3w0VsiKnipvl0MQzavhH6ZX3BBtquadfg/Av908kCjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=101.71.155.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [116.25.95.147])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2ff22eba1;
	Thu, 8 Jan 2026 18:00:05 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/1] arm64: dts: rockchip: remove RTC for Radxa E52C
Date: Thu,  8 Jan 2026 18:00:00 +0800
Message-Id: <20260108100000.110354-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9b9d0c920d03a2kunma72a4f0f41da4
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaGElJVkIZTEtCTE9MQxhNT1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSk1VSU5VQk5VSk9MWVdZFhoPEhUdFFlBWU9LSFVKS0hKTkxOVUpLS1VKQk
	tLWQY+

According to the Radxa E52C Schematic [1], both the i2c5 bus and the
hym8563 chip are marked as NC. Remove them to avoid the following log:

rtc-hym8563 5-0051: could not init device, -110
rtc-hym8563 5-0051: probe with driver rtc-hym8563 failed with error -110

[1] https://dl.radxa.com/e/e52c/hw/radxa_e52c_v1.2_schematic.pdf

Fixes: 9be4171219b6 ("arm64: dts: rockchip: Add Radxa E52C")
Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 .../boot/dts/rockchip/rk3582-radxa-e52c.dts   | 24 -------------------
 1 file changed, 24 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts b/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
index 854c118418eb..c24ff264cae2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
@@ -266,24 +266,6 @@ regulator-state-mem {
 	};
 };
 
-&i2c5 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c5m2_xfer>;
-	status = "okay";
-
-	rtc@51 {
-		compatible = "haoyu,hym8563";
-		reg = <0x51>;
-		#clock-cells = <0>;
-		clock-output-names = "rtcic_32kout";
-		interrupt-parent = <&gpio0>;
-		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&rtc_int_l>;
-		wakeup-source;
-	};
-};
-
 &pcie2x1l1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie20x1_1_perstn_m1>;
@@ -329,12 +311,6 @@ vcc_5v0_pwren_h: vcc-5v0-pwren-h {
 		};
 	};
 
-	rtc {
-		rtc_int_l: rtc-int-l {
-			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	usb {
 		usb_otg_pwren_h: usb-otg-pwren-h {
 			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.25.1


