Return-Path: <devicetree+bounces-12648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 374F67DAB9B
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 08:49:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 67E801C20921
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 07:49:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 177987494;
	Sun, 29 Oct 2023 07:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B75F6FD9
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 07:49:27 +0000 (UTC)
X-Greylist: delayed 531 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 29 Oct 2023 00:49:25 PDT
Received: from mail-m17214.xmail.ntesmail.com (mail-m17214.xmail.ntesmail.com [45.195.17.214])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6200BC9;
	Sun, 29 Oct 2023 00:49:25 -0700 (PDT)
Received: from localhost.localdomain (unknown [58.61.140.248])
	by mail-m121145.qiye.163.com (Hmail) with ESMTPA id 568F2800086;
	Sun, 29 Oct 2023 15:40:17 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Samuel Holland <samuel@sholland.org>,
	Andre Przywara <andre.przywara@arm.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH v2 1/1] arm64: dts: allwinner: h616: update emac for Orange Pi Zero 3
Date: Sun, 29 Oct 2023 15:40:09 +0800
Message-Id: <20231029074009.7820-2-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231029074009.7820-1-amadeus@jmu.edu.cn>
References: <20231029074009.7820-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZSUIdVktISktOTBoZQ01MQ1UTARMWGhIXJBQOD1
	lXWRgSC1lBWU5DVU1KVUpPS1VJT0NZV1kWGg8SFR0UWUFZT0tIVUpKS0hKQ1VKS0tVS1kG
X-HM-Tid: 0a8b7a605d83b03akuuu568f2800086
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ngw6Kio6Fjw8TCkZViEdHAoV
	NhcwChRVSlVKTUJDTk1OSUpDSUtDVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWU5D
	VU1KVUpPS1VJT0NZV1kIAVlBSE1DQzcG

The current emac setting is not suitable for Orange Pi Zero 3,
move it back to Orange Pi Zero 2 DT. Also update phy mode and
delay values for emac on Orange Pi Zero 3.
With these changes, Ethernet now looks stable.

Fixes: 322bf103204b ("arm64: dts: allwinner: h616: Split Orange Pi Zero 2 DT")
Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 arch/arm64/boot/dts/allwinner/sun50i-h616-orangepi-zero.dtsi | 3 ---
 arch/arm64/boot/dts/allwinner/sun50i-h616-orangepi-zero2.dts | 3 +++
 arch/arm64/boot/dts/allwinner/sun50i-h618-orangepi-zero3.dts | 2 ++
 3 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616-orangepi-zero.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h616-orangepi-zero.dtsi
index 15290e6892fc..fc7315b94406 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h616-orangepi-zero.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h616-orangepi-zero.dtsi
@@ -68,10 +68,7 @@ &ehci1 {
 &emac0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&ext_rgmii_pins>;
-	phy-mode = "rgmii";
 	phy-handle = <&ext_rgmii_phy>;
-	allwinner,rx-delay-ps = <3100>;
-	allwinner,tx-delay-ps = <700>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616-orangepi-zero2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h616-orangepi-zero2.dts
index d83852e72f06..b5d713926a34 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h616-orangepi-zero2.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h616-orangepi-zero2.dts
@@ -13,6 +13,9 @@ / {
 };
 
 &emac0 {
+	allwinner,rx-delay-ps = <3100>;
+	allwinner,tx-delay-ps = <700>;
+	phy-mode = "rgmii";
 	phy-supply = <&reg_dcdce>;
 };
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h618-orangepi-zero3.dts b/arch/arm64/boot/dts/allwinner/sun50i-h618-orangepi-zero3.dts
index 00fe28caac93..b3b1b8692125 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h618-orangepi-zero3.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h618-orangepi-zero3.dts
@@ -13,6 +13,8 @@ / {
 };
 
 &emac0 {
+	allwinner,tx-delay-ps = <700>;
+	phy-mode = "rgmii-rxid";
 	phy-supply = <&reg_dldo1>;
 };
 
-- 
2.25.1


