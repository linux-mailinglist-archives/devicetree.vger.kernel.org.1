Return-Path: <devicetree+bounces-244570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F3DCA6B92
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 09:37:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3D9AA3018E17
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 08:37:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75B5F315D41;
	Fri,  5 Dec 2025 08:12:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from inva020.nxp.com (inva020.nxp.com [92.121.34.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9AB7313E22;
	Fri,  5 Dec 2025 08:11:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=92.121.34.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764922329; cv=none; b=V/giy+pEdzBZMKccVNgsptoasOxNl7CJAx1s4l7lEt1STal2LQ2Doy/6bNF76Cd5cVx8odVaJj2ghzkwGef21WMg7Xuqx16wJNCWqGrNHpvPsKPIb9tPUKtwe7gofTC1ntCxqp6CQh5x5TRR1hG7AzdC7w3u9gVScWN5PftQFqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764922329; c=relaxed/simple;
	bh=TkLQNIRC82yp0ynip0gyOhzeM+WBYVNCh0kICDpNKms=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Cvb3HrjdoaHbQCnC0rOLJ1lo3XdUQvGJQGp0kFOaiWi9/9+0dC6tQHrl9+Aiq+/3F2cME/Rwng8r8wsBo7AeKiIL8PRzw94XGB6ytjkvbKz8w/PUfq3XQh7TtVbOxH2UqyCcET1tvWtrYVPEYtoT53S3i5II1Qh0sVQR4ilPq7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; arc=none smtp.client-ip=92.121.34.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5B6451A3336;
	Fri,  5 Dec 2025 09:04:22 +0100 (CET)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 257C81A18F7;
	Fri,  5 Dec 2025 09:04:22 +0100 (CET)
Received: from lsvm11u0000554.swis.ap-northeast-2.aws.nxp.com (lsvm11u0000554.swis.ap-northeast-2.aws.nxp.com [10.52.9.11])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 712B818000AF;
	Fri,  5 Dec 2025 16:04:20 +0800 (+08)
From: "Yanan.Yang" <yanan.yang@nxp.com>
Date: Fri, 05 Dec 2025 17:03:58 +0900
Subject: [PATCH 1/2] dt-bindings: arm: fsl: Add FRDM-IMX91S board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251205-imx91s-frdm-v1-1-afd6cd01c299@nxp.com>
References: <20251205-imx91s-frdm-v1-0-afd6cd01c299@nxp.com>
In-Reply-To: <20251205-imx91s-frdm-v1-0-afd6cd01c299@nxp.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 yanan.yang@nxp.com, qijian.guo@nxp.com, justin.jiang@nxp.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764921858; l=884;
 i=yanan.yang@nxp.com; s=20251205; h=from:subject:message-id;
 bh=TkLQNIRC82yp0ynip0gyOhzeM+WBYVNCh0kICDpNKms=;
 b=XdpjCw1NKWOp2CeuUgX8VUc9Al+PphTDV2AvLmtsnVGtGtskurgBARvOa5bWCKENLCu0NoiVa
 joZnRB92KODCfLdwjawkR3fkX8GLTkRCvuVPezvlLqd15NxAaf84vHM
X-Developer-Key: i=yanan.yang@nxp.com; a=ed25519;
 pk=d4hHTp5SW/PyyxexLEo/3c2RAaQDwym0zuYlifH95PI=
X-Virus-Scanned: ClamAV using ClamSMTP

Add DT compatible string for NXP FRDM-IMX91S board

The FRDM i.MX 91S development board is an low-cost and compact
development board featuring the i.MX 91 applications processor.

Signed-off-by: Yanan.Yang <yanan.yang@nxp.com>
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


