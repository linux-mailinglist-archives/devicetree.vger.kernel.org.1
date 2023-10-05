Return-Path: <devicetree+bounces-6201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F857BA377
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 17:57:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 86D24282C2D
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:57:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 088D0328B5;
	Thu,  5 Oct 2023 15:57:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EwOD+6J0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4352E31A6A
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 15:57:38 +0000 (UTC)
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC5A287209
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 08:57:35 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-32488a22810so1039900f8f.3
        for <devicetree@vger.kernel.org>; Thu, 05 Oct 2023 08:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696521454; x=1697126254; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QsPPxazWNR9GZX2GO53uCm+7icHkcSZjslvI+J0YBFw=;
        b=EwOD+6J0I/hVtzmo8eIP//TELnGESExaG2DEoAn2tjWKiMCMMIPVrJiiT+owqZvMqZ
         wDp0cCfTPHxrPPNFMXXqSzRZRCWjOvoZX3/pY6WQtJ1avgm9jSYg003W+3KhjqQ0qcpl
         G3aDWiMUhNAk65oqPqn5wJXi1zCzCW0hq2rCNNAlAB/YmoI81eBr6A3+o3P1pB9+vM/i
         hWAWgSk4yWoURHpqXER7twOBWQ+FrfhDd7t6/s54VPVZWJVqv5UvIotW86X90K8Kf3MH
         SWsAguFBJSoYMyR5cNGDaMm9hhp35BOHoBmkJCjbCp5KuFRRNciW2MUVBFdveEXdciwe
         GP4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696521454; x=1697126254;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QsPPxazWNR9GZX2GO53uCm+7icHkcSZjslvI+J0YBFw=;
        b=e5tehzeEiV4pXByXzmuwHCwK8X6OJ1gHzYE1OBumhuWcbhYnr2aFTC19KO6cXxbnQB
         QFwuPL8oh1cJUwcJyKgHAiPHJaTlsmZjmpNken5gaea7tWJfBZ/7Q0w5Fvf8AuUqHwZ6
         2YailfkgX9DhGViEL+YVVUe1OqwnvcdETxBgURhhiGxnjvDlhSm9t5W/F+5+Tg2g6HOj
         mQ3AFwwO7zkj6ncJQnAN+4pQXftJN3abReSqmPJh34QRaZfKIO3IkEIddZqoFKWVymDi
         CE70NeA15OssvnkvuxHhhvBYqxlYAf1723uOKbTF4CAeMK61YvtppUntmbucczOx9KAV
         U1hQ==
X-Gm-Message-State: AOJu0YzeCUAU9/ajQ4dsPkJ4kIWoxkjNsBcP4OYE4B2K8400W+6bWMM3
	PGQt6zwfGxL65AENnByBfL+FFg==
X-Google-Smtp-Source: AGHT+IHUyJpuQbW68qjMruXib/ii+3Nwgybhtbaupq7BnOuixwUEbyhlm+DL6/M5TMqX57BaO4ziFQ==
X-Received: by 2002:adf:e406:0:b0:31a:e6c2:7705 with SMTP id g6-20020adfe406000000b0031ae6c27705mr4915179wrm.50.1696521454330;
        Thu, 05 Oct 2023 08:57:34 -0700 (PDT)
Received: from gpeter-l.lan (host-92-12-225-146.as13285.net. [92.12.225.146])
        by smtp.gmail.com with ESMTPSA id t9-20020a5d4609000000b0031f8a59dbeasm2084336wrq.62.2023.10.05.08.57.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 08:57:33 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	conor+dt@kernel.org,
	sboyd@kernel.org,
	tomasz.figa@gmail.com,
	s.nawrocki@samsung.com,
	linus.walleij@linaro.org,
	wim@linux-watchdog.org,
	linux@roeck-us.net,
	catalin.marinas@arm.com,
	will@kernel.org,
	arnd@arndb.de,
	olof@lixom.net,
	cw00.choi@samsung.com
Cc: peter.griffin@linaro.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	semen.protsenko@linaro.org,
	soc@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-watchdog@vger.kernel.org
Subject: [PATCH 10/21] dt-bindings: clock: gs101: Add cmu_apm clock indices
Date: Thu,  5 Oct 2023 16:56:07 +0100
Message-ID: <20231005155618.700312-11-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.42.0.582.g8ccd20d70d-goog
In-Reply-To: <20231005155618.700312-1-peter.griffin@linaro.org>
References: <20231005155618.700312-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

CMU_APM generates clocks for the Active Power Management
controller. Add clock indices for those muxs, dividers and
gates.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 include/dt-bindings/clock/gs101.h | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/include/dt-bindings/clock/gs101.h b/include/dt-bindings/clock/gs101.h
index d1e216a33aeb..d9b8299fcc0b 100644
--- a/include/dt-bindings/clock/gs101.h
+++ b/include/dt-bindings/clock/gs101.h
@@ -201,4 +201,21 @@
 #define CLK_GOUT_BO_BUS			184
 #define CLK_GOUT_CMU_BOOST		185
 
+/* CMU_APM */
+
+#define CLK_MOUT_APM_FUNC					1
+#define CLK_MOUT_APM_FUNCSRC					2
+#define CLK_DOUT_APM_BOOST					3
+#define CLK_DOUT_APM_USI0_UART					4
+#define CLK_DOUT_APM_USI0_USI					5
+#define CLK_DOUT_APM_USI1_UART					6
+#define CLK_GOUT_APM_FUNC					7
+#define CLK_GOUT_APM_UID_APBIF_GPIO_ALIVE_IPCLKPORT_PCLK	8
+#define CLK_GOUT_APM_UID_APBIF_GPIO_FAR_ALIVE_IPCLKPORT_PCLK	9
+#define CLK_GOUT_APM_UID_APBIF_PMU_ALIVE_IPCLKPORT_PCLK		10
+#define CLK_GOUT_APM_UID_SYSREG_APM_IPCLKPORT_PCLK		11
+#define CLK_APM_PLL_DIV2_APM					12
+#define CLK_APM_PLL_DIV4_APM					13
+#define CLK_APM_PLL_DIV16_APM					14
+
 #endif /* _DT_BINDINGS_CLOCK_GOOGLE_GS101_H */
-- 
2.42.0.582.g8ccd20d70d-goog


