Return-Path: <devicetree+bounces-250624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C029CEA7D1
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 19:42:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 75678302BD33
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 18:41:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CDBD32ED56;
	Tue, 30 Dec 2025 18:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="fh9Ady+C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6909932C312;
	Tue, 30 Dec 2025 18:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767120108; cv=none; b=WzGDRDOIiypXrH9CsU+XNAIE3P23aj7FUR+xLHkL8K12zoEYA6hgBZuspGkU/cR4h2HmwKf+LEqFpq2T5DQS2ZVUEaYBqSbjiuv4c+38f8o0dukphUafmSxSe+Dop5sncmBX7YYrsYgCfC1hhwtHgDQ/EgD7CiTAVYnoc9kxPNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767120108; c=relaxed/simple;
	bh=q90ZacewWb5DiHjB/r7cstHAmdt0bC5rCaMxz1r3Ygo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pAjPXshVslfAOpYmANHZUJhu1EMKpZ7zTbNAXVZGYhch8u2Se04hD9TYLuMiTBgJBVqZyOJ4BXcUo8QIqjD/FzbZldg2rIAd0StqoiqeEliIpLlImhNTrfkacdQHs0Y5asP9VnoFtPl85sTJiyloNvI8iPivx5wAo+qiOJt5TOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=fh9Ady+C; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B414510CE65;
	Tue, 30 Dec 2025 19:41:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1767120102; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=fdohV05PWrCvEVOmrgoFb/WVa7Mf6GVZF7Ugyjl2xAk=;
	b=fh9Ady+CYoQ2sdHwUv11wDbZ5YMu0KL90PJTb/p1j44FGmWIfxqetM8dvGd/Ksp6kjHPGx
	tA9Irk0uAyTU4xmMaNMg+sJ7XyVDdNfKmQFuvmXKUv+33VEGXldndn84+femzcFyv813A1
	ob5cGM+S1aH1LGb9RbcNAHB1MGfVJqtDF71EytN6juDsmtkxgGBMzWPq2ap/GRCY//qAqs
	Ey/dynWO/4u8y3T1bsDrxUI4t2LojwROeh6UBPjfII1t/jigiiU+Ly9Dz55znECMUwDKgU
	AJPjORGGHmNQMk6gmUkcFne0FRaX8WVdowM7s/7VkRXWdiGK1598LB8g3vPk2w==
From: Marek Vasut <marex@nabladev.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@nabladev.com>,
	"Rob Herring (Arm)" <robh@kernel.org>,
	Christian Eggers <ceggers@arri.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Markus Heidelberg <m.heidelberg@cab.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/4] dt-bindings: arm: fsl: Document ifm VHIP4 EvalBoard v1 and v2
Date: Tue, 30 Dec 2025 19:40:59 +0100
Message-ID: <20251230184121.52635-2-marex@nabladev.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251230184121.52635-1-marex@nabladev.com>
References: <20251230184121.52635-1-marex@nabladev.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

Document ifm i.MX8MN VHIP4 EvalBoard v1 and v2 reference design binding.
This system exists in two generations, v1 and v2, which share a lot of
commonality. The boards come with either single gigabit ethernet or an
KSZ8794 fast-ethernet switch, boot from eMMC, and offer CAN interfaces
via Microchip MCP25xx SPI CAN controllers, UART, and USB host. The GPU
is not available in the SoC populated on these devices.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Marek Vasut <marex@nabladev.com>
---
Cc: Christian Eggers <ceggers@arri.de>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Markus Heidelberg <m.heidelberg@cab.de>
Cc: Rob Herring <robh@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: imx@lists.linux.dev
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
V2: Add AB from Rob
V3: No change
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 68a2d5fecc43b..4d0aee780bcb2 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1071,6 +1071,15 @@ properties:
               - gw,imx8mn-gw7902          # i.MX8MM Gateworks Board
           - const: fsl,imx8mn
 
+      - description: ifm i.MX8MN VHIP4 based boards
+        items:
+          - enum:
+              - ifm,imx8mn-vhip4-evalboard-v1
+              - ifm,imx8mn-vhip4-evalboard-v2
+          - const: ifm,imx8mn-vhip4-evalboard
+          - const: ifm,imx8mn-vhip4
+          - const: fsl,imx8mn
+
       - description: Variscite VAR-SOM-MX8MN based boards
         items:
           - enum:
-- 
2.51.0


