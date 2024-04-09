Return-Path: <devicetree+bounces-57363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB8489D521
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 11:09:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 78AF3284DE2
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 09:09:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47D1E7F7DB;
	Tue,  9 Apr 2024 09:08:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from inva021.nxp.com (inva021.nxp.com [92.121.34.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1F47F464;
	Tue,  9 Apr 2024 09:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=92.121.34.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712653712; cv=none; b=k5bripaksNt/HxXISOYZm7p3OdQ3xFdn+zgO9SmDD4LLfzEWOX1lZvdCUGie3peYRyN7yPdFCkjHhFDOAu47QL+K6Q5ECYXTS/7RZMCcKNJVfJRQFSvdk3Fk1yICqKVvcQSuK7P9NcoHojhq5+Xyti5+myiJeq0rMidser5k8G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712653712; c=relaxed/simple;
	bh=pfadFNqKVgcFBLeQ0/BSo9q26qTubswAL3WrXhrtAco=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References; b=cBGag/8XJm0Gb3/Gxna5PQS7tVtVOq2hepXc0ao7fvVyz4HuEOmtnsdkqcX0mbQ40FeR7dezhmaQq+Vak9NnBALNGhizNvd0Yx+G47lgbVvW2qzOkGHlvQVfotLEPSsfQ+aBdfUv/7rE5nH9Lsgdbcr6CaoPSeRdAi0KPPlNoqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; arc=none smtp.client-ip=92.121.34.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0D7D1200404;
	Tue,  9 Apr 2024 11:08:23 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9CFB32016AF;
	Tue,  9 Apr 2024 11:08:22 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id CAEFD183AD15;
	Tue,  9 Apr 2024 17:08:20 +0800 (+08)
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
Subject: [PATCH v3 1/2] ASoC: dt-bindings: imx-audio-spdif: convert to YAML
Date: Tue,  9 Apr 2024 16:50:43 +0800
Message-Id: <1712652644-28887-2-git-send-email-shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1712652644-28887-1-git-send-email-shengjiu.wang@nxp.com>
References: <1712652644-28887-1-git-send-email-shengjiu.wang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Convert the imx-audio-spdif binding to YAML.

When testing dtbs_check, found below compatible strings
are not listed in document:

fsl,imx-sabreauto-spdif
fsl,imx6sx-sdb-spdif

So add them in yaml file to pass the test.

Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
---
 .../bindings/sound/fsl,imx-audio-spdif.yaml   | 67 +++++++++++++++++++
 .../bindings/sound/imx-audio-spdif.txt        | 36 ----------
 2 files changed, 67 insertions(+), 36 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/fsl,imx-audio-spdif.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/imx-audio-spdif.txt

diff --git a/Documentation/devicetree/bindings/sound/fsl,imx-audio-spdif.yaml b/Documentation/devicetree/bindings/sound/fsl,imx-audio-spdif.yaml
new file mode 100644
index 000000000000..fec008ffae43
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/fsl,imx-audio-spdif.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/fsl,imx-audio-spdif.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX audio complex with S/PDIF transceiver
+
+maintainers:
+  - Shengjiu Wang <shengjiu.wang@nxp.com>
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - fsl,imx-sabreauto-spdif
+              - fsl,imx6sx-sdb-spdif
+          - enum:
+              - fsl,imx-audio-spdif
+      - enum:
+          - fsl,imx-audio-spdif
+
+  model:
+    $ref: /schemas/types.yaml#/definitions/string
+    description: User specified audio sound card name
+
+  spdif-controller:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: The phandle of the i.MX S/PDIF controller
+
+  spdif-out:
+    type: boolean
+    description:
+      If present, the transmitting function of S/PDIF will be enabled,
+      indicating there's a physical S/PDIF out connector or jack on the
+      board or it's connecting to some other IP block, such as an HDMI
+      encoder or display-controller.
+
+  spdif-in:
+    type: boolean
+    description:
+      If present, the receiving function of S/PDIF will be enabled,
+      indicating there is a physical S/PDIF in connector/jack on the board.
+
+required:
+  - compatible
+  - model
+  - spdif-controller
+
+anyOf:
+  - required:
+      - spdif-in
+  - required:
+      - spdif-out
+
+additionalProperties: false
+
+examples:
+  - |
+    sound-spdif {
+        compatible = "fsl,imx-audio-spdif";
+        model = "imx-spdif";
+        spdif-controller = <&spdif>;
+        spdif-out;
+        spdif-in;
+    };
diff --git a/Documentation/devicetree/bindings/sound/imx-audio-spdif.txt b/Documentation/devicetree/bindings/sound/imx-audio-spdif.txt
deleted file mode 100644
index da84a442ccea..000000000000
--- a/Documentation/devicetree/bindings/sound/imx-audio-spdif.txt
+++ /dev/null
@@ -1,36 +0,0 @@
-Freescale i.MX audio complex with S/PDIF transceiver
-
-Required properties:
-
-  - compatible		: "fsl,imx-audio-spdif"
-
-  - model		: The user-visible name of this sound complex
-
-  - spdif-controller	: The phandle of the i.MX S/PDIF controller
-
-
-Optional properties:
-
-  - spdif-out		: This is a boolean property. If present, the
-			  transmitting function of S/PDIF will be enabled,
-			  indicating there's a physical S/PDIF out connector
-			  or jack on the board or it's connecting to some
-			  other IP block, such as an HDMI encoder or
-			  display-controller.
-
-  - spdif-in		: This is a boolean property. If present, the receiving
-			  function of S/PDIF will be enabled, indicating there
-			  is a physical S/PDIF in connector/jack on the board.
-
-* Note: At least one of these two properties should be set in the DT binding.
-
-
-Example:
-
-sound-spdif {
-	compatible = "fsl,imx-audio-spdif";
-	model = "imx-spdif";
-	spdif-controller = <&spdif>;
-	spdif-out;
-	spdif-in;
-};
-- 
2.34.1


