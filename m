Return-Path: <devicetree+bounces-238480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 911BCC5BA3E
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 07:56:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5D0D3350701
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 06:56:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D064A2F60C4;
	Fri, 14 Nov 2025 06:55:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from inva020.nxp.com (inva020.nxp.com [92.121.34.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4244B2F617C;
	Fri, 14 Nov 2025 06:55:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=92.121.34.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763103353; cv=none; b=MJRa1j6F7XCVCzMINtDO2n7KOWjDnwmKPXV5DTcYRoqRYO4XhBwzonVWw1dzRNcBtx9VU/+WJ5+8YU2N43AwWCSq90iveofjKCG3L179rB+F19NdbyKDvOcZjUvGe11MjaABXtFEBi0yjSIF5+Kl890EQDbOZ4+Q+eYZxs4/Ubc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763103353; c=relaxed/simple;
	bh=tCjbGDv0zR+0FQ29xgeHeLnHMYNA7V5Gz0dijDuORK8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qdhcmCmlFZ8biZcmOtN7FZ3kCNswo59dGSHq6OK2OOvpZ4f9sDMg0g4qaFk2aeJLGF+llNGHVXBldgRBlAuaR+ixdV21xrB2wUubq73tFag0FFMKFRYj2GJWGXgHkjZ+w/s4Krh3TjoYFqzkvAucHNSZZbCX8+m3KM9QIeeSACU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; arc=none smtp.client-ip=92.121.34.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6928D1A2BC9;
	Fri, 14 Nov 2025 07:55:44 +0100 (CET)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3BCC71A2B70;
	Fri, 14 Nov 2025 07:55:44 +0100 (CET)
Received: from lsvm11u0000395.swis.ap-northeast-2.aws.nxp.com (lsvm11u0000395.swis.ap-northeast-2.aws.nxp.com [10.52.9.99])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 2EE77180009C;
	Fri, 14 Nov 2025 14:55:42 +0800 (+08)
From: Joseph Guo <qijian.guo@nxp.com>
Date: Fri, 14 Nov 2025 15:55:33 +0900
Subject: [PATCH 2/2] dt-bindings: arm: imx Add FRDM-IMX91 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251114-imx91_frdm-v1-2-e5763bdf9336@nxp.com>
References: <20251114-imx91_frdm-v1-0-e5763bdf9336@nxp.com>
In-Reply-To: <20251114-imx91_frdm-v1-0-e5763bdf9336@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Justin Jiang <justin.jiang@nxp.com>, Joseph Guo <qijian.guo@nxp.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763103338; l=820;
 i=qijian.guo@nxp.com; s=20250519; h=from:subject:message-id;
 bh=tCjbGDv0zR+0FQ29xgeHeLnHMYNA7V5Gz0dijDuORK8=;
 b=PPEOpsKInLPPTySm5B45oA0BCYDWopdm2srTsJC/s3DYHSQFVICpLY28y2oHJamBqcc5iH7D+
 x6qAqsYUY6SABjwihwU7MP2reG55ntDJBxNZ70jYQ2GcoNfkwlWWnG5
X-Developer-Key: i=qijian.guo@nxp.com; a=ed25519;
 pk=VRjOOFhVecTRwBzK4mt/k3JBnHoYfuXKCm9FM+hHQhs=
X-Virus-Scanned: ClamAV using ClamSMTP

Add the board FRDM-IMX91 in the binding document.

Signed-off-by: Joseph Guo <qijian.guo@nxp.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 00cdf490b0620bf537330ee9342a197f13c8c8ab..402c735bafe97236a2f4790f914ef56a4156b0f0 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1409,6 +1409,7 @@ properties:
         items:
           - enum:
               - fsl,imx91-11x11-evk       # i.MX91 11x11 EVK Board
+              - fsl,frdm-imx91            # FRDM i.MX91 Development Board
           - const: fsl,imx91
 
       - description: i.MX93 based Boards

-- 
2.34.1


