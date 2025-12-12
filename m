Return-Path: <devicetree+bounces-246002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4F8CB7AD4
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 03:31:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E0FCC3019E14
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 02:31:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19E4A29B229;
	Fri, 12 Dec 2025 02:31:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from inva021.nxp.com (inva021.nxp.com [92.121.34.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F52B1891A9;
	Fri, 12 Dec 2025 02:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=92.121.34.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765506707; cv=none; b=J1jaSU++eS8Y4YBSlvSJBWkTeLVHiGJhY3g9YpbehJMWwtIeeVk35/0y95ZnwUSqcnnTT6LJLVmCWYw7sIr0kYl+lG55yNO3dldU4v2mueBqMg+E8ljaxNbp1HwoL5ydqFc/J/vXVVRiuD9TTRqMlyv5b5+0YYx8n3EWbL+qwYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765506707; c=relaxed/simple;
	bh=Gy9TlgJnCmm6TOU+C1vsyNLI04jFbpgfKBDibUHLi+M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=X1Gj6GAFCF4AWGhhhgCBoWQSgyp4eVzkyU21rE2w2mPx0+kzD3Yv/HzGr1CNMBwsuz1cJmDFd4ZEDxPeO6NiFv9YEha1QGnh9HhRtaLOQ+Km/litiRLnWaIAfbg+Ru+4c0WljS2RVaosUbSRX/ShcjFchnMuE0R57CQS4Muw43E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; arc=none smtp.client-ip=92.121.34.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 71090201E6A;
	Fri, 12 Dec 2025 03:31:38 +0100 (CET)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3BE07201E5D;
	Fri, 12 Dec 2025 03:31:38 +0100 (CET)
Received: from lsvm11u0000395.swis.ap-northeast-2.aws.nxp.com (lsvm11u0000395.swis.ap-northeast-2.aws.nxp.com [10.52.9.99])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id A0E281800095;
	Fri, 12 Dec 2025 10:31:36 +0800 (+08)
From: Joseph Guo <qijian.guo@nxp.com>
Date: Fri, 12 Dec 2025 11:31:33 +0900
Subject: [PATCH v2 1/2] dt-bindings: arm: imx Add FRDM-IMX91 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251212-imx91_frdm-v2-1-4dd6d289e81d@nxp.com>
References: <20251212-imx91_frdm-v2-0-4dd6d289e81d@nxp.com>
In-Reply-To: <20251212-imx91_frdm-v2-0-4dd6d289e81d@nxp.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: Justin Jiang <justin.jiang@nxp.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, qijian.guo@oss.nxp.com, 
 Joseph Guo <qijian.guo@nxp.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765506694; l=885;
 i=qijian.guo@nxp.com; s=20250519; h=from:subject:message-id;
 bh=Gy9TlgJnCmm6TOU+C1vsyNLI04jFbpgfKBDibUHLi+M=;
 b=U6pV2LnRwk9vvUuUntCBQXJp4xWl3D1sfBtvgpDRst2y0d9m/0HFclA9+VqZop2gAHeXmajRj
 2e4gcFoDSYGCPnwSK8a7SSrVprl1Y8aAGPbT+o++3I+5Bx54BFIduhR
X-Developer-Key: i=qijian.guo@nxp.com; a=ed25519;
 pk=VRjOOFhVecTRwBzK4mt/k3JBnHoYfuXKCm9FM+hHQhs=
X-Virus-Scanned: ClamAV using ClamSMTP

Add the board FRDM-IMX91 in the binding document.

Signed-off-by: Joseph Guo <qijian.guo@nxp.com>
---
Change in v2:
- rename 'frdm-imx91' to 'imx91-11x11-frdm'
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 68a2d5fecc43b06711e2efce61ac1fc2794b79bc..12d72057b1b817283754a2857d8106a409b594e7 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1412,6 +1412,7 @@ properties:
         items:
           - enum:
               - fsl,imx91-11x11-evk       # i.MX91 11x11 EVK Board
+              - fsl,imx91-11x11-frdm      # FRDM i.MX91 Development Board
           - const: fsl,imx91
 
       - description: i.MX93 based Boards

-- 
2.34.1


