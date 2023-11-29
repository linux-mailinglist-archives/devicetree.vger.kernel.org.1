Return-Path: <devicetree+bounces-20035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0497FD95F
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 15:29:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E2D282831A3
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 14:29:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE76231A8F;
	Wed, 29 Nov 2023 14:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="SfDBdmGn"
X-Original-To: devicetree@vger.kernel.org
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 142CDD4A;
	Wed, 29 Nov 2023 06:29:15 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 31EC6FF80F;
	Wed, 29 Nov 2023 14:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1701268154;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xnTl0XPyqiqU2xPwgUkjG+5IdvlMrK5STEuXwsT5Ey4=;
	b=SfDBdmGnqTUFsDaI8Hqke1mnU0OkaXRoNaKcmpM+bZtDNGbZ598i+pwPdTKxo38AAz/mIv
	tk71lTBRZ99mlKv1eI3XHkSdgw85WUK9myCyjmWBqLIWqPBVtuoehsUoj3wQgJzKpTPYYx
	Jo/48Va6G15qufhZEYdwhZoETwT9ZmHvoBJYuYNIS5ihNNMx5yQYPH2n2E0fAz3cswXEco
	vTWFXPLxeK8f65Uo2JtcyIGkuYNrj9Br7whVh6H76uAFHjmkC3W1/xqo5p+2COlwmCVPJ6
	rC1gGJu8RFHkWkC9PD0T5DISgAsDoDRM+hMBCYwWYMQYs7csQtb/JOhvwis3tA==
From: Mehdi Djait <mehdi.djait@bootlin.com>
To: mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	tzimmermann@suse.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	thomas.petazzoni@bootlin.com,
	alexandre.belloni@bootlin.com,
	luca.ceresoli@bootlin.com,
	paul.kocialkowski@bootlin.com,
	dri-devel@lists.freedesktop.org,
	geert@linux-m68k.org,
	Mehdi Djait <mehdi.djait@bootlin.com>
Subject: [PATCH 1/2] dt-bindings: display: Add Sharp LS027B7DH01 Memory LCD
Date: Wed, 29 Nov 2023 15:29:09 +0100
Message-ID: <2a7c51b6e619c02ec175a5c219b0a0fd7a24499d.1701267411.git.mehdi.djait@bootlin.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <cover.1701267411.git.mehdi.djait@bootlin.com>
References: <cover.1701267411.git.mehdi.djait@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: mehdi.djait@bootlin.com

Add device tree bindings for the Sharp LS027B7DH01: a 2.7" 400x240
monochrome display connected over SPI.

Signed-off-by: Mehdi Djait <mehdi.djait@bootlin.com>
---
 .../bindings/display/sharp,ls027b7dh01.yaml   | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/sharp,ls027b7dh01.yaml

diff --git a/Documentation/devicetree/bindings/display/sharp,ls027b7dh01.yaml b/Documentation/devicetree/bindings/display/sharp,ls027b7dh01.yaml
new file mode 100644
index 000000000000..d0a4efae2827
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/sharp,ls027b7dh01.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/sharp,ls027b7dh01.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sharp LS027B7DH01 Memory LCD Display
+
+maintainers:
+  - Mehdi Djait <mehdi.djait@bootlin.com>
+
+description:
+  The Sharp LS027B7DH01 is a 2.7" 400x240 monochrome display connected over a
+  SPI bus. The display requires an alternating signal to prevent the buildup of
+  a DC bias that will stop any update. Two modes can be used for the generation
+  of this signal Software by writing to the display or Hardware by supplying the
+  External COM inversion signal.
+
+allOf:
+  - $ref: panel/panel-common.yaml#
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+properties:
+  compatible:
+    const: sharp,ls027b7dh01
+
+  reg:
+    maxItems: 1
+
+  spi-cs-high: true
+
+  spi-lsb-first: true
+
+  spi-max-frequency:
+    maximum: 2000000
+
+  enable-gpios:
+    maxItems: 1
+
+  pwms:
+    maxItems: 1
+    description: External COM inversion signal
+
+required:
+  - compatible
+  - reg
+  - spi-lsb-first
+  - enable-gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    spi {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            display@0{
+                    compatible = "sharp,ls027b7dh01";
+                    reg = <0>;
+                    spi-cs-high;
+                    spi-lsb-first;
+                    spi-max-frequency = <2000000>;
+                    enable-gpios = <&gpiof 3 GPIO_ACTIVE_HIGH>;
+                    pwms = <&pwm 1 1000000000 0>;
+            };
+    };
+
+...
-- 
2.41.0


