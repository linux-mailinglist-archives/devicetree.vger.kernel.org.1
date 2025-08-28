Return-Path: <devicetree+bounces-209910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3376EB397B0
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 11:00:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BDBB31BA61A8
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 09:00:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95B902FC874;
	Thu, 28 Aug 2025 08:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="uoaOF7Mr"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.samsung.com (mailout1.samsung.com [203.254.224.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622692EB876
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 08:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.24
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756371581; cv=none; b=Id3Eytv15/zCbw0EBm6zOXxIwlzg1bsUid0htGTP2q05lXX4FwpWW8Iu6fPDwmDQ/Igmbf/9IMqykZFQjJ/qcaL5JtY9ELRcn04bG/PMIe5CIak4KcspUzqAISoR0gmvz4gkia5cPafpKSRGmO+KkB5TgrC9xba+U4i9STJ1kmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756371581; c=relaxed/simple;
	bh=FaBIUMZThXBFpt34EcTZeYT6Av7Tez0fAhaTvWdn0xM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:MIME-Version:
	 Content-Type:References; b=lq60K6t+Cp22N3WEiYJic6J+S9Hy2r6EObsWbPwxU7qz0d3zyLxTZK+3d0ZOz6ZnUiVxkEjGpgtbNl1AdjO5fPe10x4byzklmQQs5JbUOXNNYRsou2vPSG4zBULDi8cfNdaXSICbAHpQrsHdgpiRtpQ3JE8yyrJlpb2Mc133Ltg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=uoaOF7Mr; arc=none smtp.client-ip=203.254.224.24
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20250828085936epoutp014e04288871cf9c0ca078450c700736bc~f4qS5CbnC1181911819epoutp017
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 08:59:36 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20250828085936epoutp014e04288871cf9c0ca078450c700736bc~f4qS5CbnC1181911819epoutp017
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1756371576;
	bh=MSqqONYPyXdoryTMVOMCVfHY1zxA8lghBgSEEzRog/c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=uoaOF7MrhY/QsdwjnI8oKgULbfWvDBuLIBDxw9vHOSC6cjeSfGBtp10eOESwbBoJi
	 ktOiwlmpgPWThe6INnc1Z6bD3AilRO4qNkD1WFcgOLVxCE+PC49XqIsrBfE2IHpvkA
	 KeUQAm9PAmSG0fCIe20PyDqys0PMluXa+03YzWf4=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20250828085936epcas5p151a52aa51b0d013bd996852b7e378ad0~f4qSJY1De0547105471epcas5p15;
	Thu, 28 Aug 2025 08:59:36 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.87]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4cCFhR0CQ1z6B9m5; Thu, 28 Aug
	2025 08:59:35 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20250828085934epcas5p12a94dfc60a4ea9d5bb46fa7cd10874b7~f4qQtroHi0548005480epcas5p1d;
	Thu, 28 Aug 2025 08:59:34 +0000 (GMT)
Received: from cheetah.samsungds.net (unknown [107.109.115.53]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20250828085931epsmtip25782e6ea336bdd3b95b00f614582f79e~f4qOE-OgQ0309203092epsmtip2j;
	Thu, 28 Aug 2025 08:59:31 +0000 (GMT)
From: Inbaraj E <inbaraj.e@samsung.com>
To: rmfrfs@gmail.com, laurent.pinchart@ideasonboard.com, martink@posteo.de,
	kernel@puri.sm, mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de
Cc: kernel@pengutronix.de, festevam@gmail.com, linux-media@vger.kernel.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org, pankaj.dubey@samsung.com,
	ravi.patel@samsung.com, shradha.t@samsung.com, Inbaraj E
	<inbaraj.e@samsung.com>
Subject: [PATCH v3 3/7] media: imx-mipi-csis: Move clk to mipi_csis_info
 structure
Date: Thu, 28 Aug 2025 14:29:07 +0530
Message-ID: <20250828085911.81266-4-inbaraj.e@samsung.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250828085911.81266-1-inbaraj.e@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20250828085934epcas5p12a94dfc60a4ea9d5bb46fa7cd10874b7
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250828085934epcas5p12a94dfc60a4ea9d5bb46fa7cd10874b7
References: <20250828085911.81266-1-inbaraj.e@samsung.com>
	<CGME20250828085934epcas5p12a94dfc60a4ea9d5bb46fa7cd10874b7@epcas5p1.samsung.com>

The Clock names and number of Clocks in v3.3 and v3.6.3 differ v4.3. To
extend the driver for Tesla FSD SoC support, move the Clock names and
number of Clocks into the mipi_csis_info structure.

Signed-off-by: Inbaraj E <inbaraj.e@samsung.com>
---
 drivers/media/platform/nxp/imx-mipi-csis.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/nxp/imx-mipi-csis.c b/drivers/media/platform/nxp/imx-mipi-csis.c
index b1136336a57f..cec035059445 100644
--- a/drivers/media/platform/nxp/imx-mipi-csis.c
+++ b/drivers/media/platform/nxp/imx-mipi-csis.c
@@ -304,6 +304,8 @@ static const struct mipi_csis_event mipi_csis_events[] = {
 #define MIPI_CSIS_NUM_EVENTS		ARRAY_SIZE(mipi_csis_events)
 #define MIPI_CSIS_NUM_ERROR_EVENTS	(MIPI_CSIS_NUM_EVENTS - 20)
 
+#define MIPI_CSIS_MAX_CLOCKS	4
+
 enum mipi_csis_clk {
 	MIPI_CSIS_CLK_PCLK,
 	MIPI_CSIS_CLK_WRAP,
@@ -311,13 +313,6 @@ enum mipi_csis_clk {
 	MIPI_CSIS_CLK_AXI,
 };
 
-static const char * const mipi_csis_clk_id[] = {
-	"pclk",
-	"wrap",
-	"phy",
-	"axi",
-};
-
 enum mipi_csis_version {
 	MIPI_CSIS_V3_3,
 	MIPI_CSIS_V3_6_3,
@@ -326,6 +321,7 @@ enum mipi_csis_version {
 struct mipi_csis_info {
 	enum mipi_csis_version version;
 	unsigned int num_clocks;
+	const char *clk_names[MIPI_CSIS_MAX_CLOCKS];
 };
 
 struct mipi_csis_device {
@@ -735,7 +731,7 @@ static int mipi_csis_clk_get(struct mipi_csis_device *csis)
 		return -ENOMEM;
 
 	for (i = 0; i < csis->info->num_clocks; i++)
-		csis->clks[i].id = mipi_csis_clk_id[i];
+		csis->clks[i].id = csis->info->clk_names[i];
 
 	ret = devm_clk_bulk_get(csis->dev, csis->info->num_clocks,
 				csis->clks);
@@ -1609,12 +1605,14 @@ static const struct of_device_id mipi_csis_of_match[] = {
 		.data = &(const struct mipi_csis_info){
 			.version = MIPI_CSIS_V3_3,
 			.num_clocks = 3,
+			.clk_names = {"pclk", "wrap", "phy"},
 		},
 	}, {
 		.compatible = "fsl,imx8mm-mipi-csi2",
 		.data = &(const struct mipi_csis_info){
 			.version = MIPI_CSIS_V3_6_3,
 			.num_clocks = 4,
+			.clk_names = {"pclk", "wrap", "phy", "axi"},
 		},
 	},
 	{ /* sentinel */ },
-- 
2.49.0


