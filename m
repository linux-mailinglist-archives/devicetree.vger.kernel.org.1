Return-Path: <devicetree+bounces-17277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BED7F1E6F
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 21:58:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F01F1F261CD
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 20:58:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CC02328DD;
	Mon, 20 Nov 2023 20:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66193D8;
	Mon, 20 Nov 2023 12:58:41 -0800 (PST)
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id AB5B3207E9;
	Mon, 20 Nov 2023 21:58:38 +0100 (CET)
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
Subject: [PATCH v1 3/3] ARM: dts: imx7d-colibri-emmc: Add usdhc aliases
Date: Mon, 20 Nov 2023 21:58:18 +0100
Message-Id: <20231120205818.33120-4-francesco@dolcini.it>
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
 arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc.dtsi b/arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc.dtsi
index 3740e34ef99f..9670f45eab3b 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc.dtsi
@@ -11,6 +11,10 @@ aliases {
 		/* Required to properly pass MAC addresses from bootloader. */
 		ethernet0 = &fec1;
 		ethernet1 = &fec2;
+		mmc0 = &usdhc3; /* eMMC */
+		mmc1 = &usdhc1; /* MMC/SD slot */
+		/delete-property/ mmc2;
+		/delete-property/ mmc3;
 	};
 
 	memory@80000000 {
-- 
2.25.1


