Return-Path: <devicetree+bounces-8656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4257B7C95E9
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 20:20:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 77069B20D09
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 18:20:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 279152374F;
	Sat, 14 Oct 2023 18:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pqrs.dk header.i=@pqrs.dk header.b="Wr3v/jRU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A48222F12
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 18:20:12 +0000 (UTC)
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78D31CC
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 11:20:10 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-53e08e439c7so4994498a12.0
        for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 11:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pqrs.dk; s=google; t=1697307609; x=1697912409; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qw+fDH/r+gzxyf/T+BAcRpzcq5bTXGRmDpE3OCLJAMg=;
        b=Wr3v/jRU7B3uCfdrq7W8NwuxIY1MLS9OImrHmJAT+3lrFxL+cLapzJEwtZTmFv/1QJ
         Ox9nNWXUhrskupClbj2Pkui9SzkYg8yW0Nn8HtUcrgpE0QRN68SztngEsTJZ7k97WnCh
         jkw5d+RR7UabYy9NOJlRdBrxvkbvZPS3tXhWHdfnobN+6ZUPYWf/iuafA3Mn5ncEmVMO
         Z+Qhoxup62hx+BNxRMwhIttcH7FKbVPcB0+1deCUA8t6bB5a81qC/Hr2rpY44rQCOCyp
         ScdsGCKBWdFqLGwn+hlnrNunJx0UsEERRrzFBgxWjkkg34qWiittFzs3JRzs7ECs28V0
         3huA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697307609; x=1697912409;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qw+fDH/r+gzxyf/T+BAcRpzcq5bTXGRmDpE3OCLJAMg=;
        b=fCAOlX2LbgjFU0dgWUg5WtqRxFWDmn7IDH7DvRyjKSR9E5u87FjfDmFTfaU0pZCU4o
         sN4yKpqF2ANWEUJ7lUs3UWXbPCufd9K+Ls7lQS/DxQM4Uf9MCmQaB2XwgjQJKRuRg5XW
         G5maReJEhTvmR2U1rO677VayPR09WbtlwZN9EAw3oAVgB4XdkAdpGZsc0Vigk6UKfVdA
         xGpSb6spvneH4AfEy2zSrCfqLTMuyqUSIlO8PNrGGiTQ/68GMN5ouHaduYR8TZ/on4hN
         wuFSS6GizHGgl5oXEeFcouI8Ep71j+Rfnk7xX7KJ81DlQ7msTvihvJTlFJfV8s1MPgEp
         KdMw==
X-Gm-Message-State: AOJu0Yyak6xss7QuzAOFkD68dbFjeUZ2Isb4KSfXHR+bjTBlCa4PXkuJ
	PJnNGCtKvk+qTMlpTRFga4rfgw==
X-Google-Smtp-Source: AGHT+IEDgB08BWV57pIT8VR5SiZ0VYVeOxPAQAE2cb43JnfmB97/DfS9tSTZzA/3vbgHLkd8TDgt3A==
X-Received: by 2002:a05:6402:1806:b0:525:73dd:4f71 with SMTP id g6-20020a056402180600b0052573dd4f71mr24319113edy.14.1697307608881;
        Sat, 14 Oct 2023 11:20:08 -0700 (PDT)
Received: from capella.localdomain (80.71.142.18.ipv4.parknet.dk. [80.71.142.18])
        by smtp.gmail.com with ESMTPSA id i13-20020a056402054d00b005231e3d89efsm13032574edx.31.2023.10.14.11.20.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Oct 2023 11:20:07 -0700 (PDT)
From: =?utf-8?q?Alvin_=C5=A0ipraga?= <alvin@pqrs.dk>
Date: Sat, 14 Oct 2023 20:19:42 +0200
Subject: [PATCH v4 2/3] dt-bindings: clock: si5351: add PLL reset mode
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20231014-alvin-clk-si5351-no-pll-reset-v4-2-a3567024007d@bang-olufsen.dk>
References: <20231014-alvin-clk-si5351-no-pll-reset-v4-0-a3567024007d@bang-olufsen.dk>
In-Reply-To: <20231014-alvin-clk-si5351-no-pll-reset-v4-0-a3567024007d@bang-olufsen.dk>
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
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
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
 .../devicetree/bindings/clock/silabs,si5351.yaml   | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/silabs,si5351.yaml b/Documentation/devicetree/bindings/clock/silabs,si5351.yaml
index 16d1142c4a2f..9621b534f30e 100644
--- a/Documentation/devicetree/bindings/clock/silabs,si5351.yaml
+++ b/Documentation/devicetree/bindings/clock/silabs,si5351.yaml
@@ -60,6 +60,27 @@ properties:
         - description: PLL source, XTAL (0) or CLKIN (1, Si5351C only).
           enum: [ 0, 1 ]
 
+  silabs,pll-reset-mode:
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
+    minItems: 1
+    description: |
+      A list of cell pairs containing a PLL index and its reset mode.
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
@@ -199,6 +220,9 @@ examples:
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


