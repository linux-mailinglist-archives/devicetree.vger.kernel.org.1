Return-Path: <devicetree+bounces-249136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 69245CD9748
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 14:35:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5910E301277E
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 13:35:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C21A341AB6;
	Tue, 23 Dec 2025 13:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mIbctXEb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318F233C533
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 13:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766496899; cv=none; b=pjZsQRqUxCFfSc9c68+oByliT9p+pdDOrq3Yr0ItVtmtc+kMkZCh2aulONpJ2IEaLNHfXDnLzMlqo5f47224X1qviBHpTlQ4ndo8psizeQUNQfjDAgrd+5o7KTnKzTKTKXhWorY7qrZP+ztSpn+uKeaW4OA+a+dwJvi67shQqE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766496899; c=relaxed/simple;
	bh=jL9MLlPgafxN0zYPX3VMojtf69igdlkzjgqNqsO+7x8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ieVUtktIsPQxG6f8kgT4/lV1+baiHTeXXpyLDkG8GQwiyYlF3Za3H0O27qEPF0Z/2hjxZBfKG7+xe0ZBsiM4u4nVKaXH0DNlUlmxuRz6LF9Q2/buGySfw7ogbJZ02rbBsLeodmuTvsEg/T9J4Ib3syKSUpTTAToiSUUzI7ErOh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mIbctXEb; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47aa03d3326so32225165e9.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 05:34:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766496895; x=1767101695; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z5g2N07XtEgIKLSEMPTaUuRXhkmdbclWN9opWQ/L7Q4=;
        b=mIbctXEbfpHblcN3orjolsK5iaUyVz0RUwGdR2S98hQACtzUg5kYtU0xHJWTxywHCL
         ODcKKWYKmvYCsOr9aZarx0Wn461dSkOdU9vJCNY5v81Kd9wEj4S19fJJnqTguQ44wZrU
         +K3NcEQuVi8UknKgoteUGaVInMiT4fugiHVjzQL2FH7xUwBZBTdvXyPIYlQB7E9e/eAW
         keMBHwPv0ZO7ivNe5JPCRgJGygwW0juww5ObGF1Qbq+84bC+0SEFMoruWQ9q+yY2tXad
         MXv1eRsfutLMomhmykobqxHY8u5WqT9MEXhJKV7ofhWf8glPKcx0ctxKbu+gsshg9193
         4DWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766496895; x=1767101695;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=z5g2N07XtEgIKLSEMPTaUuRXhkmdbclWN9opWQ/L7Q4=;
        b=P/ZrOUeXc6d6MYgxsLFE2anBJXM60kD1YZVa9Ff7cyT0LWK96Ea6O875Qv5ivgXssS
         xt7EiS0Y1XH2qK51waRIvnBrIIiwG6z6H2gqv99I4sGCT5NGegeAGkPvWl+GQJ68ujdh
         eBdYhmL4PVnTbPaqapev2x12uHRLoIYOz/0b3DlGB1oPh7Rnfp3bchRJ5Ho0Qe6jdJlH
         1531TXt5/HbeDO0NesinmTxlw0hWnSZr1eB0xAArbaIgYZtEHnrUrlOZGBj5yYIHEGM6
         GDo+f6a5dwAg8ePMfW5vUDGm2u7FBZhO8psr+E1R6zBa4Lkiok1uMjHCbdZHHahA1Hud
         M77Q==
X-Forwarded-Encrypted: i=1; AJvYcCUXXoBY8PrRVvzLVWbD9iosGxdnvePNlTNvW0VbXi/vBsgk1CCxjI+kha8EZsEJYG+QyZefgDrfJOZV@vger.kernel.org
X-Gm-Message-State: AOJu0YwCGtNcTL1ukIlwFmV2xuo7VNCtEGIwhK5QUMM2l4lbIX2qZTMz
	KLFOrfPDUCNTvLEu9yCLF+pE5Y4Vk6PIvJevLC8nBUmhuIhUsUXWp0qn
X-Gm-Gg: AY/fxX53sVrpTineEoEgpJeuuLsCkyHiXreZeDaSXznKjJzsc0k6XrEaiP50UDR9Qvx
	ksE93yHdadcVXcGNszx2nROj9r2VVyG1IEH5zZ3kotEu9cLp9XAQ+sxZjI4O7fAyQhFgtrKlPWY
	71d8BbQRSs5tHR6TnDiUu3J7ozNX7a0QmSgrTcDN3FKJDvULYtsXoSGjy4jZ145PQYG/znAEQbM
	aYOAMgl/BYinsyslY7RD4yYJtdWxeofS003zwaoJk4zWZs8Qpamfj79Fs17+30qb+yx31SeTAme
	WqhxQ/g7P55T5K/g1urCfOl/1RK0/qnd4BZGMzTyuf+mnws3dQlhVwtDqghEh4KT2+nAwSKcRnk
	zzwn2WJL2veMmoIFxFCJnO3MKhG2lc4OWr58o0d11xSRfzzLWCuD3/7Qqtidwk+y4p3DCWDffFF
	Sl1j4HjeOuYmzUyEQ=
X-Google-Smtp-Source: AGHT+IGzPVt6CIgNXyEOLKJSXbQHeSLdZTVK66MDsdXTqBNJkv3XTCb1npNbG+Lepbjo1zsMBfwI4g==
X-Received: by 2002:a05:600c:4f4c:b0:47a:7aa0:175a with SMTP id 5b1f17b1804b1-47d1958591bmr158803435e9.26.1766496895300;
        Tue, 23 Dec 2025 05:34:55 -0800 (PST)
Received: from eichest-laptop.lan ([2a02:168:af72:0:db87:3fd:1ea8:b6eb])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea1af2bsm27843964f8f.1.2025.12.23.05.34.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 05:34:54 -0800 (PST)
From: Stefan Eichenberger <eichest@gmail.com>
To: andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	eichest@gmail.com
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	horms@kernel.org,
	Stefan Eichenberger <stefan.eichenberger@toradex.com>
Subject: [PATCH v1 2/2] dt-bindings: net: micrel: Convert micrel-ksz90x1.txt to DT schema
Date: Tue, 23 Dec 2025 14:33:40 +0100
Message-ID: <20251223133446.22401-3-eichest@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251223133446.22401-1-eichest@gmail.com>
References: <20251223133446.22401-1-eichest@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Stefan Eichenberger <stefan.eichenberger@toradex.com>

Convert the micrel-ksz90x1.txt to DT schema. Create a separate YAML file
for this PHY series. The old naming of ksz90x1 would be misleading in
this case, so rename it to gigabit, as it contains ksz9xx1 and lan8xxx
gigabit PHYs.

Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>
---
 .../bindings/net/micrel,gigabit.yaml          | 176 ++++++++++++++
 .../bindings/net/micrel-ksz90x1.txt           | 228 ------------------
 2 files changed, 176 insertions(+), 228 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/micrel,gigabit.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/micrel-ksz90x1.txt

diff --git a/Documentation/devicetree/bindings/net/micrel,gigabit.yaml b/Documentation/devicetree/bindings/net/micrel,gigabit.yaml
new file mode 100644
index 0000000000000..5fb04d362334e
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/micrel,gigabit.yaml
@@ -0,0 +1,176 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/micrel,gigabit.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Micrel series Gigabit Ethernet PHYs
+
+maintainers:
+  - Andrew Lunn <andrew@lunn.ch>
+  - Stefan Eichenberger <eichest@gmail.com>
+
+description: |
+  Some boards require special skew tuning values, particularly when it comes
+  to clock delays. These values can be specified in the device tree using
+  the properties listed here.
+
+properties:
+  compatible:
+    enum:
+      - ethernet-phy-id0022.1610  # KSZ9021
+      - ethernet-phy-id0022.1611  # KSZ9021RLRN
+      - ethernet-phy-id0022.1620  # KSZ9031
+      - ethernet-phy-id0022.1631  # KSZ9477
+      - ethernet-phy-id0022.1640  # KSZ9131
+      - ethernet-phy-id0022.1650  # LAN8841
+      - ethernet-phy-id0022.1660  # LAN8814
+      - ethernet-phy-id0022.1670  # LAN8804
+  micrel,force-master:
+    type: boolean
+    description: |
+      Force phy to master mode. Only set this option if the phy reference
+      clock provided at CLK125_NDO pin is used as MAC reference clock
+      because the clock jitter in slave mode is too high (errata#2).
+      Attention: The link partner must be configurable as slave otherwise
+      no link will be established.
+  coma-mode-gpios:
+    maxItems: 1
+    description: |
+      If present the given gpio will be deasserted when the PHY is probed.
+
+      Some PHYs have a COMA mode input pin which puts the PHY into
+      isolate and power-down mode. On some boards this input is connected
+      to a GPIO of the SoC.
+  micrel,led-mode:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      LED mode value to set for PHYs with configurable LEDs.
+
+      Configure the LED mode with single value. The list of PHYs and the
+      bits that are currently supported:
+
+      LAN8814: register EP5.0, bit 6
+
+      See the respective PHY datasheet for the mode values.
+    minimum: 0
+    maximum: 1
+
+patternProperties:
+  '^([rt]xc)-skew-psec$':
+    $ref: /schemas/types.yaml#/definitions/int32
+    description: |
+      Skew control of the pad in picoseconds.
+    minimum: -700
+    maximum: 2400
+    multipleOf: 100
+    default: 0
+  '^([rt]xd[0-3]|rxdv|txen)-skew-psec$':
+    $ref: /schemas/types.yaml#/definitions/int32
+    description: |
+      Skew control of the pad in picoseconds.
+    minimum: -700
+    maximum: 800
+    multipleOf: 100
+    default: 0
+
+allOf:
+  - $ref: ethernet-phy.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - ethernet-phy-id0022.1610
+              - ethernet-phy-id0022.1611
+    then:
+      patternProperties:
+        '^([rt]xd[0-3]|[rt]xc|rxdv|txen)-skew-ps$':
+          description: |
+            Skew control of the pad in picoseconds. A value of 0 equals to a
+            skew of -840ps.
+            The actual increment on the chip is 120ps ranging from -840ps to
+            960ps, this mismatch comes from a documentation error before
+            datasheet revision 1.2 (Feb 2014):
+          minimum: 0
+          maximum: 3000
+          multipleOf: 200
+          default: 1400
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: ethernet-phy-id0022.1620
+    then:
+      patternProperties:
+        '^([rt]xc)-skew-ps$':
+          description: |
+            Skew control of the pad in picoseconds. A value of 0 equals to a
+            skew of -900ps.
+          minimum: 0
+          maximum: 1860
+          multipleOf: 60
+          default: 900
+        '^([rt]xd[0-3]|rxdv|txen)-skew-ps$':
+          description: |
+            Skew control of the pad in picoseconds. A value of 0 equals to a
+            skew of -420.
+          minimum: 0
+          maximum: 900
+          multipleOf: 60
+          default: 420
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - ethernet-phy-id0022.1640
+                - ethernet-phy-id0022.1650
+    then:
+      patternProperties:
+        '^([rt]xd[0-3]|[rt]xc|rxdv|txen)-skew-psec$': false
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              const: ethernet-phy-id0022.1620
+    then:
+      properties:
+        micrel,force-master: false
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              const: ethernet-phy-id0022.1660
+    then:
+      properties:
+        coma-mode-gpios: false
+        micrel,led-mode: false
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    ethernet {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ethernet-phy@7 {
+            compatible = "ethernet-phy-id0022.1610";
+            reg = <7>;
+            rxc-skew-ps = <3000>;
+            rxdv-skew-ps = <0>;
+            txc-skew-ps = <3000>;
+            txen-skew-ps = <0>;
+        };
+
+        ethernet-phy@9 {
+            compatible = "ethernet-phy-id0022.1640";
+            reg = <9>;
+            rxc-skew-psec = <(-100)>;
+            txc-skew-psec = <(-100)>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/net/micrel-ksz90x1.txt b/Documentation/devicetree/bindings/net/micrel-ksz90x1.txt
deleted file mode 100644
index 6f7b907d5a044..0000000000000
--- a/Documentation/devicetree/bindings/net/micrel-ksz90x1.txt
+++ /dev/null
@@ -1,228 +0,0 @@
-Micrel KSZ9021/KSZ9031/KSZ9131 Gigabit Ethernet PHY
-
-Some boards require special tuning values, particularly when it comes
-to clock delays. You can specify clock delay values in the PHY OF
-device node. Deprecated, but still supported, these properties can
-also be added to an Ethernet OF device node.
-
-Note that these settings are applied after any phy-specific fixup from
-phy_fixup_list (see phy_init_hw() from drivers/net/phy/phy_device.c),
-and therefore may overwrite them.
-
-KSZ9021:
-
-  All skew control options are specified in picoseconds. The minimum
-  value is 0, the maximum value is 3000, and it can be specified in 200ps
-  steps, *but* these values are in no way what you get because this chip's
-  skew values actually increase in 120ps steps, starting from -840ps. The
-  incorrect values came from an error in the original KSZ9021 datasheet
-  before it was corrected in revision 1.2 (Feb 2014), but it is too late to
-  change the driver now because of the many existing device trees that have
-  been created using values that go up in increments of 200.
-
-  The following table shows the actual skew delay you will get for each of the
-  possible devicetree values, and the number that will be programmed into the
-  corresponding pad skew register:
-
-  Device Tree Value	Delay	Pad Skew Register Value
-  -----------------------------------------------------
-	0   		-840ps		0000
-	200 		-720ps		0001
-	400 		-600ps		0010
-	600 		-480ps		0011
-	800 		-360ps		0100
-	1000		-240ps		0101
-	1200		-120ps		0110
-	1400		   0ps		0111
-	1600		 120ps		1000
-	1800		 240ps		1001
-	2000		 360ps		1010
-	2200		 480ps		1011
-	2400		 600ps		1100
-	2600		 720ps		1101
-	2800		 840ps		1110
-	3000		 960ps		1111
-
-  Optional properties:
-
-    - rxc-skew-ps : Skew control of RXC pad
-    - rxdv-skew-ps : Skew control of RX CTL pad
-    - txc-skew-ps : Skew control of TXC pad
-    - txen-skew-ps : Skew control of TX CTL pad
-    - rxd0-skew-ps : Skew control of RX data 0 pad
-    - rxd1-skew-ps : Skew control of RX data 1 pad
-    - rxd2-skew-ps : Skew control of RX data 2 pad
-    - rxd3-skew-ps : Skew control of RX data 3 pad
-    - txd0-skew-ps : Skew control of TX data 0 pad
-    - txd1-skew-ps : Skew control of TX data 1 pad
-    - txd2-skew-ps : Skew control of TX data 2 pad
-    - txd3-skew-ps : Skew control of TX data 3 pad
-
-KSZ9031:
-
-  All skew control options are specified in picoseconds. The minimum
-  value is 0, and the maximum is property-dependent. The increment
-  step is 60ps. The default value is the neutral setting, so setting
-  rxc-skew-ps=<0> actually results in -900 picoseconds adjustment.
-
-  The KSZ9031 hardware supports a range of skew values from negative to
-  positive, where the specific range is property dependent. All values
-  specified in the devicetree are offset by the minimum value so they
-  can be represented as positive integers in the devicetree since it's
-  difficult to represent a negative number in the devictree.
-
-  The following 5-bit values table apply to rxc-skew-ps and txc-skew-ps.
-
-  Pad Skew Value	Delay (ps)	Devicetree Value
-  ------------------------------------------------------
-  0_0000		-900ps		0
-  0_0001		-840ps		60
-  0_0010		-780ps		120
-  0_0011		-720ps		180
-  0_0100		-660ps		240
-  0_0101		-600ps		300
-  0_0110		-540ps		360
-  0_0111		-480ps		420
-  0_1000		-420ps		480
-  0_1001		-360ps		540
-  0_1010		-300ps		600
-  0_1011		-240ps		660
-  0_1100		-180ps		720
-  0_1101		-120ps		780
-  0_1110		-60ps		840
-  0_1111		0ps		900
-  1_0000		60ps		960
-  1_0001		120ps		1020
-  1_0010		180ps		1080
-  1_0011		240ps		1140
-  1_0100		300ps		1200
-  1_0101		360ps		1260
-  1_0110		420ps		1320
-  1_0111		480ps		1380
-  1_1000		540ps		1440
-  1_1001		600ps		1500
-  1_1010		660ps		1560
-  1_1011		720ps		1620
-  1_1100		780ps		1680
-  1_1101		840ps		1740
-  1_1110		900ps		1800
-  1_1111		960ps		1860
-
-  The following 4-bit values table apply to the txdX-skew-ps, rxdX-skew-ps
-  data pads, and the rxdv-skew-ps, txen-skew-ps control pads.
-
-  Pad Skew Value	Delay (ps)	Devicetree Value
-  ------------------------------------------------------
-  0000			-420ps		0
-  0001			-360ps		60
-  0010			-300ps		120
-  0011			-240ps		180
-  0100			-180ps		240
-  0101			-120ps		300
-  0110			-60ps		360
-  0111			0ps		420
-  1000			60ps		480
-  1001			120ps		540
-  1010			180ps		600
-  1011			240ps		660
-  1100			300ps		720
-  1101			360ps		780
-  1110			420ps		840
-  1111			480ps		900
-
-  Optional properties:
-
-    Maximum value of 1860, default value 900:
-
-      - rxc-skew-ps : Skew control of RX clock pad
-      - txc-skew-ps : Skew control of TX clock pad
-
-    Maximum value of 900, default value 420:
-
-      - rxdv-skew-ps : Skew control of RX CTL pad
-      - txen-skew-ps : Skew control of TX CTL pad
-      - rxd0-skew-ps : Skew control of RX data 0 pad
-      - rxd1-skew-ps : Skew control of RX data 1 pad
-      - rxd2-skew-ps : Skew control of RX data 2 pad
-      - rxd3-skew-ps : Skew control of RX data 3 pad
-      - txd0-skew-ps : Skew control of TX data 0 pad
-      - txd1-skew-ps : Skew control of TX data 1 pad
-      - txd2-skew-ps : Skew control of TX data 2 pad
-      - txd3-skew-ps : Skew control of TX data 3 pad
-
-    - micrel,force-master:
-        Boolean, force phy to master mode. Only set this option if the phy
-        reference clock provided at CLK125_NDO pin is used as MAC reference
-        clock because the clock jitter in slave mode is too high (errata#2).
-        Attention: The link partner must be configurable as slave otherwise
-        no link will be established.
-
-KSZ9131:
-LAN8841:
-
-  All skew control options are specified in picoseconds. The increment
-  step is 100ps. Unlike KSZ9031, the values represent picoseccond delays.
-  A negative value can be assigned as rxc-skew-psec = <(-100)>;.
-
-  Optional properties:
-
-    Range of the value -700 to 2400, default value 0:
-
-      - rxc-skew-psec : Skew control of RX clock pad
-      - txc-skew-psec : Skew control of TX clock pad
-
-    Range of the value -700 to 800, default value 0:
-
-      - rxdv-skew-psec : Skew control of RX CTL pad
-      - txen-skew-psec : Skew control of TX CTL pad
-      - rxd0-skew-psec : Skew control of RX data 0 pad
-      - rxd1-skew-psec : Skew control of RX data 1 pad
-      - rxd2-skew-psec : Skew control of RX data 2 pad
-      - rxd3-skew-psec : Skew control of RX data 3 pad
-      - txd0-skew-psec : Skew control of TX data 0 pad
-      - txd1-skew-psec : Skew control of TX data 1 pad
-      - txd2-skew-psec : Skew control of TX data 2 pad
-      - txd3-skew-psec : Skew control of TX data 3 pad
-
-Examples:
-
-	/* Attach to an Ethernet device with autodetected PHY */
-	&enet {
-		rxc-skew-ps = <1800>;
-		rxdv-skew-ps = <0>;
-		txc-skew-ps = <1800>;
-		txen-skew-ps = <0>;
-		status = "okay";
-	};
-
-	/* Attach to an explicitly-specified PHY */
-	mdio {
-		phy0: ethernet-phy@0 {
-			rxc-skew-ps = <1800>;
-			rxdv-skew-ps = <0>;
-			txc-skew-ps = <1800>;
-			txen-skew-ps = <0>;
-			reg = <0>;
-		};
-	};
-	ethernet@70000 {
-		phy = <&phy0>;
-		phy-mode = "rgmii-id";
-	};
-
-References
-
-  Micrel ksz9021rl/rn Data Sheet, Revision 1.2. Dated 2/13/2014.
-  http://www.micrel.com/_PDF/Ethernet/datasheets/ksz9021rl-rn_ds.pdf
-
-  Micrel ksz9031rnx Data Sheet, Revision 2.1. Dated 11/20/2014.
-  http://www.micrel.com/_PDF/Ethernet/datasheets/KSZ9031RNX.pdf
-
-Notes:
-
-  Note that a previous version of the Micrel ksz9021rl/rn Data Sheet
-  was missing extended register 106 (transmit data pad skews), and
-  incorrectly specified the ps per step as 200ps/step instead of
-  120ps/step. The latest update to this document reflects the latest
-  revision of the Micrel specification even though usage in the kernel
-  still reflects that incorrect document.
-- 
2.51.0


