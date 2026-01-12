Return-Path: <devicetree+bounces-253960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D332D130F7
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 15:18:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45AF63032FFF
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 14:17:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2122B22156F;
	Mon, 12 Jan 2026 14:17:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MQwLVCVD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3DEC24EA90
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 14:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768227426; cv=none; b=Zw1lTNq2VvO5SHK5FYAVSVtW0+jkusGvvTJlm7U/vr12ATttmvhS0WWTpFfuf1nn43TWQiPWNAfXhP52DuwtlmUs1z3Bf43M+McSNlfMPQaSxi1zjIb9Y9nha0lbBMEbrSnuASHMH64Ka/z7lccU8kFN+9ei8NOK/JAzgE7mSDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768227426; c=relaxed/simple;
	bh=7vYnFiBkpwExnJ92QT9aN8nzk29pJDjHrcs5omHTLbU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=huNLNUmHC4NhNyhVEM80cxMsBY7w3g1k7Trjas626UHG7pnaKqnuNQKCT5yLtjMc5CKAfKO82poKMN7o6x+OhQZGEltdH9qQtdsHAsnG08TIgF1nsQAr0kqsrtCgqWSAQe/1PNpd01wVjh5hqOZ3qydaF0DBPaZqadNhDSgJVbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MQwLVCVD; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-42fbc305914so4583029f8f.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 06:17:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768227422; x=1768832222; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fm9LC7Q6pHM3iIznNKKU/85q/p2bv2RihVpSb7jGoVU=;
        b=MQwLVCVDR2z983/Xa+UI1kVHQD6nlU74x3k4gDKpmehSr0e6lu8wKgvpOC5m0li4j+
         AP+rWEEW5Q+76DkK9GsCnKN8wTk/YU2VgLzWtRMxmjhrkokhDpxupx/7PCraWixKsRm2
         16lIaYG2wcop8ZBjXbh5QZAkkY/fNaVrNZ0uwf4zV2LBMWX0T0/n0u7KmHKFDL5UhCFi
         FbSeYxD1L4DvdwAuNmHr/gP1FAekcma+7e+e/UEU/b5pKebYPtm+4VJhxbLtxI7viERc
         757P2JztCsjVa/2IXCEMe6z7WW/KrwnvCDEuyYq1CWFPh7EyqGMsxof25tpx9NiI/lhE
         PN5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768227422; x=1768832222;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fm9LC7Q6pHM3iIznNKKU/85q/p2bv2RihVpSb7jGoVU=;
        b=VWbgV0Vrh64kWbx+vS6SemP7VY5Tg4fzVAapXVA7nfogJhwkMQaKskRvkotRFsmZJD
         Kltj/ohyuHTzUUHny/3JDVdYd9tp4I6MmJHFoyjXgJXnKag3zUo3oSAshVs8ZehNo4AL
         ElGZjWGU58osM5N5wh4v5aKowXSK2cJhHtYrtxKtXHY6+nbEFY1OzDE8F4BCPvT6wSjo
         /DlJ5Mz1HscGE+D9wRf48Pl4xO2kqwyOBp3rgTDFvKjzN3vpI+yzUvKOKORBQjpGQRj3
         YQ7mOJQ/H1fFf5JQEcFkji06K+CSygjzO/CXdizbB+z/1NJ9gZTc3vgiruD4UsVOYVdy
         XWsQ==
X-Forwarded-Encrypted: i=1; AJvYcCXW2IYygcOr6z/8yvEQIX6tPwMWi0r3LuUD8F8JK/TKNVLwRn4vx/d+yNNb/DZ4HwKlgT2vtuXzwIGR@vger.kernel.org
X-Gm-Message-State: AOJu0YzS/ONdYbhR+UWLWAaFz1b3+gCv6rSkyyhqf48S6vPJfCHrgBB0
	zbYu7J83XjwssK4jL/FHKWS9V8cjDH251Y2oVPT3Q9IVXjffncbyoGPOQi6lGE+nfy8=
X-Gm-Gg: AY/fxX7VGWwhX9U37CJSrMtJNy7dXUR6Jz6VwdRpvXr+BzcX8K5xnLxHK3G2lRBJBfV
	TqF3YAOc/uf8Z1cWCb6/eJ462GDLrySYYJQ80Ab6PKUFSbFLqunmgmUPnut7WF73Hv2lGWd11zv
	JiWkO+EVGxtl9ijKUkUTVtnAIs61ZcKeCEY6WpArlZ/C6mpsFGuK0spyyas2NUIaQLwnYr/wY8l
	8WrZq/7z4p93QK/CV0xzc0tK/vUMHkFxzkoKDDFG4pDchR1yYxBRTpdXQ+MVha/bbKv5ATdi84R
	+NCHGERFZfhaWznHNEhnrVPLCKih8J9Bk8jOfvf0pFv3NBfeW36mVFYxdl2JLAOJZbwXxgFQjfr
	PC39LaRM2bfGmOv4QOaoQlYSQ73xfpA01W9vM2KB/GLag/oyYrFVptjoj72KMwkHc2QmU5vqGXv
	+GUlO7hy5gRul00aB354DVscqCMHJb4okKk1JUxAloRr2P
X-Google-Smtp-Source: AGHT+IHNlPFBKNz+2ZRZZ9t05QHLsdHn/WFsZVu8yHrex7JrSPt24YIUeOWyhidmhFu/ilHAQpsbhQ==
X-Received: by 2002:a05:6000:420f:b0:430:fc0f:8f9f with SMTP id ffacd0b85a97d-432c37982f5mr20564928f8f.37.1768227422147;
        Mon, 12 Jan 2026 06:17:02 -0800 (PST)
Received: from gpeter-l.roam.corp.google.com ([2a00:23c7:3122:c601:4c43:39e0:348c:a72e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5dfa07sm38705096f8f.25.2026.01.12.06.17.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 06:17:00 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 12 Jan 2026 14:16:49 +0000
Subject: [PATCH v2 2/5] dt-bindings: clock: google,gs101-clock: Add DPU
 clock management unit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260112-dpu-clocks-v2-2-bd00903fdeb9@linaro.org>
References: <20260112-dpu-clocks-v2-0-bd00903fdeb9@linaro.org>
In-Reply-To: <20260112-dpu-clocks-v2-0-bd00903fdeb9@linaro.org>
To: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
 kernel-team@android.com, Will McVicker <willmcvicker@google.com>, 
 Juan Yescas <jyescas@google.com>, Doug Anderson <dianders@google.com>, 
 Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3650;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=7vYnFiBkpwExnJ92QT9aN8nzk29pJDjHrcs5omHTLbU=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBpZQJYMRh2zG+s19zqzkFlElB/8ggLdROb0DWf3
 IZY50tM8MWJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaWUCWAAKCRDO6LjWAjRy
 upf/D/9HyZdUMWgp/w6iAfYCSSZNOiTE9Iz9XR2ivysdHXnMX5se8DERFKYE4ahcwyOy1sHcoHv
 suvx7LBNBJLMthfV212t0qqnpn8caU8aB5APStGflaU/Fl2oe46L7EeLx72ZzHgLqbIyE2vkSdA
 v8zZScvfTtAw5Z6HnxATM5CmqeJ4H9ar7nz1isKJe2iIOh6KQEtUhuUyozDgtN9s3gHUHSip99s
 kqHj2lE59O9G+kUSGAH2xUEusGhsxQaHrTCUUx0pOF0WilGHYNWWR/xkXo9b+9CMP2wc/8Uhgsw
 m05GuDzN5GTRXX6wmNZ0c9iw0FXlr47h5HJxks3QBVENp9ogB/FNR9EO9DT1jnbi5HW6WCFaHCp
 AURti+0o8r7UNSgUfbkrH7yLpBG28HkwlWdtcxaGUpe3HbXMcWjnqU+l7mi15+JrrNRiFbIGVvl
 lFUFdSj5MmXKcVgYs27YguKBtK9KI2fqjBgH2ihHfSTs4FSxClMPVl6JGyVbfZiulqKbUZIwjJO
 0EtGiqvV1Cg0a3cJ3UG4jqeVQjCfhADTON9RSqx2XRmw/jCqqZwLIiKFDBNXr7OliUuZ5Nk6jCx
 W3Hj5qOsNg78WOGwsoKH97fItIXpFNWtINrya6M1tcU2HwMZRZ7s9mNL3E04Tdzu0+pRPlNerfi
 nczmTY7IJyb73mg==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

Add dt schema documentation and clock IDs for the Display Process Unit
(DPU) clock management unit (CMU). This CMU feeds IPs such as image scaler,
enhancer and compressor.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
Changes in v2
 - alphanumeric placement (Krzysztof)
---
 .../bindings/clock/google,gs101-clock.yaml         | 19 ++++++++++++
 include/dt-bindings/clock/google,gs101.h           | 36 ++++++++++++++++++++++
 2 files changed, 55 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
index a8176687bb773ae90800b9c256bcccebfdef2e49..00620ab1872db0489dce1823ab500c0062b651f0 100644
--- a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
@@ -28,6 +28,7 @@ properties:
   compatible:
     enum:
       - google,gs101-cmu-apm
+      - google,gs101-cmu-dpu
       - google,gs101-cmu-hsi0
       - google,gs101-cmu-hsi2
       - google,gs101-cmu-misc
@@ -82,6 +83,24 @@ allOf:
           items:
             - const: oscclk
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: google,gs101-cmu-dpu
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: External reference clock (24.576 MHz)
+            - description: DPU bus clock (from CMU_TOP)
+
+        clock-names:
+          items:
+            - const: oscclk
+            - const: bus
+
   - if:
       properties:
         compatible:
diff --git a/include/dt-bindings/clock/google,gs101.h b/include/dt-bindings/clock/google,gs101.h
index 442f9e9037dc33198a1cee20af62fc70bbd96605..4ee46503663c1f8d9463536c347de5d991474145 100644
--- a/include/dt-bindings/clock/google,gs101.h
+++ b/include/dt-bindings/clock/google,gs101.h
@@ -634,4 +634,40 @@
 #define CLK_GOUT_PERIC1_CLK_PERIC1_USI9_USI_CLK		45
 #define CLK_GOUT_PERIC1_SYSREG_PERIC1_PCLK		46
 
+/* CMU_DPU */
+#define CLK_MOUT_DPU_BUS_USER				1
+#define CLK_DOUT_DPU_BUSP				2
+#define CLK_GOUT_DPU_PCLK				3
+#define CLK_GOUT_DPU_CLK_DPU_OSCCLK_CLK			4
+#define CLK_GOUT_DPU_AD_APB_DPU_DMA_PCLKM		5
+#define CLK_GOUT_DPU_DPUF_ACLK_DMA			6
+#define CLK_GOUT_DPU_DPUF_ACLK_DPP			7
+#define CLK_GOUT_DPU_D_TZPC_DPU_PCLK			8
+#define CLK_GOUT_DPU_GPC_DPU_PCLK			9
+#define CLK_GOUT_DPU_LHM_AXI_P_DPU_I_CLK		10
+#define CLK_GOUT_DPU_LHS_AXI_D0_DPU_I_CLK		11
+#define CLK_GOUT_DPU_LHS_AXI_D1_DPU_I_CLK		12
+#define CLK_GOUT_DPU_LHS_AXI_D2_DPU_I_CLK		13
+#define CLK_GOUT_DPU_PPMU_DPUD0_ACLK			14
+#define CLK_GOUT_DPU_PPMU_DPUD0_PCLK			15
+#define CLK_GOUT_DPU_PPMU_DPUD1_ACLK			16
+#define CLK_GOUT_DPU_PPMU_DPUD1_PCLK			17
+#define CLK_GOUT_DPU_PPMU_DPUD2_ACLK			18
+#define CLK_GOUT_DPU_PPMU_DPUD2_PCLK			19
+#define CLK_GOUT_DPU_CLK_DPU_BUSD_CLK			20
+#define CLK_GOUT_DPU_CLK_DPU_BUSP_CLK			21
+#define CLK_GOUT_DPU_SSMT_DPU0_ACLK			22
+#define CLK_GOUT_DPU_SSMT_DPU0_PCLK			23
+#define CLK_GOUT_DPU_SSMT_DPU1_ACLK			24
+#define CLK_GOUT_DPU_SSMT_DPU1_PCLK			25
+#define CLK_GOUT_DPU_SSMT_DPU2_ACLK			26
+#define CLK_GOUT_DPU_SSMT_DPU2_PCLK			27
+#define CLK_GOUT_DPU_SYSMMU_DPUD0_CLK_S1		28
+#define CLK_GOUT_DPU_SYSMMU_DPUD0_CLK_S2		29
+#define CLK_GOUT_DPU_SYSMMU_DPUD1_CLK_S1		30
+#define CLK_GOUT_DPU_SYSMMU_DPUD1_CLK_S2		31
+#define CLK_GOUT_DPU_SYSMMU_DPUD2_CLK_S1		32
+#define CLK_GOUT_DPU_SYSMMU_DPUD2_CLK_S2		33
+#define CLK_GOUT_DPU_SYSREG_DPU_PCLK			34
+
 #endif /* _DT_BINDINGS_CLOCK_GOOGLE_GS101_H */

-- 
2.52.0.457.g6b5491de43-goog


