Return-Path: <devicetree+bounces-54902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2118931B2
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 15:28:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2402FB2133F
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 13:28:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11C62144D0D;
	Sun, 31 Mar 2024 13:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="a4svRyaG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7227C1448FF
	for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 13:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711891710; cv=none; b=LW1aWJaZeOwaml/XmDktq7mgMOafYyCt3gjSHFoS3qG11v5448Nlf7nfihbz/ejFM5swrqLuW1NM48o5/KoOATEPRZsHLGOyOkWEBPSQj245KrY7nCLeGZrBoxvlSThpsuypDDOIfY9UW4dN2YeG3CKXiOAJBu23lgwNid3KGQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711891710; c=relaxed/simple;
	bh=iVUbrnhkh7lCb9dc6PK79+UXJfu78dkuVC2Z89ZQfOg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=DO43ZPHRdFGgkIMR1XeaIEtZIQ9x/jufsPDdAWtR4X4Rwe/ZNqK174BJaxa0OAOCjThG9pnnjniAJR1TA96ycAnGZlUOJ3K7r2elsY6DTcopx2UZ4SLm6vVyYaE5oeQS/0MpamPpC98S8eM6VaFNelYY85QpOzXCF5VOyuIwcbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=a4svRyaG; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-2228c4c5ac3so2054103fac.0
        for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 06:28:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711891707; x=1712496507; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QHXObRow5eQZD5bl0iC6Ixk4r7YkM2d02GXT5vu0dko=;
        b=a4svRyaGTwuAN0GU7HH23hnfBIJafYBMAN1WW1WWLlDHDQ9BEFgd56g9TYGSr6pv0m
         cBJsf/MYy2nuxrLo3xMJmkCnIHKksxU18aWlilgQUQZXMq6rhgV3yg6iqxT+h9W54Mzw
         oxdaw5/DGQlHQ8FPS0Y3TXegX+ZwPuDCdElCqU1YcyWlmcHP5K9ktKjI9euQu7b3h81X
         e221EFOFDXXJPkS+15p4Thhr7/jrptyFnofiGahCVGBy9eT/8AvDzrs271uNUwstGqab
         28/fyaR9r6kp9Kev62skOXAQ50+2ODvacV2JbMjBMKuo5Ueqr0/zGF3+20BuDrzrME12
         v8EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711891707; x=1712496507;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QHXObRow5eQZD5bl0iC6Ixk4r7YkM2d02GXT5vu0dko=;
        b=B7xzLhejT1shk/cQwmgNfoHJvaBnT/aTGLeAXJgd5+e2GAS3hqroF/+UPimiS5I0hY
         v1gT/svM/HG1+mghFBgv/OUam2f6xqH05iFH0Y5VKs+gcwj3bYN1xmIDrMQendihyaN+
         Cu3MWewLsJb4e8esM3c75k0BzJAVarQ54o4+eJpFxzIPgkM09LnrOO/R7KIqAfg9t6vY
         qM72IjItkguExYXfpsnkZONkjxcFkQ1yDh/W0LIqTc5cSKIxatEkkOHdpMUIIoTrmC/n
         icj4tF8hFxfmjNZORIythXyBm2oJ+oPZyZXIxfE326WsBm3D/kpy5/HCyDZw7SJXKB0v
         QAOw==
X-Forwarded-Encrypted: i=1; AJvYcCX982sjP3mqh83tyBUOXpmT/uIUZ9e68YCqdNzveoua67BUGYneG/Ui6+WEOHyTe6KBPvUuPRt1LSJs9nR4zz6KofbKAtFR2ior1A==
X-Gm-Message-State: AOJu0YyqdWmiYbsGDSI8E4Lraw7W4cgIX7pNYU3UwdBYvBc0LPeW4Cda
	ZWvoxp7qetL8IBQ6pL9Q/kFad7hnl3lNEMlgAogud/fwOMHGZ727
X-Google-Smtp-Source: AGHT+IEu8ZbA7VLgg6z+8SIwlkgAi1EFOHOIOV8qf64875m6IGhMp74utZnfb+yGBY1Nv5lhjydrOw==
X-Received: by 2002:a05:6871:741f:b0:22a:16ad:372f with SMTP id nw31-20020a056871741f00b0022a16ad372fmr7414212oac.9.1711891707301;
        Sun, 31 Mar 2024 06:28:27 -0700 (PDT)
Received: from localhost.localdomain ([223.178.85.37])
        by smtp.googlemail.com with ESMTPSA id q19-20020a62e113000000b006e5a3db5875sm6297001pfh.13.2024.03.31.06.28.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Mar 2024 06:28:26 -0700 (PDT)
From: Kanak Shilledar <kanakshilledar@gmail.com>
To: 
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	daniel.baluta@nxp.com,
	Kanak Shilledar <kanakshilledar111@protonmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4] dt-bindings: serial: actions,owl-uart: convert to dtschema
Date: Sun, 31 Mar 2024 18:58:11 +0530
Message-Id: <20240331132811.12060-1-kanakshilledar@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Kanak Shilledar <kanakshilledar111@protonmail.com>

Convert the Actions Semi Owl UART to newer DT schema.
Created DT schema based on the .txt file which had
`compatible`, `reg` and `interrupts` as the
required properties. This binding is used by Actions S500, S700
and S900 SoC. S700 and S900 use the same UART compatible string.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Kanak Shilledar <kanakshilledar111@protonmail.com>
---
Changes in v4
- added `clocks` property to fix warning of 'clocks' was unexpected
while running `make dtbs_check`. `clocks` property was not defined
in the original .txt file. `clocks` property is removed from the
required section.
- added `clocks` property in example
- extended the devicetree with clocks node
---
 .../bindings/serial/actions,owl-uart.txt      | 16 -------
 .../bindings/serial/actions,owl-uart.yaml     | 48 +++++++++++++++++++
 2 files changed, 48 insertions(+), 16 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/serial/actions,owl-uart.txt
 create mode 100644 Documentation/devicetree/bindings/serial/actions,owl-uart.yaml

diff --git a/Documentation/devicetree/bindings/serial/actions,owl-uart.txt b/Documentation/devicetree/bindings/serial/actions,owl-uart.txt
deleted file mode 100644
index aa873eada02d..000000000000
--- a/Documentation/devicetree/bindings/serial/actions,owl-uart.txt
+++ /dev/null
@@ -1,16 +0,0 @@
-Actions Semi Owl UART
-
-Required properties:
-- compatible :  "actions,s500-uart", "actions,owl-uart" for S500
-                "actions,s900-uart", "actions,owl-uart" for S900
-- reg        :  Offset and length of the register set for the device.
-- interrupts :  Should contain UART interrupt.
-
-
-Example:
-
-		uart3: serial@b0126000 {
-			compatible = "actions,s500-uart", "actions,owl-uart";
-			reg = <0xb0126000 0x1000>;
-			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
-		};
diff --git a/Documentation/devicetree/bindings/serial/actions,owl-uart.yaml b/Documentation/devicetree/bindings/serial/actions,owl-uart.yaml
new file mode 100644
index 000000000000..ab1c4514ae93
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/actions,owl-uart.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/serial/actions,owl-uart.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Actions Semi Owl UART
+
+maintainers:
+  - Kanak Shilledar <kanakshilledar111@protonmail.com>
+
+allOf:
+  - $ref: serial.yaml
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - actions,s500-uart
+          - actions,s900-uart
+      - const: actions,owl-uart
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/actions,s500-cmu.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    uart0: serial@b0126000 {
+        compatible = "actions,s500-uart", "actions,owl-uart";
+        reg = <0xb0126000 0x1000>;
+        clocks = <&cmu CLK_UART0>;
+        interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+    };
-- 
2.34.1


