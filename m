Return-Path: <devicetree+bounces-44558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A062E85EF66
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 04:02:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1A3CC1F22A46
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 03:02:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3D2B17567;
	Thu, 22 Feb 2024 03:02:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YIqAuOOu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3BA014F75
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 03:02:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708570959; cv=none; b=b9x0jlFW5WtEtIVIQgwGCFyPxpKRQM9mlWhgyAvIR7ns5QLQ9Q7ZEtdek7AuW9hqu4CJhOvIZVXfqHwNSLjUv7bi49uJmjNJ7YKdqJLlGCfQTVqy0P/O9bLY3zDmCECv7VsQUNq+L+aPnVGROqSV30ozpHqO+CmAGBLR5bP+5V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708570959; c=relaxed/simple;
	bh=8vWV1Mv+AW+m/YunJ4auSKH+jDdAYPe4rPSZJmcSeYo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=pteHrUo5FsToY/pXqsf4Wslb/ykdrnEEx3zB3H8WwUBaaKJF9tFUlLvKBkOUUJf9xVeAYUmwWUtaUTSf+ikKLYpOAHsEG1croi1CuhwsSr6Ea7h/b7SDA9JDMWzcl6QG7WTd2rZW8T+Bgn5kl03b8jPGkWZTiAKbYpYbtiCC9V8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YIqAuOOu; arc=none smtp.client-ip=209.85.161.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-58e256505f7so5109873eaf.3
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 19:02:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708570957; x=1709175757; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tXl7epSj4Hm//gRuC/pavIVEpVVJtfwOYFt5D7t6v7c=;
        b=YIqAuOOuJcmXwJJC4dIorbxcwyJQi6Bj7fKmQFPCSFICSY6X6eVtVd1f6Qop0Wivwa
         L/daoqODmF8JInPykF0ZxMntxYbSnVZTT6T2R+iR7JLTy6HJPr6xAu2yYr9tExR1CgmK
         +9gqzB4ygxTGPrZI+EufbMIU2x7MLWQ2lqrnASw3WyxGT66uR/35QzAAxr7IDc297EgE
         m/zSv5GtsuZugTyankw7ue15nPx9ekAYoAkmltnGtxtVtZIn+/aykqTenezNxMPUS+Oo
         4H0+16/ro0lhZnC+xLtcEZp3ia+4AcvdsNPSa+liI5TvjEUaeViYSSF/SRq0+VDadEEN
         R5xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708570957; x=1709175757;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tXl7epSj4Hm//gRuC/pavIVEpVVJtfwOYFt5D7t6v7c=;
        b=PPprFVgYKSNyPlTvXRdWVbEUlY092gqaMQvrPBEFqC6zgHan82gWWnqFnI2+I8tEm8
         S2y7O8Xzf+7PIQQAP3u17MZ5xf+yu1ofmSfBTu/ozoBIFDh1BknN72Fl4V03i6UlVG5o
         vIlXPytG+jiI2F0Hp4eUqW2uRVnQcFoukBCCJFcuftchF1+KJPETmpK58z2Dd6jPc+Jr
         BPQoN1bTXolaYbNNCTjy9gHIwaT5wnAZ4OLnmE8aTqsmSGO19J7rL1yNGohTK7JoTve+
         tIXFimS8FYcF0S33+1uhtDvBsS0XaPB1qa445K3h98r/QPGMlMV1pwkFG1EsO8m+F0Wt
         mP6w==
X-Forwarded-Encrypted: i=1; AJvYcCXZpz8iv1wF/5yKc++sPFaCjPf7vw2HJxDyA1QHn46hHE+3rtIEuuW7aLgAmyQX9Cc4vOuPwqS2J72Vp+a2RfpA3iNTad4uxRhuZg==
X-Gm-Message-State: AOJu0Yxk5osR3yy3wwn3VXI30xIEizKCl01qWh2VYZOqvjgcbGq88ofG
	B5g94Mvm4lMkdyVNsE/POhS0A+uBf48rv+InPSXuR4pGa9ksL7QhFFMvOedFKE4=
X-Google-Smtp-Source: AGHT+IFor9F+Hst3Q1Zd9o6WhSFN2bhosbD8FvCV9jhtbwUPENaicgSM1GOT6uXqgmRUV2DQ6L/2Aw==
X-Received: by 2002:a4a:ea24:0:b0:5a0:e93:8f7 with SMTP id y4-20020a4aea24000000b005a00e9308f7mr3438031ood.8.1708570957001;
        Wed, 21 Feb 2024 19:02:37 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id z6-20020a9d7a46000000b006e43f8eac57sm1793089otm.50.2024.02.21.19.02.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Feb 2024 19:02:36 -0800 (PST)
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
Subject: [PATCH v2 01/15] dt-bindings: clock: exynos850: Add CMU_CPUCLK0 and CMU_CPUCL1
Date: Wed, 21 Feb 2024 21:02:21 -0600
Message-Id: <20240222030235.27815-2-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240222030235.27815-1-semen.protsenko@linaro.org>
References: <20240222030235.27815-1-semen.protsenko@linaro.org>
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
Changes in v2:
  - none

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


