Return-Path: <devicetree+bounces-249135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F09CD9742
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 14:35:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C0A163015853
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 13:34:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C2C7327BE4;
	Tue, 23 Dec 2025 13:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dy1qbq6I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9363090EB
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 13:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766496898; cv=none; b=mDtE0IGhJJ9hPqSifqbhajd09FbZIcIKJlOCDE9i49CS+hw4TKD4a9gmWQ3WCWJ5cJUqnROgUJWq41tQ0My07pR1eNLSyP7u9yBmgDKXuph3Ccd8L8zgO2rI97ZDTe+LJkypB3IuXwrM359M5GpX2M592gbky0CmtiGmpHdIAVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766496898; c=relaxed/simple;
	bh=qxFKqnBzooOsacduEbkqTlJy+kPbdWAHJZNuXvTNiLo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dJ8Hku5h/wkm6XuYQYUzhEdH7K3qIBBdXQj/R2frwY52L3pfsIzRHMN0hDWIpC5tz+4IjGUmQsAtn1Yt016mWFeJaKot4aya6bVcaN5Y1FYDHfdKzTxjSNbnTRWSiGfi0tQKxkiaBxyvccRmF0VyUsA0M2j4z1roHTFRUVuuDrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dy1qbq6I; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-477a219dbcaso41725815e9.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 05:34:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766496894; x=1767101694; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mrEh9nKHmNyBqbmCl3k1dr2i30y+tIIbaBPesU/8f6Y=;
        b=dy1qbq6Iy3Y48OmnMS16/iQc/uegL6uz9dr61/HYt3E8wPOq4yi/T9ZxynRCenFhKP
         n8P51RvQHIlw4/r+/4V9svqpJbWxlG4061VwskMf1pxfDkxZkIyY288H+WShVmtRvjaz
         uBE3faggUPfIw4mgg4PDeNEUPPnJSszh6Pr9ZxZWG5qOE0IdnpangESEMjciazQCkqUT
         RzNHb6MAGfet+Ocx2IFIUX4Rf4/busL/Y8Cea+QCsXkDqyJzTtxvI8JMkudUG1tVCk2D
         pDAPeKCO6AMTPYdAItnfo81zy7CjlpHDNMvZjXaT/o3WEi3WA7PtEN1e1V3AT833NYc6
         Pj1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766496894; x=1767101694;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mrEh9nKHmNyBqbmCl3k1dr2i30y+tIIbaBPesU/8f6Y=;
        b=A3guIIFwJrGZo0C+gvb179lWOW8BxNt4pbQBgCWgWdY8dyUDhXNQuRJpMdPc3QHV77
         hHAHtQ78merjVoMZ2CKAD5/79psR95iGHs1KUaqiv2BGOdvEGZlxiwcxk64xfwAbzu8C
         P/efAy+k7ce0bJQWCENgDV4ojmbFxInRbOoestMhR9vDUacIzbgIrA/+R748Cm0jOSor
         WKQicdGVUIOFnNrY3um2lvYUqzdgRyVyNB/j1YsX8bs/eQLrurrSNiavtgHovi2twMiu
         pE/4v/JMitFIxfX/585uob32wORA36UX8GLOt1jrUkbazoHO6M0Sl/qvB+4FKrS1JfaD
         JSfA==
X-Forwarded-Encrypted: i=1; AJvYcCVgXJ4IfAwZPRr0QL1AuaslOrRuM2fwju1ilkR5oe5k2kceQPx6k1P+wpPn5kwapmQIK8X2cLm6W3tr@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7BKgfA2I6vRF1O0RSeFjiFApP5rj3h3HbPA4doBpbnnfGNw/v
	LBJp+q6/yTsgx4Z8g7IRgcsBFKBx1NpaY6MBmt0aVQ9Qqv5+8eNoma2l
X-Gm-Gg: AY/fxX6tj+Bkn/l+7bff7DLTAB2cYJr1W9lWSfMiN80qsQASXLxpN6uW1SjuOteeIXs
	zA2f8yRvHme4mjDVIU9FKdW5Jo/nNwWw2HUUV7Yahd2auKO1NNY/dTRP27PPkJD+RLmMMoEEkRm
	MJPQP2wy6ah9cnbxscEwCHnwIe4hWmB64y6EVm+ObZ9tV2mYNekyNWxN82qudnvukUTeQ1v7EGr
	18RZ0b+r54lZvUX7O0S1DMgXU/hwtBh2qVIL47HLQIgiifbaei0jZpxhwASjXQVFs0dSFWPfCTl
	mYIn1E3SovzhNVcvlDP8ndLfp83o9lo1Wlmx1Kw36yzlAn+PmnZSBrUE3ItCOI9ZWIjzNywXYle
	5aDm43pQ95ZGvCjrD5/brzlJpudMeSlYE3qDzlY2tRvQEq4cbsDRtIaAlGuoqzDWniagz47vwcx
	AJVbEo4oM8kiwzb5Q=
X-Google-Smtp-Source: AGHT+IHtS753aUjySyhNCqkJj7j+LkujNteXlOQmjfvNbtv0NZnPryhKZuTRry+FpFpmgFXMhKu9Tg==
X-Received: by 2002:a05:600c:198d:b0:46e:35a0:3587 with SMTP id 5b1f17b1804b1-47d195a06a0mr142702575e9.27.1766496894057;
        Tue, 23 Dec 2025 05:34:54 -0800 (PST)
Received: from eichest-laptop.lan ([2a02:168:af72:0:db87:3fd:1ea8:b6eb])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea1af2bsm27843964f8f.1.2025.12.23.05.34.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 05:34:53 -0800 (PST)
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
Subject: [PATCH v1 1/2] dt-bindings: net: micrel: Convert to DT schema
Date: Tue, 23 Dec 2025 14:33:39 +0100
Message-ID: <20251223133446.22401-2-eichest@gmail.com>
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

Convert the devicetree bindings for the Micrel PHYs and switches to DT
schema.

Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>
---
 .../devicetree/bindings/net/micrel.txt        |  57 --------
 .../devicetree/bindings/net/micrel.yaml       | 132 ++++++++++++++++++
 2 files changed, 132 insertions(+), 57 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/net/micrel.txt
 create mode 100644 Documentation/devicetree/bindings/net/micrel.yaml

diff --git a/Documentation/devicetree/bindings/net/micrel.txt b/Documentation/devicetree/bindings/net/micrel.txt
deleted file mode 100644
index 01622ce58112e..0000000000000
--- a/Documentation/devicetree/bindings/net/micrel.txt
+++ /dev/null
@@ -1,57 +0,0 @@
-Micrel PHY properties.
-
-These properties cover the base properties Micrel PHYs.
-
-Optional properties:
-
- - micrel,led-mode : LED mode value to set for PHYs with configurable LEDs.
-
-	Configure the LED mode with single value. The list of PHYs and the
-	bits that are currently supported:
-
-	KSZ8001: register 0x1e, bits 15..14
-	KSZ8041: register 0x1e, bits 15..14
-	KSZ8021: register 0x1f, bits 5..4
-	KSZ8031: register 0x1f, bits 5..4
-	KSZ8051: register 0x1f, bits 5..4
-	KSZ8081: register 0x1f, bits 5..4
-	KSZ8091: register 0x1f, bits 5..4
-	LAN8814: register EP5.0, bit 6
-
-	See the respective PHY datasheet for the mode values.
-
- - micrel,rmii-reference-clock-select-25-mhz: RMII Reference Clock Select
-						bit selects 25 MHz mode
-
-	Setting the RMII Reference Clock Select bit enables 25 MHz rather
-	than 50 MHz clock mode.
-
-	Note that this option is only needed for certain PHY revisions with a
-	non-standard, inverted function of this configuration bit.
-	Specifically, a clock reference ("rmii-ref" below) is always needed to
-	actually select a mode.
-
- - clocks, clock-names: contains clocks according to the common clock bindings.
-
-	supported clocks:
-	- KSZ8021, KSZ8031, KSZ8081, KSZ8091: "rmii-ref": The RMII reference
-	  input clock. Used to determine the XI input clock.
-
- - micrel,fiber-mode: If present the PHY is configured to operate in fiber mode
-
-	Some PHYs, such as the KSZ8041FTL variant, support fiber mode, enabled
-	by the FXEN boot strapping pin. It can't be determined from the PHY
-	registers whether the PHY is in fiber mode, so this boolean device tree
-	property can be used to describe it.
-
-	In fiber mode, auto-negotiation is disabled and the PHY can only work in
-	100base-fx (full and half duplex) modes.
-
- - coma-mode-gpios: If present the given gpio will be deasserted when the
-		    PHY is probed.
-
-	Some PHYs have a COMA mode input pin which puts the PHY into
-	isolate and power-down mode. On some boards this input is connected
-	to a GPIO of the SoC.
-
-	Supported on the LAN8814.
diff --git a/Documentation/devicetree/bindings/net/micrel.yaml b/Documentation/devicetree/bindings/net/micrel.yaml
new file mode 100644
index 0000000000000..a8e532fbcb6f5
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/micrel.yaml
@@ -0,0 +1,132 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/micrel.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Micrel KSZ series PHYs and switches
+
+maintainers:
+  - Andrew Lunn <andrew@lunn.ch>
+  - Stefan Eichenberger <eichest@gmail.com>
+
+description: |
+  The Micrel KSZ series contains different network phys and switches.
+
+properties:
+  compatible:
+    enum:
+      - ethernet-phy-id000e.7237  # KSZ8873MLL
+      - ethernet-phy-id0022.1430  # KSZ886X
+      - ethernet-phy-id0022.1435  # KSZ8863
+      - ethernet-phy-id0022.1510  # KSZ8041
+      - ethernet-phy-id0022.1537  # KSZ8041RNLI
+      - ethernet-phy-id0022.1550  # KSZ8051
+      - ethernet-phy-id0022.1555  # KSZ8021
+      - ethernet-phy-id0022.1556  # KSZ8031
+      - ethernet-phy-id0022.1560  # KSZ8081, KSZ8091
+      - ethernet-phy-id0022.1570  # KSZ8061
+      - ethernet-phy-id0022.161a  # KSZ8001
+      - ethernet-phy-id0022.1720  # KS8737
+  micrel,fiber-mode:
+    type: boolean
+    description: |
+      If present the PHY is configured to operate in fiber mode.
+
+      The KSZ8041FTL variant supports fiber mode, enabled by the FXEN
+      boot strapping pin. It can't be determined from the PHY registers
+      whether the PHY is in fiber mode, so this boolean device tree
+      property can be used to describe it.
+
+      In fiber mode, auto-negotiation is disabled and the PHY can only
+      work in 100base-fx (full and half duplex) modes.
+  micrel,led-mode:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      LED mode value to set for PHYs with configurable LEDs.
+
+      Configure the LED mode with single value. The list of PHYs and the
+      bits that are currently supported:
+
+      KSZ8001: register 0x1e, bits 15..14
+      KSZ8041: register 0x1e, bits 15..14
+      KSZ8021: register 0x1f, bits 5..4
+      KSZ8031: register 0x1f, bits 5..4
+      KSZ8051: register 0x1f, bits 5..4
+      KSZ8081: register 0x1f, bits 5..4
+      KSZ8091: register 0x1f, bits 5..4
+
+      See the respective PHY datasheet for the mode values.
+    minimum: 0
+    maximum: 3
+
+allOf:
+  - $ref: ethernet-phy.yaml#
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              const: ethernet-phy-id0022.1510
+    then:
+      properties:
+        micrel,fiber-mode: false
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - ethernet-phy-id0022.1510
+                - ethernet-phy-id0022.1555
+                - ethernet-phy-id0022.1556
+                - ethernet-phy-id0022.1550
+                - ethernet-phy-id0022.1560
+                - ethernet-phy-id0022.161a
+    then:
+      properties:
+        micrel,led-mode: false
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - ethernet-phy-id0022.1555
+              - ethernet-phy-id0022.1556
+              - ethernet-phy-id0022.1560
+    then:
+      properties:
+        clocks:
+          maxItems: 1
+        clock-names:
+          const: rmii-ref
+          description: |
+            supported clocks:
+              - The RMII reference input clock. Used to determine the XI
+                input clock.
+        micrel,rmii-reference-clock-select-25-mhz:
+          type: boolean
+          description: |
+            RMII Reference Clock Select bit selects 25 MHz mode
+
+            Setting the RMII Reference Clock Select bit enables 25 MHz rather
+            than 50 MHz clock mode.
+
+dependentRequired:
+  micrel,rmii-reference-clock-select-25-mhz: [ clock-names ]
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    ethernet {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ethernet-phy@5 {
+            compatible = "ethernet-phy-id0022.1510";
+            reg = <5>;
+            micrel,led-mode = <2>;
+            micrel,fiber-mode;
+        };
+    };
-- 
2.51.0


