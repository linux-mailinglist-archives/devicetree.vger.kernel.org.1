Return-Path: <devicetree+bounces-106611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A29B598AF2D
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 23:32:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 02071B21B1E
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 21:32:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74BD81465B8;
	Mon, 30 Sep 2024 21:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BGvnn0M1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE46FEDE
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 21:32:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727731973; cv=none; b=uZOtVOMNLZ81ECmSn3cW2YEixkOhLnJZKleZbb82hVUQzpIrXnI8gYE8ddqyCkr31e3OsKkdmGfC45vpnXG2X/jTYx/5bS4JN042e7KKKQA/caucJ5aXrIZNmptY7dIa8CpeF9vxg1pyu2lJVkRG4YABTDdVnClUf1rPgXm0xlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727731973; c=relaxed/simple;
	bh=XUzzALtwzaXW7KZYDQsfyojakKN1WPLWr2bzzFMH35E=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Rk/lNtRjSUwEDhqJAXeH4CTpC2WzY/8LENWzGcr9thuXqpffrs/xGvDtaDk4/3RZnuUo+DaeidI0hpBxEFliXoKfK3VpbLecOWv88IRitCDuDjz1d+wO9B/cy43wRKVK7DPRmgCVotFpKscmKWKt43uYqtzvzOzVsErjio8BbfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BGvnn0M1; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-718d704704aso4046402b3a.3
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 14:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727731971; x=1728336771; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lW8IKfui1351QSqXDpJIKc7ZJf3pGixAkRtk9mA/ujc=;
        b=BGvnn0M1KvRRcQqUFXfmLss00red7l0YIqG0CNiBkao3CDfgGPROzLxJUqRClAjCJJ
         6H6Gq4reFkPbi/R7UH+g2CFI09d2uxNbu+HcoEY/goxOlQlGCddWoBDRAROTOmucXFgg
         ChSWKweoUKETHP1Mb/0R0ooS+sXOMTFYYXgXYPsMfo1E9axjOTxkH8qG6z/Wf7wdC4LL
         BXdCacfaFDhSU9kagTDs5H/ccCVQMLto9gp2ez5qmnLGozkfxkorhoj/Cf4F6+ddZ4Md
         5dMa0JWJrq3s/Dyi3qPkTjiWGIO7KC63oEgMGRE1jLPt5HKWmPqOW8BErYm8t2M6mFNB
         g5Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727731971; x=1728336771;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lW8IKfui1351QSqXDpJIKc7ZJf3pGixAkRtk9mA/ujc=;
        b=ar365//kzDUC3Z6FgXMg/4JNVNvhqT8sNiS9dp2RAi8+RmmN9Acwlgg201nHuVXAb4
         rhPbdSLNx4lescsv67XQ4axU/h/lscINbwakBAaL49hnGm2/mZ1UlC6XBxm/Gxnppc9w
         6qQuFaKKMaEGo4L6tjL2rYLNsnzerHgwtEbmjpzjB2EP9DA/Y1zDD9G8y+tI6PhK7BjW
         NoFbpmF8Oq6fpKiAeDiENyprqvjzs5x0hlVXkeWnD1HawdEiX6W0z8NG/Rg5H+ksaXXq
         ic/HGkPnvhBjk9YugjNZQu0mfodbA7KWB3nnEnhtj0KIl3ftbj0gMNPmdsDCdsCvA4cM
         1lcA==
X-Forwarded-Encrypted: i=1; AJvYcCWVB7Wq8/s3SXYfiEXHgPS9fKNi0qxb/9Jc2F4L66J4nTURzFRR2SF6PAbWetuWbnX95lS6WjQ7CWw2@vger.kernel.org
X-Gm-Message-State: AOJu0YwkxghhKmjpaeTKIEhZsPTFiNPWzwrVYtoxs+Lm84dNypGyNEW+
	JH1R5RMI3H4dy9SUwWejHRAPMSSDUmYmzQxWnaZhx76vBs8pTn+zGLVjIw==
X-Google-Smtp-Source: AGHT+IHgIHCnhQgB/m5AMmosp8Gw3AAWCZXDbv/wDUSxpu2MVp63HYZkZz7R/9F36yz9LQ1OquiJqQ==
X-Received: by 2002:a05:6a00:4b4f:b0:714:2198:26a1 with SMTP id d2e1a72fcca58-71b26079154mr20534971b3a.27.1727731971107;
        Mon, 30 Sep 2024 14:32:51 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:62c5:8dcf:4ed5:ed61])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b2649b0fdsm6704713b3a.40.2024.09.30.14.32.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 14:32:50 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: broonie@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	otavio@ossystems.com.br,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH RESEND v2] dt-bindings: display: elgin,jg10309-01: Add own binding
Date: Mon, 30 Sep 2024 18:32:38 -0300
Message-Id: <20240930213238.977833-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Currently, the compatible 'elgin,jg10309-01' is documented inside
trivial-devices.yaml, but it does not fit well there as it requires
extra properties such as spi-max-frequency, spi-cpha, and spi-cpol.

This causes the following dt-schema warnings:

make CHECK_DTBS=y rockchip/rv1108-elgin-r1.dtb -j12

  DTC [C] arch/arm/boot/dts/rockchip/rv1108-elgin-r1.dtb
rv1108-elgin-r1.dtb:display@0: 'spi-cpha', 'spi-cpol' do not match any of the regexes:
...

Fix this problem by introducing a specific binding for the Elgin
JG10309-01 SPI-controlled display.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
---
Changes since last version:
- Resending with Krzysztof's Reviewed-by.
Changes since v1:
- None. Sent it to Mark as per Rob's suggestion.

 .../bindings/display/elgin,jg10309-01.yaml    | 54 +++++++++++++++++++
 .../devicetree/bindings/trivial-devices.yaml  |  2 -
 2 files changed, 54 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/elgin,jg10309-01.yaml

diff --git a/Documentation/devicetree/bindings/display/elgin,jg10309-01.yaml b/Documentation/devicetree/bindings/display/elgin,jg10309-01.yaml
new file mode 100644
index 000000000000..faca0cb3f154
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/elgin,jg10309-01.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/elgin,jg10309-01.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Elgin JG10309-01 SPI-controlled display
+
+maintainers:
+  - Fabio Estevam <festevam@gmail.com>
+
+description: |
+  The Elgin JG10309-01 SPI-controlled display is used on the RV1108-Elgin-r1
+  board and is a custom display.
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+properties:
+  compatible:
+    const: elgin,jg10309-01
+
+  reg:
+    maxItems: 1
+
+  spi-max-frequency:
+    maximum: 24000000
+
+  spi-cpha: true
+
+  spi-cpol: true
+
+required:
+  - compatible
+  - reg
+  - spi-cpha
+  - spi-cpol
+
+additionalProperties: false
+
+examples:
+  - |
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        display@0 {
+            compatible = "elgin,jg10309-01";
+            reg = <0>;
+            spi-max-frequency = <24000000>;
+            spi-cpha;
+            spi-cpol;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 75a5fad08c44..2b675e97be3d 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -106,8 +106,6 @@ properties:
           - domintech,dmard09
             # DMARD10: 3-axis Accelerometer
           - domintech,dmard10
-            # Elgin SPI-controlled LCD
-          - elgin,jg10309-01
             # MMA7660FC: 3-Axis Orientation/Motion Detection Sensor
           - fsl,mma7660
             # MMA8450Q: Xtrinsic Low-power, 3-axis Xtrinsic Accelerometer
-- 
2.34.1


