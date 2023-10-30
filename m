Return-Path: <devicetree+bounces-12898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C747DBC7D
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 16:19:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 82B09B20C83
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 15:19:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C37513AC5;
	Mon, 30 Oct 2023 15:19:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="lEaVq8Pe"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D97B67E
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 15:19:42 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF228B3;
	Mon, 30 Oct 2023 08:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=fPyX2xKi9wt+BUqj5PbupzF9CM3Fnmi9BbXwUcuJzyo=; b=lEaVq8PeaPkG2b9GStNvHqktUr
	99Z0nGcBG33VlSSNmN5QaoHzpZfAB0LuYFTbOMPffCajJ/1lR2G1t1LbuxA54XDzRSyHW5l0CpcMj
	0jnyBdF7uwCyNmHWSx4Ea9GgzgG7gPrQ7nMZx/RU/a+AzduGHS3DJk67YmkGplxY/7AE=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:47382 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qxU31-0008V7-4j; Mon, 30 Oct 2023 11:19:24 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>
Cc: hugo@hugovil.com,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Date: Mon, 30 Oct 2023 11:19:20 -0400
Message-Id: <20231030151920.191018-1-hugo@hugovil.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Level: 
Subject: [PATCH] arm64: dts: imx8mn-var-som: add fixed 3.3V regulator for EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

When the EEPROM is probed, we have this warning:

    at24 0-0052: supply vcc not found, using dummy regulator

Add fixed 3.3v regulator to silence the warning.

Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
---
 arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi
index b8946edf317b..b364307868f2 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi
@@ -31,6 +31,14 @@ reg_eth_phy: regulator-eth-phy {
 		gpio = <&gpio2 9 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 	};
+
+	reg_3v3_fixed: regulator-3v3-fixed {
+		compatible = "regulator-fixed";
+		regulator-name = "fixed_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
 };
 
 &A53_0 {
@@ -234,6 +242,7 @@ eeprom_som: eeprom@52 {
 		compatible = "atmel,24c04";
 		reg = <0x52>;
 		pagesize = <16>;
+		vcc-supply = <&reg_3v3_fixed>;
 	};
 };
 

base-commit: ffc253263a1375a65fa6c9f62a893e9767fbebfa
-- 
2.39.2


