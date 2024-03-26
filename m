Return-Path: <devicetree+bounces-53277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0275388BCF8
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 09:59:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AB7162E4712
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 08:59:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A44514290;
	Tue, 26 Mar 2024 08:59:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X/YN15D+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3095524A5
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 08:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711443540; cv=none; b=fypiW8MhoRlc0M/SwMLcWgq5FpthhjtQi+ofRXjVUUh4JAtvYHRAYvGvQdFCTNvo1lEB/gn5e8khYxx1mGF6PDvjyynik6/bxDYFTtG+hirJKNmyuQbFnrTmiN39Y7fNz9rDMMoscs6ETB7/ZUNtEitf8aRBJZui+qsOrZt/ieE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711443540; c=relaxed/simple;
	bh=61YEpQEctk39+Hl4KBfW0r3rhweEjJ0fJ2B4wH2t85o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=TxHwV7GE9oQijjRsrssovLwSex8uNUqPTyGOBvZxOg28xC4JZpW7hgU/1Hbh+Km9moRiMAvS74VXy/99gBXgrA01PuqRmYvgpnruOQxvUiWYJYa5sXgKTyIq2BkQPAhkBiITH+Kbb1Eh/q8ma1bDKq0cQT3hxU+wXNxMPvrQAvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X/YN15D+; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-29de2dd22d8so2804384a91.2
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 01:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711443538; x=1712048338; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RlLleca874SAW15+zdkZzOvUXnwsMFHcyNJEuHBwGLg=;
        b=X/YN15D+zmN7bcllN5hi/mm34VtmOCpULskMBJ0Ojv7k1UDasHx/HxTHNLFXNgVfKg
         +WPL7JzUNrMl+YHaBPWPizCnUMd7hCPz0GVUSp4bVGCbN4IqDVaDGCLd+ORDp/QSEHg2
         belkqHe6ai55aKAdJ+zJ6T1+xjvyboAu+L2HBNBPJ9O7zb8I5o8i2XG2BvyGM/oosz3r
         9h8GkXuxcbC/h79EgNMAKlUJHQiu4WS6miUjGLu0nIg5N5hQT0MeV7e3jfcEofSAphMR
         3tdim/KZrbZO7yCyqwPe+WRRBlKpRd3s6LMqd/rEUckNyEL4YbKAIViRo38We1OrvviB
         peng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711443538; x=1712048338;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RlLleca874SAW15+zdkZzOvUXnwsMFHcyNJEuHBwGLg=;
        b=AhlDxitp7yfqDEY6zwfNNIFGPVr0vVhhX2gb/4HCCCm/0WI18IPVaEg4y1orMf8lgp
         yVL1fGyY9uWktz18SV25QUAMptshz4bOzsQV54RJm/fQEHmtLxVYvw50xpSZTrVlDbcF
         DR67hKx0uYv7ce0IEADXsPAqK60R6Gs0vUUfnfD4LXzKHsgW1CGOi+POMa1IXQgBR0ly
         YdNqI87K3cqDZIcReM+ZGyQKyXMCo1e3G9pLyVtHichABSqYelJhbmWwRXc81BwdfIwE
         j7uEhqVQQ7r4FnsRowULfZ+E+GMej+6nQqOWr0pDGD0O5+Ktjkzu0zMe+t9yRnNf4fs0
         7MFg==
X-Forwarded-Encrypted: i=1; AJvYcCURL6Bs/KM2ROT/xxFXOCXsDCRcy0XpWhVPt9a8uNRFcOzptbvsSHKC4dAaiBvVBvq8UgNoEshUBxgA9qoVLRNSVPv8jotY7iwTXQ==
X-Gm-Message-State: AOJu0Yw8q+eh/97x/C6JWOvvUQPs+ixXxOdFEvrwgqJ3B5lz+eFv41vw
	qne+es7lppibOoJ0knrGgtpdrqc1rH8WwTlpjqiaLALsxyrtsATo
X-Google-Smtp-Source: AGHT+IHscOscxpDPYCnU1BOdcuBUn7O2gHLxhoFTs8TwFGhgz0g3fnfNIIQKW1sIHK/WTgf/pXzTzA==
X-Received: by 2002:a17:90a:4985:b0:2a0:8e90:1de0 with SMTP id d5-20020a17090a498500b002a08e901de0mr256772pjh.3.1711443538122;
        Tue, 26 Mar 2024 01:58:58 -0700 (PDT)
Received: from localhost.localdomain ([223.178.85.179])
        by smtp.googlemail.com with ESMTPSA id qd13-20020a17090b3ccd00b002a058159ff8sm4858525pjb.8.2024.03.26.01.58.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 01:58:57 -0700 (PDT)
From: Kanak Shilledar <kanakshilledar@gmail.com>
To: 
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	daniel.baluta@nxp.com,
	Kanak Shilledar <kanakshilledar111@protonmail.com>
Subject: [PATCH v2] dt-bindings: serial: actions,owl-uart: convert to dtschema
Date: Tue, 26 Mar 2024 14:28:14 +0530
Message-Id: <20240326085814.6343-1-kanakshilledar@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240321084328.200347-1-kanakshilledar@gmail.com>
References: <20240321084328.200347-1-kanakshilledar@gmail.com>
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
`compatible`, `reg` and `interrupts` as the required properties.
This binding is used by Actions S500 and S700 SoC.

Signed-off-by: Kanak Shilledar <kanakshilledar111@protonmail.com>
---
Changes in v2
- Added Clock property to fix the warning of `dts/actions/s700-cubieboard7.dtb: 
serial@e0126000: Unevaluated properties are not allowed 
('clocks' was unexpected)` thrown by `make dtbs_check`
- Changed the compatible identifier for having both the compatible names
earlier was throwing `owl-s500-cubieboard6.dtb: serial@b0120000: compatible:
['actions,s500-uart', 'actions,owl-uart'] is too long` warning.
- Updated commit message


 .../bindings/serial/actions,owl-uart.txt      | 16 -------
 .../bindings/serial/actions,owl-uart.yaml     | 46 +++++++++++++++++++
 2 files changed, 46 insertions(+), 16 deletions(-)
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
index 000000000000..095f299a851d
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/actions,owl-uart.yaml
@@ -0,0 +1,46 @@
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
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    serial@b0126000 {
+        compatible = "actions,s500-uart", "actions,owl-uart";
+        reg = <0xb0126000 0x1000>;
+        interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+    };
-- 
2.34.1


