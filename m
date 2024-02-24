Return-Path: <devicetree+bounces-45590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD86862751
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 21:21:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 972B7B21816
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 20:21:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF2264D137;
	Sat, 24 Feb 2024 20:20:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LXnOPI4w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05EC34CB47
	for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 20:20:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708806057; cv=none; b=c6wAEe65Veze5goQJPV3FF6PJsXm5AXcTzTFhnPkCe3+Obcao65hyYhnU9pLkWRDR5gSjrmeDDxqj1IiQ9D8U5iFNjlZC/DzgkZCDoe+3LrMfs25GIyoO32pwGZb0MknvwaWA01JutcL3zQqRzXxSU2xAtJqdtZWruLj6isHwnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708806057; c=relaxed/simple;
	bh=OhURSWM8+fuAVHhkszMUOwGry5e3K6VMP6vMpX968h0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=U89M+FGZYm5TDNFuD+ps4Se24MuDw0AdS7yX8EaKsRVLVbwjtSktYYX/0pwBQO99Da7SwulWY3WsZo7iIygPg+WZVLrv/0GwBDA24gNYIuq5Kfe+vj7E3zvadimAsNBFoLKdINtMuZt2GMi2qYroFTXDhg62vwcv/p3NldVMsiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LXnOPI4w; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-6ddca59e336so1161132a34.0
        for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 12:20:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708806055; x=1709410855; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Itgu/CZdB2adz5dOihNeRA11oIiQNAIilHhTarLaGhY=;
        b=LXnOPI4wcHhWM0iUeHs2bGAvvsTSoMWPV00HsLUebi738YVCJHAIbdZPa27epBlW1T
         iycZvEqmpyGGIlaqExYN4Uol46DbTwjef3kpCZ0uEEe2hzulxN/7aYiimL5rV9oyNPyg
         kdAQK8qfo69VGLnCcbkdHwm5vYX75JzZoOilUblVDFFbBCcl4WCTdo4SoFbieCjGTnVe
         qi9LyH3ICfGtkUUh6RVuNu2YhGm8JZHGcq0Ph0BRgWHWiDLr7GiV0RoiTarYN3g4bXJS
         Uye3RM69rR4wcPzazDOTwL0Csb76AskY2F+O+RFpqu7CEWZzu7zsbp/hmEQu7YYkY6b4
         bw+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708806055; x=1709410855;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Itgu/CZdB2adz5dOihNeRA11oIiQNAIilHhTarLaGhY=;
        b=Pfi6rtYvZA2AWfheQkoTHhgZLt9d+w11TlGzUm1jSEwknb4TUN23pJNVfzA9404khK
         RjQjOw6k2W+M4FFeSiTnT7PHf0i6xrPNvXYSNwv+1LjholA6ylsCx4z6IQse+XeV7LVS
         X3RKO+G8Y3uXINokCDUtv6Vcu2cVWnUEQkPebnf2z62IQUmtleByY91Wvf/7qc2jEuwt
         z55LfPoxwDF1vSl34lCtIt2FAP9EynA/TPHc89zYoaTs1KPG6RiQitBx4VKya4Q7NJXe
         +DU5esF1Ppe/HlsZRmk5hI5gRrWZTUW0N7OBrKMpjtetJ7cIger3G5/nbvzTZ836bb9R
         efOA==
X-Forwarded-Encrypted: i=1; AJvYcCW0C4NV3ndlQv1RVbnV1xQzgs+Rd9zMYyenPD7lgq9BC3Ecv0cJ/4SkNLeeKMfvE2lsXifZqUyV8/symguHA8JS2XvqdOnJf9AKPg==
X-Gm-Message-State: AOJu0YwRvVvOsC0Zefg/vN0JsL+5YI2oC9gNeuqtJQ2nTZRrHaoXOxe5
	s2F/sC0ytUTGtvN+hhwwtdQLilcH0CMKjIjjjo+yrnnsnlfZjW6rWZVer9mZD20=
X-Google-Smtp-Source: AGHT+IEaFdafQDxvOhqf7szlKBjLkGDFQh1IaD2JJ1F/oKaL+attengEbCt1ufEL8VF8J7YfxLkw5w==
X-Received: by 2002:a9d:6045:0:b0:6e4:8c95:1ac9 with SMTP id v5-20020a9d6045000000b006e48c951ac9mr1050906otj.16.1708806055136;
        Sat, 24 Feb 2024 12:20:55 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id m24-20020a4a2418000000b005a044f901c0sm454345oof.23.2024.02.24.12.20.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Feb 2024 12:20:54 -0800 (PST)
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
Subject: [PATCH v3 01/15] dt-bindings: clock: exynos850: Add CMU_CPUCLK0 and CMU_CPUCL1
Date: Sat, 24 Feb 2024 14:20:39 -0600
Message-Id: <20240224202053.25313-2-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240224202053.25313-1-semen.protsenko@linaro.org>
References: <20240224202053.25313-1-semen.protsenko@linaro.org>
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
Changes in v3:
  - none

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


