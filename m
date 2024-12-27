Return-Path: <devicetree+bounces-134418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F199FD647
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 18:01:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4C88E7A25CE
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 17:01:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CE7C1F8678;
	Fri, 27 Dec 2024 16:57:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="IlFpIaVE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A8E1F9F74
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 16:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735318675; cv=none; b=D/ISDt9Ed0yimKaMIgUJx167UokYPZUs+uUJbKJavQ1G++JGo01E63DyejOyeUoBxS1eJBI93pKCqp4PqyTPyKolIluuXsZ863C7nT1hcTXY0QYtKLvq5OFWTFLEYt6N9WqHm9JgbigvzGPtVSFL4e6zCSwfbYCuntyruvZHA8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735318675; c=relaxed/simple;
	bh=xiX70RWooAV6haHCXU8rKEC/JtSy8CH7kIzRC9tu+nQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LCgjHZJY1NIYF1ByKNwdipBA6SQtfXHAEBDmUu+U4UamqL8cUnsLtVlMOcBWr3tJNdnh2SQ2PMfegdkOxXM1BWDZsF0BhHGekWOW5fbqDb/bPwzzVBUAwEeItPS/q2fKcMB9h4h4P23dL0btyRlwOdgjd7FLbwg7mF/5mCoTgsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=IlFpIaVE; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-aa66ead88b3so1373440866b.0
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:57:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735318671; x=1735923471; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6+kAaC1AoQ98ph6jwnNcppkKlX4Rs9Hgex1b/X1iVho=;
        b=IlFpIaVEOX8YR23AdebaMIAJVeFCPymF0uaOAaz/QVqDaOv84YayMmYYgR2o7ZBup9
         P/JCjQVNe9Wt46zyNXCKj0dSKWNiTyhUShrRrGkmUc/SrWwIk/3LBs0ExhkR9ucCSncs
         miN4koMEKSOVQtHKLaRAm1cE3lR7eZbrKwV4c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735318672; x=1735923472;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6+kAaC1AoQ98ph6jwnNcppkKlX4Rs9Hgex1b/X1iVho=;
        b=IHV0tOOe/aVA8pmPH2iKs9MMUXqTURS3W976+3DV/0jtcmpB1hoNwyhC2DUtJCbbTs
         SKmhpfosIE46xZexUnPfQK/6yhsejTnCcShI+XGNnGiqrpEu1z/45T13d5QxaXDOXszU
         p4NnGZlRrcvOwSfiUp/qOWVvqbpfxKwRXpoPCAgsHAS0UQ+Rc8QtuUqD/ODCwmTlc77t
         JhN67kFuoGtQWwmsgrrzPq2reCL8lB67960DNtKU5PZf4RmxFj+sQsjp9YHNFaDfvCKN
         0VWqydkFw30/9rY++e8T0YX/4jFkiAv3n6+rYQQ705GACSSG19c+P/zm0lWMSQ3C647n
         cdAQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtg4HHLxcGX5r/qnEfwOviZksBha30fgknB40sgHAZGRQGnrObYoLEQYWLT4fv3X2OZ3Gcezg8WKmv@vger.kernel.org
X-Gm-Message-State: AOJu0YyOr2QH8GmuQhdYUL8QhsMtrc9d6v1t47DQcfIa0YrnNkiLmW9F
	2GxQlhlxtr8GttHdsOw199qoRpmD36OmGzrPT/4zJ45rLhA5mKyR2E3XUeDn4Oo=
X-Gm-Gg: ASbGncv8Ipp/Y9tKYADgzgrPaYM/Ro5dGgsWgPlKP3fNEHTtahSJD4BxVMN5LMjN7AM
	zklrjBZE2iXeNkCjxlxReb1bsY4CDaoPiAyjN399iT3ZsBA7EeJHfgGpLKD9uGxLxV9OVclWJK1
	cWtr8SEAvlHQnJuOUKPMjv2nbaq8erWpTlLJntM4B3sNizX/bcekJFnrFZ4XEo5rvotacBT+PLl
	/ptXCrAb5m4Yvk7c7dhtEEnoDie1mwuWzD5bsg/seFPQGwgtgaERq0zbpS5xgIDKt+bxQZvEuXE
	LhKKB1Sn/FFlKHWXN7w47g==
X-Google-Smtp-Source: AGHT+IGpyzrWcBX65CdqI/PNJ/Mfz9DLZVEv6Ofyawaq/nCyclfh2gsXwoQk11JSAy6/krhgua1Pmw==
X-Received: by 2002:a17:907:60c9:b0:aa6:5385:90ef with SMTP id a640c23a62f3a-aac34404937mr2534593366b.61.1735318671648;
        Fri, 27 Dec 2024 08:57:51 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f0159f1sm1130097266b.154.2024.12.27.08.57.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 08:57:51 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Abel Vesa <abelvesa@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: [PATCH v7 17/23] dt-bindings: clock: imx8m-clock: add PLLs
Date: Fri, 27 Dec 2024 17:56:20 +0100
Message-ID: <20241227165719.3902388-18-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241227165719.3902388-1-dario.binacchi@amarulasolutions.com>
References: <20241227165719.3902388-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Though adding the PLLs to clocks and clock-names properties will break
the ABI, it is required to accurately describe the hardware. Indeed,
the Clock Control Module (CCM) receives clocks from the PLLs and
oscillators and generates clocks for on-chip peripherals.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v7:
- Add 'Reviewed-by' tag of Krzysztof Kozlowski

Changes in v6:
- New

 .../bindings/clock/imx8m-clock.yaml           | 27 ++++++++++++++-----
 1 file changed, 21 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/imx8m-clock.yaml b/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
index b23e639e6389..eb2e6e702de9 100644
--- a/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
@@ -29,12 +29,12 @@ properties:
     maxItems: 2
 
   clocks:
-    minItems: 6
-    maxItems: 7
+    minItems: 7
+    maxItems: 10
 
   clock-names:
-    minItems: 6
-    maxItems: 7
+    minItems: 7
+    maxItems: 10
 
   '#clock-cells':
     const: 1
@@ -94,6 +94,10 @@ allOf:
             - description: ext2 clock input
             - description: ext3 clock input
             - description: ext4 clock input
+            - description: audio1 PLL input
+            - description: audio2 PLL input
+            - description: dram PLL input
+            - description: video PLL input
 
         clock-names:
           items:
@@ -103,20 +107,31 @@ allOf:
             - const: clk_ext2
             - const: clk_ext3
             - const: clk_ext4
+            - const: audio_pll1
+            - const: audio_pll2
+            - const: dram_pll
+            - const: video_pll
 
 additionalProperties: false
 
 examples:
   # Clock Control Module node:
   - |
+    #include <dt-bindings/clock/imx8mm-clock.h>
+
     clock-controller@30380000 {
         compatible = "fsl,imx8mm-ccm";
         reg = <0x30380000 0x10000>;
         #clock-cells = <1>;
         clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>, <&clk_ext2>,
-                 <&clk_ext3>, <&clk_ext4>;
+                 <&clk_ext3>, <&clk_ext4>,
+                 <&anatop IMX8MM_ANATOP_AUDIO_PLL1>,
+                 <&anatop IMX8MM_ANATOP_AUDIO_PLL1>,
+                 <&anatop IMX8MM_ANATOP_DRAM_PLL>,
+                 <&anatop IMX8MM_ANATOP_VIDEO_PLL>;
         clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
-                      "clk_ext3", "clk_ext4";
+                      "clk_ext3", "clk_ext4", "audio_pll1", "audio_pll2",
+                      "dram_pll", "video_pll";
         fsl,anatop = <&anatop>;
     };
 
-- 
2.43.0


