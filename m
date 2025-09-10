Return-Path: <devicetree+bounces-215444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 46443B51707
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 14:35:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 01F02543FBF
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 12:35:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF38D31AF28;
	Wed, 10 Sep 2025 12:35:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B4827A931
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 12:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757507744; cv=none; b=cHQdOraZAi3imw6olBQJnSyIJzsZuc9YDpMjZ8o/jHSYDxd/FDYQXRcVtmJ/YibPBDcJ0s/lobHkqdiNaS60ZeSlhRn5Ka2yPnaV0v/86ehMRwGzBHtWwvnlxdyllln6eay+LXGquauVs6VFbkzESKFdx3PVzlzSrFE4zHCQks0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757507744; c=relaxed/simple;
	bh=TBA+/Wtrrdw+qQXA6PajB1ycZl0ryR1E4WZlHtktBNs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EQll3xZF2OPCxmcN6Wq9nFa/vjA1WVf1/2gnT2RXyb5I2K72YTtkIQfX0FT64tRPrpUeF4cKDrRYPQYgYzlmmoscX54QQN7KbAXrWNIbtD5Vf4dFN//olaIeMbWI8Big9TAw0U7S9LcrVGYam9SVvLZQye7NZd+ytf43Nj907DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1uwK31-0002Rk-MB; Wed, 10 Sep 2025 14:35:39 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Wed, 10 Sep 2025 14:35:23 +0200
Subject: [PATCH 3/4] dt-bindings: arm: fsl: Add Protonic PRT8ML
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250910-imx8mp-prt8ml-v1-3-fd04aed15670@pengutronix.de>
References: <20250910-imx8mp-prt8ml-v1-0-fd04aed15670@pengutronix.de>
In-Reply-To: <20250910-imx8mp-prt8ml-v1-0-fd04aed15670@pengutronix.de>
To: Andrew Lunn <andrew@lunn.ch>, Vladimir Oltean <olteanv@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Shengjiu Wang <shengjiu.wang@nxp.com>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-sound@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1080; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=TBA+/Wtrrdw+qQXA6PajB1ycZl0ryR1E4WZlHtktBNs=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsg4WDAzZgdj1FKGF9tPXMne/vXnoojj9xhqGrYne3Iyt
 JhesGxP6ShlYRDjYpAVU2SJVZNTEDL2v25WaRcLM4eVCWQIAxenAEwkUJfhD8cbgfy9fy663uxN
 sspY8Fukxy5T4EfysuNa7wT+txT+nMTwh+fLvVW7lP9orTh+KHdeX8qdHdWhc9Z5y3qdWnT1wwy
 9rfwA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::ac
X-SA-Exim-Mail-From: jre@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Add DT compatible string for Protonic PRT8ML board.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index ebafa6ecbcb6..ce3e53b4513a 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1106,6 +1106,7 @@ properties:
               - gateworks,imx8mp-gw75xx-2x # i.MX8MP Gateworks Board
               - gateworks,imx8mp-gw82xx-2x # i.MX8MP Gateworks Board
               - gocontroll,moduline-display # GOcontroll Moduline Display controller
+              - prt,prt8ml             # Protonic PRT8ML
               - skov,imx8mp-skov-basic # SKOV i.MX8MP baseboard without frontplate
               - skov,imx8mp-skov-revb-hdmi # SKOV i.MX8MP climate control without panel
               - skov,imx8mp-skov-revb-lt6 # SKOV i.MX8MP climate control with 7” panel

-- 
2.51.0.178.g2462961280


