Return-Path: <devicetree+bounces-181190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 043ABAC68E6
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 14:13:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4C4824A7FCF
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 12:13:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBB1C28468B;
	Wed, 28 May 2025 12:13:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="GP/kvzsO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC607283FCD
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 12:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748434396; cv=none; b=YRtTxZ/KCF/kEyMseYWd61TywWvrW9EGx5Qy4CNevGBgS00AdsXerSHINYI7YCI18Krb3AS/uWB5hzb1+1geFPSaApqE7+m3Mn1YvTdxdHXgPP9T5HTB39lIgqlhRiECvXruz4is96s1BXZz+9QWcSaMHS9KF88KIwAgzroAqtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748434396; c=relaxed/simple;
	bh=he1Gp78HNEoR5dXor3HYkfWA+6sfD6S8tC2nJSPOYPE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eYcyJtvW7UeqaMWzleeBLDo9b6emERwvcTabLPQPJa8StMd0acHYX9YMRV9y3bSMt5SHrkLPcU7BUf9qV2KgCKFbxh5hHKjy8wQUEVzhaAYgAMVQjygGHFJ5MtDTCJcten5UMQiQKEzrFx7tz7QnhLvCCOw6T0NApNO6OIdspSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=GP/kvzsO; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-acbb85ce788so886581066b.3
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 05:13:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1748434392; x=1749039192; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LbcaZGbt/aOu/lBCcUk69RNM6cMf8NN5vQOyyRIAIOw=;
        b=GP/kvzsOWsWrSkatpeaochMlVx0W79eb40Dzcjd7GHi0aDEwS3Df6y3rnD9WBZEl6f
         uj3bN3eDWOVLzptqClRcoReo4baK2LLsLcDwuWHTRKzQixedonnOiKal9lO1+hHuAnbN
         6e40hVs7NV+NyjtqaKNo/N0LenSrIrO4j2wLs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748434392; x=1749039192;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LbcaZGbt/aOu/lBCcUk69RNM6cMf8NN5vQOyyRIAIOw=;
        b=m56y6cXBihgswAcSZw9OfpipoV48iQ04EpF3IdVnB/eUwcJc4067SPb+lbuQiQGkmh
         xFB33wMSAY7VpSveDDtOwHgsN4XPLeFQ8qqx3fJsuqxg/JQ0RzRGP05bJK0J9a9b8EgO
         A5oDmqlC3nGTgmsKoQT31bpOpAzW1+MHHbbxwsLOINlPlbrWlTesnQIgw2P4HdOGt05t
         ksD9tMKJr4WXQP6FfZEAyrkFbd8s3np+ddtiZdIzqSsZCY9h0BS0yg/FOrM2pWxqcv7Q
         5ZuSQBeisW0BCF6vyQ5KEH9Bsad7JEcKgiOmwnANswHBYrHifUWPmNXKa9a1lyCxZyo1
         GMkg==
X-Forwarded-Encrypted: i=1; AJvYcCX3HMbwW6nFcmlpnKcL/e9lLx0EkX9MDzaIplyw/a+T669PeV64QzWr7I9qTZmozMaCKUAfGEW9WTva@vger.kernel.org
X-Gm-Message-State: AOJu0YzuaZ4peQpBjpNzi95BB6mjQ+vSnBkLHJ7QHPPbocmDp/qfKwrg
	SEQ/R40xWUB+Q5wVp8D9oh8WwR0EfX24/Bo+bjeNTn3j1swBciB6Pw7geK8xAZD7lvs=
X-Gm-Gg: ASbGncsZtNwWYgy+EGY8/nlx/GgIP3MI0zR7ZXZt8/0xDEjigGI5Cifura7u3AH2fh0
	Igb1yqHNzwf/ews6FUBSJAkCI+Gh9iwDKgeKgD7X/M9P/mz6gdJ4ZdEOLNO+RL3QTCX4iPpIe4q
	4LTRa2HffUQPrgYufGDXC6c4NAx8kR9LDef0bniAgoLHMYsT0Gl7cen36qGcSTSCEpl0j4UWb+w
	yMswaWNLaQXZmgQGmnaw8XOKYqnOSZw2e52r+gZMxf02aBuKTPn6G56D2zcsSRcsmgmlpJu+7fw
	AD4tUn6I+VClbJFg5zK15o28q7ou7ooY7LT140dV6ZNhGSCR/xX0EEKSo5imf83ipFD8oOVpG5C
	ZiF+NMH5XmHxF
X-Google-Smtp-Source: AGHT+IH9dXEwPMbdH9wy3rWwV7hw5jvz1DJDb7y8RMmtXntuIkZHQwYgbcjzUf91UXx0NsuCLx/ImQ==
X-Received: by 2002:a17:907:2d0e:b0:ad8:89c7:2735 with SMTP id a640c23a62f3a-ad889c72964mr703027166b.58.1748434391971;
        Wed, 28 May 2025 05:13:11 -0700 (PDT)
Received: from localhost.localdomain ([2001:b07:6474:ebbf:5631:61bf:398a:c492])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad8a1b5b8afsm98523266b.170.2025.05.28.05.13.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 05:13:11 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: michael@amarulasolutions.com,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
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
Subject: [PATCH v2 1/4] dt-bindings: mfd: convert mxs-lradc bindings to json-schema
Date: Wed, 28 May 2025 14:11:38 +0200
Message-ID: <20250528121306.1464830-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250528121306.1464830-1-dario.binacchi@amarulasolutions.com>
References: <20250528121306.1464830-1-dario.binacchi@amarulasolutions.com>
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
---

(no changes since v1)

 .../devicetree/bindings/mfd/mxs-lradc.txt     |  45 --------
 .../devicetree/bindings/mfd/mxs-lradc.yaml    | 106 ++++++++++++++++++
 2 files changed, 106 insertions(+), 45 deletions(-)
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
index 000000000000..90391b02c715
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/mxs-lradc.yaml
@@ -0,0 +1,106 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/mxs-lradc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale MXS Low-Resoulution ADC (LRADC)
+
+maintainers:
+  - Dario Binacchi <dario.binacchi@amarulasolutions.com>
+
+description: |
+  The LRADC provides 16 physical channels of 12-bit resolution
+  for analog-to-digital conversion and includes an integrated
+  4-wire/5-wire touchscreen controller.
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
+    description: |
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
+    description: |
+      Delay between consecutive samples.
+      It is used if 'fsl,ave-ctrl' > 1, counts at 2 kHz and its
+      default value (i. e. 2) is 1 ms.
+
+  fsl,settling:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1
+    maximum: 2047
+    default: 10
+    description: |
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
+    fsl,lradc-touchscreen-wires:
+      const: 4
+else:
+  properties:
+    fsl,lradc-touchscreen-wires:
+      enum: [4, 5]
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


