Return-Path: <devicetree+bounces-6782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 322477BCE07
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 13:13:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2C791281A95
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 11:13:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2CBEBE67;
	Sun,  8 Oct 2023 11:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pqrs.dk header.i=@pqrs.dk header.b="QWv/4MZh"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DED78C17
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 11:13:52 +0000 (UTC)
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2E6FD8
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 04:13:49 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9b974955474so622014566b.1
        for <devicetree@vger.kernel.org>; Sun, 08 Oct 2023 04:13:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pqrs.dk; s=google; t=1696763628; x=1697368428; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WGvwmv7blnoHjX1qS2bGhDolAncwyiZsBGNZLg6R4Cw=;
        b=QWv/4MZhau5K2WfbYMvWbSjkfR/1c/JF5H9j5lj7RcDbGAE9cCMOfES00twBrFvm7Z
         RRz0TrykTvAuW6CIKVRKVXQZEda4yIblC0ZVI2sNAEvdGT2XMEviSGA4ZzacgpkIAbHU
         +Gz9ZADJs2j/DDm8llnjRp3mXDh0U/EoBQMfim5BNzAmaOTlBWnN7UBa0bpBPExrTc4z
         FkkO4A0vFHi1To86aGiFEOe8bm7BoVDkEddPafQCvTH2goDf1EKSJg+X0HQUEeWx4Ysf
         tYIef/zCUN+vmtphDBNBi/wQ+abQUzsuWtiIbLM0XchYHw0CNbiYbJfVWEBrkKZbgJcx
         /sQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696763628; x=1697368428;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WGvwmv7blnoHjX1qS2bGhDolAncwyiZsBGNZLg6R4Cw=;
        b=lBkWzbsW5w1DFJXAkzuwZ/u2ZtoK446CiyC38tKdbxNamGE69YuAYYCxTWOIxaKiz3
         uCtMNEXi375KHAB3IvbgVgwQXC5tdMRn95sy84cP9tfAOQBscAnP+1XD9I6BRSXS18vx
         awodZ+25RFTtr2FN2Gvr086t1Q78oJ2dX+E/4tWQgvbs0Ekkg/Qr+CHZ3J2DuG0J91vW
         BHGla8LzSYuck188hhoGzsBtC0wuykd6RcQ8uOlDyybM2mOdXRG8HirFQhzqw01AKokU
         4kw8ubxGY7YWxGBkGoEWdJZco+WuUB8kTxazk7em6CEOuqExFeuMPwVL/V2apZF4rReZ
         Yp9Q==
X-Gm-Message-State: AOJu0Yy7+whZxkAjvugHITnMzX9s43/EYzJfcfkIVnTQDnqqw2J8NSiT
	EMKUpxaDeMKdfmmTmkYpag9/yg==
X-Google-Smtp-Source: AGHT+IE0QA27/V+vCqomxsUSXZAqQdvYTkjRYYSLNt6jPoolnR8WC8vIMJw/yOTtDhMBgFUY9V5PxA==
X-Received: by 2002:a17:906:3156:b0:9b2:b71f:83be with SMTP id e22-20020a170906315600b009b2b71f83bemr11113918eje.1.1696763628206;
        Sun, 08 Oct 2023 04:13:48 -0700 (PDT)
Received: from capella.localdomain (80.71.142.18.ipv4.parknet.dk. [80.71.142.18])
        by smtp.gmail.com with ESMTPSA id t3-20020a1709064f0300b009b928eb8dd3sm5383396eju.163.2023.10.08.04.13.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Oct 2023 04:13:47 -0700 (PDT)
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
Subject: [PATCH v3 2/3] dt-bindings: clock: si5351: add PLL reset mode property
Date: Sun,  8 Oct 2023 13:09:38 +0200
Message-ID: <20231008111324.582595-3-alvin@pqrs.dk>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231008111324.582595-1-alvin@pqrs.dk>
References: <20231008111324.582595-1-alvin@pqrs.dk>
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
 .../bindings/clock/silabs,si5351.yaml         | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/silabs,si5351.yaml b/Documentation/devicetree/bindings/clock/silabs,si5351.yaml
index 99c4e2271b6d..9a36d1f55c18 100644
--- a/Documentation/devicetree/bindings/clock/silabs,si5351.yaml
+++ b/Documentation/devicetree/bindings/clock/silabs,si5351.yaml
@@ -56,6 +56,27 @@ properties:
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
@@ -198,6 +219,9 @@ examples:
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


