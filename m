Return-Path: <devicetree+bounces-153608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5718FA4D3D9
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 07:28:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 104D6168073
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 06:28:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB76C1F542A;
	Tue,  4 Mar 2025 06:28:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail78-63.sinamail.sina.com.cn (mail78-63.sinamail.sina.com.cn [219.142.78.63])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA471F4E4F
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 06:28:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=219.142.78.63
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741069706; cv=none; b=c0yWqtQgqPvJFqJ8dUaBZC09gUNfHtMW6HfkmHSOaxnkAsJ4Ipg3l3pKS4LxD/0suaIq8jiPbKO8PoNmLdFxlinT/5tElUHqD3aOnfitYoykmrwhR9Ijx9xQEH6VadMzERC6YP3tAnplP75yfdlSz2os/bo5SkCZ6ppNeXrFZQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741069706; c=relaxed/simple;
	bh=Jru2VvON8iAlXFagDbcN18eK9263R0A6M28yd900zxw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=K2QZVNtR7yQFBOQn2VCpnRIMwW/az2d3nrBzQHoAZF5IRIRJYOsg2xVRwNKhwmM9SAFBfiyxyStaDPIAwleME7l9mbi4x1Gh4IudZCHhKu3e34bAjyB82N6+HfevS4GultZGlPyAFMyU9JDFCabDz6N+bz/Z+aTCaa8f+omC0I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=219.142.78.63
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.159.108.137])
	by sina.net (10.185.250.32) with ESMTP
	id 67C69D5A00005F29; Tue, 4 Mar 2025 14:27:43 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 6F6D5EFD42D54374BBBA83723E44057E
X-SMAIL-UIID: 6F6D5EFD42D54374BBBA83723E44057E-20250304-142743
From: Zhang Yi <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com,
	robh@kernel.org,
	Zhang Yi <zhangyi@everest-semi.com>
Subject: [PATCH v3 2/2] ASoC: dt-bindings: Add Everest ES8389 audio CODEC
Date: Tue,  4 Mar 2025 14:27:37 +0800
Message-Id: <20250304062737.51701-3-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250304062737.51701-1-zhangyi@everest-semi.com>
References: <20250304062737.51701-1-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add device tree binding documentation for Everest ES8389

Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
---
 .../bindings/sound/everest,es8389.yaml        | 82 +++++++++++++++++++
 1 file changed, 82 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/everest,es8389.yaml

diff --git a/Documentation/devicetree/bindings/sound/everest,es8389.yaml b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
new file mode 100644
index 000000000000..2c522826bae4
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
@@ -0,0 +1,82 @@
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
+    description:
+      The property is a choice between PDM and AMIC
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
+    i2c{
+      #address-cells = <1>;
+      #size-cells = <0>;
+      es8389: es8389@10 {
+        compatible = "everest,es8389";
+        reg = <0x10>;
+        everest,adc-slot = [00];
+        everest,dac-slot = [00];
+        prefix_name = "es8389_0";
+        #sound-dai-cells = <0>;
+      };
+    };
-- 
2.17.1


