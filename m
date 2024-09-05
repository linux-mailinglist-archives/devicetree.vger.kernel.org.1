Return-Path: <devicetree+bounces-100203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B7296CCD4
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 04:53:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 250C2B24B2C
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 02:53:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C38C114373F;
	Thu,  5 Sep 2024 02:52:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from inva020.nxp.com (inva020.nxp.com [92.121.34.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F474146D7F;
	Thu,  5 Sep 2024 02:52:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=92.121.34.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725504758; cv=none; b=dTuCL7AGEET6gguwjalnBB4jyA+l+zs4H9jo4Td12u39Ks7DD08siwNpc3jJuAS2KuYG7JReghGdoZhpDqcaQ8Gmlc7Jd537g1Yergg5gnTiPFvaeRNDLHlNRBnTfJANIV2H6ufbYx7twUwEnFOQROXy3OmxieY54lv7v5Y5RmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725504758; c=relaxed/simple;
	bh=gNqbxAYQdKN1+1jtE/fs966NZxd3+FLms7ybCyREt9Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=NHr7Nms3Bb2+8dETz6pPt1MZa43Ia9BL/7dBCWZWLgRK3UuBgV8Ow2aUZRuqseI/sCI2iLzgHBqd0yIr7AV8C9mhxabju7KUuBTTaKh6r5nYdnX0fAsRVwPLn5AsJyk6KIem9lpTGUycTxKBbE+3pdBHoclrRfyiOGu2g37vsJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; arc=none smtp.client-ip=92.121.34.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 75B581A17C9;
	Thu,  5 Sep 2024 04:52:30 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3E3461A17C1;
	Thu,  5 Sep 2024 04:52:30 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 40F99183ACAE;
	Thu,  5 Sep 2024 10:52:28 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	abelvesa@kernel.org,
	peng.fan@nxp.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	festevam@gmail.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	imx@lists.linux.dev,
	kernel@pengutronix.de,
	Richard Zhu <hongxing.zhu@nxp.com>
Subject: [PATCH v2 2/3] dt-bindings: clock: nxp,imx95-blk-ctl: Add compatible string for i.MX95 HSIO BLK CTRL
Date: Thu,  5 Sep 2024 10:31:07 +0800
Message-Id: <1725503468-22105-3-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1725503468-22105-1-git-send-email-hongxing.zhu@nxp.com>
References: <1725503468-22105-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add compatible string "nxp,imx95-hsio-blk-ctl" for i.MX95.

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
---
 Documentation/devicetree/bindings/clock/nxp,imx95-blk-ctl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/nxp,imx95-blk-ctl.yaml b/Documentation/devicetree/bindings/clock/nxp,imx95-blk-ctl.yaml
index 6a928735e00d..244fe7b95fd6 100644
--- a/Documentation/devicetree/bindings/clock/nxp,imx95-blk-ctl.yaml
+++ b/Documentation/devicetree/bindings/clock/nxp,imx95-blk-ctl.yaml
@@ -15,6 +15,7 @@ properties:
       - enum:
           - nxp,imx95-camera-csr
           - nxp,imx95-display-csr
+          - nxp,imx95-hsio-blk-ctl
           - nxp,imx95-lvds-csr
           - nxp,imx95-vpu-csr
       - const: syscon
-- 
2.37.1


