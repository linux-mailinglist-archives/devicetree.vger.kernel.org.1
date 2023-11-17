Return-Path: <devicetree+bounces-16474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B58D77EECFA
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 08:49:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 600D11F25E9E
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 07:49:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA32CD302;
	Fri, 17 Nov 2023 07:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bsDdBG30"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3A81D4F
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 23:49:35 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-9d216597f64so226223866b.3
        for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 23:49:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700207374; x=1700812174; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ekqzVw0AluhAbw5EwOHdJCqXIaeM1bSeI8gYehr+0UA=;
        b=bsDdBG30v3hzlhy1/5ITq4triLt3bHyjzgHWwhXNtkjbWjfWJ1PWq1oj9TmmFR7Dfx
         geU8gSydOFm8U5mZEVy/jj0BgC189S8eo/rqcqDRsBGrh7T99pmu1dzugxm9ovtCnkkV
         5wnl3mIY+PdFFllTN7W/uaeSG1WiBeE7E3Ne+8SgJYKENxPwglAUNGujhVPYKmtLb9/b
         423bcNu2DSdeDv8GbpipBxdxd1l/mSUQ4CyKkJRYEg4XB8obKON8d3daUSmM/UiqHiIB
         dCAorE27kHa/5QzrwoSp4q0BqJWHD7xzAJjHQsKoRWDv9+N8zvHg2Ocr0WDmVAPokkxO
         5PCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700207374; x=1700812174;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ekqzVw0AluhAbw5EwOHdJCqXIaeM1bSeI8gYehr+0UA=;
        b=VzrqWHofwmcqy71B05EYAVmxzYOc2+YZNXkjUiPGe+5Dc3tRHptrVq1bv1bG9JTW++
         SnkVX4rZZm2c5935U6g04de4LafEUI66wZ0AE89FRO2hdERriR67RpLqEvooOUsGLM9/
         kzV9ytaNtDjY8r2uCaLYKBM/xXrQEFoX6lZCEtNH0It4LSAtKA/EPDU9jOyOukVanKXj
         euDQ+2/Bf7NY+Z29ir0RbO78sXpN0woLk+geU574cfpXteobzUO+gOg1AAYvkdb6kmnA
         0qG6Toj8bBPF2Fho6hcqMD/x3SMYiklMRQBuxcRxSOomvC4wEv2qMnIYMduFTXFZBTff
         CGyQ==
X-Gm-Message-State: AOJu0YzriV5WBfGHJ7gjQ+jWrnmFyM441ZesVeCNBhCJEhbGITeKrKvC
	kByRccsJdILCHqIpjmD8NdI=
X-Google-Smtp-Source: AGHT+IGA5AQoMJzgH04pqMjo85i8zULwwVM6unUn6ySePGe9vL4l9ZXrwCTcAwMyAjq/y4Te9uFhIg==
X-Received: by 2002:a17:906:cb95:b0:9c7:5186:de1a with SMTP id mf21-20020a170906cb9500b009c75186de1amr15022357ejb.8.1700207373976;
        Thu, 16 Nov 2023 23:49:33 -0800 (PST)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id g24-20020a170906c19800b009a1b857e3a5sm505854ejz.54.2023.11.16.23.49.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 23:49:33 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Stephen Boyd <sboyd@kernel.org>,
	Jianhui Zhao <zhaojh329@gmail.com>,
	Daniel Golle <daniel@makrotopia.org>,
	James Liao <jamesjj.liao@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] dt-bindings: arm: mediatek: convert ethsys controller to the json-schema
Date: Fri, 17 Nov 2023 08:49:26 +0100
Message-Id: <20231117074926.10824-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

This helps validating DTS files. The only introduced change was fixing
"reg" value in example (1 address cell + 1 size cell).

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
For the record I was trying to simplify "compatible" syntax with
following but "oneOf" apparently can't be used as a single item.

items:
  - oneOf:
      - const: mediatek,mt2701-ethsys
      - const: mediatek,mt7622-ethsys
      - items:
          - const: mediatek,mt7623-ethsys
          - const: mediatek,mt2701-ethsys
      - const: mediatek,mt7629-ethsys
      - const: mediatek,mt7981-ethsys
      - const: mediatek,mt7986-ethsys
  - const: syscon

 .../bindings/arm/mediatek/mediatek,ethsys.txt | 29 ----------
 .../arm/mediatek/mediatek,ethsys.yaml         | 54 +++++++++++++++++++
 2 files changed, 54 insertions(+), 29 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,ethsys.txt
 create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,ethsys.yaml

diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,ethsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,ethsys.txt
deleted file mode 100644
index eccd4b706a78..000000000000
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,ethsys.txt
+++ /dev/null
@@ -1,29 +0,0 @@
-Mediatek ethsys controller
-============================
-
-The Mediatek ethsys controller provides various clocks to the system.
-
-Required Properties:
-
-- compatible: Should be:
-	- "mediatek,mt2701-ethsys", "syscon"
-	- "mediatek,mt7622-ethsys", "syscon"
-	- "mediatek,mt7623-ethsys", "mediatek,mt2701-ethsys", "syscon"
-	- "mediatek,mt7629-ethsys", "syscon"
-	- "mediatek,mt7981-ethsys", "syscon"
-	- "mediatek,mt7986-ethsys", "syscon"
-- #clock-cells: Must be 1
-- #reset-cells: Must be 1
-
-The ethsys controller uses the common clk binding from
-Documentation/devicetree/bindings/clock/clock-bindings.txt
-The available clocks are defined in dt-bindings/clock/mt*-clk.h.
-
-Example:
-
-ethsys: clock-controller@1b000000 {
-	compatible = "mediatek,mt2701-ethsys", "syscon";
-	reg = <0 0x1b000000 0 0x1000>;
-	#clock-cells = <1>;
-	#reset-cells = <1>;
-};
diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,ethsys.yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,ethsys.yaml
new file mode 100644
index 000000000000..a85d7b632d12
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,ethsys.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/mediatek/mediatek,ethsys.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mediatek ethsys controller
+
+description:
+  The available clocks are defined in dt-bindings/clock/mt*-clk.h.
+
+maintainers:
+  - James Liao <jamesjj.liao@mediatek.com>
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - mediatek,mt2701-ethsys
+              - mediatek,mt7622-ethsys
+              - mediatek,mt7629-ethsys
+              - mediatek,mt7981-ethsys
+              - mediatek,mt7986-ethsys
+          - const: syscon
+      - items:
+          - const: mediatek,mt7623-ethsys
+          - const: mediatek,mt2701-ethsys
+          - const: syscon
+
+  reg:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 1
+
+  "#reset-cells":
+    const: 1
+
+required:
+  - reg
+  - "#clock-cells"
+  - "#reset-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    clock-controller@1b000000 {
+        compatible = "mediatek,mt2701-ethsys", "syscon";
+        reg = <0x1b000000 0x1000>;
+        #clock-cells = <1>;
+        #reset-cells = <1>;
+    };
-- 
2.35.3


