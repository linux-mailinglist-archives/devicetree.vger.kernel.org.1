Return-Path: <devicetree+bounces-181602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF73AC7FC1
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 16:36:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BED541BC27A9
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 14:36:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49CCB22B8C5;
	Thu, 29 May 2025 14:35:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="klJHJ72h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC9722ACF7
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 14:35:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748529358; cv=none; b=N+KY+uubvnTVU+CQKGzdQDu1A+z/D06k9jhe+VrWG3F9avhMELZNVE612YpAf0k/lsNZmynRmUnR/is3nY2chdWBNMveAc6YOKIox4G5uXgMgOCtWa2s6GdqQN9d/naLwoSjKE2eSC/K1FoZRuJ8z38pRvqD8m8HvUozRVxy6aE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748529358; c=relaxed/simple;
	bh=lWI4T2RiBW23UkmALNgK+owDgixAhqm2J1H+wTwycSo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Z/xTiUAKkjCnuPjU/E9uAyH2aq2ZO1tna+xxgGsHXTVjCETqRs98AAHy5qT8TwoJ7OQIAAViGAs/oGvFoO1yAVr9zQuOrJ6Lomxt6fkUhZDcvYCjwZsiKYfL6hXwm3emUWuF4xbpfXhyYPqQf06AeTpZdYZqT9I1Nlrz5thU6ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=klJHJ72h; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-acb39c45b4eso142732166b.1
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 07:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1748529354; x=1749134154; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gZBCgnAET/7svvvAxCFqw/qkQj58y6b6iHWz5ZaJvGE=;
        b=klJHJ72hsm/F4MeAx/IO8I8WIQ5nvR/jpOmBBnLpocrS3jm8AxLNFECsc3B2tezGF6
         QY9urgc2pFS8d/EkwuL6H2aohTouev/nhAD7jUDJ5KR425fxjbDIeIbo7SsWyhxxORmH
         DQ1wT8fi0HMb/iFrwAMVix593Am1loss7H6rc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748529354; x=1749134154;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gZBCgnAET/7svvvAxCFqw/qkQj58y6b6iHWz5ZaJvGE=;
        b=AB7gvQrS0vH11awAvefMzJNaUyvLGspKha5eGpFQf17lgLKljohoY2yY05ede2FC9D
         NemmNttYQsxcgq7acjKSRTeM60KebMQklBsj3l1zRSKzgg5AJMvJEKXONJnpP9/x0fyd
         JzZTgDj5SNnNIhLT75HvK02h7F2ywpJBaG3vEB+ljG8OExWFblCUpAzZEkjjGnKeihqU
         6Fhrr4zyUzwXeLtRid9L3O2oYxoo43i1+nXxCO9t4qq1CoK3zzoLPirLGjnEe6Ypv1oS
         w7VgGzZqY6b72o4jt+1kxP87uqJDoQwiZYTJMGp3PmpvFlovEUlYPHPTJjsZ5+hSYd4f
         ubKA==
X-Forwarded-Encrypted: i=1; AJvYcCWxptVSRV7JfIe1fl7HZ15CO6F9yiVpBD1iEoe0KTLUmFkawmQi9YDPE5BKqUAsvT0K6s7XE94ogpkR@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0b9y8md8VQ2U054B9+1lcMNuaWyA/AJ7vNbxg7xf/3jSowTC5
	gB7KXwmmFSbY6oysnsbeTx9MQ3bqPb/J4QNn4OhDWRdtrFuV7cDb9rUS6yRHqi72l7s=
X-Gm-Gg: ASbGncsh83q4KMNcEPnsyXwRcs9tQpA3Hj554lyXqOQn1s2eAOSV/Ta4t5IXLBlP0gS
	nwfIeuZo/cnVW1Z+B9pzlcc/kclK6vbLcXUXKbyZuUpAfQ31GprywyRohAPpqOYIkHftr5OHyj9
	IolKCfulFtQU00lEar4Fx84jj6P1nIoIDoiANVFICmdafDqmGDclaXL1kNhTrxQdl2mut/Nqgbw
	pGbDiH9C5FQl9d08+Zr1BjyGM4bGMASmKchJ+iQkVr6koYnfDKjeJ6QAhiuKnQ49AmbwCDXoQyh
	yRPgNjCBBxwDx/jblXOd6MR7MTRS3eAkldCaiotEhDBbO9WnDeqknafIqPvFhlvKHBGjyJm/kGu
	pIKZ6xvIY1WSZZK58
X-Google-Smtp-Source: AGHT+IHa52b+vSbAsyz/N9mzyCKngvFXo9cXYY8r05kAw/BK0bB/NY6TNVZhWWYTAv9SIpftClPn9A==
X-Received: by 2002:a17:906:b810:b0:adb:2f9c:34bb with SMTP id a640c23a62f3a-adb2f9c7504mr24458666b.49.1748529353961;
        Thu, 29 May 2025 07:35:53 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.42.248])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5d7ff075sm154305866b.37.2025.05.29.07.35.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 07:35:53 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	michael@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 1/6] dt-bindings: mfd: convert mxs-lradc bindings to json-schema
Date: Thu, 29 May 2025 16:35:08 +0200
Message-ID: <20250529143544.2381031-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250529143544.2381031-1-dario.binacchi@amarulasolutions.com>
References: <20250529143544.2381031-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the Freescale MXS Low-Resoulution ADC (LRADC) device tree
binding documentation to json-schema.

The clocks and #io-channel-cells properties have also been added; They
are present in the respective SoC DTSI files but were missing from the
old mxs-lradc.txt file.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

---

Changes in v4:
- Fix typo Low-Resoulution -> Low-Resolution'
- Wrap lines at 80 char.
- Drop '|' from the description
- Describe what each interrupt is for.
- Move touchscreen-wires constraint for imx28 to the top level

Changes in v3:
- Add Reviewed-by tag of Conor Dooley

 .../devicetree/bindings/mfd/mxs-lradc.txt     |  45 ------
 .../devicetree/bindings/mfd/mxs-lradc.yaml    | 131 ++++++++++++++++++
 2 files changed, 131 insertions(+), 45 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/mxs-lradc.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/mxs-lradc.yaml

diff --git a/Documentation/devicetree/bindings/mfd/mxs-lradc.txt b/Documentation/devicetree/bindings/mfd/mxs-lradc.txt
deleted file mode 100644
index 755cbef0647d..000000000000
--- a/Documentation/devicetree/bindings/mfd/mxs-lradc.txt
+++ /dev/null
@@ -1,45 +0,0 @@
-* Freescale MXS LRADC device driver
-
-Required properties:
-- compatible: Should be "fsl,imx23-lradc" for i.MX23 SoC and "fsl,imx28-lradc"
-              for i.MX28 SoC
-- reg: Address and length of the register set for the device
-- interrupts: Should contain the LRADC interrupts
-
-Optional properties:
-- fsl,lradc-touchscreen-wires: Number of wires used to connect the touchscreen
-                               to LRADC. Valid value is either 4 or 5. If this
-                               property is not present, then the touchscreen is
-                               disabled. 5 wires is valid for i.MX28 SoC only.
-- fsl,ave-ctrl: number of samples per direction to calculate an average value.
-                Allowed value is 1 ... 32, default is 4
-- fsl,ave-delay: delay between consecutive samples. Allowed value is
-                 2 ... 2048. It is used if 'fsl,ave-ctrl' > 1, counts at
-                 2 kHz and its default is 2 (= 1 ms)
-- fsl,settling: delay between plate switch to next sample. Allowed value is
-                1 ... 2047. It counts at 2 kHz and its default is
-                10 (= 5 ms)
-
-Example for i.MX23 SoC:
-
-	lradc@80050000 {
-		compatible = "fsl,imx23-lradc";
-		reg = <0x80050000 0x2000>;
-		interrupts = <36 37 38 39 40 41 42 43 44>;
-		fsl,lradc-touchscreen-wires = <4>;
-		fsl,ave-ctrl = <4>;
-		fsl,ave-delay = <2>;
-		fsl,settling = <10>;
-	};
-
-Example for i.MX28 SoC:
-
-	lradc@80050000 {
-		compatible = "fsl,imx28-lradc";
-		reg = <0x80050000 0x2000>;
-		interrupts = <10 14 15 16 17 18 19 20 21 22 23 24 25>;
-		fsl,lradc-touchscreen-wires = <5>;
-		fsl,ave-ctrl = <4>;
-		fsl,ave-delay = <2>;
-		fsl,settling = <10>;
-	};
diff --git a/Documentation/devicetree/bindings/mfd/mxs-lradc.yaml b/Documentation/devicetree/bindings/mfd/mxs-lradc.yaml
new file mode 100644
index 000000000000..f90fdfbb74a8
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/mxs-lradc.yaml
@@ -0,0 +1,131 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/mxs-lradc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale MXS Low-Resolution ADC (LRADC)
+
+maintainers:
+  - Dario Binacchi <dario.binacchi@amarulasolutions.com>
+
+description:
+  The LRADC provides 16 physical channels of 12-bit resolution for
+  analog-to-digital conversion and includes an integrated 4-wire/5-wire
+  touchscreen controller.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - fsl,imx23-lradc
+          - fsl,imx28-lradc
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+
+  interrupts:
+    minItems: 9
+    maxItems: 13
+
+  fsl,lradc-touchscreen-wires:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [4, 5]
+    description:
+      Number of wires used to connect the touchscreen to LRADC.
+      If this property is not present, then the touchscreen is disabled.
+
+  fsl,ave-ctrl:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1
+    maximum: 32
+    default: 4
+    description: |
+      Number of samples per direction to calculate an average value.
+
+  fsl,ave-delay:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 2
+    maximum: 2048
+    default: 2
+    description:
+      Delay between consecutive samples.
+      It is used if 'fsl,ave-ctrl' > 1, counts at 2 kHz and its
+      default value (i. e. 2) is 1 ms.
+
+  fsl,settling:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1
+    maximum: 2047
+    default: 10
+    description:
+      Delay between plate switch to next sample.
+      It counts at 2 kHz and its default (i. e. 10) is 5 ms.
+
+  "#io-channel-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - interrupts
+
+if:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - fsl,imx23-lradc
+then:
+  properties:
+    interrupts:
+      items:
+        - description: channel 0
+        - description: channel 1
+        - description: channel 2
+        - description: channel 3
+        - description: channel 4
+        - description: channel 5
+        - description: touchscreen
+        - description: channel 6
+        - description: channel 7
+    fsl,lradc-touchscreen-wires:
+      const: 4
+else:
+  properties:
+    interrupts:
+      items:
+        - description: threshold 0
+        - description: threshold 1
+        - description: channel 0
+        - description: channel 1
+        - description: channel 2
+        - description: channel 3
+        - description: channel 4
+        - description: channel 5
+        - description: button 0
+        - description: button 1
+        - description: touchscreen
+        - description: channel 6
+        - description: channel 7
+
+additionalProperties: false
+
+examples:
+  - |
+    lradc@80050000 {
+        compatible = "fsl,imx23-lradc";
+        reg = <0x80050000 0x2000>;
+        interrupts = <36>, <37>, <38>, <39>, <40>,
+                     <41>, <42>, <43>, <44>;
+        clocks = <&clks 26>;
+        #io-channel-cells = <1>;
+        fsl,lradc-touchscreen-wires = <4>;
+        fsl,ave-ctrl = <4>;
+        fsl,ave-delay = <2>;
+        fsl,settling = <10>;
+    };
-- 
2.43.0


