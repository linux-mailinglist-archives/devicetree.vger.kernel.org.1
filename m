Return-Path: <devicetree+bounces-79156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CB69142BE
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 08:31:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 87024284B39
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 06:31:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49A7C24B2F;
	Mon, 24 Jun 2024 06:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="i7obmKSx"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-226.siemens.flowmailer.net (mta-64-226.siemens.flowmailer.net [185.136.64.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EA2E3A1DA
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 06:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719210667; cv=none; b=SnN35DzcO6m4heMx2wKuJ+aaH13QsX1jVcuGI12RSqgJuzdZ2bNHeBbw3YJWRnf9wOCeAVidj6QBEP0EdFl4n1Ahp2iXmon4Q2rHCiA/Uu9tXptad7Cbq6XCgBo9NYi1jMPBR/w9e37ed0uxVbNoa9Bxyc5gseXLRgYeTuWwT3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719210667; c=relaxed/simple;
	bh=de7de+rT9nbBMSSSnfOCoLPHya/yDwE8bC/DvKjslAc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=E6v0p3zj2E6Fqop7E0e6/a8L9wD/bXF5561ayRJ6KZAJ5dvvaoswVQjDEEAXPHVHiDpYkrnDAppTlbK+9eWuIbVPcjsBz1b94646Ip4rnVhnv3E+ZcJe4XZaAD65Swq5t8IB4f8h8uYJJ77CS7EsErbRnUNA+Sg/NXLzmFiz7zU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=i7obmKSx; arc=none smtp.client-ip=185.136.64.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-226.siemens.flowmailer.net with ESMTPSA id 2024062406205277698bb23ebe32bb3a
        for <devicetree@vger.kernel.org>;
        Mon, 24 Jun 2024 08:20:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm2;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=KrnFVQqPX0XMmlsqlUHcoKE2zhOTIf+F9SOvzEJf3Xw=;
 b=i7obmKSxnvrrjen1ef+GZO0hmc31P4vU69rd8yt8kvvkqIY7d3W4ai0VorRv6F/QvZvIGD
 0efXOXjkCMwSnoppjMGJCN5ofHaNHPRO6lRcBDM12hzRa48DJSEntEFRG8BicOQbcfJEvZVP
 cwthpGE1yx9/GgupflfNmFQmAaqqg=;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Diogo Ivo <diogo.ivo@siemens.com>
Subject: [PATCH 3/4] dt-bindings: soc: ti: am645-system-controller: add child nodes used by main domain
Date: Mon, 24 Jun 2024 08:20:49 +0200
Message-ID: <52848094062ea55b0063e6fc37f27e6ed5035aa8.1719210050.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1719210050.git.jan.kiszka@siemens.com>
References: <cover.1719210050.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

From: Jan Kiszka <jan.kiszka@siemens.com>

Expand bindings to cover both the MCU and the main usage of the AM654
system controller.

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 .../soc/ti/ti,am654-system-controller.yaml    | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/ti/ti,am654-system-controller.yaml b/Documentation/devicetree/bindings/soc/ti/ti,am654-system-controller.yaml
index e79803e586ca..0eec807f38df 100644
--- a/Documentation/devicetree/bindings/soc/ti/ti,am654-system-controller.yaml
+++ b/Documentation/devicetree/bindings/soc/ti/ti,am654-system-controller.yaml
@@ -34,6 +34,35 @@ patternProperties:
     type: object
     $ref: /schemas/phy/ti,phy-gmii-sel.yaml#
 
+  "^mux-controller$":
+    type: object
+    description:
+      This is the SERDES lane control mux.
+
+  "^clock@[0-9a-f]+$":
+    type: object
+    $ref: /schemas/mfd/syscon.yaml#
+    properties:
+      compatible:
+        items:
+          - const: ti,am654-serdes-ctrl
+          - const: syscon
+
+  "^dss-oldi-io-ctrl@[0-9a-f]+$":
+    type: object
+    $ref: /schemas/mfd/syscon.yaml#
+    properties:
+      compatible:
+        items:
+          - const: ti,am654-dss-oldi-io-ctrl
+          - const: syscon
+
+  "^clock-controller@[0-9a-f]+$":
+    type: object
+    $ref: /schemas/clock/ti,am654-ehrpwm-tbclk.yaml#
+    description:
+      Clock provider for TI EHRPWM nodes.
+
 required:
   - compatible
   - reg
-- 
2.43.0


