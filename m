Return-Path: <devicetree+bounces-52116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A44B8855E9
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 09:43:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F1411F21B2A
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 08:43:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 238EB199AD;
	Thu, 21 Mar 2024 08:43:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QtI0Cj/E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A485EBE6E
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 08:43:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711010632; cv=none; b=i1Jv9lcOClGTKuEjGnrK/F/1bsUxw/Fqk+Tqj+VleSLp1N3BKl59Ogtkx4ITyJgdFu0/9KWUkS1ajAtptQLU49ZQ4728gfkLLSQq/+FwiWhWlEUJudq2wLiGKLVxkEhyN7DAaxM7pNrsto6Vsi44diUCnOW6RYtp3zU92vpkork=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711010632; c=relaxed/simple;
	bh=28HOCiOmu9WvE2902Wrdaewgex0JDB4Twyq7107VSWk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=fn5AXceTbWeWXbeKJ8nxUIr+lBeuXScvy8RX0b5TatjfH4lpiHbfGzKbURo0BEe+g3pl3YQMlGFsA+vchBX/Z0x90Lzk4qqakx0kux2tE00l9kXWxh5HwKlsqXx2MCEb5Muf7It3KVymRfJycq1DRaUHM76mFrOEQxeq/QuQ+nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QtI0Cj/E; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-5c6bd3100fcso406443a12.3
        for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 01:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711010630; x=1711615430; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=szKtMshgUT4sbRUdwIPjAVb77JePZ91N1VuTVtrKCL4=;
        b=QtI0Cj/EB21v8OoJ7rbeA+yE5v+LY6k0ymg+jQbLvEFC98zhlSenrEffGItGMVz5qp
         2MUQ5Z4qIwT0flR3uYT4jSwg1XltvduWAFBaXI373JyjZfd9/dLih9t+WKqlbzUrh3iQ
         9e5R/Nmmg9RcO/vDtgpHXhuFjNcn3DZXpOhnjO5obY9L1owMyG50rViLRNxUliF1Io1U
         lllcEvBIIyupp/7IX0mvcYsCC+eU5xcbRBVhUu+ok1McA3bl7e3NSs4QcPAbwmvPamMj
         gZBn1IId3kpgM6U03QnD1rUF8c80WuqbFBXRdXnBSqOFuueFNAxVV6m/gDZ15BGetjrU
         SeTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711010630; x=1711615430;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=szKtMshgUT4sbRUdwIPjAVb77JePZ91N1VuTVtrKCL4=;
        b=bn2c9AajUKMzIUscC2bnJwN5sL756TbBhJf+qs7Jk4M+OcB36Q+o4FDq9wo0ZKobqZ
         UPqGqtQEQnCxs5Gbf1YqJbWawjhbzW5UFWtGJKSBirGpzQ/1gILwP3/PGcJy0f8e5clH
         ejtxoGwb6Cs9MDt5D+VbeYi2jM01mcau9q+b82Iuf70y7M3z3Xyo38IvEhRPfUwI5Em6
         HBY32gBC/tZ3/N4GL0QSA7G8/1QSru8N1lcx/gKVBo99XxPIWaH8IXqhgSWrGYKfUgGm
         tdTM7PZlWr8dwqs5TnI9QYuSqjGh46XnQgNg+J2YvfXNvxKYP1krxdIIC+Y5rv/MHQSi
         vb5w==
X-Forwarded-Encrypted: i=1; AJvYcCX3XCOEGSopVpEbRJXDUt2VTr/GtLo/3u890rMV+HxQzRfsMbGyJKhpELVOv1qoiy5E8eUmY++XY8Y3fWH0MlJgpytJJnHUyYDB/Q==
X-Gm-Message-State: AOJu0YzSs+uvcD2nwmFJ6S+9IrCtgrU3zYDxXxdmh/TkYtqMGk6PyPtq
	WDkfgzK+y0g1gqTwr8OfdpC/IZNxbyHEuF5kbcqPjoKtlYGbtKlqyunwjF4O
X-Google-Smtp-Source: AGHT+IE6OEZc/sCMlgMcJGmKphOKbYmT76R84GTKr1zHMLFVydTg4Bf/eM1RFxkNsyKctEW/8Y3Xqg==
X-Received: by 2002:a17:90a:c305:b0:29b:e26a:3239 with SMTP id g5-20020a17090ac30500b0029be26a3239mr1168741pjt.47.1711010629871;
        Thu, 21 Mar 2024 01:43:49 -0700 (PDT)
Received: from localhost.localdomain ([223.178.83.204])
        by smtp.googlemail.com with ESMTPSA id m2-20020a17090a71c200b0029bce05b7dfsm3000830pjs.32.2024.03.21.01.43.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 01:43:49 -0700 (PDT)
From: Kanak Shilledar <kanakshilledar@gmail.com>
To: 
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	daniel.baluta@nxp.com,
	kanakshilledar@gmail.com,
	Kanak Shilledar <kanakshilledar111@protonmail.com>
Subject: [PATCH] dt-bindings: serial: actions,owl-uart: convert to dtschema
Date: Thu, 21 Mar 2024 14:13:28 +0530
Message-Id: <20240321084328.200347-1-kanakshilledar@gmail.com>
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

Signed-off-by: Kanak Shilledar <kanakshilledar111@protonmail.com>
---
 .../bindings/serial/actions,owl-uart.txt      | 16 -------
 .../bindings/serial/actions,owl-uart.yaml     | 43 +++++++++++++++++++
 2 files changed, 43 insertions(+), 16 deletions(-)
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
index 000000000000..ee0e508255b6
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/actions,owl-uart.yaml
@@ -0,0 +1,43 @@
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
+          - actions,owl-uart
+
+  reg:
+    maxItems: 1
+
+  interrupts:
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
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    serial@b0126000 {
+        compatible = "actions,s500-uart";
+        reg = <0xb0126000 0x1000>;
+        interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+    };
-- 
2.34.1


