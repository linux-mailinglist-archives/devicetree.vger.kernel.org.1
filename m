Return-Path: <devicetree+bounces-14861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 227517E71AC
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 19:45:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C15D1280DD3
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 18:45:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57842D275;
	Thu,  9 Nov 2023 18:45:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Ynx+Wrd3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B33520306
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 18:44:58 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 195DB3C10;
	Thu,  9 Nov 2023 10:44:58 -0800 (PST)
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8BBEF660740F;
	Thu,  9 Nov 2023 18:44:56 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699555496;
	bh=WPjYwcBCmS+prQOc/wOVgZLSo1macXZkqnIBkZkHKlg=;
	h=From:To:Cc:Subject:Date:From;
	b=Ynx+Wrd3fG7H0sFPwgbTm3LBIbPURppIDjkinci6RaxKwYL/kG+jxsdQobYdFMQFn
	 Wwbl5aAbFmfwDrhIuyQmNGjqolQQDEaScZVM/YxcM/2HA1zVLmPj+vJho1huh6IHBv
	 /f5V+6g9qROeNqIduZVOEb8jfC09S0+StL6RzdbIXgj/QBYoVK1uVaQFmKi6hhzjG1
	 7/UR+X+C8dgfcKrJMWq5Du1YPIdoBQTSet9sb8MuEIyvRDhl0OT6g1XpRgRlp0ljaf
	 H0/PTuE89Vi6gXdZGYjkoq3iYP1GztJyv7F+NVh3A2dO+4XgwDUdlAqQzkfAXHx1eh
	 mimr4LEXVARCw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0B0004800CE; Thu,  9 Nov 2023 19:44:54 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Mark Brown <broonie@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 1/2] dt-bindings: es8328: convert to DT schema format
Date: Thu,  9 Nov 2023 19:44:43 +0100
Message-ID: <20231109184453.108676-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the binding to DT schema format. Note, that "IPVDD-supply"
got fixed to be "HPVDD-supply" during the conversion. This was
obviously a typo in the old binding. The old binding example, DT
files, chip datasheet and Linux driver use HPVDD.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../devicetree/bindings/sound/es8328.txt      | 38 ---------
 .../bindings/sound/everest,es8328.yaml        | 77 +++++++++++++++++++
 2 files changed, 77 insertions(+), 38 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/es8328.txt
 create mode 100644 Documentation/devicetree/bindings/sound/everest,es8328.yaml

diff --git a/Documentation/devicetree/bindings/sound/es8328.txt b/Documentation/devicetree/bindings/sound/es8328.txt
deleted file mode 100644
index 33fbf058c997..000000000000
--- a/Documentation/devicetree/bindings/sound/es8328.txt
+++ /dev/null
@@ -1,38 +0,0 @@
-Everest ES8328 audio CODEC
-
-This device supports both I2C and SPI.
-
-Required properties:
-
-  - compatible  : Should be "everest,es8328" or "everest,es8388"
-  - DVDD-supply : Regulator providing digital core supply voltage 1.8 - 3.6V
-  - AVDD-supply : Regulator providing analog supply voltage 3.3V
-  - PVDD-supply : Regulator providing digital IO supply voltage 1.8 - 3.6V
-  - IPVDD-supply : Regulator providing analog output voltage 3.3V
-  - clocks : A 22.5792 or 11.2896 MHz clock
-  - reg : the I2C address of the device for I2C, the chip select number for SPI
-
-Pins on the device (for linking into audio routes):
-
-  * LOUT1
-  * LOUT2
-  * ROUT1
-  * ROUT2
-  * LINPUT1
-  * RINPUT1
-  * LINPUT2
-  * RINPUT2
-  * Mic Bias
-
-
-Example:
-
-codec: es8328@11 {
-	compatible = "everest,es8328";
-	DVDD-supply = <&reg_3p3v>;
-	AVDD-supply = <&reg_3p3v>;
-	PVDD-supply = <&reg_3p3v>;
-	HPVDD-supply = <&reg_3p3v>;
-	clocks = <&clks 169>;
-	reg = <0x11>;
-};
diff --git a/Documentation/devicetree/bindings/sound/everest,es8328.yaml b/Documentation/devicetree/bindings/sound/everest,es8328.yaml
new file mode 100644
index 000000000000..a0f4670fa38c
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/everest,es8328.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/everest,es8328.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Everest ES8328 audio CODEC
+
+description:
+  Everest Audio Codec, which can be connected via I2C or SPI.
+  Pins on the device (for linking into audio routes) are
+  * LOUT1
+  * LOUT2
+  * ROUT1
+  * ROUT2
+  * LINPUT1
+  * RINPUT1
+  * LINPUT2
+  * RINPUT2
+  * Mic Bias
+
+maintainers:
+  - David Yang <yangxiaohua@everest-semi.com>
+
+properties:
+  compatible:
+    enum:
+      - everest,es8328
+      - everest,es8388
+
+  reg:
+    maxItems: 1
+
+  "#sound-dai-cells":
+    const: 0
+
+  clocks:
+    items:
+      - description: A 22.5792 or 11.2896 MHz clock
+
+  DVDD-supply:
+    description: Regulator providing digital core supply voltage 1.8 - 3.6V
+
+  AVDD-supply:
+    description: Regulator providing analog supply voltage 3.3V
+
+  PVDD-supply:
+    description: Regulator providing digital IO supply voltage 1.8 - 3.6V
+
+  HPVDD-supply:
+    description: Regulator providing analog output voltage 3.3V
+
+required:
+  - compatible
+  - clocks
+  - DVDD-supply
+  - AVDD-supply
+  - PVDD-supply
+  - HPVDD-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      es8328: codec@11 {
+        compatible = "everest,es8328";
+        reg = <0x11>;
+        AVDD-supply = <&reg_3p3v>;
+        DVDD-supply = <&reg_3p3v>;
+        HPVDD-supply = <&reg_3p3v>;
+        PVDD-supply = <&reg_3p3v>;
+        clocks = <&clks 169>;
+      };
+    };
-- 
2.42.0


