Return-Path: <devicetree+bounces-216750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AFBB55FE4
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 11:27:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CEA33A0814D
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 09:27:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 130EA2EACF6;
	Sat, 13 Sep 2025 09:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="XtZdpwQT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12FB22EA72C
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 09:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757755638; cv=none; b=EaKvWkHF1gKDsfNuEOIwzoS5LCIcXTk5L8plRYnWv6cxME29W03bZvifv2XW/lRddQlhLY06CbyJejanVy8z4XOIoFSqqGy4ENh62cgOltYnQI9h4J8+usVM/jZpwxMWZrrLPhpMlO7IWy1wtD1/7D02UeJ2mp4eIsMI1AJiNMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757755638; c=relaxed/simple;
	bh=OyzbIHease9EEYAbJIr/UO0Oi4xj2IKpsRHXJ9y0e6M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uN4I/db24qZG0Y4SxU9f+2v8y8982leje8lGbD55k1e0LjQE18W6CuossFt318WcdzoFlYw5fz8B8fX56wyuFDBe0AhTLNRFDt/HBjnR63CrfNCdKC6Z5FoCdHxiySXpuKSOB6/fNyd64PAZfk8vENUpeK28XAt3ssAyOEi0AfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=XtZdpwQT; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b07e081d852so105763866b.2
        for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 02:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1757755634; x=1758360434; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q8sTG2aW7CCN6Ok61/8IbQqhCfdouCWd9pDONO8Yrxw=;
        b=XtZdpwQTAkwfJdWwlrHFX1K/wtkhRLNBcgiseFL7vC/F/K8B2Pvyg2IMbUyTn1RdWn
         cdcRw3sE/vH50wcNKziRFjrqG+CxXDlWBQQUxO34GV+VqQsq1rcEKV5yh5Tq3ofjzyp8
         fcVZ9S5ifZtCEggShKCz3Uegxu10j81JybGTI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757755634; x=1758360434;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q8sTG2aW7CCN6Ok61/8IbQqhCfdouCWd9pDONO8Yrxw=;
        b=nPv5MQmTPA7zKTVKza9fJy5m4xeHSJVangr8YvbHm94aH5guVk2XzLANu6jw2D6Oa3
         4YdVU6IOm0MBVYgav8tkiLgoUUXbR4vo1EEf2XbmOHLK+bXOsMwFFVcJxPfgmHfmCfPI
         nUMp4SYiA+tbZzVioB7jJo9v0WbD++4IBUtszYeQjRtpt5gpl5+pKQRFu2WrvuZnUIbk
         JL2mPNThTCsEut8zkGMmETKfCnj2vgC5Lw727IAu/V6obH95hJDBBCa9WddWbggydOka
         sxTQ/G7uyE56/fORCTvyibAx1KylyBpR5/SS8on+2s71XinIdgida+LM8yXb0v8l9gQC
         CNRA==
X-Forwarded-Encrypted: i=1; AJvYcCXZwynCB5SieWMCktC1rFLEhbQxtQQXwzMDzEH/d27CfjDzDHGN9niN7EzmoQcebHbeUNnSUU6PvwkJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxtwKJOtL4ZDvq8oK4B5EDDm8EG9939D1tp7qkah75knsERH6ti
	yLzXlFOG6GTM8LTg5U89WUEsptsofiATORSUrK8933t+GK//7DmcwWnMSAjgOTx4hUw=
X-Gm-Gg: ASbGncuLvDsGZnfIXoWTBlie9YL3w00WZRQYkiJU2Y6xL0Q6gExVM8x/PaCP5ecqBQW
	t8u0w+4kyLlFmQ1DXRq85RqePaIv5C0F2OuTpkzDXCi9AQsCfQpvy1p9g7uURJTKnRV/ZEQB5UF
	0AaLruwyyrw+HTL21bKrzf2pDDftRLRMchUBGJFe1uW8N3HKBX9rA0m2NNDcC/Dg3obPG67R0NC
	LoctYsUFySQj/zPwytTgyMK2apHDEpw5fHjZzs0P5kmEBKOU+Map6G9lg3dtqNHTYuU0BpMDJBV
	21Dipdpg1InZzOWKjyQJtrfDzw0cTgITskKHAAr99VnswW39jzFK3eZwIF0wfDz7WCJwb7Hd1db
	O2mZXjJG+DpfYWn464ADahiTCD1bSs3Bhw1XdPx75eIu3rf5Y5hQp8uvf+hbNpUog+z9ESuXOcK
	SgNDnXMMfGFG/2X2iKTCFS5GnNjniXW6ey5Su9UmEPgSO/AmV9SqLZklv/EB12FMO3VN0pvEB9g
	yCRxSPLjvZQqw==
X-Google-Smtp-Source: AGHT+IGDgtfcXCTKrkwWfNIswey6Q82jjAojqmnYLlWD9nANCJYHBa416Imm5QX70EwDR8EVn7lX/A==
X-Received: by 2002:a17:906:794d:b0:b04:8701:7304 with SMTP id a640c23a62f3a-b07c3546e64mr582834866b.10.1757755634269;
        Sat, 13 Sep 2025 02:27:14 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b33478besm551705766b.99.2025.09.13.02.27.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Sep 2025 02:27:13 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v2 4/5] dt-bindings: touchscreen: convert zet6223 bindings to json schema
Date: Sat, 13 Sep 2025 11:26:54 +0200
Message-ID: <20250913092707.1005616-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250913092707.1005616-1-dario.binacchi@amarulasolutions.com>
References: <20250913092707.1005616-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert Zeitec ZET6223 touchscreen controller device tree binding to
json-schema.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v2:
- Added in v2

 .../bindings/input/touchscreen/zet6223.txt    | 30 ---------
 .../bindings/input/touchscreen/zet6223.yaml   | 62 +++++++++++++++++++
 2 files changed, 62 insertions(+), 30 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/input/touchscreen/zet6223.txt
 create mode 100644 Documentation/devicetree/bindings/input/touchscreen/zet6223.yaml

diff --git a/Documentation/devicetree/bindings/input/touchscreen/zet6223.txt b/Documentation/devicetree/bindings/input/touchscreen/zet6223.txt
deleted file mode 100644
index 27d55a506f18..000000000000
--- a/Documentation/devicetree/bindings/input/touchscreen/zet6223.txt
+++ /dev/null
@@ -1,30 +0,0 @@
-Zeitec ZET6223 I2C touchscreen controller
-
-Required properties:
-- compatible		  : "zeitec,zet6223"
-- reg			  : I2C slave address of the chip (0x76)
-- interrupts		  : interrupt specification for the zet6223 interrupt
-
-Optional properties:
-
-- vio-supply		  : Specification for VIO supply (1.8V or 3.3V,
-			    depending on system interface needs).
-- vcc-supply		  : Specification for 3.3V VCC supply.
-- touchscreen-size-x	  : See touchscreen.txt
-- touchscreen-size-y	  : See touchscreen.txt
-- touchscreen-inverted-x  : See touchscreen.txt
-- touchscreen-inverted-y  : See touchscreen.txt
-- touchscreen-swapped-x-y : See touchscreen.txt
-
-Example:
-
-i2c@00000000 {
-
-	zet6223: touchscreen@76 {
-		compatible = "zeitec,zet6223";
-		reg = <0x76>;
-		interrupt-parent = <&pio>;
-		interrupts = <6 11 IRQ_TYPE_EDGE_FALLING>
-	};
-
-};
diff --git a/Documentation/devicetree/bindings/input/touchscreen/zet6223.yaml b/Documentation/devicetree/bindings/input/touchscreen/zet6223.yaml
new file mode 100644
index 000000000000..a126f3f369ea
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/touchscreen/zet6223.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/touchscreen/zet6223.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Zeitec ZET6223 touchscreen controller
+
+description:
+  Zeitec ZET6223 I2C driven touchscreen controller.
+
+maintainers:
+  - Dario Binacchi <dario.binacchi@amarulasolutions.com>
+
+allOf:
+  - $ref: touchscreen.yaml#
+
+properties:
+  compatible:
+    enum:
+      - zeitec,zet6223
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  vio-supply:
+    description: Phandle to the 1.8V or 3.3V VIO supply.
+
+  vcc-supply:
+    description: Phandle to the 3.3V VCC supply.
+
+  touchscreen-inverted-x: true
+  touchscreen-inverted-y: true
+  touchscreen-size-x: true
+  touchscreen-size-y: true
+  touchscreen-swapped-x-y: true
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        touchscreen@76 {
+            compatible = "zeitec,zet6223";
+            reg = <0x76>;
+            interrupt-parent = <&pio>;
+            interrupts = <6 11 IRQ_TYPE_EDGE_FALLING>;
+        };
+    };
-- 
2.43.0

base-commit: 22f20375f5b71f30c0d6896583b93b6e4bba7279
branch: drop-touchscreen.txt

