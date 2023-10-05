Return-Path: <devicetree+bounces-6202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CC57BA378
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 17:57:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 595F71C20984
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:57:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0149D328A3;
	Thu,  5 Oct 2023 15:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Mi3d0w2o"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E18328D4
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 15:57:39 +0000 (UTC)
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54DBD4EE1
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 08:57:37 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-3248aa5cf4eso1164117f8f.1
        for <devicetree@vger.kernel.org>; Thu, 05 Oct 2023 08:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696521455; x=1697126255; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sCRvx18FXBZUIE55KgKCOULc2WUqPQQy1aHNXgrW/y8=;
        b=Mi3d0w2olglNDWnNu8Yu+exguXEdJJXXYh/tY4f1lyxJLlxBQ6iHRxjhXkxoseGfwU
         iixAD+/OsQwxtbTTiR/5ha+ecW1STPSDQE0iUYHYOu7uvl0UXB/S7Q3k5ajXyngAVMRB
         5IJ7ocpcTXH+1V5udWDoTTcJhvtrO0gtRm4c3nHwrnR05soUEQ/fm8TK+HmLODFnDG3W
         xd8H6fYMOtrmSRNOlfOHAlcrKr2g/m9QLrG9MRI15DsCGmSjnBzeFRqJ4Q2yZ3ni0WIq
         t9eilC8PsGzY0dmJZgZ5t+7kIDMgkJA4aa5NqT/nvyCVsXYBgV2BFMdKXoVVad9uswKv
         0Jnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696521455; x=1697126255;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sCRvx18FXBZUIE55KgKCOULc2WUqPQQy1aHNXgrW/y8=;
        b=kZBRkV74HuA/Vr7Gzmpiw5+AZDqpsprxcD4vsGqdTPZAk5SPObRrvoYIWDUpLmy65i
         GWa9Fs6oIAs9XdyxcITHRSZ0qqVGoPsryStgdb1samkkVODKcu1gDrg1ZFSteg5ylsq+
         DqKvMORPMNqY3US0+R5QDKGtb2cPb/KzPNCx5jbP1dxpcJRPjsjjBFivSyO6CEhFjmfZ
         u6UVT85wnppwTy71jvWdgAISt7culrzgqD8ik+t17x1BYUrygv50iV33WiZZFBufvqJe
         jJ+M7HdVV4eeOcXEKL1bbu2qB35G2W3A9cXQmEqToZ7RFVNkf3jY6gJG1BO5g788m6Mb
         dVmA==
X-Gm-Message-State: AOJu0YzoLiY9u8bb9nhszLuB4JZDhTr8/Z+CMnoOTIDMs4xxImLDFjHb
	Ha59tLyclKzHAWZtjOxcAhQbxQ==
X-Google-Smtp-Source: AGHT+IGXl1CoGjZQDrIr/dGSwn1zWY2LS9ksQvXQhCz9d02zBxSqzFembYLOfI32ScvmkDqICjuDCQ==
X-Received: by 2002:adf:ec48:0:b0:31f:f99c:600a with SMTP id w8-20020adfec48000000b0031ff99c600amr5234563wrn.46.1696521455682;
        Thu, 05 Oct 2023 08:57:35 -0700 (PDT)
Received: from gpeter-l.lan (host-92-12-225-146.as13285.net. [92.12.225.146])
        by smtp.gmail.com with ESMTPSA id t9-20020a5d4609000000b0031f8a59dbeasm2084336wrq.62.2023.10.05.08.57.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 08:57:35 -0700 (PDT)
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
Subject: [PATCH 11/21] dt-bindings: clock: gs101: Add cmu_misc clock indices
Date: Thu,  5 Oct 2023 16:56:08 +0100
Message-ID: <20231005155618.700312-12-peter.griffin@linaro.org>
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

CMU_MISC generates clocks for IPs such as Watchdog. Add
clock indices for the PLLs, Muxes, dividers and gates
in this clock management unit.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 include/dt-bindings/clock/gs101.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/dt-bindings/clock/gs101.h b/include/dt-bindings/clock/gs101.h
index d9b8299fcc0b..7765ba68f734 100644
--- a/include/dt-bindings/clock/gs101.h
+++ b/include/dt-bindings/clock/gs101.h
@@ -218,4 +218,15 @@
 #define CLK_APM_PLL_DIV4_APM					13
 #define CLK_APM_PLL_DIV16_APM					14
 
+/* CMU_MISC */
+
+#define CLK_MOUT_MISC_BUS_USER					1
+#define CLK_MOUT_MISC_SSS_USER					2
+#define CLK_DOUT_MISC_BUSP					3
+#define CLK_DOUT_MISC_GIC					4
+#define CLK_GOUT_MISC_PCLK					5
+#define CLK_GOUT_MISC_SYSREG_PCLK				6
+#define CLK_GOUT_MISC_WDT_CLUSTER0				7
+#define CLK_GOUT_MISC_WDT_CLUSTER1				8
+
 #endif /* _DT_BINDINGS_CLOCK_GOOGLE_GS101_H */
-- 
2.42.0.582.g8ccd20d70d-goog


