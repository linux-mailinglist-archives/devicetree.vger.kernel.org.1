Return-Path: <devicetree+bounces-12585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9547DA5CA
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 10:23:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D19E41C209BF
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 08:23:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 363918F49;
	Sat, 28 Oct 2023 08:23:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l2kNP7Nd"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B45E34404
	for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 08:23:01 +0000 (UTC)
Received: from mail-oo1-xc42.google.com (mail-oo1-xc42.google.com [IPv6:2607:f8b0:4864:20::c42])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09F71ED;
	Sat, 28 Oct 2023 01:23:00 -0700 (PDT)
Received: by mail-oo1-xc42.google.com with SMTP id 006d021491bc7-581e92f615fso1640754eaf.2;
        Sat, 28 Oct 2023 01:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698481379; x=1699086179; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JP6wiRrtwTK6swQjIEVgXni0A5O1wIdXi7I8tLKQ7oM=;
        b=l2kNP7Ndgg0VPdFTYqFgzW9f09qkcY7nKnxIz12kA+XJrKrBmGJGLVK41uw04v5KWP
         Z8z+aComppfxteo2PwQ6dN989axVb0WEqK6z4rhr2qSo5GiEbKfCSEOoU10fCepaUl/q
         hl7tLMeJELxX+CTWeIsHln8zZhSoTb0NN3BhppZfomOUHpMKQc20jMqS8KAclEPsPehs
         /p2/Aeq7ngc9eh/jp3S8eBX9kkDLoVQL+OaIKw0eHfTKg1siod9pe+poccoR/ZXJKFiO
         m2XYVDs9P+sbnACH0b1hI447Qsfu3jyWR2RqIpqgtHfb/8/c3N3ZWV3/Rs+/7gDB8lmu
         +xnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698481379; x=1699086179;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JP6wiRrtwTK6swQjIEVgXni0A5O1wIdXi7I8tLKQ7oM=;
        b=hEKQRUcPr+WXCoPUmBj6x5/W4y3Bo7OzG4gwYTdThnDAyLzxzEMnJKl9NFZkGXZXp+
         4CADzGjZd8sWTL3yUTj8VIR1gK6d3HExpZ5qTFMwqi482NVXRWW5zjYAnZIFUbGYG9DF
         rvCFfmlsh7KD8oEFUznG3isz+8fJ9xk6pBgb4wK7VNLvFEfgJmTA5DQrjhRitDYZDRnf
         WwBAi1cRL2PikXaAg1pp7pqDN8YTrSkUwdIULyrBWc3mhAaCI8Sp41KFzkiSG5/AN3Bu
         o3Vw0HH6Rxqi/rIxKo7qVHfR/tS51CuJJ6c1OnV2SQ41p7XQod8Ls5iV12N/BnlzlLJf
         t9hA==
X-Gm-Message-State: AOJu0YwwdBul+g/I+Vcama3HStnknkSfbjymAvHg0fUEp5AgbzCl1v+o
	yF43i0dlkZjexRN/ecIHq2s=
X-Google-Smtp-Source: AGHT+IGyNeKH4HniKy+pLheYEL/j0CxFUgrN0ICWz4Gq7rRkbWuKPpxy2gW27njI6Bz7VKt9d3SBPg==
X-Received: by 2002:a05:6358:cc25:b0:168:d382:1446 with SMTP id gx37-20020a056358cc2500b00168d3821446mr5060125rwb.11.1698481378894;
        Sat, 28 Oct 2023 01:22:58 -0700 (PDT)
Received: from dawn-Aspire-A715-74G.. ([183.198.111.239])
        by smtp.gmail.com with ESMTPSA id gb9-20020a17090b060900b00267b38f5e13sm2318789pjb.2.2023.10.28.01.22.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Oct 2023 01:22:58 -0700 (PDT)
From: Li peiyu <579lpy@gmail.com>
To: jdelvare@suse.com
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Li peiyu <579lpy@gmail.com>
Subject: [PATCH v3] dt-bindings: hwmon: lm87: convert to YAML
Date: Sat, 28 Oct 2023 16:20:56 +0800
Message-Id: <20231028082056.43276-1-579lpy@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <025c3d36-587e-480c-b913-2a3916674c54@kernel.org>
References: <025c3d36-587e-480c-b913-2a3916674c54@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the lm87 hwmon sensor bindings to DT schema

Signed-off-by: Li peiyu <579lpy@gmail.com>
---
Changes for v3:
- add type definition of has-temp3, has-in6, has-in7
- Change the description of has-temp3
Changes for v2:
- replace node name lm87 with sensor
- replace character '\t' with spaces

 .../devicetree/bindings/hwmon/lm87.txt        | 30 ---------
 .../devicetree/bindings/hwmon/lm87.yaml       | 62 +++++++++++++++++++
 2 files changed, 62 insertions(+), 30 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/hwmon/lm87.txt
 create mode 100644 Documentation/devicetree/bindings/hwmon/lm87.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/lm87.txt b/Documentation/devicetree/bindings/hwmon/lm87.txt
deleted file mode 100644
index 758ff398b67b..000000000000
--- a/Documentation/devicetree/bindings/hwmon/lm87.txt
+++ /dev/null
@@ -1,30 +0,0 @@
-*LM87 hwmon sensor.
-
-Required properties:
-- compatible: Should be
-	"ti,lm87"
-
-- reg: I2C address
-
-optional properties:
-- has-temp3: This configures pins 18 and 19 to be used as a second
-             remote temperature sensing channel. By default the pins
-             are configured as voltage input pins in0 and in5.
-
-- has-in6: When set, pin 5 is configured to be used as voltage input
-           in6. Otherwise the pin is set as FAN1 input.
-
-- has-in7: When set, pin 6 is configured to be used as voltage input
-           in7. Otherwise the pin is set as FAN2 input.
-
-- vcc-supply: a Phandle for the regulator supplying power, can be
-              configured to measure 5.0V power supply. Default is 3.3V.
-
-Example:
-
-lm87@2e {
-	compatible = "ti,lm87";
-	reg = <0x2e>;
-	has-temp3;
-	vcc-supply = <&reg_5v0>;
-};
diff --git a/Documentation/devicetree/bindings/hwmon/lm87.yaml b/Documentation/devicetree/bindings/hwmon/lm87.yaml
new file mode 100644
index 000000000000..587191c663d3
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/lm87.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/lm87.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: LM87 hwmon sensor
+
+maintainers:
+  - Jean Delvare <jdelvare@suse.com>
+  - Guenter Roeck <linux@roeck-us.net>
+
+properties:
+  compatible:
+    const: ti,lm87
+
+  reg:
+    maxItems: 1
+
+  has-temp3:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description: |
+      When set, pins 18 and 19 are configured to be used as a second 
+      remote temperature sensing channel. Otherwise the pins are
+      configured as voltage input pins in0 and in5.
+
+  has-in6:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description: |
+      When set, pin 5 is configured to be used as voltage input in6.
+      Otherwise the pin is set as FAN1 input.
+
+  has-in7:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description: |
+      When set, pin 6 is configured to be used as voltage input in7.
+      Otherwise the pin is set as FAN2 input.
+
+  vcc-supply:
+    description: |
+      A Phandle for the regulator supplying power, can be configured to
+      measure 5.0V power supply. Default is 3.3V.
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      sensor@2e {
+        compatible = "ti,lm87";
+        reg = <0x2e>;
+        has-temp3;
+        vcc-supply = <&reg_5v0>;
+      };
+    };
-- 
2.34.1


