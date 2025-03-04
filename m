Return-Path: <devicetree+bounces-153566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D20A4D137
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 02:49:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3392A7A7438
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 01:46:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EACB6142E83;
	Tue,  4 Mar 2025 01:45:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail78-60.sinamail.sina.com.cn (mail78-60.sinamail.sina.com.cn [219.142.78.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398D2136347
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 01:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=219.142.78.60
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741052738; cv=none; b=jfqYMfjA3NvW1gTb/1Y47Jkyg2/lD9B+KL5MGSQOX3RYqzJRjHO1o8pxsYLRw2d2wyG0cPFvCzN+sIYq4ulXMwMANAUpPw422OvaBETOz3N3Fi/rv+CFT3lGWCVyezhN0540YQ+BSHuHQ48pxy0ZgbWxfF70O6jpYjIiDgcEn2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741052738; c=relaxed/simple;
	bh=/BdeqteE2ILibLaDWZMQGWa3nDTJyw9I4kwq0AmALUM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=e9pSdKxe5fulZ2vEXs4Re/ha5y1IngLR9NLUu5B9JAPlzEuZM/FTpzs6Kdm9wRsQISIntR7X24XClOwbBbyiWoC/f0/HqW/j1YmL3sxEy7/BSkhhtUEmiY1xYOvy6c+843oLl08RMyCkSxo1k9PwznOIdNzhGaOdctg8M+5S7TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=219.142.78.60
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.159.108.137])
	by sina.net (10.185.250.30) with ESMTP
	id 67C65B3200001EC2; Tue, 4 Mar 2025 09:45:25 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 73BFC20EC01C4C2E858E4681B809A653
X-SMAIL-UIID: 73BFC20EC01C4C2E858E4681B809A653-20250304-094525
From: Zhang Yi <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com,
	robh@kernel.org,
	Zhang Yi <zhangyi@everest-semi.com>
Subject: [PATCH v2 2/2] ASoC: dt-bindings: Add Everest ES8389 audio CODEC
Date: Tue,  4 Mar 2025 09:45:20 +0800
Message-Id: <20250304014520.83292-3-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250304014520.83292-1-zhangyi@everest-semi.com>
References: <20250304014520.83292-1-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add device tree binding documentation for Everest ES8389

Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
---
 .../bindings/sound/everest,es8389.yaml        | 78 +++++++++++++++++++
 1 file changed, 78 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/everest,es8389.yaml

diff --git a/Documentation/devicetree/bindings/sound/everest,es8389.yaml b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
new file mode 100644
index 000000000000..b0f3a243b42c
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
@@ -0,0 +1,78 @@
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
+    es8389: es8389@10 {
+      compatible = "everest,es8389";
+      reg = <0x10>;
+      everest,adc-slot = [00];
+      everest,dac-slot = [00];
+      prefix_name = "es8389_0";
+      #sound-dai-cells = <0>;
+    };
-- 
2.17.1


