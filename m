Return-Path: <devicetree+bounces-69851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A18CC8D1BA2
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 14:51:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2DD831F227C1
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 12:51:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACEBE16D335;
	Tue, 28 May 2024 12:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="Jz125kbw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8AFC16C458
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 12:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716900695; cv=none; b=qeqZWfnIxMUPPUUzuTY0UW9ADxl4vv0IJNnBkMiw7uii4e6QJyvDA8SzeCOiF8UPh5PoB9kTJXfo+lIFt0xttAr0SGxJ3Az5TbhP1veYGcmTmhloVUwil0TG83Nmhd+2OyOXWK/WvHfIxiQJiM+zvDtT+lzHlTXNqmn61QIU5H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716900695; c=relaxed/simple;
	bh=X1owGtWYRo+/l0DSm9qoof73k9VXXMI2Bemu9W1jHHg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hGOGec1iqbjKoy6/owqHmCawAKNfHkASKL/LUcsTGuFDZ59xk9Be4zyFqWwylAEODeFHEV7HBVzTsEliYuPISt1e923d7niv7IP1LCr0WaZzY7tUpz4MAvtTFys6inokg+Lxi/BOw95wUs5fKa7KFtJjO5gEBOQGRypb9v6BAy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=Jz125kbw; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3564a0bea19so743412f8f.2
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 05:51:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1716900692; x=1717505492; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cs6twXGUnqAVWEMHCctBxuWI9JJWQsFtcp2eRMeUzcU=;
        b=Jz125kbwQCiEM3WmY1z4kQj+jffBi324gUrk+bSSplnwz7pPJZtrr7OeMI7t7AUdRz
         LroNrzuREva4Ov1S17tCYDgeTwTfmJOaYp5EUAFwpcNLSFK2C33RWNsPXdM1qJHALAH4
         6Bswz9KyQd0vzNZK140lBdcze737av8aubFyKHmigyoZkf4/ApyQ6j5drDb8yrWn3zus
         i0TT0mZTgZAmYu28ZyTT7rtx/oIhzsH1bft2go1f4CAL7RigdbngU9ncyK5HsM4tLcN6
         132MyjYd1Kqk8dxfcGuOjAu9iSy5khVjcuilTwywoxqNVALFTkXHLBtPjO/ZGRk+y8wJ
         n7mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716900692; x=1717505492;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cs6twXGUnqAVWEMHCctBxuWI9JJWQsFtcp2eRMeUzcU=;
        b=hovKwfBg+M/RgiYflMg7N+/JX8mfAIEF0XQYptbKyIS9pVTf9uFOlaUuBIC2n3Yj1k
         2G1Wq2J0c+WdfzF1wlOzhoPtGcHtk7A0R8yxKQ1GwNUYCToCN+VLs4SXz/NfVsKuyIy3
         xbNN8KXR0AxVcv2xIJaFTRjhe2B21GyN5g0A9b8oKJmsFqwb+w1s0+Kvett2aUFSCAfe
         TH0EcSC+BaHHxehQ9LJXKrk4ZrH34KSCfN+835JNrEUKjPON8Yz6cXwi6RcMd9H/ki3x
         IXfmFwzJArmGgR2nJ5h2w24vVM40XQH9Wjnein2mtO4EwpxqYEfh+RlGsq32NKu+1pXz
         QJMg==
X-Forwarded-Encrypted: i=1; AJvYcCWIBqSTKZRpuJHTE9ZCwmiFg4YRMSGE6ZIJqqGCGJpzLa2VGX78BuZiMSXR8sbMWulv/Pq3zjg/hyhwCArdLIxPuy9SUzFxsgHthg==
X-Gm-Message-State: AOJu0YxKojtvTwAIF9+miJ72/muy2n2uh/IrMciHfZ0tkte5N4Uak4Pe
	xt6eUjIrqxdg7gB0Q/P/9hADRNm9L8QeAFzk7hhcJVu2fd32NurrJBgnAcjy4hU=
X-Google-Smtp-Source: AGHT+IHpozxPHqfiGrD0jGWLVOCg6j4KeSpafj5rvrpse51q0RDwAAq/3wQLYkTzuvkogcwGrwjPdA==
X-Received: by 2002:a5d:6342:0:b0:354:c329:90d1 with SMTP id ffacd0b85a97d-3552fdefa90mr10115575f8f.63.1716900691933;
        Tue, 28 May 2024 05:51:31 -0700 (PDT)
Received: from stroh80.lab.9e.network (ip-078-094-000-050.um19.pools.vodafone-ip.de. [78.94.0.50])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3557a1c92e7sm11626300f8f.66.2024.05.28.05.51.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 May 2024 05:51:31 -0700 (PDT)
From: Naresh Solanki <naresh.solanki@9elements.com>
To: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Naresh Solanki <naresh.solanki@9elements.com>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: hwmon: Add max6639
Date: Tue, 28 May 2024 18:21:21 +0530
Message-ID: <20240528125122.1129986-1-naresh.solanki@9elements.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add Devicetree binding documentation for Maxim MAX6639 temperature
monitor with PWM fan-speed controller.

Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
---
 .../bindings/hwmon/maxim,max6639.yaml         | 92 +++++++++++++++++++
 1 file changed, 92 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/maxim,max6639.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/maxim,max6639.yaml b/Documentation/devicetree/bindings/hwmon/maxim,max6639.yaml
new file mode 100644
index 000000000000..a2e37f7329b8
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/maxim,max6639.yaml
@@ -0,0 +1,92 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+
+$id: http://devicetree.org/schemas/hwmon/maxim,max6639.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim max6639
+
+maintainers:
+  - Naresh Solanki <naresh.solanki@9elements.com>
+
+description: |
+  The MAX6639 is a 2-channel temperature monitor with dual, automatic, PWM
+  fan-speed controller.  It monitors its own temperature and one external
+  diode-connected transistor or the temperatures of two external diode-connected
+  transistors, typically available in CPUs, FPGAs, or GPUs.
+
+  Datasheets:
+    https://datasheets.maximintegrated.com/en/ds/MAX6639-MAX6639F.pdf
+
+properties:
+  compatible:
+    enum:
+      - maxim,max6639
+
+  reg:
+    maxItems: 1
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+  '#pwm-cells':
+    const: 3
+
+required:
+  - compatible
+  - reg
+
+patternProperties:
+  "^fan@[0-1]$":
+    type: object
+    description: |
+      Represents the two fans and their specific configuration.
+
+    $ref: fan-common.yaml#
+
+    unevaluatedProperties: false
+
+    properties:
+      reg:
+        description: |
+          The fan number.
+
+    required:
+      - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        fan1: fan-controller@10 {
+            compatible = "maxim,max6639";
+            reg = <0x10>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+            #pwm-cells = <3>;
+
+            fan@0 {
+                reg = <0x0>;
+                pulses-per-revolution = <2>;
+                max-rpm = <4000>;
+                target-rpm = <1000>;
+                pwms = <&fan1 0 25000 0>;
+            };
+
+            fan@1 {
+                reg = <0x1>;
+                pulses-per-revolution = <2>;
+                max-rpm = <8000>;
+                pwms = <&fan1 1 25000 0>;
+            };
+        };
+    };
+...

base-commit: 5fbf8734fb36cf67339f599f0e51747a6aff690c
-- 
2.42.0


