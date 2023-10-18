Return-Path: <devicetree+bounces-9757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D17CE7CE5E5
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 20:08:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 48D8DB20E21
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 18:08:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CA043FE4E;
	Wed, 18 Oct 2023 18:08:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AA223FB33
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 18:08:48 +0000 (UTC)
Received: from finn.localdomain (finn.gateworks.com [108.161.129.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E1C2F7;
	Wed, 18 Oct 2023 11:08:47 -0700 (PDT)
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139] helo=tharvey.pdc.gateworks.com)
	by finn.localdomain with esmtp (Exim 4.93)
	(envelope-from <tharvey@gateworks.com>)
	id 1qtAyI-009oYM-In; Wed, 18 Oct 2023 18:08:42 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Tim Harvey <tharvey@gateworks.com>
Subject: [PATCH] arm64: dts: imx8mm-venice-gw72xx: add TPM device
Date: Wed, 18 Oct 2023 11:08:38 -0700
Message-Id: <20231018180838.2164177-1-tharvey@gateworks.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add the TPM device found on the GW72xx revision F PCB.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 .../arm64/boot/dts/freescale/imx8mm-venice-gw72xx.dtsi | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx.dtsi
index 3a0a10e835a2..02d96f4a2d23 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx.dtsi
@@ -84,8 +84,15 @@ reg_usb_otg2_vbus: regulator-usb-otg2 {
 &ecspi2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_spi2>;
-	cs-gpios = <&gpio5 13 GPIO_ACTIVE_LOW>;
+	cs-gpios = <&gpio5 13 GPIO_ACTIVE_LOW>,
+		   <&gpio1 10 GPIO_ACTIVE_LOW>;
 	status = "okay";
+
+	tpm@1 {
+		compatible = "tcg,tpm_tis-spi";
+		reg = <0x1>;
+		spi-max-frequency = <36000000>;
+	};
 };
 
 &gpio1 {
@@ -312,6 +319,7 @@ MX8MM_IOMUXC_ECSPI2_SCLK_ECSPI2_SCLK	0xd6
 			MX8MM_IOMUXC_ECSPI2_MOSI_ECSPI2_MOSI	0xd6
 			MX8MM_IOMUXC_ECSPI2_MISO_ECSPI2_MISO	0xd6
 			MX8MM_IOMUXC_ECSPI2_SS0_GPIO5_IO13	0xd6
+			MX8MM_IOMUXC_GPIO1_IO10_GPIO1_IO10	0xd6
 		>;
 	};
 
-- 
2.25.1


