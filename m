Return-Path: <devicetree+bounces-225280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9DCBCC2D0
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 10:42:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id CF36A35480E
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 08:42:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B675426CE0C;
	Fri, 10 Oct 2025 08:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Eu+WCS4l"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D2426B0BE
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 08:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760085697; cv=none; b=Ai0+fSpdThLkJZPfTdX8hpV5F18AoGIfyTjGNS08WyyQ/+XdkRWhBKfc3SGNltQro7FTafA2kuZXbQmd57PoayiOPaajV0QHqS8YUJS7KiHH4zx5mmTfQe36k4FMskCGRIWItShccCGbuEEcj2JJjm8hO7/uyL8DpqaLmmNV+dI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760085697; c=relaxed/simple;
	bh=4NHGTpUp810CJ5GplH14M01b1T9+wUKoWQ61R7UooCQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nhfwwCCaN9BxfhKdXUUgRXFxahPMETLkYUMez8BCrilUh47V8RdSVGsT8YMldA3Eia0g23RTFhM4G01Gsng5Zqmer8sGm18fYJjJ5p+GDJqzMY7Il7jZ7I5EkTsX1oRFMsoSV0LrbBGM/A4cVPJrUwIqNEhm4P7zjU7mUQ8Lgqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=Eu+WCS4l; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 2B05BC08CC5;
	Fri, 10 Oct 2025 08:41:15 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id C75BF60667;
	Fri, 10 Oct 2025 08:41:33 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 9A0E1102F21F6;
	Fri, 10 Oct 2025 10:41:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1760085692; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=SMfQgmaA+NDyDK7Ueg4chV0xd3SWz/9HItTT1xnJps0=;
	b=Eu+WCS4l5FJHzORvSabLRwRjqt5rE+kCTzrjWvEoazmBb6vd0C+muL/EvqJHX07680Mhiw
	YBT6JH0YZUN/K+/uW4jtWdDu/Q3t3AJQlnX1MmKWH86xYLL2zSBEGL6EWaK5Hp7QVTpZxA
	E/HY8ljBCG4YQn3oxdeR+OfH51zM0Ucgc2Ha3pgVeJdL32+d9pQqYjdSEmDu9yg/PWlpOB
	H9jTgX4q+NKq+/JWXKDgNYYuLUTyNhJSBeLnahyskGbsU1GsP+3ErGnVgLDA7QDOCGOjKz
	9Yns8KZFkbH1NkU74YPbPHiLU+Qf9id8zFMD8BIlpV7F6JLDxl3S1G4PA/IeKA==
From: Richard Genoud <richard.genoud@bootlin.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: Wentao Liang <vulab@iscas.ac.cn>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Richard Genoud <richard.genoud@bootlin.com>
Subject: [PATCH 02/15] dt-bindings: mtd: sunxi: Add new compatible
Date: Fri, 10 Oct 2025 10:40:29 +0200
Message-ID: <20251010084042.341224-3-richard.genoud@bootlin.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251010084042.341224-1-richard.genoud@bootlin.com>
References: <20251010084042.341224-1-richard.genoud@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

The H616 NAND controller is quite different from the A10 and A23 ones,
some registers offset changed, and some new one are introduced.
Also, the DMA handling is different (it uses chained descriptors)

So, introduce a new compatible to represent this version of the IP.

Signed-off-by: Richard Genoud <richard.genoud@bootlin.com>
---
 .../mtd/allwinner,sun4i-a10-nand.yaml         | 56 ++++++++++++++-----
 1 file changed, 43 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml b/Documentation/devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml
index 054b6b8bf9b9..cc63091fe936 100644
--- a/Documentation/devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml
+++ b/Documentation/devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml
@@ -6,34 +6,64 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Allwinner A10 NAND Controller
 
-allOf:
-  - $ref: nand-controller.yaml
-
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
   - Maxime Ripard <mripard@kernel.org>
 
+allOf:
+  - $ref: nand-controller.yaml
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - allwinner,sun4i-a10-nand
+              - allwinner,sun8i-a23-nand-controller
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Bus Clock
+            - description: Module Clock
+        clock-names:
+          items:
+            - const: ahb
+            - const: mod
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - allwinner,sun50i-h616-nand-controller
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Bus Clock
+            - description: Module Clock
+            - description: ECC Clock
+            - description: MBus Clock
+        clock-names:
+          items:
+            - const: ahb
+            - const: mod
+            - const: ecc
+            - const: mbus
+
 properties:
   compatible:
     enum:
       - allwinner,sun4i-a10-nand
       - allwinner,sun8i-a23-nand-controller
+      - allwinner,sun50i-h616-nand-controller
   reg:
     maxItems: 1
 
   interrupts:
     maxItems: 1
 
-  clocks:
-    items:
-      - description: Bus Clock
-      - description: Module Clock
-
-  clock-names:
-    items:
-      - const: ahb
-      - const: mod
-
   resets:
     maxItems: 1
 
-- 
2.47.3


