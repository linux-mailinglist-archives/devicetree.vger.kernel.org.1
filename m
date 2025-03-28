Return-Path: <devicetree+bounces-161494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 578A9A744E8
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 09:04:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 52FDC7A70FF
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 08:03:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3A36212D63;
	Fri, 28 Mar 2025 08:04:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail78-37.sinamail.sina.com.cn (mail78-37.sinamail.sina.com.cn [219.142.78.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595A3211472
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 08:04:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=219.142.78.37
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743149045; cv=none; b=OgzaEMlqIzOkhtJdQBuVECderY8whQri/vAh9AqMEsnPhAjdO88XAzvkOwAlvqlMjvWi1nYpsvJRazII3qeVb5y3Li1hSO+Ghs36UfiFDkR9UDlNjDxsAt1/0YuW+bwXNI/+a7LxufsWzQC+ipi4xfr9viJMK8URJk6xFhx2myE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743149045; c=relaxed/simple;
	bh=mqJ2zpr0rM1SozvZK0nLMqNWqEKb6AcbZ6KjfpKuxrc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=QFvz5X1E4WvZ5hntnuQYwrZu1tm2Xy1XPfoKJxMrLV8FtXQH41R+WXEsV60hnUl6RPeeyAa3lfk/Ef2FayK+gJpEj5Xd0BORTgyJRNnKhRJvyEr2vYxOwXqK0w5y10qx3sCFIsfqIpy3akAbhdc7ahED6HfVGg/2eirlXY77R/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=219.142.78.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.159.108.242])
	by sina.net (10.185.250.31) with ESMTP
	id 67E657C900005D88; Fri, 28 Mar 2025 16:03:25 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: BED9987213CB4A87A672A76789139BDB
X-SMAIL-UIID: BED9987213CB4A87A672A76789139BDB-20250328-160325
From: Zhang Yi <zhangyi@everest-semi.com>
To: broonie@kernel.org,
	robh@kernel.org,
	tiwai@suse.com,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	lgirdwood@gmail.com,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	perex@perex.cz,
	krzk+dt@kernel.org
Cc: amadeuszx.slawinski@linux.intel.com,
	krzk@kernel.org,
	Zhang Yi <zhangyi@everest-semi.com>
Subject: [PATCH v7 2/2] ASoC: dt-bindings: Add Everest ES8389 audio CODEC
Date: Fri, 28 Mar 2025 16:03:19 +0800
Message-Id: <20250328080319.53734-3-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250328080319.53734-1-zhangyi@everest-semi.com>
References: <20250328080319.53734-1-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add device tree binding documentation for Everest ES8389 which
is different from ES8388

Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/sound/everest,es8389.yaml        | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/everest,es8389.yaml

diff --git a/Documentation/devicetree/bindings/sound/everest,es8389.yaml b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
new file mode 100644
index 000000000000..a673df485ab3
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
@@ -0,0 +1,50 @@
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
+        #sound-dai-cells = <0>;
+      };
+    };
-- 
2.17.1


