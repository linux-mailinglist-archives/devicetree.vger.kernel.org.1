Return-Path: <devicetree+bounces-4402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 135967B2657
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 22:14:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id BF0D42820E3
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 20:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4513450D7;
	Thu, 28 Sep 2023 20:14:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6823418626
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 20:14:03 +0000 (UTC)
Received: from finn.localdomain (finn.gateworks.com [108.161.129.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFC63194;
	Thu, 28 Sep 2023 13:14:01 -0700 (PDT)
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139] helo=tharvey.pdc.gateworks.com)
	by finn.localdomain with esmtp (Exim 4.93)
	(envelope-from <tharvey@gateworks.com>)
	id 1qlxOW-009Hee-Iu; Thu, 28 Sep 2023 20:13:56 +0000
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
Subject: [PATCH v2] arm64: dts: imx8mp-venice-gw73xx: add TPM device
Date: Thu, 28 Sep 2023 13:13:54 -0700
Message-Id: <20230928201354.1946035-1-tharvey@gateworks.com>
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
v2: removed uncessary properties
---
 arch/arm64/boot/dts/freescale/imx8mp-venice-gw73xx.dtsi | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw73xx.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw73xx.dtsi
index 48a284478468..b0d42b18c5ce 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw73xx.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw73xx.dtsi
@@ -95,8 +95,15 @@ reg_usdhc2_vmmc: regulator-usdhc2-vmmc {
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
 
 &gpio4 {
-- 
2.25.1


