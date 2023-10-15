Return-Path: <devicetree+bounces-8686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D417C9B25
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 22:02:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5C0EB1C208DA
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 20:02:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78C7F11701;
	Sun, 15 Oct 2023 20:02:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="JEIGDmvi"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CE62CA4D
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 20:02:30 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93D10B7
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 13:02:28 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id BDA5D86DF5;
	Sun, 15 Oct 2023 22:02:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1697400135;
	bh=KmGV9BAXAMl+1+aFb6Q3PjwwUw+Wrcuh0mgMtaVNHqc=;
	h=From:To:Cc:Subject:Date:From;
	b=JEIGDmvihfPb7G0YWC9dBOrez1ZJRkBRxqBcEh+HC9KpbcZ4BykLd/VrqAAmwYC3k
	 +1yR/LLpqBoBEkVX1llL9U5TzboSM3NyVSnHvNjfpbPlaWFPr2wd3KilHF1eoKam4r
	 dHilOGH2np20nI+tCJOSVzXPxgnhWcQGIGr9MIfcL67r2+eppWjArNV20PIyjA4L6L
	 k2Xh3lgesxndA/UdKQPZeOARUexhOUtekHZ8NYsthhEodWjuCYG8j2jVsfBeL80IF7
	 c8KTLpBLS0gw8TNiE8FidqV0PfmvUrtHrI07y9WieIKlq7XA2neMhxwREQBshZGueW
	 MNIJoiEHHROCQ==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Marco Felsch <m.felsch@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mp: Describe M24C32-D write-lockable page in DH i.MX8MP DHCOM DT
Date: Sun, 15 Oct 2023 22:01:24 +0200
Message-ID: <20231015200151.39534-1-marex@denx.de>
X-Mailer: git-send-email 2.42.0
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
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The i.MX8MP DHCOM SoM production rev.200 is populated with M24C32-D
EEPROMs which have Additional Write lockable page at separate I2C
address. Describe the page in DT to make it available.

Signed-off-by: Marek Vasut <marex@denx.de>
---
NOTE: The labels are there so they can be used by U-Boot and DTOs
NOTE: Depends on currently linux-next next-20231013
      c761068f484c ("dt-bindings: at24: add ST M24C32-D Additional Write lockable page")
      4791146e9055 ("eeprom: at24: add ST M24C32-D Additional Write lockable page support")
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Frieder Schrempf <frieder.schrempf@kontron.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
index d8963f32ec84c..4ae4fdab461e0 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
@@ -420,6 +420,18 @@ eeprom1: eeprom@53 {	/* EEPROM with FEC MAC address */
 		reg = <0x53>;
 	};
 
+	eeprom0wl: eeprom@58 {
+		compatible = "atmel,24c32d-wl";	/* M24C32-D WL page of 0x50 */
+		pagesize = <32>;
+		reg = <0x58>;
+	};
+
+	eeprom1wl: eeprom@5b {
+		compatible = "atmel,24c32d-wl";	/* M24C32-D WL page of 0x53 */
+		pagesize = <32>;
+		reg = <0x5b>;
+	};
+
 	ioexp: gpio@74 {
 		compatible = "nxp,pca9539";
 		reg = <0x74>;
-- 
2.42.0


