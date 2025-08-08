Return-Path: <devicetree+bounces-202579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 150ABB1E220
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 08:19:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AC991580E85
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 06:19:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18E3723184A;
	Fri,  8 Aug 2025 06:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="hgQb1jy/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042F12288E3
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 06:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754633913; cv=none; b=DxSqDFjEr5qvi6PWFibLxHybkt0DLPAksqPTskcVSc7EeMQxiMWVZfkMlJcrQPL0q/nKJhfqP1MnJjac1/WNWpDRIdeTEcr/3XIt48ow1vPsPLdm6zew7VzyVBADko8flaeKwWLaS9BHinpEDCWKpcuYpHH9mFM0uRpbGmj1abE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754633913; c=relaxed/simple;
	bh=pXE+TdwEh4NC3Uyy+NCB/X403bzHaC0FLc3b7KtPkRg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iR1RwyC1cslp3HY01Uh/2hvJ8gWiXyDTIj0bfGanKk9g4RlFPvvtLaP9xsd8CDQK8G7OhgybTGdr/y1Ra4CdoKDm9rsBJ68Am9FuTsRr/67audbfW4YAP+vWImEW9Ootv+e+PyyFho8EuQC8C72x4OgYcIq/b0yEtaX7lTcIt+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=hgQb1jy/; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ae0bde4d5c9so335633666b.3
        for <devicetree@vger.kernel.org>; Thu, 07 Aug 2025 23:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1754633909; x=1755238709; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7LP9d+H6CPlnAcNit9gY8gkr92HzBXHt7ewsUzb2PWg=;
        b=hgQb1jy/HUL/Ru8HLV1qa/B6wU5CXxs06camBosyz4Owz1120jJyEsmGHI0mkWNEGM
         2MFRHx7E0aQ+4RFoniQMEsUZaFZC8Ef2XEufE4NbN//1cqkmuZps41+BwbZxTkQAlOvY
         19MzGT64lTW25RMLhmDXurRhONbp6LzfGiQ+PfoeZMh6AyaOInWAjO9rsFQ2IL2zGWCT
         BOskvjH72Xrmoh6fnQLaVffHAAnKXOFPkwI3mzWc54k4Oo+9lAf9jg9R3+U0guaju/wv
         8mLqiEB5lG5lskWzRq5r5LbCL4Y83TULezWbzV8w3ZhV1hBvczpEQSHLG6j2Hg0fEDT1
         +Blw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754633909; x=1755238709;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7LP9d+H6CPlnAcNit9gY8gkr92HzBXHt7ewsUzb2PWg=;
        b=qR0tdxnIAEsyaHx65REIGBRsh2b9KcBRoV9fH2zLraP4IJ7+XhPQzFSGx9NrTjNDMH
         GtonZgPppJiL+UsHYRZFb+JF5rY+aiQ3dtO+kD7oJGT8UhJ+NmJcCkkyPROfvDH6mwUR
         CwxczTvQZCpkoNU6nmY9JbvjbwA3D09xUbrmEbiWmB5qbnbxn6Xgt2LOswZ0XxqPD7G2
         avX5Yjn1A20S/KSkCOlL/D0HejuF13bcJ5RHConRGM9dy+hTCBl7sDYErfbkl35YKZ1M
         oCzNUsWoa7c9TTH+2b1SOybWn471pxJDCKV8jzR5P/A5rw9cgT2VUBZQ3lbW4vXfw33d
         Jnfw==
X-Forwarded-Encrypted: i=1; AJvYcCXcEiLi4wMajW0dK/aHDPwB3PZh/DFb36J97f5rd3UxoHv4Os6P74fnnRs/0nC7MpxFe5yIIeMu0F0F@vger.kernel.org
X-Gm-Message-State: AOJu0YwxWVvvCWeAoplZINShKGLqHonPzMlDy+zvatW6QVt2K+xEysP+
	XsvDFdiu7GCV6QM8YZ4lXv/EEwyk/sd2fASNh9vuEk33yCeKmMJz+y0FsUDLJYd/ZJY=
X-Gm-Gg: ASbGncspRUXo8iWvjZcGkYyKGLU7bqtOrC9918fwAmBwkobIO+RB8m9qPyWi6UZrYUb
	nMdxJZhC/uav5vYN/dPBXMrnokWb2RWI3JqLv16Ml5LPg6mPq/0aH/vxGd3r1HQBIpJPT9bH8Yo
	VSzgqPl+hRBr1dGq7WmSs/vqgYun5YtKXKPpI6rh7vEehXks9/6/icb0bFZW1SSeqDGObpHIdjX
	oWaTX0MoBgUZF9MkGPkgsYBHL2vKJIiiN33qs9Q9hrNi4txmrJbXiHU0QnMUL6bfAhnFRuBmitK
	75+d/l6aCFFSSqQyhqhqD3/9hyyuNCS7NWWzZQ8/3/8IUbFA+2TWL6piIAlSxY2Wb/VmxN1nbgB
	ulVNSKl+U4+E/Uzab1xeFIWKtwcA5hqenAGU7uohZqi6rcsO8h+6HwPqWGufxDCo=
X-Google-Smtp-Source: AGHT+IHBGypz2csrT01KrszUBTtkYO2Kq59PbibkZ10/vGO1t9o/yLlL1WxFizfyiFcAA87qUi9uGw==
X-Received: by 2002:a17:907:7e89:b0:ae0:35fb:5c83 with SMTP id a640c23a62f3a-af9c64bf042mr131826866b.28.1754633908938;
        Thu, 07 Aug 2025 23:18:28 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.188])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a218ab4sm1440488566b.92.2025.08.07.23.18.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Aug 2025 23:18:28 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v4 4/8] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3S support
Date: Fri,  8 Aug 2025 09:18:02 +0300
Message-ID: <20250808061806.2729274-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The Renesas USB PHY hardware block needs to have the PWRRDY bit in the
system controller set before applying any other settings. The PWRRDY bit
must be controlled during power-on, power-off, and system suspend/resume
sequences as follows:
- during power-on/resume, it must be set to zero before enabling clocks and
  modules
- during power-off/suspend, it must be set to one after disabling clocks
  and modules

Add the renesas,sysc-pwrrdy device tree property, which allows the
reset-rzg2l-usbphy-ctrl driver to parse, map, and control the system
controller PWRRDY bit at the appropriate time. Along with it add a new
compatible for the RZ/G3S SoC.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- dropped blank line from compatible section
- s/renesas,sysc-signals/renesas,sysc-pwrrdy/g
- dropped description from renesas,sysc-pwrrdy
- updated description of renesas,sysc-pwrrdy items
- updated patch description

Changes in v3:
- none; this patch is new

 .../reset/renesas,rzg2l-usbphy-ctrl.yaml      | 40 ++++++++++++++++---
 1 file changed, 34 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
index b0b20af15313..c1d5f3228aa9 100644
--- a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
+++ b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
@@ -15,12 +15,14 @@ description:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - renesas,r9a07g043-usbphy-ctrl # RZ/G2UL and RZ/Five
-          - renesas,r9a07g044-usbphy-ctrl # RZ/G2{L,LC}
-          - renesas,r9a07g054-usbphy-ctrl # RZ/V2L
-      - const: renesas,rzg2l-usbphy-ctrl
+    oneOf:
+      - items:
+          - enum:
+              - renesas,r9a07g043-usbphy-ctrl # RZ/G2UL and RZ/Five
+              - renesas,r9a07g044-usbphy-ctrl # RZ/G2{L,LC}
+              - renesas,r9a07g054-usbphy-ctrl # RZ/V2L
+          - const: renesas,rzg2l-usbphy-ctrl
+      - const: renesas,r9a08g045-usbphy-ctrl # RZ/G3S
 
   reg:
     maxItems: 1
@@ -48,6 +50,19 @@ properties:
     $ref: /schemas/regulator/regulator.yaml#
     unevaluatedProperties: false
 
+  renesas,sysc-pwrrdy:
+    description: The system controller PWRRDY indicates to the USB PHY if the
+                 power supply is ready. PWRRDY needs to be set during power-on
+                 before applying any other settings. It also needs to
+                 be set before powering off the USB.
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: System controller phandle required by USB PHY CTRL
+                         driver to set PWRRDY
+          - description: Register offset associated with PWRRDY
+          - description: Register bitmask associated with PWRRDY
+
 required:
   - compatible
   - reg
@@ -57,6 +72,19 @@ required:
   - '#reset-cells'
   - regulator-vbus
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: renesas,r9a08g045-usbphy-ctrl
+    then:
+      required:
+        - renesas,sysc-pwrrdy
+    else:
+      properties:
+        renesas,sysc-pwrrdy: false
+
 additionalProperties: false
 
 examples:
-- 
2.43.0


