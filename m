Return-Path: <devicetree+bounces-10371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0877D0E7F
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 13:34:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1B3D31C20F3D
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 11:34:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E536B199AF;
	Fri, 20 Oct 2023 11:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pqrs.dk header.i=@pqrs.dk header.b="OlAcPWgL"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F59A18E26
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 11:34:30 +0000 (UTC)
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5469D55
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 04:34:28 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-533d31a8523so990155a12.1
        for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 04:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pqrs.dk; s=google; t=1697801667; x=1698406467; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qxGWL09T/U8ViEdhIaJ8zHze/hctW85nUnnCuD7crpg=;
        b=OlAcPWgLgD5XQa2g1oABOiYlOkQ0cmgeab74PrKT4ZPAsADa30zkJVqQSz7AkiMysC
         73c4cAX3+oK2eT1qRc5hZpj5+kUo12hVA2hWISPQAB2xu4BmOWaC5n0Sp/fV/gNKlCK5
         UMVnSf3hg/5JVGD3nMhotEI2gjIyiSebOBTZFEvotRyEZrIk2u3W3StuSvtfojAuJ0eW
         RLsQGrjhW7rhLeO5PQ4+Apld9ljYI6A/V/kD1/mlTXEbJOcNL55u2rG7NqE2vW2KVltN
         QwauF6QN/zmJTbv99T9knK67PyUlPg47AbtHQQfs02+KoHEQ74+2HBsURq1rudKc9J2+
         7Qdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697801667; x=1698406467;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qxGWL09T/U8ViEdhIaJ8zHze/hctW85nUnnCuD7crpg=;
        b=rFUNz51fzS52lJd9n85Ede6oChTbiA/q3fbPT1FIv/jW3Hvw4YyFGxjciiM/adwJzO
         ZKxeYLptJ60vvLJph2+9ixtMQ0t9TaSpx7AesKtPUyYw8beJ5YPf3a9DTtoi2ci5EqvW
         lu8iAQB8wGBFWQdS70gLjc8EF7qk6dR3ogh639QkDHy9EPgT4+JTADThHifcyXOTGyvM
         013Gz6d7YqLBGRCprq+vy6qSOI/88wvIsWMaT6F5rh6fSHdus4EeONELcxpIS2nGBjkE
         Esurbl075NaK2qv0BQeg3kyO8guZDqA0sMD3mR6owT01a5m0EEzic/JCQDn9MVgsvL6M
         vQLw==
X-Gm-Message-State: AOJu0YxuSpOz9h94jq6LnjDuMirLvEQj0+xeXTItwrdidX0N6eFA5FKw
	hQSxNkqJM5Z3OWigVBwdnnCaLEvFgVdkeUIYGk6oPg==
X-Google-Smtp-Source: AGHT+IHMEcSQYLg9QnANE/SCuKGkV1bpDxt4qIA1Ne26TTi2jlK39j64HmyMxOHY7QP2okztXw4xzQ==
X-Received: by 2002:a17:907:741:b0:9a5:9038:b1e7 with SMTP id xc1-20020a170907074100b009a59038b1e7mr1093606ejb.36.1697801667115;
        Fri, 20 Oct 2023 04:34:27 -0700 (PDT)
Received: from capella.localdomain ([193.89.194.60])
        by smtp.gmail.com with ESMTPSA id ce10-20020a170906b24a00b009b654751c14sm1300320ejb.47.2023.10.20.04.34.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 04:34:26 -0700 (PDT)
From: =?utf-8?q?Alvin_=C5=A0ipraga?= <alvin@pqrs.dk>
Date: Fri, 20 Oct 2023 13:34:15 +0200
Subject: [PATCH v5 2/3] dt-bindings: clock: si5351: add PLL reset mode
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20231020-alvin-clk-si5351-no-pll-reset-v5-2-f0c1ba537f88@bang-olufsen.dk>
References: <20231020-alvin-clk-si5351-no-pll-reset-v5-0-f0c1ba537f88@bang-olufsen.dk>
In-Reply-To: <20231020-alvin-clk-si5351-no-pll-reset-v5-0-f0c1ba537f88@bang-olufsen.dk>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Alvin_=C5=A0ipraga?= <alsi@bang-olufsen.dk>
Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Rabeeh Khoury <rabeeh@solid-run.com>, 
 Jacob Siverskog <jacob@teenage.engineering>, 
 Sergej Sawazki <sergej@taudac.com>, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.12.3

From: Alvin Šipraga <alsi@bang-olufsen.dk>

For applications where the PLL must be adjusted without glitches in the
clock output(s), a new silabs,pll-reset-mode property is added. It
can be used to specify whether or not the PLL should be reset after
adjustment. Resetting is known to cause glitches.

For compatibility with older device trees, it must be assumed that the
default PLL reset mode is to unconditionally reset after adjustment.

Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Rabeeh Khoury <rabeeh@solid-run.com>
Cc: Jacob Siverskog <jacob@teenage.engineering>
Cc: Sergej Sawazki <sergej@taudac.com>
Signed-off-by: Alvin Šipraga <alsi@bang-olufsen.dk>
---
 .../devicetree/bindings/clock/silabs,si5351.yaml   | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/silabs,si5351.yaml b/Documentation/devicetree/bindings/clock/silabs,si5351.yaml
index 494fa49a0c1b..d3e0ec29993b 100644
--- a/Documentation/devicetree/bindings/clock/silabs,si5351.yaml
+++ b/Documentation/devicetree/bindings/clock/silabs,si5351.yaml
@@ -62,6 +62,27 @@ properties:
         - description: PLL source, XTAL (0) or CLKIN (1, Si5351C only).
           enum: [ 0, 1 ]
 
+  silabs,pll-reset-mode:
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
+    minItems: 1
+    maxItems: 2
+    description: A list of cell pairs containing a PLL index and its reset mode.
+    items:
+      items:
+        - description: PLL A (0) or PLL B (1)
+          enum: [ 0, 1 ]
+        - description: |
+            Reset mode for the PLL. Mode can be one of:
+
+                0 - reset whenever PLL rate is adjusted (default mode)
+                1 - do not reset when PLL rate is adjusted
+
+            In mode 1, the PLL is only reset if the silabs,pll-reset is
+            specified in one of the clock output child nodes that also sources
+            the PLL. This mode may be preferable if output clocks are expected
+            to be adjusted without glitches.
+          enum: [ 0, 1 ]
+
 patternProperties:
   "^clkout@[0-7]$":
     type: object
@@ -195,6 +216,9 @@ examples:
         /* Use XTAL input as source of PLL0 and PLL1 */
         silabs,pll-source = <0 0>, <1 0>;
 
+        /* Don't reset PLL1 on rate adjustment */
+        silabs,pll-reset-mode = <1 1>;
+
         /*
          * Overwrite CLK0 configuration with:
          * - 8 mA output drive strength

-- 
2.42.0


