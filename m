Return-Path: <devicetree+bounces-152534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 932E8A49685
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 11:10:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 743F51897A8C
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 10:10:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 393E525BAA3;
	Fri, 28 Feb 2025 10:03:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail78-60.sinamail.sina.com.cn (mail78-60.sinamail.sina.com.cn [219.142.78.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5722625D53D
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 10:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=219.142.78.60
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740736984; cv=none; b=oq3agG1bHDxjnv13QLODAUnMBz/bHlQBx5p/p96KAJk98331jsais1bMsgBBpYAjarGmo6yJ8EOyWX3mrbz9JsB+doO0CKG8L5kSxDwnK3q6uOtj1BamyShOceRIUbk2QncrytLGBhm0i1jI04a9pkaRw+a1T20gOre7ciJFRJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740736984; c=relaxed/simple;
	bh=WC2QCvg2GL8CmvoMqaoX1OV8oEgQCMAxIuRqsFZIn+0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=aOJufyUnplQB+li6atCmT4elrf4C0Z9CEW68WSolKqu9xx9bO9dLE2iDh4cCzq2pqRCV3elJ09beHfnzy2aeZa0JyLAX6WoSK7BMRa61M3kDcaleaZfXXmFPGQ4sYC9dm6y3nMsBHGnX8yPT+dJG9eoTB0TTbGjjSzvJ2tfqpwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=219.142.78.60
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.159.108.137])
	by sina.net (10.185.250.30) with ESMTP
	id 67C189C6000068CE; Fri, 28 Feb 2025 18:02:51 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 7CE770405F764471853BCC45557A06E6
X-SMAIL-UIID: 7CE770405F764471853BCC45557A06E6-20250228-180251
From: Zhang Yi <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com,
	Zhang Yi <zhangyi@everest-semi.com>
Subject: [PATCH v1 2/2] ASoC: dt-bindings: Add Everest ES8389 audio CODEC
Date: Fri, 28 Feb 2025 18:02:45 +0800
Message-Id: <20250228100245.127413-3-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250228100245.127413-1-zhangyi@everest-semi.com>
References: <20250228100245.127413-1-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add device tree binding documentation for Everest ES8389

Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
---
 .../bindings/sound/everest,es8389.yaml        | 98 +++++++++++++++++++
 1 file changed, 98 insertions(+)
 create mode 100755 Documentation/devicetree/bindings/sound/everest,es8389.yaml

diff --git a/Documentation/devicetree/bindings/sound/everest,es8389.yaml b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
new file mode 100755
index 000000000000..4629a89b915e
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
@@ -0,0 +1,98 @@
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
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description: |
+      This property is used to set the slots of recording data when multiple
+      codecs are connected in PTDM mode.
+      please set this property to default if you are setting STDM mode.
+    minimum: 0x00
+    maximum: 0x07
+    default: 0x00
+
+  everest,dac-slot:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description: |
+      This property is used to set the slots of playing data when multiple
+      codecs are connected in TDM mode.
+      please do not set this property if you use single codec.
+    minimum: 0x00
+    maximum: 0x07
+    default: 0x00
+
+  prefix_name:
+    $ref: /schemas/types.yaml#/definitions/string
+    description: device name prefix
+
+  everest,dmic-enabled:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description: |
+      The property is a choice between PDM and AMIC
+
+required:
+  - compatible
+  - reg
+  - "#sound-dai-cells"
+
+additionalProperties: false
+
+examples for single codec:
+  - |
+    es8389: es8389@10 {
+      compatible = "everest,es8389";
+      status = "okay";
+      reg = <0x10>;
+      everest,adc-slot = [00];
+      everest,dac-slot = [00];
+      prefix_name = "es8389_0";
+      #sound-dai-cells = <0>;
+    };
+
+examples for multi codecs:
+  - |
+    es8389: es8389@10 {
+      compatible = "everest,es8389";
+      status = "okay";
+      reg = <0x10>;
+      everest,adc-slot = [00];
+      everest,dac-slot = [00];
+      prefix_name = "es8389_0";
+      #sound-dai-cells = <0>;
+    };
+    es8389_1: es8389@11 {
+      compatible = "everest,es8389";
+      status = "okay";
+      reg = <0x11>;
+      everest,adc-slot = [01];
+      everest,dac-slot = [01];
+      prefix_name = "es8389_1";
+      clock-names = "mclk";
+      #sound-dai-cells = <0>;
+    };
\ No newline at end of file
-- 
2.17.1


