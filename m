Return-Path: <devicetree+bounces-8511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8A57C8708
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 15:40:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CC4F8282CB5
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 13:40:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D752515E9F;
	Fri, 13 Oct 2023 13:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="T9lGIFFp"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A53A315EA0
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 13:40:09 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 560A0C9
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 06:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1697204407; x=1728740407;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Js73wDV9QTeVptS6F7mqvFPeZ+0MGemagOsseykAqW0=;
  b=T9lGIFFpIdny3p1lZjgZAFRmitw/ktmEAcqdRjAYZkSX4QdDfD7el+LL
   MPcmyeWEUFURPUXr5gDkDhOAdXEKtQ7oh7lm2jr4bk5tVMtWJNhptvi0R
   lJzspqs/g7bdz1g83meHVLYCIPFmiQSn+uQWlQnkzqilq2GhQrbLbW+Ya
   O8jxCiXHb385YSD1/d2PMG2UJMb9JmhRDjf/0XJWQaBZvzruqvWtbIoK2
   a7HRAa+RKYn55rw606AlhtkNVWuXW9mrTVr85nNT7NkG0Pl2LVpbzRlZ9
   2s1JYUvC6jqpGNUnXV8uB1WHFfQaERbb0H6f4u0E2DdHP2VH30I99DAzv
   Q==;
X-IronPort-AV: E=Sophos;i="6.03,222,1694728800"; 
   d="scan'208";a="33455410"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 13 Oct 2023 15:40:03 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 7EB51280084;
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
Subject: [PATCH 2/2] ARM: dts: imx6ul: mba6ulx: fix typo in comments
Date: Fri, 13 Oct 2023 15:40:00 +0200
Message-Id: <20231013134000.744168-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231013134000.744168-1-alexander.stein@ew.tq-group.com>
References: <20231013134000.744168-1-alexander.stein@ew.tq-group.com>
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
 arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi b/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi
index 5a8b867d7d793..e78d0a7d8cd28 100644
--- a/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi
@@ -467,7 +467,7 @@ MX6UL_PAD_UART2_CTS_B__FLEXCAN2_TX	0x1b020
 
 	pinctrl_pwm2: pwm2grp {
 		fsl,pins = <
-			/* 100 k PD, DSE 120 OHM, SPPEED LO */
+			/* 100 k PD, DSE 120 OHM, SPEED LO */
 			MX6UL_PAD_GPIO1_IO09__PWM2_OUT		0x00003050
 		>;
 	};
-- 
2.34.1


