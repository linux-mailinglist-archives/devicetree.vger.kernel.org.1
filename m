Return-Path: <devicetree+bounces-17275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D9B7F1E6C
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 21:58:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2D0711C20BFC
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 20:58:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA39631586;
	Mon, 20 Nov 2023 20:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8676DD9;
	Mon, 20 Nov 2023 12:58:41 -0800 (PST)
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id 766F8207AD;
	Mon, 20 Nov 2023 21:58:37 +0100 (CET)
From: Francesco Dolcini <francesco@dolcini.it>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>
Cc: Hiago De Franco <hiago.franco@toradex.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Francesco Dolcini <francesco.dolcini@toradex.com>
Subject: [PATCH v1 1/3] ARM: dts: imx6qdl-apalis: Add usdhc aliases
Date: Mon, 20 Nov 2023 21:58:16 +0100
Message-Id: <20231120205818.33120-2-francesco@dolcini.it>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231120205818.33120-1-francesco@dolcini.it>
References: <20231120205818.33120-1-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Hiago De Franco <hiago.franco@toradex.com>

Add mmc aliases to ensure a consistent mmc device naming across the
Toradex SoM family, with this commit mmc0 is the on-module eMMC
boot device and the not available mmc interfaces are removed.

Signed-off-by: Hiago De Franco <hiago.franco@toradex.com>
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
 arch/arm/boot/dts/nxp/imx/imx6qdl-apalis.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-apalis.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-apalis.dtsi
index 4cc965277c52..dec2a1c9db14 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-apalis.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-apalis.dtsi
@@ -12,6 +12,13 @@ / {
 	model = "Toradex Apalis iMX6Q/D Module";
 	compatible = "toradex,apalis_imx6q", "fsl,imx6q";
 
+	aliases {
+		mmc0 = &usdhc3; /* eMMC */
+		mmc1 = &usdhc1; /* MMC1 slot */
+		mmc2 = &usdhc2; /* SD1 slot */
+		/delete-property/ mmc3;
+	};
+
 	/* Will be filled by the bootloader */
 	memory@10000000 {
 		device_type = "memory";
-- 
2.25.1


