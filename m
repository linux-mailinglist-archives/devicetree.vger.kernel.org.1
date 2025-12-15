Return-Path: <devicetree+bounces-246467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D74CCBD0A7
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:53:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 06E97304487A
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 08:50:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDBEF32ABCD;
	Mon, 15 Dec 2025 08:43:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from inva021.nxp.com (inva021.nxp.com [92.121.34.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD9A32A3FB;
	Mon, 15 Dec 2025 08:43:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=92.121.34.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765788193; cv=none; b=EIpXKoiPV6Hxta2k6bQqo1GN00+6IMjyc7dytYFgq4Ci053Mxh9/b6r+u88cAPLos4mbAdgL5miCSeNVd/JkoxvyBZrm12KdK+8i7pqIH5n2mbD7GlN2G2Hig5TW07W6CipWIm8PFvNYMHqOffirUgeC0OuTawEV2j9YUzzaP5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765788193; c=relaxed/simple;
	bh=gNNn0SRmoio4wuH8+Sxd8xlRMKwBWC18TaGdgZZgfKk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jm+0M3LL6L76keQK7RcoAOmMtujNxWdMNK7tKXmGRxjYQdPSsLr24UNqA27i+Ikzs1EhWYc0rUYXHCUI1SkJrkxvhbStLL6V3Ar5D4dCypMWqQVI24Mc6iKewjwO04Xe7F84WbAKTRp7gGiIuwNOFdKwZ/hZ+E/8v0+2mv9XnOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; arc=none smtp.client-ip=92.121.34.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id BBFFA20165A;
	Mon, 15 Dec 2025 09:43:04 +0100 (CET)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 86BE320132D;
	Mon, 15 Dec 2025 09:43:04 +0100 (CET)
Received: from lsvm11u0000554.swis.ap-northeast-2.aws.nxp.com (lsvm11u0000554.swis.ap-northeast-2.aws.nxp.com [10.52.9.11])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 2B1E81800096;
	Mon, 15 Dec 2025 16:43:02 +0800 (+08)
From: Yanan Yang <yanan.yang@nxp.com>
Date: Mon, 15 Dec 2025 17:42:51 +0900
Subject: [PATCH v2 1/2] dt-bindings: arm: fsl: Add FRDM-IMX91S board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251215-imx91s-frdm-v2-1-87996bdaa59c@nxp.com>
References: <20251215-imx91s-frdm-v2-0-87996bdaa59c@nxp.com>
In-Reply-To: <20251215-imx91s-frdm-v2-0-87996bdaa59c@nxp.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 yanan.yang@nxp.com, qijian.guo@nxp.com, justin.jiang@nxp.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765788179; l=1289;
 i=yanan.yang@nxp.com; s=20251205; h=from:subject:message-id;
 bh=gNNn0SRmoio4wuH8+Sxd8xlRMKwBWC18TaGdgZZgfKk=;
 b=KU+ZksGO+GHiB2rgQocr+jTgT5csc5yw0NfF6EUERYu2oltL6V5yOnSJ2MdXSkUZkZUUJQNbA
 y4FE79oOTpoDYUrfl2K4fTYyeKrPELp/+mySPfvlZKhaCodnewtGzcy
X-Developer-Key: i=yanan.yang@nxp.com; a=ed25519;
 pk=d4hHTp5SW/PyyxexLEo/3c2RAaQDwym0zuYlifH95PI=
X-Virus-Scanned: ClamAV using ClamSMTP

Add DT compatible string for NXP FRDM-IMX91S board

The FRDM-IMX91S is a low-cost, compact development board based on the
i.MX91 applications processor. It is a cost-optimized variant of the
FRDM-IMX91 board, with notable hardware differences requiring a separate
DTS:
- 512MB LPDDR4 (FRDM-IMX91 uses 1GB)
- 256MB FlexSPI-NAND (FRDM-IMX91 uses 8GB eMMC)
- Single GbE port (FRDM-IMX91 has dual GbE)
- PMIC PF9453 (FRDM-IMX91 uses PCA9451A)

Signed-off-by: Yanan Yang <yanan.yang@nxp.com>

---
Changes in v2:
- Correct author name: removed extra period in "Yanan.Yang"
- Refined commit message to clarify board differences
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 68a2d5fecc43..82f28be401b8 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1412,6 +1412,7 @@ properties:
         items:
           - enum:
               - fsl,imx91-11x11-evk       # i.MX91 11x11 EVK Board
+              - fsl,imx91-11x11-frdm-s    # FRDM-IMX91S Board
           - const: fsl,imx91
 
       - description: i.MX93 based Boards

-- 
2.43.0


