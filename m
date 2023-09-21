Return-Path: <devicetree+bounces-2210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 543957A9D3F
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:30:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0DAA428298D
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:30:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEBFD18034;
	Thu, 21 Sep 2023 19:30:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E25E9CA74
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 19:30:11 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB7141481B
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 12:29:50 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id DD945864DD;
	Thu, 21 Sep 2023 21:29:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1695324589;
	bh=jmomvg9yssrFNN3uldwW4Qff16x3Nk1VzYnywGY4Tk0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=sR7LZJ6TG8IGoZZ6RvflyqRr2rSsOxdktykwrj0VAdpQ9Bo15vANGVXZ1CjNWdxjZ
	 k5s/fIePPk8t+Q827CsD3qIdIDObnTsNKDt2dYN8pKrPAUQJug9mFEd5QbDJTc9isQ
	 rpPTpGRzgYgr2vLsa5yrJuO1E9b7/lCC+Sbaid6VgUQBhW4OcG8aYG7YNa4DtL5ZML
	 klr+dtfk6lVU/a8xNYdAMMaEffq8lxCJtSI/cF3xO9MUkjEq1Pg6u6R07PAZPgweh0
	 yhUSzz5x23RySSeLjnSXH3in2M84FsxgXt31LFjEtu4jhYlijfPEoRpo6/UN/w8PyK
	 K21wmVZ/HeW5w==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: imx8mp: Drop i.MX8MP DHCOM rev.100 PHY address workaround from PDK3 DT
Date: Thu, 21 Sep 2023 21:29:33 +0200
Message-Id: <20230921192933.71639-2-marex@denx.de>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230921192933.71639-1-marex@denx.de>
References: <20230921192933.71639-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

In case the i.MX8MP DHCOM rev.100 has been populated on the PDK3
carrier board, the on-SoM PHY PHYAD1 signal has been pulled high
by the carrier board and changed the PHY MDIO address from 5 to 7.
This has been fixed on production rev.200 SoM by additional buffer
on the SoM PHYAD/LED signals, remove the workaround.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Frieder Schrempf <frieder.schrempf@kontron.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
index d4e95d640388d..b749e28e5ede5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
@@ -212,10 +212,6 @@ i2cmuxed1: i2c@1 {	/* HDMI DDC I2C */
 	};
 };
 
-&ethphy0g {
-	reg = <7>;
-};
-
 &fec {	/* Second ethernet */
 	pinctrl-0 = <&pinctrl_fec_rgmii>;
 	phy-handle = <&ethphypdk>;
-- 
2.40.1


