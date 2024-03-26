Return-Path: <devicetree+bounces-53347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 843F488C01C
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 12:05:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CA08DB219E8
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 11:05:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E106814AB8;
	Tue, 26 Mar 2024 11:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JA9RMX8o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1A6B23D0
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 11:05:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711451121; cv=none; b=uWm+iVZz3FqgErE7+oJ2oounGp4KxMzYAEUD2ZWR8n5SYaVzYG8YvZb0ZfOlBd09ejz/145+7yJEtz1+o1De8P8nTvKZxJ+w0yYG0yiIJ3HNNlS3e+E+ZSiYXlF1Bc9eJlolnpl+GWLB3DFPjwz68r/5SzxY8Q3x8rio81l65X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711451121; c=relaxed/simple;
	bh=k0zd+Om/qtRCnmyQcrv1nanffL6bQ6+BEDlt1wM6lC4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lgXqx0yMrOWIGlHcRR+BhPXRBQWYh4qC1AKAmenYP2RXxcwyCEaNJN58Ac/4XNqMPtmEuVRbTH4KEYtW5ZmSi3rq5j/u1I8VNfYBX1QvvTJYl4Hh6lbYyH/E5+XYfU4tyb6Y5cxIG/0DxB1LBczG1a9q4nrM47AnAY9qhpGHVyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JA9RMX8o; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1e0b213efa3so16699495ad.0
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 04:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711451119; x=1712055919; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OZf6cOde2Mr6r60uYYaLOE/236WRfxe+eQpSW2yiFfk=;
        b=JA9RMX8oQ/PK0QvGN8+E5x19/p1ka3vHn3TMgBHcU9+NnMSAsRhLrSAl///EbSTeLu
         VkvkIDUQvv1oLIJjNUpyKztT9RwxQqUx2+6t7SdXMj0J1TD02gtMeROJ58UqR5RLlfyw
         ATGIb670FRbVuTPFnPVh0sADvNU6iHGcuO93NN/Jsb1Yhka1YNgj8uVAeKJFysopRsZN
         fENK7V2zr+SHG5l+n+xYGvd3vZfNdqdNoaLMdjV1Yy/tFvKqbCc8+xG8sGRH1g/ehpI/
         I6oYHQJPKrAaTU7AgpOQVkbLVCYcdJRGoPoGHRmbyXAwTUv0CzLirEsAchC4YfVVXJTp
         NAaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711451119; x=1712055919;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OZf6cOde2Mr6r60uYYaLOE/236WRfxe+eQpSW2yiFfk=;
        b=f8vMFrVH7sgGRD63wJysD5FP3QiUPaG6ycrqdFkUDNWBfdzuK5D1orLzwEO1MSkjsc
         oJWMNjs4SfQ78nDbrvbp8HiaoBa59R0b22U/tdc0S4Lo4rUJY45FiGg9YGuTJKhcXYy3
         CSKdeOrAFudg0lsawv4ePRMw1tYEfaeSN82vFHZD1Dp8u5dkpx9RWyqPtHf0NGmlNwlx
         b3iiPrrmAajbMkxr75kZ/i601xEZvYBZHO0t+7bwPPQGlxLNpssQo72HAkuDnKsVwC9i
         ZyI99r+rMAgYnWA8oKo4SjVUh8oK1MZ4W1zjv5Mboj4dwP3s/JccO/45tFQ/wRBmWKpx
         HW8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWv6U/pXJCK4T1GjqEp4QygM77cj1xAh3DZnzpuWAE2tg++dP+gTklFzD+w+zZ3u2zCS1rThxkeEXz0I8B8kjxqVwL3t01k3oHkrQ==
X-Gm-Message-State: AOJu0YzCEz2xCweysWFxw3105AfyWsAId+jRWuxqkQ8sRH+mLu/cbbe1
	PV9IqJWDrD5YO1axMEh+u463s/yFcXezjFeY83cDMI93KxLqJWI2hM43Vo3z
X-Google-Smtp-Source: AGHT+IFqOXsx6yJddJvLhfoEYv7ADsiSG7WH5sJVha3eB3uILc8ZGYjogXaYVnxfE2Jqluth+4eepg==
X-Received: by 2002:a17:902:f68a:b0:1e0:a678:5b55 with SMTP id l10-20020a170902f68a00b001e0a6785b55mr728293plg.11.1711451119006;
        Tue, 26 Mar 2024 04:05:19 -0700 (PDT)
Received: from localhost.localdomain ([223.178.85.179])
        by smtp.googlemail.com with ESMTPSA id b7-20020a170902d50700b001e0bc64a396sm3877508plg.155.2024.03.26.04.05.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 04:05:18 -0700 (PDT)
From: Kanak Shilledar <kanakshilledar@gmail.com>
To: 
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	daniel.baluta@nxp.com,
	Kanak Shilledar <kanakshilledar111@protonmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3] dt-bindings: serial: actions,owl-uart: convert to dtschema
Date: Tue, 26 Mar 2024 16:35:06 +0530
Message-Id: <20240326110506.78408-1-kanakshilledar@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <bf26ee6a-50e6-4cfd-ba5d-2772a9e6a176@linaro.org>
References: <bf26ee6a-50e6-4cfd-ba5d-2772a9e6a176@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Kanak Shilledar <kanakshilledar111@protonmail.com>

Convert the Actions Semi Owl UART to newer DT schema.
Created DT schema based on the .txt file which had
`compatible`, `reg`, `clocks` and `interrupts` as the
required properties. This binding is used by Actions S500, S700
and S900 SoC. S700 and S900 use the same UART compatible string.
Implemented a full node example for the UART, referenced S500 SoC
devicetree include.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Kanak Shilledar <kanakshilledar111@protonmail.com>
---
Changes in v3
- Updated commit message to make it more verbose
- Extended the DTS example by adding clocks. Referred the S500.dtsi 
for adding clocks property.
- Added Reviewed-by tag

 .../bindings/serial/actions,owl-uart.txt      | 16 ------
 .../bindings/serial/actions,owl-uart.yaml     | 50 +++++++++++++++++++
 2 files changed, 50 insertions(+), 16 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/serial/actions,owl-uart.txt
 create mode 100644 Documentation/devicetree/bindings/serial/actions,owl-uart.yaml

diff --git a/Documentation/devicetree/bindings/serial/actions,owl-uart.txt b/Documentation/devicetree/bindings/serial/actions,owl-uart.txt
deleted file mode 100644
index aa873eada02d..000000000000
--- a/Documentation/devicetree/bindings/serial/actions,owl-uart.txt
+++ /dev/null
@@ -1,16 +0,0 @@
-Actions Semi Owl UART
-
-Required properties:
-- compatible :  "actions,s500-uart", "actions,owl-uart" for S500
-                "actions,s900-uart", "actions,owl-uart" for S900
-- reg        :  Offset and length of the register set for the device.
-- interrupts :  Should contain UART interrupt.
-
-
-Example:
-
-		uart3: serial@b0126000 {
-			compatible = "actions,s500-uart", "actions,owl-uart";
-			reg = <0xb0126000 0x1000>;
-			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
-		};
diff --git a/Documentation/devicetree/bindings/serial/actions,owl-uart.yaml b/Documentation/devicetree/bindings/serial/actions,owl-uart.yaml
new file mode 100644
index 000000000000..b163060cdd33
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/actions,owl-uart.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/serial/actions,owl-uart.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Actions Semi Owl UART
+
+maintainers:
+  - Kanak Shilledar <kanakshilledar111@protonmail.com>
+
+allOf:
+  - $ref: serial.yaml
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - actions,s500-uart
+          - actions,s900-uart
+      - const: actions,owl-uart
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/actions,s500-cmu.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    uart0: serial@b0126000 {
+        compatible = "actions,s500-uart", "actions,owl-uart";
+        reg = <0xb0126000 0x1000>;
+        clocks = <&cmu CLK_UART0>;
+        interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+        status = "disabled";
+    };
-- 
2.34.1


