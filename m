Return-Path: <devicetree+bounces-10598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7206C7D2329
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 15:13:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 47CD92813EE
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 13:13:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40A95D507;
	Sun, 22 Oct 2023 13:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QxIokFqb"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1D1423CB
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 13:12:58 +0000 (UTC)
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDBDB93;
	Sun, 22 Oct 2023 06:12:56 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2bfed7c4e6dso35741751fa.1;
        Sun, 22 Oct 2023 06:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697980375; x=1698585175; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3q0Avs5ak9d/HD/1I6mLe6b4hH5YiM69d6TrXnVBkvI=;
        b=QxIokFqb09tbHU2wJUYMFGk787yfs7tIyQNAd5oHdJohBtRYRBy/KRPBjdsstR1XNS
         5GvjmznbuFdZrV8dgoc4Z9zz/kjcqGKwuwf3FZOB/HPBsa0vg6iklKMOtKcoU+c6AwiU
         iKEIC8eTpBjRkuIRkQRBJR4O3tBgZrJzP+bnzjiyh6DCkMV5PqcZQBepdtiuMbzCNyTc
         1aFOqytv2ZG21FAkDKTnvk3FV4gfUMYW6Wl+GlkgeJk7lRQo7ALUCZ9/dt9FPlG49jIf
         ebrdjRIOlBzmYV55z4YpoD7XRPBzinwT8mNA0s/wwSCtry2zQ0+87L/FfgSco/h8UpeE
         LmfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697980375; x=1698585175;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3q0Avs5ak9d/HD/1I6mLe6b4hH5YiM69d6TrXnVBkvI=;
        b=jAu3cnZ3IfZH/PhVtC8LL4X6MQBQVy3JylQSpvxObVcIELF8oHOdvPxmlg1QIC0oaL
         YrHVoSkHSDANgdq7cnPq9GDnQyT4XCdkIp4BrR2+jCK6TFF9Lgedo5barXdzEjJp83zK
         qkx3hv3edRIAC+2FW9/ilJn8u6TbPoUKDU2KqBbbpkMF7GXwxKoLVrQ9WRc2G1Uq0pn3
         nDsPJj5UvWDjccFeCkqVKHyKrZW200rAxIiJ0RCwfR5el4oy6AjM3Y9CX1N2G7k11q9s
         VWocqGJJxjGMlDXndcEgO8ZAbmLHcjYnEA6S3wApqDhuekE8/Ntm9cOQ6Nw1kaAufEnD
         HWNQ==
X-Gm-Message-State: AOJu0Yz5e0wFSDi+ohrtpiHKOwLV4o6up9hmjYUQs3OXQ9mSx3necgcx
	+/ciwJ8KM63q7V9qJfN20cWSmmo7zVM=
X-Google-Smtp-Source: AGHT+IEQrPMe3KcRw7f9DcWNsK50Ob6oizvv6cqASQ8UtfhyYw4285VJ40Zw/YSujH9I3IP/FAWn7g==
X-Received: by 2002:a2e:b88b:0:b0:2c5:521:cec3 with SMTP id r11-20020a2eb88b000000b002c50521cec3mr5165993ljp.23.1697980374450;
        Sun, 22 Oct 2023 06:12:54 -0700 (PDT)
Received: from localhost.localdomain (141.red-88-10-53.dynamicip.rima-tde.net. [88.10.53.141])
        by smtp.gmail.com with ESMTPSA id p12-20020a05600c418c00b0040773c69fc0sm11508292wmh.11.2023.10.22.06.12.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Oct 2023 06:12:53 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: devicetree@vger.kernel.org
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2] dt-bindings: phy: ralink-usb-phy: convert to dtschema
Date: Sun, 22 Oct 2023 15:12:52 +0200
Message-Id: <20231022131252.801090-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the ralink-usb-phy bindings to DT schema.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
Changes in v2:
 - Add missing SPDX License Identifier

 .../bindings/phy/ralink-usb-phy.txt           | 23 ------
 .../bindings/phy/ralink-usb-phy.yaml          | 70 +++++++++++++++++++
 2 files changed, 70 insertions(+), 23 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/ralink-usb-phy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/ralink-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/ralink-usb-phy.txt b/Documentation/devicetree/bindings/phy/ralink-usb-phy.txt
deleted file mode 100644
index 9d2868a437ab..000000000000
--- a/Documentation/devicetree/bindings/phy/ralink-usb-phy.txt
+++ /dev/null
@@ -1,23 +0,0 @@
-Mediatek/Ralink USB PHY
-
-Required properties:
- - compatible: "ralink,rt3352-usbphy"
-	       "mediatek,mt7620-usbphy"
-	       "mediatek,mt7628-usbphy"
- - reg: required for "mediatek,mt7628-usbphy", unused otherwise
- - #phy-cells: should be 0
- - ralink,sysctl: a phandle to a ralink syscon register region
- - resets: the two reset controllers for host and device
- - reset-names: the names of the 2 reset controllers
-
-Example:
-
-usbphy: phy {
-	compatible = "mediatek,mt7628-usbphy";
-	reg = <0x10120000 0x1000>;
-	#phy-cells = <0>;
-
-	ralink,sysctl = <&sysc>;
-	resets = <&rstctrl 22 &rstctrl 25>;
-	reset-names = "host", "device";
-};
diff --git a/Documentation/devicetree/bindings/phy/ralink-usb-phy.yaml b/Documentation/devicetree/bindings/phy/ralink-usb-phy.yaml
new file mode 100644
index 000000000000..b05665f5b641
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ralink-usb-phy.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/ralink-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mediatek/Ralink USB PHY
+
+maintainers:
+  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
+
+properties:
+  compatible:
+    enum:
+      - ralink,rt3352-usbphy
+      - mediatek,mt7620-usbphy
+      - mediatek,mt7628-usbphy
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+  ralink,sysctl:
+    description:
+      phandle to a ralink syscon register region.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+  resets:
+    items:
+      - description: USB Host reset controller
+      - description: USB Device reset controller
+
+  reset-names:
+    items:
+      - const: host
+      - const: device
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: mediatek,mt7628-usbphy
+    then:
+      required:
+        - reg
+
+required:
+  - compatible
+  - "#phy-cells"
+  - ralink,sysctl
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@10120000 {
+      compatible = "mediatek,mt7628-usbphy";
+      reg = <0x10120000 0x1000>;
+      #phy-cells = <0>;
+      ralink,sysctl = <&sysc>;
+      resets = <&rstctrl 22>,
+               <&rstctrl 25>;
+      reset-names = "host", "device";
+    };
+
+...
-- 
2.25.1


