Return-Path: <devicetree+bounces-153791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92831A4DD32
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 12:57:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C0E17177060
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 11:57:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 597561FECAA;
	Tue,  4 Mar 2025 11:57:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp134-90.sina.com.cn (smtp134-90.sina.com.cn [180.149.134.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FBCE3D561
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 11:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=180.149.134.90
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741089465; cv=none; b=afQSReVB2OSL3i9xyMXULARVwZf4tuuNPY7LG16BSvS5wDBx3soPx0qwDJpK4Qh4uhc9QhILKJVpHGRaxog04fcO3vo1ZOEjNYmoTmL4ZdNuRamT/H3l+2qFKOG/nTXgCaEKg7PwLsRNSte/7DLfq5J4fVD6+K5sLPd2J9Sj8og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741089465; c=relaxed/simple;
	bh=hMDNTxNe1t6rAUme6MiOLElfl8ecDVJ2s28+Te73nNQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=pSPBbtwrwGcnLgaEkfDsU9zBuSILCKPyMKgfgxP7+LZSD2rX1CLWzq2Veyn6mXctEvdfux9q+AfxlpYknP1zD+YLS/88SUaS8ioczcRo0tlB4+6lSX1FE15WqrlCP70LN50ovx096LidEPuNFoqUxuMvC8x/fIjms6f3INrkiIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=180.149.134.90
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.159.108.137])
	by sina.net (10.185.250.31) with ESMTP
	id 67C6E8690000342A; Tue, 4 Mar 2025 19:47:57 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: A6BF3BA464544B9BB303CB3593A370FC
X-SMAIL-UIID: A6BF3BA464544B9BB303CB3593A370FC-20250304-194757
From: Zhang Yi <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	Zhang Yi <zhangyi@everest-semi.com>
Subject: [PATCH v4 2/2] ASoC: dt-bindings: Add Everest ES8389 audio CODEC
Date: Tue,  4 Mar 2025 19:47:51 +0800
Message-Id: <20250304114751.54635-3-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250304114751.54635-1-zhangyi@everest-semi.com>
References: <20250304114751.54635-1-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add device tree binding documentation for Everest ES8389 which
is different from ES8388

Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
---
 .../bindings/sound/everest,es8389.yaml        | 83 +++++++++++++++++++
 1 file changed, 83 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/everest,es8389.yaml

diff --git a/Documentation/devicetree/bindings/sound/everest,es8389.yaml b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
new file mode 100644
index 000000000000..0860adbc8654
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/everest,es8389.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Everest ES8389 audio CODEC
+
+maintainers:
+  - Michael Zhang <zhangyi@everest-semi.com>
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    const: everest,es8389
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: clock for master clock (MCLK)
+
+  clock-names:
+    items:
+      - const: mclk
+
+  "#sound-dai-cells":
+    const: 0
+
+  everest,adc-slot:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      This property is used to set the slots of recording data when multiple
+      codecs are connected in PTDM mode.
+      please set this property to default if you are setting STDM mode.
+    minimum: 0
+    maximum: 7
+    default: 0
+
+  everest,dac-slot:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      This property is used to set the slots of playing data when multiple
+      codecs are connected in TDM mode.
+      please do not set this property if you use single codec.
+    minimum: 0
+    maximum: 7
+    default: 0
+
+  prefix_name:
+    $ref: /schemas/types.yaml#/definitions/string
+    description:
+      When using multiple codecs, The prefix_name is used to distinguish the
+      dapm and kcontrol of each individual codec.
+
+  everest,dmic-enabled:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      ES8389 use DMIC as input
+
+required:
+  - compatible
+  - reg
+  - "#sound-dai-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      es8389: codec@10 {
+        compatible = "everest,es8389";
+        reg = <0x10>;
+        everest,adc-slot = <0>;
+        everest,dac-slot = <0>;
+        #sound-dai-cells = <0>;
+      };
+    };
-- 
2.17.1


