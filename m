Return-Path: <devicetree+bounces-102139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A76149759D9
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 20:00:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2B75B1F23C2E
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 18:00:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A71291B9B57;
	Wed, 11 Sep 2024 18:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YD7ABZYy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279E21B9B36
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 18:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726077617; cv=none; b=uePXaYRDjMuAt+cqtY6arvtCARJbFzWQ68slvtTWomYc/Z1CHhUCxl0mx0X56xKe8ik44aUW651t6zItPjSgWcztrL8tbDpZx7t3Bcmrw3sY68WsGveCAyt6f9nqeP+H2NoMcFsLFIE08nrJ4bx2wUCMosnT0Go/eZ+oHrHbW9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726077617; c=relaxed/simple;
	bh=u59aTK6AMusYiuToR8Q3aVwIPtYvcw/WTkvTcLGceOE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=L81AxDnbQt3PJIuwGCLpTMjXa5Dy9Wf/FAWUbrjYkgbNKF0gaPnv12YYFwEQKikhN3syVk9cgZ0heR+07F+xxWmb19HrIfIaDFSYI3lmf13HEAGP3/0VILuYpJnVwcElfEwaSFrDsEX56cDtp2bbBTPPPRvFl2bIjvYh2c8sphQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YD7ABZYy; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2053525bd90so1760085ad.0
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 11:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726077615; x=1726682415; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=L11MwT7ZYQa5gHaEqtAXjBQAWdBr4x1891aZM/LplhM=;
        b=YD7ABZYySQg9/ZDJQT9bPZ8RjHGW5vNvf6+zzH2d2aPOvS7wbN658+P2pTkIfn4aR6
         2eAI4Hx71ANgjyPItJBBTZJEQ6cNcELJiFC2CunJYDGQ+RQEeA+epBwatumGalemi2CJ
         rdjL1J5rwGfxG70gVopx7T/ETocuy+83t4mgIG+Vyn7q1z0ThCGpJ0touRc6717ZvBn5
         XpKiK47tEkstkDszacW7GftAPCcRAAApg+eUSfN0UTDF+MjCTHhSba2jIRnGM3V6/c5I
         cK0C2jPnscZdLZHl/FT4USfuDfSU88zJtESdrNz545ygNVBmHeIIHdVqrxg01NpSPB7a
         Ixww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726077615; x=1726682415;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L11MwT7ZYQa5gHaEqtAXjBQAWdBr4x1891aZM/LplhM=;
        b=rwmEAMsUXRncLbMxxuJ5unWIpWAKf+l6KX/pnXiDp4IgWSTiMalZHzuBhDFLwlI9uh
         AZKDE14sPuEk/cyJ8HJd/zB49U2I/zwUF59WZ6+rlOHgG+mr2yVuLP/d9FCBqe4SQJM3
         d+h20B3rKlzUb7wHpSpyv4x1WIQA1dsWLz7cIBMq5L3OEcf1YRamq5X2VPAPtaAbAanZ
         lmidUGthH2gTU4s+iJIo5dFwZ8R9n109N2qtoaUhWZSxAIrCo4g2DlWBblJwPt24gcRY
         D+ouzTYQig5YQGPEa9zci4tGdEL67Xi0t3wNJFOEOYZQ+qplV/OvHWnfPY1il42RLtkE
         m28g==
X-Forwarded-Encrypted: i=1; AJvYcCWO4JyS/5SWVwNvWWZfSC+/So+7h8jWnMfLno4zeH+q2PIkfD4U0uo0ZKU3FvCWq9MjUfzhE159+ReA@vger.kernel.org
X-Gm-Message-State: AOJu0Yzn1+KmfLj+X8JYkbCZD4by04Bxn0mCd3WMR9GG+21N/rFwo8tm
	VOQYDDP9zD1OxZplE2o+C9M4v0Zrwk6wFxpY8pEGeXU3nVD202iQSdiWNw==
X-Google-Smtp-Source: AGHT+IGbQ3HQE2eG2fLH3fCgJfSyOuR1iICf0jr7wWcLKLkUD5VgHP86LaRhp1Lk0444dz0rHzEX7Q==
X-Received: by 2002:a17:90a:43e2:b0:2d3:de40:d767 with SMTP id 98e67ed59e1d1-2db9ffee038mr40425a91.24.1726077615209;
        Wed, 11 Sep 2024 11:00:15 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:3d06:bc1a:52fe:9519])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2dadbffd992sm10908999a91.14.2024.09.11.11.00.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 11:00:14 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: broonie@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	otavio@ossystems.com.br,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2] dt-bindings: display: elgin,jg10309-01: Add own binding
Date: Wed, 11 Sep 2024 15:00:04 -0300
Message-Id: <20240911180004.1080029-1-festevam@gmail.com>
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


