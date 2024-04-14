Return-Path: <devicetree+bounces-58245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E14368A1004
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 12:30:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 36091B25256
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 10:30:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E260C146D76;
	Thu, 11 Apr 2024 10:29:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from inva020.nxp.com (inva020.nxp.com [92.121.34.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECE3146D75;
	Thu, 11 Apr 2024 10:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=92.121.34.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712831386; cv=none; b=cm2MDBM3TwoIHVbJiR+Pe1O8uLIbiwNXmV/Ixut/DZ0Ku/t0XW/0X7P9Y8ry7qzF5n9H6c1Ot5dHDczi9qH3wifFYQ2iPzXjAEHYwf0qvEB33n4cm8XLazNbLSUGs3CMHN2N59u7Oa0Cp9lPqsIQwaX5VCRLr/lgWYAq0jYuQYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712831386; c=relaxed/simple;
	bh=WU2j9c5SydTDoSuq42VPpvpclkSAyuUOXeevkVUcLb4=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References; b=dzp1EpZ4bKgQVIJxy5Rk+J//7JiVsaaaapIPwA1NELIw60vMBWlmDynixNQ/a3RPju/Z3gZs6yMTMJcceRYBUijAIV6639VkKZLX+p6MWrZ5349o+ikQJ5CXrzC6PNVBQ9ZVWgEf93rJkW1oIO9uyNpq36cnURAa/jhX5KJFAgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; arc=none smtp.client-ip=92.121.34.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 196211A0E09;
	Thu, 11 Apr 2024 12:29:38 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id CB3131A0059;
	Thu, 11 Apr 2024 12:29:37 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id C12D61820F76;
	Thu, 11 Apr 2024 18:29:35 +0800 (+08)
From: Shengjiu Wang <shengjiu.wang@nxp.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	shengjiu.wang@gmail.com,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 2/2] ARM: dts: imx6: exchange fallback and specific compatible string
Date: Thu, 11 Apr 2024 18:11:45 +0800
Message-Id: <1712830305-31350-3-git-send-email-shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1712830305-31350-1-git-send-email-shengjiu.wang@nxp.com>
References: <1712830305-31350-1-git-send-email-shengjiu.wang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Exchange fallback and specific compatible string for spdif sound card.
The specific compatble string need to be in first place, the fallback
compatbile string need to be in the end.

Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
---
 arch/arm/boot/dts/nxp/imx/imx6qdl-sabreauto.dtsi | 4 ++--
 arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi        | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-sabreauto.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-sabreauto.dtsi
index 68e97180d33e..51517e27418c 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-sabreauto.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-sabreauto.dtsi
@@ -144,8 +144,8 @@ sound-cs42888 {
 	};
 
 	sound-spdif {
-		compatible = "fsl,imx-audio-spdif",
-			   "fsl,imx-sabreauto-spdif";
+		compatible = "fsl,imx-sabreauto-spdif",
+			     "fsl,imx-audio-spdif";
 		model = "imx-spdif";
 		spdif-controller = <&spdif>;
 		spdif-in;
diff --git a/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi
index c6e85e4a0883..67872c16372a 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi
@@ -184,8 +184,8 @@ panel_in: endpoint {
 	};
 
 	sound-spdif {
-		compatible = "fsl,imx-audio-spdif",
-			   "fsl,imx6sx-sdb-spdif";
+		compatible = "fsl,imx6sx-sdb-spdif",
+			     "fsl,imx-audio-spdif";
 		model = "imx-spdif";
 		spdif-controller = <&spdif>;
 		spdif-out;
-- 
2.34.1


