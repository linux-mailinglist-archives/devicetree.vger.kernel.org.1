Return-Path: <devicetree+bounces-3559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7557AF448
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 21:43:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E666B28170E
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 19:43:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D23A948834;
	Tue, 26 Sep 2023 19:43:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6842A41E47
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 19:43:26 +0000 (UTC)
Received: from finn.localdomain (finn.gateworks.com [108.161.129.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30B7692;
	Tue, 26 Sep 2023 12:43:25 -0700 (PDT)
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139] helo=tharvey.pdc.gateworks.com)
	by finn.localdomain with esmtp (Exim 4.93)
	(envelope-from <tharvey@gateworks.com>)
	id 1qlDxk-009Eja-GP; Tue, 26 Sep 2023 19:43:16 +0000
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
Subject: [PATCH] arm64: dts: imx8mm-venice-gw73xx: add TPM device
Date: Tue, 26 Sep 2023 12:43:14 -0700
Message-Id: <20230926194314.1451657-1-tharvey@gateworks.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add the TPM device found on the GW73xx revision F PCB.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 .../boot/dts/freescale/imx8mm-venice-gw73xx.dtsi     | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi
index 4f859d0fec69..65aaeb81694c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi
@@ -104,8 +104,17 @@ reg_wifi_en: regulator-wifi-en {
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
+		#address-cells = <0x1>;
+		#size-cells = <0x1>;
+		reg = <0x1>;
+		spi-max-frequency = <36000000>;
+	};
 };
 
 &gpio1 {
@@ -361,6 +370,7 @@ MX8MM_IOMUXC_ECSPI2_SCLK_ECSPI2_SCLK	0xd6
 			MX8MM_IOMUXC_ECSPI2_MOSI_ECSPI2_MOSI	0xd6
 			MX8MM_IOMUXC_ECSPI2_MISO_ECSPI2_MISO	0xd6
 			MX8MM_IOMUXC_ECSPI2_SS0_GPIO5_IO13	0xd6
+			MX8MM_IOMUXC_GPIO1_IO10_GPIO1_IO10	0xd6
 		>;
 	};
 
-- 
2.25.1


