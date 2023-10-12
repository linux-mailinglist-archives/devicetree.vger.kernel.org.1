Return-Path: <devicetree+bounces-8032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8165F7C6796
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 10:31:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A5262828A4
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 08:31:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C59C21DDD0;
	Thu, 12 Oct 2023 08:31:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="SNZb6ZMW"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00AFC12E6B
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 08:31:31 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8E8198;
	Thu, 12 Oct 2023 01:31:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1697099489; x=1728635489;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=zWWVIxPGPN7/kPjQt8tis4KlrabHRamgrq1QMSJJnsE=;
  b=SNZb6ZMWXRkiLvtg3/ARc9U5Kkwy2UehZOhzUw+LUbQsckXsvV8czhCm
   SJ1nZKNeWLFZKfB/1qIwiYzBhonJYjl68Kmi/GXgBBqCa3n0wjtcIqhuF
   BNRQhYnbA3e3PGEME8rXSeagOo7VUCA/qmYVhG3hx/LfiAZztWbpR1BOP
   ODFKA3DbLgvAKVMMaiaGmWA6yls2iULOo1++6Chf2WIZ+k5CxnMS7RJA5
   xwxmJS7s7gizJJ1LJEnqvuNrlSqJL6F5J2RxRY39OLgZpE+5mLyBsmVpG
   fDydu76eTGT5iW84m5G5Suqo60vl/yDvMRuOWfagPAp9x6X+0GlWcPq3V
   g==;
X-IronPort-AV: E=Sophos;i="6.03,218,1694728800"; 
   d="scan'208";a="33423944"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 12 Oct 2023 10:31:24 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id E07B3280082;
	Thu, 12 Oct 2023 10:31:23 +0200 (CEST)
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
Subject: [PATCH v2 2/3] arm64: dts: imx8mn: Add CCM interrupts
Date: Thu, 12 Oct 2023 10:31:22 +0200
Message-Id: <20231012083123.2729494-3-alexander.stein@ew.tq-group.com>
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
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 1bb1d0c1bae4d..136e75c51251a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -637,6 +637,8 @@ snvs_pwrkey: snvs-powerkey {
 			clk: clock-controller@30380000 {
 				compatible = "fsl,imx8mn-ccm";
 				reg = <0x30380000 0x10000>;
+				interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
 				#clock-cells = <1>;
 				clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>, <&clk_ext2>,
 					 <&clk_ext3>, <&clk_ext4>;
-- 
2.34.1


