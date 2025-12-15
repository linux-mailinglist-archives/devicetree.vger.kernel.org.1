Return-Path: <devicetree+bounces-246447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B60FCBCE9C
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:06:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0684830204A6
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 08:00:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A33032AAA5;
	Mon, 15 Dec 2025 08:00:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZM2Fk8VT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F36329E79
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765785607; cv=none; b=JxVNTGPR+NpBEQKVKgYzaQGEqKccGP4Unsld+/JPxgyzXiYIsQurpqMptR/moPJbNCHXWMx85DJWzqIdvLOxprgGYa1rkPGDzH3kHxJDFo7dGyjAiJw/HPNodK4Fs7b33pHV7nX7xrqWwFeGd+aabHK5buQEmTWs0ua0uqIJxTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765785607; c=relaxed/simple;
	bh=MT6YvlTp/tym7jlAKKvWLPIyFq2L811XHmb/5S7F63A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HClZM/eQovKELmxRtgrwX8MHKgesRuW5kifOdRBa0sKG7LvcX9swE79k5UyTchhTD0LHJGzPQpp+4bXL6ZYP/H+wMcsPr2RR2rE33a8C9ryacPOwBKjY4e6KUPCX77lMobnEeG5Da4JOJG1hK/wFzuTqptMh4Ub3+CODzhMR7Vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZM2Fk8VT; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7bb710d1d1dso4568451b3a.1
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 00:00:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765785604; x=1766390404; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AB9GCG9Z4qz6LZxUZn1uvrlMkgDhqoAwRIBcW65zHlM=;
        b=ZM2Fk8VTa1KypiEMNVnkQGDXHhS478pVhlxIb/eBhichA0eJ66P2Grj4aIxYyUkhoW
         a4smlojo1X80BwRmvbxN1HLGpmjh9SzdPRXun7ytMn9NTXMd+eHues1HkrFKUz40Xhhf
         Awxjw4Vm1l25DApkEmNzPxDKoKnaaDRI2d+ma2nh+NnC1akuKlkX+35XWemYIOO8yzO9
         Hr4kYxl4oRpUbrP+2uQXYKIUsKL+NbS4QVyGPoihpLucex8OmVBkkJzHxNSC6tijwIsQ
         R1e34/C+BcEf9+DLGV1KB9m0D5dqf8t99hWMKHwO0rk8g3oD74wbVUb7cau37omybFyr
         Yglg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765785604; x=1766390404;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AB9GCG9Z4qz6LZxUZn1uvrlMkgDhqoAwRIBcW65zHlM=;
        b=hbwP8X8WFTGf6+aSBC/xBECW4ymfS4OKT02NkNt533IFNJ5CrM7O5zs5Up08JkwmLY
         YXK5gZdGTcjh5D8cPvd4e0Y0pxXQCOZqZ9rcWtpmUVTFTNcyTh0boiQtWM84jTQZ3sF/
         tgzVvUWKmf1v5Ns5xhWuKPdXKw0SxBBNmldXVBfzxLa9XWVqdI0Yg51JR22t/Efp28lJ
         HIe190L7CblXcSlvwByTb5UPGqXt6npM/TBJ/cfxmB7vWpZ5J8okLDhuWBX/bvPXoqzL
         0Pu3HLWmCCiV1tOGXalEuejrbXTitFCONY2bTkiyjnBh/qeP1OZgYL3zbARgZtUarriD
         VaSg==
X-Forwarded-Encrypted: i=1; AJvYcCVr6lV/8WdwngO9ce1beng3/uhax3Dt909ycrnm5wuqSbTkrmXbIZXSzQm4/wHexIaj64s8zlvVdGq+@vger.kernel.org
X-Gm-Message-State: AOJu0Yxw5+g4zDH/JG0i6EAr4UHpXOm0+ih4yJHKqFEqYHKHxo2/DT1r
	COHbmU1oDcfMv1N4QsrjkQk6g/7nF7XQb6xrYRf2ywxF+EYySAteHWJn
X-Gm-Gg: AY/fxX5RWKIVgtay3KflcV3prSnBSMu4FTH4LKYveWavvgz7PcBias8NhUZM9sYYnEo
	HCLW18l0hpYNBG3Wdqx4oNzCNC0qyXe1uLx4RDPVQjs+3s3mt5fZdSUVNuE4rQs1ObeFg4c2Wjv
	JQJVa+h69cwlt9KP1Nn31APcyExdwM/0k7Os4CHeFduvMCjC7KZeXxqJ+1pjWATPh4kHxwPsNSp
	RlBaEk+kfpvqC0gcs9atnleQiCwKUbht1oEHTkWKycdPYtkdv2W/nTcgox4ZFSLqZ5r25dDZ+Kd
	cD2SJbPR+lH3ZMw6Y0h7DYp8N1ESq5pWFqZfN4SuGxcyk4xOtiGPeSGTxVLQC+Yg5RHemjVR708
	f3CDkRct1fDDBLltexxnS0ryOgzVsBod7VwM7Z8hw8jHlkdoNIUd8Mk9ydp62D9A6gGCgaed2kp
	5mrXzvGpLv/ctUBsaMNXH9jg==
X-Google-Smtp-Source: AGHT+IHXq6U+vTIbQsfvkxrFr56SYRwXtblPn+sgeZM7nEKQ8GZt2Mzq2fuD3DcFlMA7ExQdoI6fJQ==
X-Received: by 2002:a05:701b:2719:b0:11d:c86c:652e with SMTP id a92af1059eb24-11f34ac540dmr6432564c88.5.1765785603490;
        Mon, 15 Dec 2025 00:00:03 -0800 (PST)
Received: from fedora ([172.59.162.202])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f2e2ff624sm43637473c88.12.2025.12.15.00.00.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 00:00:03 -0800 (PST)
From: Alex Tran <alex.t.tran@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Alex Tran <alex.t.tran@gmail.com>
Subject: [PATCH v2 2/4] dt-bindings: media: i2c: et8ek8: document missing crc as optional property
Date: Sun, 14 Dec 2025 23:58:33 -0800
Message-ID: <ddb6f986cb54e513ba508fa28fc9d2c8df0e2987.1765782992.git.alex.t.tran@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <cover.1765782992.git.alex.t.tran@gmail.com>
References: <cover.1765782992.git.alex.t.tran@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the et8ek8 sensor device tree binding from TXT to YAML format.
Add the optional crc property to the endpoint node for the et8ek8 sensor.
This property enables CRC checksums for the sensor bus and was added to
match the new driver support for reading it from the device tree.
Add documentation reference to MAINTAINERS file.

Signed-off-by: Alex Tran <alex.t.tran@gmail.com>
---
 .../bindings/media/i2c/toshiba,et8ek8.txt     | 55 -----------
 .../bindings/media/i2c/toshiba,et8ek8.yaml    | 99 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 3 files changed, 100 insertions(+), 55 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.txt
 create mode 100644 Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.txt b/Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.txt
deleted file mode 100644
index 8d8e40c56..000000000
--- a/Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.txt
+++ /dev/null
@@ -1,55 +0,0 @@
-Toshiba et8ek8 5MP sensor
-
-Toshiba et8ek8 5MP sensor is an image sensor found in Nokia N900 device
-
-More detailed documentation can be found in
-Documentation/devicetree/bindings/media/video-interfaces.txt .
-
-
-Mandatory properties
---------------------
-
-- compatible: "toshiba,et8ek8"
-- reg: I2C address (0x3e, or an alternative address)
-- vana-supply: Analogue voltage supply (VANA), 2.8 volts
-- clocks: External clock to the sensor
-- reset-gpios: XSHUTDOWN GPIO. The XSHUTDOWN signal is active low. The sensor
-  is in hardware standby mode when the signal is in the low state.
-
-
-Optional properties
--------------------
-
-- flash-leds: See ../video-interfaces.txt
-- lens-focus: See ../video-interfaces.txt
-
-
-Endpoint node mandatory properties
-----------------------------------
-
-- remote-endpoint: A phandle to the bus receiver's endpoint node.
-
-
-Example
--------
-
-&i2c3 {
-	clock-frequency = <400000>;
-
-	cam1: camera@3e {
-		compatible = "toshiba,et8ek8";
-		reg = <0x3e>;
-		vana-supply = <&vaux4>;
-
-		clocks = <&isp 0>;
-		assigned-clocks = <&isp 0>;
-		assigned-clock-rates = <9600000>;
-
-		reset-gpio = <&gpio4 6 GPIO_ACTIVE_HIGH>; /* 102 */
-		port {
-			csi_cam1: endpoint {
-				remote-endpoint = <&csi_out1>;
-			};
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.yaml b/Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.yaml
new file mode 100644
index 000000000..6e7f60ee9
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.yaml
@@ -0,0 +1,99 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/toshiba,et8ek8.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Toshiba et8ek8 5MP sensor
+
+maintainers:
+  - Pavel Machek <pavel@ucw.cz>
+  - Sakari Ailus <sakari.ailus@iki.fi>
+
+description:
+  Toshiba et8ek8 5MP sensor is an image sensor found in Nokia N900 device
+
+properties:
+  compatible:
+    const: toshiba,et8ek8
+
+  reg:
+    description:
+      I2C address (0x3e, or an alternative address)
+    maxItems: 1
+
+  vana-supply:
+    description:
+      Analogue voltage supply (VANA), 2.8 volts
+
+  clocks:
+    description:
+      External clock to the sensor
+    maxItems: 1
+
+  reset-gpios:
+    description:
+      XSHUTDOWN GPIO. The XSHUTDOWN signal is active low. The sensor
+      is in hardware standby mode when the signal is in the low state.
+    maxItems: 1
+
+  flash-leds:
+    $ref: /schemas/media/video-interfaces.yaml#
+
+  lens-focus:
+    $ref: /schemas/media/video-interfaces.yaml#
+
+  port:
+    $ref: /schemas/graph.yaml#/$defs/port-base
+    additionalProperties: false
+
+    properties:
+      endpoint:
+        $ref: /schemas/media/video-interfaces.yaml#
+        unevaluatedProperties: false
+
+        properties:
+          crc:
+            $ref: /schemas/types.yaml#/definitions/uint32
+            enum: [0, 1]
+            default: 1
+            description:
+              Enable CRC checksums.
+
+          remote-endpoint: true
+
+required:
+  - compatible
+  - reg
+  - vana-supply
+  - clocks
+  - reset-gpios
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        camera@3e {
+            compatible = "toshiba,et8ek8";
+            reg = <0x3e>;
+            vana-supply = <&vaux4>;
+            clocks = <&isp 0>;
+            assigned-clocks = <&isp 0>;
+            assigned-clock-rates = <9600000>;
+            reset-gpios = <&gpio4 6 GPIO_ACTIVE_HIGH>;
+
+            port {
+                csi_cam1: endpoint {
+                    remote-endpoint = <&csi_out1>;
+                    crc = <1>;
+                };
+            };
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 8aec054a6..6a9ce4d17 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18308,6 +18308,7 @@ M:	Sakari Ailus <sakari.ailus@iki.fi>
 L:	linux-media@vger.kernel.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/media/i2c/adi,ad5820.yaml
+F:	Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.yaml
 F:	drivers/media/i2c/ad5820.c
 F:	drivers/media/i2c/et8ek8
 
-- 
2.51.0


