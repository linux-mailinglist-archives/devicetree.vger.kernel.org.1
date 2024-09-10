Return-Path: <devicetree+bounces-101835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F33F9744DD
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 23:31:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 787841C248DB
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 21:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B33A1ABEB0;
	Tue, 10 Sep 2024 21:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l/keVC9N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FFAA1AAE34
	for <devicetree@vger.kernel.org>; Tue, 10 Sep 2024 21:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726003864; cv=none; b=V0JWr5WdEGCil8L28SPKfzHbmiC0PLUnS5w18wuijRXL3MEKF3hWc0UoQxSWcnZtrLQqmP8Wq8xZruua9v7ryatqUhwrqKLtsfjkEzBMDYqmAHLAiVWXYs4Geqml3zz9DyLR4bi66ldccZ/6KCJc4lM1YuEgVrVVjij3+QXHBcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726003864; c=relaxed/simple;
	bh=wdnuH4vl4cZHwh4pwvna6qsLrDbCe7OVCKj0YvGDEzQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=WErR5coVr44DN6GH4EPVlWfE1Eely4NDyxonzRzYo/iABfAWaIKKZ/lSQbGFqMlcCRHf4KCURclj0B/T9fyoWR0Aj8VCKtesXJReD0P0teYgeKFBvKt0LXvj4B+2dSsnBOUD0p3wngnCVaXZHzrnUBp8Mq8uS2ZHRHZZmEh2vd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l/keVC9N; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2068bee21d8so60014295ad.2
        for <devicetree@vger.kernel.org>; Tue, 10 Sep 2024 14:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726003862; x=1726608662; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9G4F6X2aiwpPwmm/B9YE4v6GOtXle0+D00EiLU+NyXE=;
        b=l/keVC9N0FjXJXNdOsajPz0EQtVSOrXsgREdo96y290LsFdBAuKGogVX3RETYenJTa
         OpC60KIgBtFBH1KJ8UxfsxCz4hfFoAFHFA14csckPtFkqsNZHqKgeSRlJzwZ3EX0OUc2
         wSZ9vMm0tDIK1uxBSSLfqexCA5xCYWHvpHRNy6cHIso8Nlx7OI3uZwza1gIJx0vUUJRp
         GIpG+8w1LuTXIe53pNXNByVEYorkG/A6MCIIMnXdi7VEl0IcEDvN83fjL+UId+jxgHoZ
         RzMQ84PnlqwfRsxp5lOCaGniobGHDndHk2yy/pAPUvSsXS+eyIwcbzeRs4W9khtv4zvb
         Kjfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726003862; x=1726608662;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9G4F6X2aiwpPwmm/B9YE4v6GOtXle0+D00EiLU+NyXE=;
        b=B7rWzOd3gG5vsJWfauO3eoCAVFzFEAYqIvbCnZx4ZvnpN32exhJk2OtIqA9Nk+wD23
         w6oYEL3WDXOIAbqDKIKGZHSUugv8XP/3/HgYCxdJ/cmW2afXAlyCIBVn20v3vK/WP+lu
         1fA19r/J5T7kJSkeAE41Cyd+g8FpptVNLtXV+ThAi1pp/6Pud613opTsejPDKpZUNUbF
         D5fEO7B83/CKZtMnuY1J1+MZDMgnXvzyOx6Wd5eL2U8dalzfhIH8GcZXKJq6Xxksdp9e
         jyjSOVM7LNbNx4FKod7JPPCWups2mneCijsNbwBZP78Ez+E8TYy0QbSqsXYMIgALSCzB
         6DeQ==
X-Forwarded-Encrypted: i=1; AJvYcCUMCebVwXPxwvR2/xQm8uJvHjJ5pgzZaDvOJHLUuBT7r+P6MBGHfakw7IYQy8eN9bJ1N+RMLIej73XJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1TyvPWqJq5gQJD3eV6EdnDzem2bnOFbv6ZUYf06tF86qmEcyM
	Meef2xB0SNsf2iPHNUKt3IE4AMtE7LeI8ZDBxW3bcpksd51zBjFg
X-Google-Smtp-Source: AGHT+IGVHN2ho95pCnmO28Z1Y3OpQAjh2xWMep1DFSzsfJkvyto2lIh9hDZpSrl6ASWeqiYAZ4AW8w==
X-Received: by 2002:a17:903:2c7:b0:207:1913:8bae with SMTP id d9443c01a7336-2074c5d3e4bmr20791335ad.14.1726003862013;
        Tue, 10 Sep 2024 14:31:02 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:d6bd:e32d:e798:11bd])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20710e10ec1sm52423805ad.1.2024.09.10.14.30.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2024 14:31:01 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: robh@kernel.org
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	otavio@ossystems.com.br,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] dt-bindings: display: elgin,jg10309-01: Add own binding
Date: Tue, 10 Sep 2024 18:30:56 -0300
Message-Id: <20240910213056.963998-1-festevam@gmail.com>
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
---
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


