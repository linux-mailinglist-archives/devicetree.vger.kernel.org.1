Return-Path: <devicetree+bounces-248528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 63358CD37FF
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 23:03:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B9C43014DB9
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 22:03:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B57CD2FDC53;
	Sat, 20 Dec 2025 22:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XMAKZgIO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0923C2F999F
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 22:03:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766268219; cv=none; b=bU0+rmyvdWtFPiogZ6NW1IoO9HCUQykMFfWOGKmGsN9+ufHnOkfEMoCH35ZRDzwUpkFtXU2HlQDJaFPt+X9aPeVTtyNRl2YJmoOZGc/S+WA9cPpnZnf64bTnlTpWUJ4NQ+TBWscHwSmZlwmk1a1q96oUAqirBQgcESKEhORxqgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766268219; c=relaxed/simple;
	bh=XeQz5/l3HlxHkhQp/zlzp/IlfIFRa1msrxz47AYFRK4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=b0HGPivx668tMJrp0KGDWf8B+x2f/CLVHo/oJRqYY5EAdMbycMArhq0/zMyIYK8LlyZPhYnqC13XJXH3RLiLi6INkgjpDDRoj0SWNkZ5obeMz0WrdLKaVJ1sKYmYhBHkoaQ4jy8KfD8md8/G4EqOzx3NUA0VGpXrlJCHdS2w0eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XMAKZgIO; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-7bab7c997eeso3259680b3a.0
        for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 14:03:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766268217; x=1766873017; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3rICY1Fhpudv9OZIQ1xtxoji87Ec6uah1wEq45r1oWQ=;
        b=XMAKZgIOB2sLiF2sIB+Y5jRDav52rgN9j19AH7V2FVpJayDrNh5fEDxtok9Pa2WrOO
         ku6sMw1pqAwU9aNsdmvKY9UzkHvEcltQzStgbCjp2R7ksBfompJSIwf1mCCEPNIn/3Qv
         JsPRCR5TX+xEYzZ5smFDxtPlWT4PzFP2MF8gwWTSF9jtQ/wqGVeTvvfGyAwk/p4avgUP
         taxbg4IrOr2xGt3TqO0UJ38UL+VduC4BHAEFqa3K2a7M4sYgV5bUFAb6nllQErMiPqkl
         jpkM7hzt+kgTOjpgqanbHDqbONoAa+Q3R0SAubyzd6nodDoenkRSAV+IBcaubWhL1A2o
         9/Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766268217; x=1766873017;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3rICY1Fhpudv9OZIQ1xtxoji87Ec6uah1wEq45r1oWQ=;
        b=W3zHZy5EYkcK+rxWyqpfJMOx4kYKRVPu5chrXjxbDC7wvlJ56Ct5WXoTM93PUUnF+I
         HZnGaaVi001StZRkJs8EsV/rFycsqDHk1s8IFhsFGdS2mOjmSxRKAkfDQLGYHcjwNkIp
         +dcQtNPYqIlgzc37Gdr+nASMcZKbDBoHiVSu6I9yaBJoalIw5auACyCbbOreYHasksY5
         wjxmyzF9PpFeMpDABSu/VhQrEF8bdGqeV9ofA0KLnwc+SlbNxfPkdRseM074MLgaYRJ5
         upGRUEkWJRzIhCkP4DU0ZqMx8E9OT6yACWfafrvSKFKIaI1WZ2PrsSY2E7JuzRLAqvsB
         W4mw==
X-Forwarded-Encrypted: i=1; AJvYcCUz7xRMI632EBvTXK1qjeNiqaKF1oTjLZAFLvoLUkBazjEnc+osUAJnCNz423glkv8pY/GRUjUIkpfM@vger.kernel.org
X-Gm-Message-State: AOJu0YwXN417Eodi9I0jRj92AIjzhN335S/H6tUursMbhO09/3Nb7Pe6
	B8Jiyrln7J0817J2HpfN3uczjUNVXt3POSHH6ypRhf5QoKxcwIJ7PyNy
X-Gm-Gg: AY/fxX4ommVPnHSNOnfNobjbjMCYYCvFXTZLv3SAiMA5/a4AdnoXnS2ithIB5VlE9OW
	X+DiQpKWpN0QV9IEumFXTsKWdayQKmYVrXuiUsAdBETI8YCFjUcGJ2hEhfg5jrWitEdPkQzHvWq
	ba/ArW2gQ58XuWB16O/3YlDifiClCkP2HeJhJjSsK8zxwBUOmkdbxuU7plyhbKHJtFwXr5TuCEO
	FXpHkKs21462cN4fH0Ai+tif787IEkBTkNLM5pE1gD6JUFGyTm/SFEDmxr+bwVo9wQ+Fy0p2vAl
	OEg07ZON1g7kxqO3/r5F91M2v+RLV56OOvtaK37bo2oGOzot2bY+rVXHMPkJDyOqndCAn12npQV
	TkSmYvmvKLUjys5l+c88GHW6L9B9pdwAzYC2KUMHpNuf3DvlYBcfN3XREQQDXBCEKT6tbDNBbKs
	WAGBxuiCnuZK0=
X-Google-Smtp-Source: AGHT+IFrJ5P9UnBTKtA2lgtVNG5e6XfaPOR7fvP14/7jkIZvsB9Heckugmw7rTZyPRS5c+2zYErztQ==
X-Received: by 2002:a05:7022:f401:b0:11b:9386:a3c0 with SMTP id a92af1059eb24-121722fd5cfmr7534721c88.43.1766268217274;
        Sat, 20 Dec 2025 14:03:37 -0800 (PST)
Received: from fedora ([172.59.162.202])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1217254cd77sm25010164c88.14.2025.12.20.14.03.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Dec 2025 14:03:37 -0800 (PST)
From: Alex Tran <alex.t.tran@gmail.com>
To: mchehab@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: pavel@kernel.org,
	sakari.ailus@linux.intel.com,
	mehdi.djait@linux.intel.com,
	alex.t.tran@gmail.com,
	laurent.pinchart@ideasonboard.com,
	hverkuil+cisco@kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] media: dt-bindings: i2c: toshiba,et8ek8: Convert to DT schema
Date: Sat, 20 Dec 2025 14:03:24 -0800
Message-ID: <6f34ec79ac21d5ab9ad3fafe34a0bf6aca49a10d.1766123192.git.alex.t.tran@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <cover.1766123192.git.alex.t.tran@gmail.com>
References: <cover.1766123192.git.alex.t.tran@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert binding for toshiba,et8ek8 from TXT to YAML format.
Update MAINTAINERS file accordingly.

Signed-off-by: Alex Tran <alex.t.tran@gmail.com>
---
 .../bindings/media/i2c/toshiba,et8ek8.txt     | 55 -----------
 .../bindings/media/i2c/toshiba,et8ek8.yaml    | 91 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 3 files changed, 92 insertions(+), 55 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.txt
 create mode 100644 Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.txt b/Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.txt
deleted file mode 100644
index 8d8e40c56872..000000000000
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
index 000000000000..68a8134df8fc
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.yaml
@@ -0,0 +1,91 @@
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
+                };
+            };
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index dc731d37c8fe..50722537d548 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18582,6 +18582,7 @@ M:	Sakari Ailus <sakari.ailus@iki.fi>
 L:	linux-media@vger.kernel.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/media/i2c/adi,ad5820.yaml
+F:	Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.yaml
 F:	drivers/media/i2c/ad5820.c
 F:	drivers/media/i2c/et8ek8
 
-- 
2.51.0


