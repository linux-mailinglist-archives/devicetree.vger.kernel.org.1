Return-Path: <devicetree+bounces-28309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C85881DAB9
	for <lists+devicetree@lfdr.de>; Sun, 24 Dec 2023 13:41:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 82DC2B2164B
	for <lists+devicetree@lfdr.de>; Sun, 24 Dec 2023 12:41:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1559B5677;
	Sun, 24 Dec 2023 12:41:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gnu.org header.i=@gnu.org header.b="RQqpWkNU"
X-Original-To: devicetree@vger.kernel.org
Received: from eggs.gnu.org (eggs.gnu.org [209.51.188.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B7484429;
	Sun, 24 Dec 2023 12:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gnu.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gnu.org
Received: from fencepost.gnu.org ([2001:470:142:3::e])
	by eggs.gnu.org with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.90_1)
	(envelope-from <othacehe@gnu.org>)
	id 1rHNnT-0006IJ-Jl; Sun, 24 Dec 2023 07:41:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gnu.org;
	s=fencepost-gnu-org; h=MIME-Version:References:In-Reply-To:Date:Subject:To:
	From; bh=k2bv0lubVH8NsRJr5+61Oe3KPK8iIPvWwJlHbhSRxgY=; b=RQqpWkNUxJotnNL3Bc6O
	aN+VBntsWjn+RP4UdpMfJRYJWN4tcFuAmBKbAgug3xZpLonlqAiMWz7H772GYC6RUvftuA0XTnHM+
	+0qEyt7TDOuT+8PZehvqMxdrUApD/jChhOVFvBV5nlYLVP8eegWK9yys7q+sFH4vLFNVpVKWEZh2z
	qPQLhlcHKiADquKz3z85JlL67Wa/Zfx82OLbr0/OElApHc6MrwjDi1Wz+sA81NNJKPlo5l84mdSTR
	uduGm6l0u4DD8I3odLI6IxEPrs3t8dpXycHhQav3FYtIu3ZtLKKU4eRqpygm4K3XdKI4QL362fYa6
	jbnxZk84YLvoJQ==;
From: Mathieu Othacehe <othacehe@gnu.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Li Yang <leoyang.li@nxp.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Mathieu Othacehe <othacehe@gnu.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/2] dt-bindings: arm: fsl: Add VAR-SOM-MX93 with Symphony
Date: Sun, 24 Dec 2023 13:41:13 +0100
Message-ID: <20231224124114.31119-2-othacehe@gnu.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231224124114.31119-1-othacehe@gnu.org>
References: <20231224124114.31119-1-othacehe@gnu.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for Variscite i.MX93 VAR-SOM-MX93 SoM with Symphony board.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Mathieu Othacehe <othacehe@gnu.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 228dcc5c7d6f..27936edfe054 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1275,6 +1275,12 @@ properties:
           - const: tq,imx93-tqma9352        # TQ-Systems GmbH i.MX93 TQMa93xxCA/LA SOM
           - const: fsl,imx93
 
+      - description: Variscite VAR-SOM-MX93 based boards
+        items:
+          - const: variscite,var-som-mx93-symphony
+          - const: variscite,var-som-mx93
+          - const: fsl,imx93
+
       - description:
           Freescale Vybrid Platform Device Tree Bindings
 
-- 
2.41.0


