Return-Path: <devicetree+bounces-42797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D677785888E
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 23:33:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66C0228C79C
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 22:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDC0714831C;
	Fri, 16 Feb 2024 22:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Enk4v12D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 828161350DE
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 22:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708122769; cv=none; b=BnGxTMg/r8LDgSvQWWXDYN6Qh8fmoQRoFN1N35rTCea6u4RAmBbys4Bn5L+NeVn1/kZWMIThbdXhIPeq2Fx5wnUdj5/pOshc2cMhM7NJK3niLqdGkQP5KCJSlFxYksybzH1hqbVDaKTfOsRLl0x3grLc7p23CdG4qF5SwdqClpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708122769; c=relaxed/simple;
	bh=ku6VSMwio83DtGsAZETFAIVDDL/5/fD1fkCL9iTm1sM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SEqWiVy9CrF7zuvodmSVvDKrYUYhR9hjcYW0rfcjyJt/po7ijQ31q3H3b3J3mvnjcM1IG56STrbeokbEoIcAr9nLkmDQ2C46uKZhjvoqRPiqz2elf+lXPIA9Eawdm9OGqtzIEReWNoTeye2ivVUIX93kt3yoXuZZMLcSo4Bc7so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Enk4v12D; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-6e2e44aad03so1529891a34.2
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 14:32:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708122766; x=1708727566; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bvsfav+nL4sYpB4KGZGKljNCHaZWKG3pZvV4LqQ31bA=;
        b=Enk4v12D5bhxug0A5MSAC+3zdnH21VGgpHJpxFDeOdekvRZIWGZfkRkKRGhW0w1z9v
         YLHlVRGodtZcLN/n6zov1l2C4JN9kauaRdkdYds8ntp42EVFT4dHwZGHAyVtZOko2m10
         o5qgNh6jQf/J/QPOgKiaByK4hWZQI0J1TgsYkJ4BwcUy2dNoLPSWAORqEivSZ062+2LG
         S6DLIGZtTlx+6AAvFr479SVJnxD7H+F5N+KxAzpFRbwyUHYumidybZM2k4rrIXTT7J47
         mNs2+BQuwWzrkIECdIJk8PHLlKNKEkONMxk9Xw3Lu+hkoRCHj+BNoI/D4T9TmoJzrgtZ
         yWCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708122766; x=1708727566;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bvsfav+nL4sYpB4KGZGKljNCHaZWKG3pZvV4LqQ31bA=;
        b=u9xAhIPtAX6jEiFFf+pVlgKIOU1J5nV4HSBAIUR7cPQJgZCgyC6igOgkraZsa/HJq7
         OqJdf7R8KA78IlGkeMymBKp9/s9dqe05tu/DM8P0wO7n6w8vvWEwDAe3jPpn6hSOMSYa
         EyMGNSKuWL0U+06N/HjYdX9dPgRFjqN/t001AtiAijBkH3uOKZfHETKAlC/1lFQT+8qs
         xTClty1gBa9ws4SEITh22RieEM4YmHGKGzTsWwF6tGZBznzEyjnnL6Vtu5GCEG0eUrwJ
         ke770/jihg2QpYJm69bAwL/ZNEBTDI0zxNxpyhEh1e2h+8vCQWQzcIRNhHtV0/ikANzD
         T5mQ==
X-Forwarded-Encrypted: i=1; AJvYcCXptZTItfjYBJb8sS1PjbTTtTLGDXS1tJG4QSulusNrSuYah7RlCPcs1EEdqmfFwUk6myn/RNMmVUWeqf4VJsBT3ZgrlOR+c47jog==
X-Gm-Message-State: AOJu0YxWY7b61zADBcaVVxGzrz0LftQ3gtevgzZwskhDsUyhA66C2Vh3
	Vj9xrmglCpQxlZ20Bm91nb4TlHhNpmNt5PPbCaNWPD/JXKzoKVAOa5c8HvKvs+g=
X-Google-Smtp-Source: AGHT+IFJKSlBLkHVFNOYrhkwPUESYeVtC3s7eHYrTfB8gdFfprT/xAHfYUMpKwe8nk4pBbw4D4DbNQ==
X-Received: by 2002:a05:6830:3103:b0:6e4:3c38:fb80 with SMTP id b3-20020a056830310300b006e43c38fb80mr2630072ots.10.1708122766570;
        Fri, 16 Feb 2024 14:32:46 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id dq20-20020a0568300ed400b006e2e8cb4da6sm141962otb.16.2024.02.16.14.32.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 14:32:46 -0800 (PST)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 01/16] dt-bindings: clock: exynos850: Add CMU_CPUCLK0 and CMU_CPUCL1
Date: Fri, 16 Feb 2024 16:32:30 -0600
Message-Id: <20240216223245.12273-2-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240216223245.12273-1-semen.protsenko@linaro.org>
References: <20240216223245.12273-1-semen.protsenko@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document CPU clock management unit compatibles and add corresponding
clock indices. Exynos850 has two CPU clusters (CL0 and CL1), each
containing 4 Cortex-A55 cores. CPU PLLs are generating main CPU clocks
for each cluster, and there are alternate ("switch") clocks that can be
used temporarily while re-configuring the PLL for the new rate. ACLK,
ATCLK, PCLKDBG and PERIPHCLK clocks are driving corresponding buses.
CLK_CLUSTERx_SCLK are actual leaf CPU clocks and should be used to
change CPU rates. Also some CoreSight clocks can be derived from
DBG_USER (debug clock).

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 .../clock/samsung,exynos850-clock.yaml        | 42 +++++++++++++++
 include/dt-bindings/clock/exynos850.h         | 54 +++++++++++++++++++
 2 files changed, 96 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/samsung,exynos850-clock.yaml b/Documentation/devicetree/bindings/clock/samsung,exynos850-clock.yaml
index c752c8985a53..cdc5ded59fe5 100644
--- a/Documentation/devicetree/bindings/clock/samsung,exynos850-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/samsung,exynos850-clock.yaml
@@ -36,6 +36,8 @@ properties:
       - samsung,exynos850-cmu-aud
       - samsung,exynos850-cmu-cmgp
       - samsung,exynos850-cmu-core
+      - samsung,exynos850-cmu-cpucl0
+      - samsung,exynos850-cmu-cpucl1
       - samsung,exynos850-cmu-dpu
       - samsung,exynos850-cmu-g3d
       - samsung,exynos850-cmu-hsi
@@ -152,6 +154,46 @@ allOf:
             - const: dout_core_mmc_embd
             - const: dout_core_sss
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynos850-cmu-cpucl0
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: External reference clock (26 MHz)
+            - description: CPUCL0 switch clock (from CMU_TOP)
+            - description: CPUCL0 debug clock (from CMU_TOP)
+
+        clock-names:
+          items:
+            - const: oscclk
+            - const: dout_cpucl0_switch
+            - const: dout_cpucl0_dbg
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynos850-cmu-cpucl1
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: External reference clock (26 MHz)
+            - description: CPUCL1 switch clock (from CMU_TOP)
+            - description: CPUCL1 debug clock (from CMU_TOP)
+
+        clock-names:
+          items:
+            - const: oscclk
+            - const: dout_cpucl1_switch
+            - const: dout_cpucl1_dbg
+
   - if:
       properties:
         compatible:
diff --git a/include/dt-bindings/clock/exynos850.h b/include/dt-bindings/clock/exynos850.h
index bc15108aa3c2..7666241520f8 100644
--- a/include/dt-bindings/clock/exynos850.h
+++ b/include/dt-bindings/clock/exynos850.h
@@ -88,6 +88,18 @@
 #define CLK_MOUT_G3D_SWITCH		76
 #define CLK_GOUT_G3D_SWITCH		77
 #define CLK_DOUT_G3D_SWITCH		78
+#define CLK_MOUT_CPUCL0_DBG		79
+#define CLK_MOUT_CPUCL0_SWITCH		80
+#define CLK_GOUT_CPUCL0_DBG		81
+#define CLK_GOUT_CPUCL0_SWITCH		82
+#define CLK_DOUT_CPUCL0_DBG		83
+#define CLK_DOUT_CPUCL0_SWITCH		84
+#define CLK_MOUT_CPUCL1_DBG		85
+#define CLK_MOUT_CPUCL1_SWITCH		86
+#define CLK_GOUT_CPUCL1_DBG		87
+#define CLK_GOUT_CPUCL1_SWITCH		88
+#define CLK_DOUT_CPUCL1_DBG		89
+#define CLK_DOUT_CPUCL1_SWITCH		90
 
 /* CMU_APM */
 #define CLK_RCO_I3C_PMIC		1
@@ -195,6 +207,48 @@
 #define CLK_GOUT_CMGP_USI1_PCLK		14
 #define CLK_GOUT_SYSREG_CMGP_PCLK	15
 
+/* CMU_CPUCL0 */
+#define CLK_FOUT_CPUCL0_PLL		1
+#define CLK_MOUT_PLL_CPUCL0		2
+#define CLK_MOUT_CPUCL0_SWITCH_USER	3
+#define CLK_MOUT_CPUCL0_DBG_USER	4
+#define CLK_MOUT_CPUCL0_PLL		5
+#define CLK_DOUT_CPUCL0_CPU		6
+#define CLK_DOUT_CPUCL0_CMUREF		7
+#define CLK_DOUT_CPUCL0_PCLK		8
+#define CLK_DOUT_CLUSTER0_ACLK		9
+#define CLK_DOUT_CLUSTER0_ATCLK		10
+#define CLK_DOUT_CLUSTER0_PCLKDBG	11
+#define CLK_DOUT_CLUSTER0_PERIPHCLK	12
+#define CLK_GOUT_CLUSTER0_ATCLK		13
+#define CLK_GOUT_CLUSTER0_PCLK		14
+#define CLK_GOUT_CLUSTER0_PERIPHCLK	15
+#define CLK_GOUT_CLUSTER0_SCLK		16
+#define CLK_GOUT_CPUCL0_CMU_CPUCL0_PCLK	17
+#define CLK_GOUT_CLUSTER0_CPU		18
+#define CLK_CLUSTER0_SCLK		19
+
+/* CMU_CPUCL1 */
+#define CLK_FOUT_CPUCL1_PLL		1
+#define CLK_MOUT_PLL_CPUCL1		2
+#define CLK_MOUT_CPUCL1_SWITCH_USER	3
+#define CLK_MOUT_CPUCL1_DBG_USER	4
+#define CLK_MOUT_CPUCL1_PLL		5
+#define CLK_DOUT_CPUCL1_CPU		6
+#define CLK_DOUT_CPUCL1_CMUREF		7
+#define CLK_DOUT_CPUCL1_PCLK		8
+#define CLK_DOUT_CLUSTER1_ACLK		9
+#define CLK_DOUT_CLUSTER1_ATCLK		10
+#define CLK_DOUT_CLUSTER1_PCLKDBG	11
+#define CLK_DOUT_CLUSTER1_PERIPHCLK	12
+#define CLK_GOUT_CLUSTER1_ATCLK		13
+#define CLK_GOUT_CLUSTER1_PCLK		14
+#define CLK_GOUT_CLUSTER1_PERIPHCLK	15
+#define CLK_GOUT_CLUSTER1_SCLK		16
+#define CLK_GOUT_CPUCL1_CMU_CPUCL1_PCLK	17
+#define CLK_GOUT_CLUSTER1_CPU		18
+#define CLK_CLUSTER1_SCLK		19
+
 /* CMU_G3D */
 #define CLK_FOUT_G3D_PLL		1
 #define CLK_MOUT_G3D_PLL		2
-- 
2.39.2


