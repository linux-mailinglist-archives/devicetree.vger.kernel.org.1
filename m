Return-Path: <devicetree+bounces-85371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E629992FCE2
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 16:51:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 150C01C22BC5
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 14:51:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E00A7173320;
	Fri, 12 Jul 2024 14:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e+CC7SZf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D90172762
	for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 14:51:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720795881; cv=none; b=iDn4lOccz3EJbmaOcK7r2f/iA4+NDJCRlNwzMVunv9xsy2UdPlg/+Vv8ejkBGO6aEa44Fk4/QwNhzm30xP1GeS/OvnpD6ge+yiw+mTHaWFFSBVGSTE5bD/JPmmVA5M8AVI44C7TW82H1E+duwM41uvEx9wTuyif275FDlga5I84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720795881; c=relaxed/simple;
	bh=z6alrIcX7W/3G9+4Cq112O6xOLtxKdFVUqyueNelk1k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QHuO1wj9koUfB8vuXBiTUozPdtCbTfaJ9ESPwaO3rULNaigQ3C4CNhHNLbdtoRW+rNQUYVKGzL3Jt8pgSL5c36On2EfgLbOmk3Mn05Ij/NYYBRISUagMGhf5bBsw/JWNNyh6oZw5m5PohufRlk4+IzDlb8cUut2ibIV2NSNSO6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e+CC7SZf; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a77b550128dso277268466b.0
        for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 07:51:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720795878; x=1721400678; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6vRRM1IzZJ6jbalkLg1Ek34gFCv9G889jaBAwSDbnXA=;
        b=e+CC7SZfQ6TUAFgCFV6vuqSdQI0fUVqVtkHCdpsFMLdYeMTVSPpGRLEbRy12sCqbMy
         RjyAAEJH4xh2xJbw8Jlwp4E+N6D0N6lA1KoIDotUJzjLH4/TLnsquyQavTNWfqNYHqPR
         53hwVkGOG/mcdiHiGyF92n+762NOezFmXIw2BWYa2M6lwLO6Zb0py/oLpT2YvB5WRLAM
         XBL1huI/EqM0CShL1mcRs8/pGTQlaaA1a4Zoarl2Im3wBDEjgd/48WUBBVIQRO0AOPr+
         0U8NDUBAXRuQ2W0Ms1X6kT9YnmjdAOguNpuOWdSj0ftTbqU7btoRiufTjHX4rjmWdunF
         vVdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720795878; x=1721400678;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6vRRM1IzZJ6jbalkLg1Ek34gFCv9G889jaBAwSDbnXA=;
        b=ELrR+w3ucmKve8w76MGXZvfCL2mN9NwAYmbiEzMpC7Subs+7POC0Az1lc5Q2NwEEKS
         28qQ1Yf1dOC6CeMI/dRrYvROJFdQtLbGkIZs5nANvPE4GlPeNW4eP+EkQbhaRqua2VgN
         Oz7q9L3Osgw/K2ETKa+Pdb3RmmvcOTZJsoFWrYrJk1tZHDm7yv3/GWNfE2GaXly8joFQ
         hDZxNU6kqsqqJ60gIUjwZ/Pa9lLy189kxibrAxpkwPlcc69xsxtr1XzrolNA/hsrd6pI
         YX/54qxdWbye+ZrFbU29+cc2BWlSjQBsl9y/NxzPPahG/xq4XlwxE5IujeA1KwoC+lAY
         gUHA==
X-Forwarded-Encrypted: i=1; AJvYcCVFPeACCRL7D85QZcXRpfZ+N59tLkVfYy8zi3/yRX/pEeBsyjr3DwmV1Hty5+eQSIWQl3Ox4KP+iT/ZzHsET07M8brpFvzOM4wMkg==
X-Gm-Message-State: AOJu0YwmIN4NZ3ECTrk6FyrabIjUKpsU5mH2a4ctwpVj465OqazHW84N
	HriFPC9WXq2iLyTZEvcke5bZDgBJ6Jz5O1lXx4ZsN5GO1gZ/4ZYMf2bHBjW0QkI=
X-Google-Smtp-Source: AGHT+IGR2FEKFi9qLuxYS+f6PzX7ExoaKoxJmIPZZTSS1sjP3JAWierdGcy9DUdKpcMlDchzLS69MA==
X-Received: by 2002:a17:906:f6d5:b0:a75:3c2d:cd8e with SMTP id a640c23a62f3a-a780b6b1941mr752951866b.27.1720795878433;
        Fri, 12 Jul 2024 07:51:18 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a780a7ff213sm351406266b.107.2024.07.12.07.51.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jul 2024 07:51:18 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 12 Jul 2024 15:51:17 +0100
Subject: [PATCH v4 1/2] dt-bindings: serial: samsung: avoid duplicating
 permitted clock-names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240712-gs101-uart-binding-v4-1-24e9f8d4bdcb@linaro.org>
References: <20240712-gs101-uart-binding-v4-0-24e9f8d4bdcb@linaro.org>
In-Reply-To: <20240712-gs101-uart-binding-v4-0-24e9f8d4bdcb@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, 
 devicetree@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

This binding currently duplicates the permitted clock-names in various
places, and when adding more compatibles, clock-names will have to be
duplicated even more.

The reason is:
1) subschemas (-if: ...), still have to match the top-level:
       pattern: '^clk_uart_baud[0-3]$'
2) there is one compatible that doesn't follow sequential numbering for
   the clock names (samsung,s3c6400-uart)
3) when limiting the number of clock-names, we also want to enforce
   sequential names
Because of 1) and 2), the patterns can not simply be changed to
constant strings, and later overridden in a different subschema (for
samsung,s3c6400-uart only).

Since we can't populate the top-level clock-names based on the
compatible, and because when limiting the number of items we generally
want sequential numbers and not a pattern, move the permitted strings
into a subschema of its own and populate it based on the compatible:
    * 'uart clk_uart_baud2 clk_uart_baud3' for the one outlier
    * 'uart clk_uart_baud0..3' for everything else

This way we can avoid having to duplicate the permitted names
everywhere.

While at it, add blank lines as per the universal style, which is to
have blank lines between properties, except where they are booleans.

Also add another example using a compatible that uses the default
clock-names scheme, as opposed to the existing example that uses
samsung,s3c6400-uart's non-default clock-names. This allows testing
both versions of the clock-names property when running
dt_binding_check.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 .../devicetree/bindings/serial/samsung_uart.yaml   | 63 +++++++++++++++++-----
 1 file changed, 50 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/serial/samsung_uart.yaml b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
index 0f0131026911..cfa1c0de946f 100644
--- a/Documentation/devicetree/bindings/serial/samsung_uart.yaml
+++ b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
@@ -58,12 +58,7 @@ properties:
   clock-names:
     description: N = 0 is allowed for SoCs without internal baud clock mux.
     minItems: 2
-    items:
-      - const: uart
-      - pattern: '^clk_uart_baud[0-3]$'
-      - pattern: '^clk_uart_baud[0-3]$'
-      - pattern: '^clk_uart_baud[0-3]$'
-      - pattern: '^clk_uart_baud[0-3]$'
+    maxItems: 5
 
   dmas:
     items:
@@ -103,18 +98,45 @@ allOf:
         compatible:
           contains:
             enum:
-              - samsung,s5pv210-uart
+              - samsung,s3c6400-uart
     then:
       properties:
         clocks:
-          minItems: 2
+          minItems: 3
           maxItems: 3
+
+        clock-names:
+          items:
+            - const: uart
+            - const: clk_uart_baud2
+            - const: clk_uart_baud3
+
+    else:
+      properties:
         clock-names:
           minItems: 2
           items:
             - const: uart
-            - pattern: '^clk_uart_baud[0-1]$'
-            - pattern: '^clk_uart_baud[0-1]$'
+            - const: clk_uart_baud0
+            - const: clk_uart_baud1
+            - const: clk_uart_baud2
+            - const: clk_uart_baud3
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,s5pv210-uart
+    then:
+      properties:
+        clocks:
+          minItems: 3
+          maxItems: 3
+
+        clock-names:
+          minItems: 3
+          maxItems: 3
 
   - if:
       properties:
@@ -129,10 +151,9 @@ allOf:
       properties:
         clocks:
           maxItems: 2
+
         clock-names:
-          items:
-            - const: uart
-            - const: clk_uart_baud0
+          maxItems: 2
 
   - if:
       properties:
@@ -163,3 +184,19 @@ examples:
                  <&clocks SCLK_UART>;
         samsung,uart-fifosize = <16>;
     };
+  - |
+    #include <dt-bindings/clock/google,gs101.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    serial_0: serial@10a00000 {
+      compatible = "google,gs101-uart";
+      reg = <0x10a00000 0xc0>;
+      clocks = <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP1_PCLK_0>,
+               <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP1_IPCLK_0>;
+      clock-names = "uart", "clk_uart_baud0";
+      interrupts = <GIC_SPI 634 IRQ_TYPE_LEVEL_HIGH 0>;
+      pinctrl-0 = <&uart0_bus>;
+      pinctrl-names = "default";
+      samsung,uart-fifosize = <256>;
+    };

-- 
2.45.2.993.g49e7a77208-goog


