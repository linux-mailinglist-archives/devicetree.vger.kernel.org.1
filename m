Return-Path: <devicetree+bounces-6233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B17E37BA4A0
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 18:09:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 6119D281C30
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 16:09:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCDE0341BF;
	Thu,  5 Oct 2023 16:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gSFb60KO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD79339BE
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 16:09:43 +0000 (UTC)
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72CC0420C;
	Thu,  5 Oct 2023 09:09:39 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-5031ccf004cso1468033e87.2;
        Thu, 05 Oct 2023 09:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696522177; x=1697126977; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WsVvYxQD6LxKCBiD4tkjSZFjifpvp5fSaszqSjpyOaw=;
        b=gSFb60KO03k0H73PSwUDXr/zWkanqxGTL1hRgrl1WYaPKX1y+6W/YnSVsJ+0nSEBrb
         mIlEOWtqUxcB+oNxlPW2YFdeJroThkW71dfSkGTT04CH5OgBBuPVnvSniOO7uZAtJDX5
         gRutJ/bpWS7+g5dTmaMsO6INW5qV8EJpWKYihsDySTbO8lJYLMdB/ojWzXoqQPBxPJ3H
         YxQ4SxDCgkU2HRGY/ZNYHat9eiLMNlIBo25zKFGTi/ESONpSTjOTCTpmwwtJoWa9vsn/
         JmqeDUBiW+Lbyi/zXob3KOjGcrQUy6Q1rmgvG6569/olziCf3eq3QykkHjuoGpOGtG/7
         fq/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696522177; x=1697126977;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WsVvYxQD6LxKCBiD4tkjSZFjifpvp5fSaszqSjpyOaw=;
        b=dbEjXto16wR/Mx3Xi6i6Oh/h0ZU8Xj0H2k+qB5EQoEvtY8Fg23Ri8pHlkLLEB9var8
         FUhjOvxpXZ7Z7PMOtJkOuXl4SiM61WQD4/KBHPIFjMXoGxYYiee1RoKtx7V9LjJtSPN/
         Q40X9fUfUUytAMG4LyPw1pFs6F0/YcKsKq+gU4bAHCrHv7RgjL2B2nbs61EzsfPjiiEN
         MIhutHWCJtKrciB+1zJrTbdQLoxbAXj836A7Cjy9jescsBLcx14fonDGWwaGMtvZ/zze
         CsO9WIdBZ4Uia681rhO5PtE6hLFTDxa92SqHLapnp5qgnT6m1NaV8FDbI0CC08j1p0qW
         p+gA==
X-Gm-Message-State: AOJu0YxMcM+w/gH48sf3eM0DCxeApzNFtXtQ+oYqOBV04YHZaigNehNv
	fJHNN9OX6Lt0VjpC8EE66bM=
X-Google-Smtp-Source: AGHT+IGH5Uf++CeCbQd29Pqeu6bFvFBUAriES8gAjB+kYlCvPpRJ6EwXsIvxpznl1fHNrlZkgDIkMA==
X-Received: by 2002:a19:7b03:0:b0:500:aed0:cb1b with SMTP id w3-20020a197b03000000b00500aed0cb1bmr4799482lfc.24.1696522177346;
        Thu, 05 Oct 2023 09:09:37 -0700 (PDT)
Received: from localhost.localdomain ([46.31.31.132])
        by smtp.googlemail.com with ESMTPSA id r16-20020ac24d10000000b00502ae64f46asm349088lfi.126.2023.10.05.09.09.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 09:09:36 -0700 (PDT)
From: Ivan Mikhaylov <fr0st61te@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Ivan Mikhaylov <fr0st61te@gmail.com>
Subject: [PATCH v3 1/2] dt-bindings: adc: provide max34408/9 device tree binding document
Date: Thu,  5 Oct 2023 19:09:29 +0300
Message-ID: <20231005160930.14665-2-fr0st61te@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231005160930.14665-1-fr0st61te@gmail.com>
References: <20231005160930.14665-1-fr0st61te@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The hardware binding for i2c current monitoring device with overcurrent
control.

Signed-off-by: Ivan Mikhaylov <fr0st61te@gmail.com>
---
 .../bindings/iio/adc/maxim,max34408.yaml      | 137 ++++++++++++++++++
 1 file changed, 137 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml

diff --git a/Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml b/Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
new file mode 100644
index 000000000000..4262bedb4bfa
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
@@ -0,0 +1,137 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/adc/maxim,max34408.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Two- and four-channel current monitors with overcurrent control
+
+maintainers:
+  - Ivan Mikhaylov <fr0st61te@gmail.com>
+
+description: |
+  The MAX34408/MAX34409 are two- and four-channel current monitors that are
+  configured and monitored with a standard I2C/SMBus serial interface. Each
+  unidirectional current sensor offers precision high-side operation with a
+  low full-scale sense voltage. The devices automatically sequence through
+  two or four channels and collect the current-sense samples and average them
+  to reduce the effect of impulse noise. The raw ADC samples are compared to
+  user-programmable digital thresholds to indicate overcurrent conditions.
+  Overcurrent conditions trigger a hardware output to provide an immediate
+  indication to shut down any necessary external circuitry.
+
+  Specifications about the devices can be found at:
+  https://www.analog.com/media/en/technical-documentation/data-sheets/MAX34408-MAX34409.pdf
+
+properties:
+  compatible:
+    enum:
+      - maxim,max34408
+      - maxim,max34409
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  isshutdown-gpios:
+    description:
+      Shutdown Output. Open-drain output. This output transitions to high impedance
+      when any of the digital comparator thresholds are exceeded as long as the ENA
+      pin is high.
+    maxItems: 1
+
+  shtdn-enable-gpios:
+    description:
+      SHTDN Enable Input. CMOS digital input. Connect to GND to clear the latch and
+      unconditionally deassert (force low) the SHTDN output and reset the shutdown
+      delay. Connect to VDD to enable normal latch operation of the SHTDN output.
+    maxItems: 1
+
+  vdd-supply: true
+
+required:
+  - compatible
+  - reg
+
+patternProperties:
+  "^channel@[0-3]$":
+    $ref: adc.yaml
+    type: object
+    description:
+      Represents the internal channels of the ADC.
+
+    properties:
+      reg:
+        items:
+          minimum: 0
+          maximum: 3
+
+      maxim,rsense-val-micro-ohms:
+        description:
+          Adjust the Rsense value to monitor higher or lower current levels for
+          input.
+        enum: [250, 500, 1000, 5000, 10000, 50000, 100000, 200000, 500000]
+        default: 1000
+
+    required:
+      - reg
+      - maxim,rsense-val-micro-ohms
+
+    unevaluatedProperties: false
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: maxim,max34408
+    then:
+      patternProperties:
+        "^channel@[2-3]$": false
+        "^channel@[0-1]$":
+          properties:
+            reg:
+              minimum: 0
+              maximum: 1
+    else:
+      patternProperties:
+        "^channel@[0-3]$":
+          properties:
+            reg:
+              minimum: 0
+              maximum: 3
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        adc@1e {
+              compatible = "maxim,max34409";
+              reg = <0x1e>;
+
+              #address-cells = <1>;
+              #size-cells = <0>;
+              channel@0 {
+                  reg = <0x0>;
+                  maxim,rsense-val-micro-ohms = <5000>;
+              };
+
+              channel@1 {
+                  reg = <0x1>;
+                  maxim,rsense-val-micro-ohms = <10000>;
+             };
+        };
+    };
-- 
2.42.0


