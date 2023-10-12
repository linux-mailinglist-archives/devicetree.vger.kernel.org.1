Return-Path: <devicetree+bounces-8031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E097C6795
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 10:31:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E22F31C20E6A
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 08:31:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38802DF6A;
	Thu, 12 Oct 2023 08:31:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="GKt3sFCx"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5365E1D6A9
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 08:31:31 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43B92B7;
	Thu, 12 Oct 2023 01:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1697099489; x=1728635489;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=hXlAH7NEgSyIyllmEqmnGz39up3tsWZ6OyL0rKOZy+U=;
  b=GKt3sFCxF/Lc3RrsgalPN5r04DN2AKdEallv/xkMar3eSCUtHA2i4NBU
   kU3PpCULOTlg5aTNBqfthtU0VWXMatR8c31zBvTRqvs6eH2L0vLNWl01A
   QmlCfyLuVONTqPoKnTp5Vw24fC8nreYqRTM1BbN970jQeKYB/YUdGBlcP
   3P97hu3HhZ1jglEAUjPF9hWAE7rRdxQoEBN3pB0BaoUBp8EHzHLlIzguM
   VM7susPibsQB6dC6z5zyIKuj61dqsAkaUr+0zTzTyDVvDNTLQ/q6aSDxi
   7VbPOOeId6NIXbQUigJCAV0fPOawj2YQ6RwMXerDwuBOu4UyMg1+RpyxU
   g==;
X-IronPort-AV: E=Sophos;i="6.03,218,1694728800"; 
   d="scan'208";a="33423945"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 12 Oct 2023 10:31:24 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 34929280084;
	Thu, 12 Oct 2023 10:31:24 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/3] arm64: dts: imx8mm: Add CCM interrupts
Date: Thu, 12 Oct 2023 10:31:23 +0200
Message-Id: <20231012083123.2729494-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231012083123.2729494-1-alexander.stein@ew.tq-group.com>
References: <20231012083123.2729494-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add both CCM interrupts as mentioned in RM.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 738024baaa578..e76fc9fb1bf49 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -636,6 +636,8 @@ snvs_lpgpr: snvs-lpgpr {
 			clk: clock-controller@30380000 {
 				compatible = "fsl,imx8mm-ccm";
 				reg = <0x30380000 0x10000>;
+				interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
 				#clock-cells = <1>;
 				clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>, <&clk_ext2>,
 					 <&clk_ext3>, <&clk_ext4>;
-- 
2.34.1


