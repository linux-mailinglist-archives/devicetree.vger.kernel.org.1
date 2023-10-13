Return-Path: <devicetree+bounces-8510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A58B7C8707
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 15:40:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 38E281C20A83
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 13:40:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 873AE15EA9;
	Fri, 13 Oct 2023 13:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="kzetO3kY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8442115E9E
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 13:40:07 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F0CF95
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 06:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1697204405; x=1728740405;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=9peyj0Y9sxXAhgQQk1Adom4zr9wDtEYUlVcrM1qYf9c=;
  b=kzetO3kYXLgPH9TrLW/4e5pQF/+VF+p0iVELLwfJ6npRdpW8YpgumJIP
   zk2kCGwSHKOn0SKAR+JkCgXNXnGo3hN/Ra+UPnnw518TxGG+Oj48padcd
   8E7ALxI+AT3p3VL5CzxhZC4H1++vb1vTfuUQalXT2zXj0O2E8480ubXHO
   spxXKISKMdB7CGqVFsq7tWgY7DNlXPUd0Hs+LZsqZFE7/ncbJYj9s3wLE
   yxZm/DiI44uqGNCi2sgj3hZ/lWMmnUnTChXOBoSqqNGM/0h7JerX4wg2d
   tscviAEU+/PGjR1xASXQIhVXx7ZiCGhhp35H9PfoqUsxOHfEmMIpGNJai
   Q==;
X-IronPort-AV: E=Sophos;i="6.03,222,1694728800"; 
   d="scan'208";a="33455409"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 13 Oct 2023 15:40:03 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 4870A280082;
	Fri, 13 Oct 2023 15:40:03 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Markus Niebel <Markus.Niebel@ew.tq-group.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Subject: [PATCH 1/2] arm: dts: imx6qdl: mba6: fix typo in comments
Date: Fri, 13 Oct 2023 15:39:59 +0200
Message-Id: <20231013134000.744168-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Markus Niebel <Markus.Niebel@ew.tq-group.com>

Replace 'SPPEED' with 'SPEED'

Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx6qdl-mba6.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6.dtsi
index da0f8dae1ea82..4d2abcd44eff2 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6.dtsi
@@ -500,21 +500,21 @@ MX6QDL_PAD_NANDF_CS0__GPIO6_IO11 0x001b0f0 /* #PCIE.DIS */
 
 	pinctrl_pwm1: pwm1grp {
 		fsl,pins = <
-			/* 100 k PD, DSE 120 OHM, SPPEED LO */
+			/* 100 k PD, DSE 120 OHM, SPEED LO */
 			MX6QDL_PAD_GPIO_9__PWM1_OUT 0x00003050
 		>;
 	};
 
 	pinctrl_pwm3: pwm3grp {
 		fsl,pins = <
-			/* 100 k PD, DSE 120 OHM, SPPEED LO */
+			/* 100 k PD, DSE 120 OHM, SPEED LO */
 			MX6QDL_PAD_SD4_DAT1__PWM3_OUT 0x00003050
 		>;
 	};
 
 	pinctrl_pwm4: pwm4grp {
 		fsl,pins = <
-			/* 100 k PD, DSE 120 OHM, SPPEED LO */
+			/* 100 k PD, DSE 120 OHM, SPEED LO */
 			MX6QDL_PAD_SD4_DAT2__PWM4_OUT 0x00003050
 		>;
 	};
-- 
2.34.1


