Return-Path: <devicetree+bounces-7319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 004977C00AD
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 17:48:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C4481C208F5
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:48:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6D7B2746B;
	Tue, 10 Oct 2023 15:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6D227451
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 15:48:46 +0000 (UTC)
X-Greylist: delayed 554 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 10 Oct 2023 08:48:42 PDT
Received: from mail-m49197.qiye.163.com (mail-m49197.qiye.163.com [45.254.49.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D91F93;
	Tue, 10 Oct 2023 08:48:42 -0700 (PDT)
Received: from Vostro-3710.lan (unknown [58.61.141.228])
	by mail-m121145.qiye.163.com (Hmail) with ESMTPA id 5D8038000B0;
	Tue, 10 Oct 2023 23:38:21 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Samuel Holland <samuel@sholland.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH 2/2] arm64: dts: allwinner: h616: update emac properties for Orange Pi Zero 3
Date: Tue, 10 Oct 2023 23:38:12 +0800
Message-Id: <20231010153812.2869633-2-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231010153812.2869633-1-amadeus@jmu.edu.cn>
References: <20231010153812.2869633-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZGUwfVkofTEgYQh5DTk4fH1UTARMWGhIXJBQOD1
	lXWRgSC1lBWU5DVU1KVUpPSlVJSUNZV1kWGg8SFR0UWUFZT0tIVUpKS0hKQ1VKS0tVS1kG
X-HM-Tid: 0a8b1a3d3885b03akuuu5d8038000b0
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MiI6SBw*STw8LhASFhkrExpJ
	OhQaFBVVSlVKTUJNQk5JSEtJSU1PVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWU5D
	VU1KVUpPSlVJSUNZV1kIAVlBSU5CTzcG
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add the correct delay value to emac. Also add missing mdio
properties for the YT8531 PHY (clock output required).
With these changes, Ethernet now looks stable.

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 arch/arm64/boot/dts/allwinner/sun50i-h618-orangepi-zero3.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h618-orangepi-zero3.dts b/arch/arm64/boot/dts/allwinner/sun50i-h618-orangepi-zero3.dts
index 00fe28caac93..02c7836b624a 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h618-orangepi-zero3.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h618-orangepi-zero3.dts
@@ -13,10 +13,14 @@ / {
 };
 
 &emac0 {
+	allwinner,rx-delay-ps = <1800>;
+	allwinner,tx-delay-ps = <700>;
 	phy-supply = <&reg_dldo1>;
 };
 
 &ext_rgmii_phy {
+	motorcomm,keep-pll-enabled;
+	motorcomm,auto-sleep-disabled;
 	motorcomm,clk-out-frequency-hz = <125000000>;
 };
 
-- 
2.25.1


