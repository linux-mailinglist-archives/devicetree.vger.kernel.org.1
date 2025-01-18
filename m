Return-Path: <devicetree+bounces-139447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC50A15CEA
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 13:43:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8285D3A8D93
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 12:43:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ACC41D517B;
	Sat, 18 Jan 2025 12:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="XieMXG3l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 837DD1B0410
	for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 12:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737204080; cv=none; b=O2hDFZ9F9yBAfcI41RzV0/FH2K1rL4OtCPSsbzQkvchDuPMATXsElFl5J/lpj2CPsl6O2d7ieu003gezrgnRB95VpVZgvIXb+aupC3dgn6QkvzQ6IfKz8BvKCO2qscRfbXZWhybZF2llE2yLOziyMFm6yylyYhVvyPlw+CyUmHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737204080; c=relaxed/simple;
	bh=3HpG5JSfnp1rR8LM9tLDyGAnkrv7gQYHSv7Ks+OYcRk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AUkfqMjxa3fjly3wSPo7k2o1R6cwTxUB9Q2eFpdIdTFV/Oe9Q9rwpBE0rSIfTeurqIjl5kT7vZ4bQhRaD8MsdgfeRGlkdYXcWhu6jLgBRcLD97qVvZn1oM3Hxhk5knlrdPjejRARocPTGk1V5l/Djjx/aBYVLzIRHc92suXO2Lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=XieMXG3l; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-aaee0b309adso468939266b.3
        for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 04:41:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1737204073; x=1737808873; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AjwlhaAOkrwwhyUyrS6nha6mqO5aPDlQoHWfonPTSAw=;
        b=XieMXG3lbp3aURG07coBeZFV3DUiLQEBPTVFIsOem+kMTnwEcUXKhqA3gYnaEPuajQ
         AI2Gf/6yEHOtc822j4J2bgZkgkIsU6TG8ecRMHRLwEAzYY2zdF5FE19RDDA7HHylGBdT
         TGVJsA8xI2u9Xzj/wO4fx5+46mz9H+xAnRdco=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737204073; x=1737808873;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AjwlhaAOkrwwhyUyrS6nha6mqO5aPDlQoHWfonPTSAw=;
        b=N9a/7ZFLPW66JqjNH8wMUT90ssRtcgazkYOCh1H3Rrq9++ptl7Iv39huYXGfF4Cdml
         f5PjNWnfLzDJBYoO8ZpQ6mZApPabcshQT+BeKHUh57OirVR7JvZTYpFtdE6ug3jidQZG
         0GioLeOSZyznr0XWRRSwWFM/cjpz3bgAL4zG9i0H5yI5yLuuf2V1lfjPTyz6l2N3GBXd
         5BGF8t0Ebqsn7LCVIX8vcrGbKYRuuzK8QFTLbfKUBJHyK3szq+K9zT2JLrrIDju2rlUq
         n5vsmonlnuhSC+Sh7NYO/VucmIGNQz6OCHUyj+mMkcLwotv2clZV5omf58zEKcyo96Xe
         i6Sg==
X-Forwarded-Encrypted: i=1; AJvYcCVaJNK7/+6J0IUmrTSBW7kfgIz0RMyFfmb+Do8tW5bCIkkCI9c23VlkDfm2lh88Xk/z8XxI3Lvi9gm7@vger.kernel.org
X-Gm-Message-State: AOJu0YzXu7AIf40+B5LI/iUw0xJGxE7YAq514N3/asObMhapuRBI4Znz
	2xHzHZJE+H3HWvVgy/L5nyxyhUJDlauiYADl4Gd7qr0PbRCCsFk+WxUBlpORpJA=
X-Gm-Gg: ASbGncvR30OKqGZ1dEE24XQh0fw7rnLRwBSCevXu6pwfOXnwvcApnAq6M4xxU9LxIm8
	wmF+miFblej1q9wXOxynjNmwmhbneBa5GHl+OC636ngAnO5nR6WIE9pL8/PYlPITRtQbbhgrM31
	YJWvotQvG/VzuZLR2fOXppg/r2hXt+1GtUpRiO86QFVYYVXFZopEhdXTsLHZCCtCAYsbpJFpPlc
	UadmtWmrNTuItoHV3AsbT20niffK4wUmcP9KX46FJb8zd6npqbMmKeiDix6NoeFDtEeJ6Ex1mpY
	giQFnliDWIfn+XFHWLiVaY8EycIyt2scwxWNGSTndj1S7egt7ynU3BNG/93lqJGeXHq7ScYZKmJ
	aVqwuDjZwyNRImnTNlaZCvnXdqf3qgWDfAUca
X-Google-Smtp-Source: AGHT+IGaQfD+XOUXbE+BkfgW/kdqk8npbiYgJKweh+ryekNShXVP8/4p8gDEZxKuRlimfmswkORPdQ==
X-Received: by 2002:a17:907:3f28:b0:aa6:79fa:b480 with SMTP id a640c23a62f3a-ab38b0ba07fmr581216666b.10.1737204072939;
        Sat, 18 Jan 2025 04:41:12 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-30-28-209.retail.telecomitalia.it. [79.30.28.209])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384fcd73dsm332562366b.178.2025.01.18.04.41.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2025 04:41:12 -0800 (PST)
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
Subject: [PATCH v9 12/23] dt-bindings: clock: imx8m-clock: add PLLs
Date: Sat, 18 Jan 2025 13:39:55 +0100
Message-ID: <20250118124044.157308-13-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250118124044.157308-1-dario.binacchi@amarulasolutions.com>
References: <20250118124044.157308-1-dario.binacchi@amarulasolutions.com>
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

(no changes since v7)

Changes in v7:
- Add 'Reviewed-by' tag of Krzysztof Kozlowski

Changes in v6:
- New

 .../bindings/clock/imx8m-clock.yaml           | 27 ++++++++++++++-----
 1 file changed, 21 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/imx8m-clock.yaml b/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
index c643d4a81478..d96570bf60dc 100644
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
@@ -86,6 +86,10 @@ allOf:
             - description: ext2 clock input
             - description: ext3 clock input
             - description: ext4 clock input
+            - description: audio1 PLL input
+            - description: audio2 PLL input
+            - description: dram PLL input
+            - description: video PLL input
 
         clock-names:
           items:
@@ -95,20 +99,31 @@ allOf:
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
+                 <&anatop IMX8MM_ANATOP_AUDIO_PLL2>,
+                 <&anatop IMX8MM_ANATOP_DRAM_PLL>,
+                 <&anatop IMX8MM_ANATOP_VIDEO_PLL>;
         clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
-                      "clk_ext3", "clk_ext4";
+                      "clk_ext3", "clk_ext4", "audio_pll1", "audio_pll2",
+                      "dram_pll", "video_pll";
     };
 
   - |
-- 
2.43.0


