Return-Path: <devicetree+bounces-179785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D90D9AC1A48
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 04:56:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E138A26860
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 02:55:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 935B021D5BC;
	Fri, 23 May 2025 02:55:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp134-86.sina.com.cn (smtp134-86.sina.com.cn [180.149.134.86])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 985DC1FBCAF
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 02:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=180.149.134.86
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747968949; cv=none; b=mUDstI2lh5XlJhQXQYnjp8AmytXSc4RxTC4LYVGQFi05Nqg1EYDCGOX98fvCDVtJtrZs+PIigmzTl8xUChG8l/40k/DLikOC9EeSMYCMEr9q2r4trxYZu5FS5ScARXewSaUQsXxOPQPlV6jHCeY0rloy1mIUMg21PZj5OTNRWnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747968949; c=relaxed/simple;
	bh=j4mv0s2Ru4cutAAyphpy1XeWuDFowNe4ko4YZAYZ9Lk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=qTTewkkLtXquBQf6OCGaz2zxGSlkfiLwjHtaQzuvoMuG0o2Yj8cIZx+KBrY9XniU38wPXG3aG7IcwyDewWQJWy7avYXY1mT+TtBbjEAJ6aO1SOyaFL+mLq4xKllPK5E+jEaXlnIzr5KPhUkHgsb0/Xv95wDOYfenrVOsrDhQnpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=180.149.134.86
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.172.39.205])
	by sina.net (10.185.250.30) with ESMTP
	id 682FE38700005A34; Fri, 23 May 2025 10:55:06 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: DA8CC91AA04849ADB585406158D25772
X-SMAIL-UIID: DA8CC91AA04849ADB585406158D25772-20250523-105506
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
Subject: [PATCH v3 1/2] ASoC: dt-bindings: Add Everest ES8375 audio CODEC
Date: Fri, 23 May 2025 10:55:01 +0800
Message-Id: <20250523025502.23214-2-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250523025502.23214-1-zhangyi@everest-semi.com>
References: <20250523025502.23214-1-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add device tree binding documentation for Everest ES8375

Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
---
 .../bindings/sound/everest,es8375.yaml        | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/everest,es8375.yaml

diff --git a/Documentation/devicetree/bindings/sound/everest,es8375.yaml b/Documentation/devicetree/bindings/sound/everest,es8375.yaml
new file mode 100644
index 000000000000..4a3d671c66b1
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/everest,es8375.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/everest,es8375.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Everest ES8375 audio CODEC
+
+maintainers:
+  - Michael Zhang <zhangyi@everest-semi.com>
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    const: everest,es8375
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
+  vdda-supply:
+    description:
+      Analogue power supply.
+
+  vddd-supply:
+    description:
+      Interface power supply.
+
+  everest,mclk-src:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description: |
+      Represents the MCLK/SCLK pair pins used as the internal clock.
+      0 represents selecting MCLK.
+      1 represents selecting SCLK.
+    enum: [0, 1]
+    default: 0
+
+  "#sound-dai-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - "#sound-dai-cells"
+  - vdda-supply
+  - vddd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      es8375: codec@18 {
+        compatible = "everest,es8375";
+        reg = <0x18>;
+        vdda-supply = <&vdd3v3>;
+        vddd-supply = <&vdd3v3>;
+        #sound-dai-cells = <0>;
+      };
+    };
-- 
2.17.1


