Return-Path: <devicetree+bounces-1793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5957A8622
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 16:04:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1E3F81C20D8F
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 14:04:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E9103B282;
	Wed, 20 Sep 2023 14:04:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F3B3AC3B
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 14:04:28 +0000 (UTC)
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87208ED
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:04:21 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2c00c0f11b2so54388121fa.1
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pqrs.dk; s=google; t=1695218659; x=1695823459; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b+1FYQtXao8Yw3xmiSSXbsCd2slRgXlF0cJKkQ9uwuw=;
        b=fvWGL1FDWlDDIQdjhq4RBtPk/M4I83C260VqT4/XWdMpCpI8IGTNSZAiJ2aDcWPNYj
         GhS35BVCDT8Oq/O8VTpTq4eDtOpSF+K3TfMva8TlusPkGjr7K3h0PKhqc7ZaYlr8HE93
         ERMo4bWqNhFmFNK+sCPJLMIIhtm2vUE/9iFqsFRQoRQswnV1IXVGoZvm1zxLstHCcqGx
         0vo+PrKACrQQfZckVTINoc9pfkLoQCuUXkSbcEdy/+jxjb0TNPq7giQlWfw+XpxIewAV
         zt1HAUv+Sx+rNWpDdOYutVUfVUu9HPI0falAz2cD5ufSPeXLBtqbl7EJ2xh9FWiRyhmr
         8crA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695218659; x=1695823459;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b+1FYQtXao8Yw3xmiSSXbsCd2slRgXlF0cJKkQ9uwuw=;
        b=RUSvZ/Etbfp+VbnTuReIa8OYjELsQrx5x/U0qjT7XPazFPpA8CUgZrUDxH7SjVdUZO
         RLA+ldT6P7swefzRRKXCvC/s1xIIrUfY2ZTA1vPzqdoqqfJd7kuAp7kNJsZ0s4G+aeWb
         9nHm0TcBcpteiBrau9Mc00xrSIncxQ623U2NOZ94uAnNV2a+pE/A5URGZ958vG4nklw+
         eKBpp3gfR/dOjitDLS8sm20hpNhShXmGa6NpyAbmtGc881IiH/wEsTw1YKQ8SQuxFQ3a
         D98GeDrppAPAixSp3PFhYya7urb7jTcG7GMsobvIol34JKatd+c9rKXXkOJzdYpXKaYY
         2wpA==
X-Gm-Message-State: AOJu0Yy2uBlceH46yfGjqzHYdxM1DY1XxwA24B0/hOgjnqrONgylajHr
	obQQImhXQY6dnPZ6+bAmXXZK9g==
X-Google-Smtp-Source: AGHT+IEQTVY1dOxQ7FflbyCH6FG41txpgBQJW4pLB9FREGqvZ8x4GI4US/x2CxXL2cRI/3PVc5b4Bg==
X-Received: by 2002:a2e:8905:0:b0:2b1:a89a:5f2b with SMTP id d5-20020a2e8905000000b002b1a89a5f2bmr2445060lji.2.1695218659209;
        Wed, 20 Sep 2023 07:04:19 -0700 (PDT)
Received: from capella.localdomain ([193.89.194.60])
        by smtp.gmail.com with ESMTPSA id c26-20020a170906341a00b00993470682e5sm9397761ejb.32.2023.09.20.07.04.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Sep 2023 07:04:18 -0700 (PDT)
From: =?UTF-8?q?Alvin=20=C5=A0ipraga?= <alvin@pqrs.dk>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?=A0ipraga?= <alsi@bang-olufsen.dk>
Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rabeeh Khoury <rabeeh@solid-run.com>,
	Jacob Siverskog <jacob@teenage.engineering>,
	Sergej Sawazki <sergej@taudac.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: clock: si5351: add PLL reset mode property
Date: Wed, 20 Sep 2023 15:09:54 +0200
Message-ID: <20230920140343.2329225-3-alvin@pqrs.dk>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230920140343.2329225-1-alvin@pqrs.dk>
References: <20230920140343.2329225-1-alvin@pqrs.dk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

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
 .../bindings/clock/silabs,si5351.yaml         | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/silabs,si5351.yaml b/Documentation/devicetree/bindings/clock/silabs,si5351.yaml
index 3ca8d998c48c..b6692b323a66 100644
--- a/Documentation/devicetree/bindings/clock/silabs,si5351.yaml
+++ b/Documentation/devicetree/bindings/clock/silabs,si5351.yaml
@@ -50,6 +50,22 @@ properties:
       Pair of <number source> for each PLL. Allows to overwrite clock source of
       PLL A (number=0) or PLL B (number=1).
 
+  silabs,pll-reset-mode:
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
+    minItems: 1
+    maxItems: 2
+    description: |
+      Pair of <number mode> for each PLL. Configures the reset mode for PLL A
+      (number=0) and/or PLL B (number=1). Mode can be one of:
+
+      0 - reset whenever PLL rate is adjusted (default mode)
+      1 - do not reset when PLL rate is adjusted
+
+      In mode 1, the PLL is only reset if the silabs,pll-reset is specified in
+      one of the clock output child nodes that also sources the PLL. This mode
+      may be preferable if output clocks are expected to be adjusted without
+      glitches.
+
 patternProperties:
   "^clkout@?[0-8]$":
     type: object
@@ -205,6 +221,9 @@ examples:
         /* Use XTAL input as source of PLL0 and PLL1 */
         silabs,pll-source = <0 0>, <1 0>;
 
+        /* Don't reset PLL1 on rate adjustment */
+        silabs,pll-reset-mode = <1 1>;
+
         /*
          * Overwrite CLK0 configuration with:
          * - 8 mA output drive strength
-- 
2.41.0


