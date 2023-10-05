Return-Path: <devicetree+bounces-6203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BAD17BA379
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 17:57:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 54F3E1C2097B
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:57:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37DAE328A8;
	Thu,  5 Oct 2023 15:57:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gCDzUgoG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E95A31A93
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 15:57:41 +0000 (UTC)
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D061B87224
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 08:57:38 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-31fa15f4cc6so1156514f8f.2
        for <devicetree@vger.kernel.org>; Thu, 05 Oct 2023 08:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696521457; x=1697126257; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yQQEqZ6dgoMIiE150E7fSsiHYzKXaQCMbIzJ/S4ZYh0=;
        b=gCDzUgoGnRiM+ARNjj+9qPWYmacwg5ohZ1fKUdPb3L23S2fECFE2E8xQfrBHr7axwo
         gIz1yemXGLgorCSLbenlSYrPIZwnxJuFQzVOpu/U7LX5CHm8TOgxRHhSp0tkrJEHNskU
         9d8zdPVd8LU21Bmg+pcACSDqPoi9LjitbwkOMHtBYCmjRURDpFgZdTWVPCvIfRM8UVXu
         CK6sUtXI4xY+HYiC90CyPOAG+AFZ0qLVVvvndSSI4rxITtc0dfnJvKj1Y/5NT2YLoKSp
         ykp99j9jwtHqynQ2dpRy9YvWIVeI2EIdcbG1JGpRoK4049iH+foaAojurpSEviQId2YW
         ovDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696521457; x=1697126257;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yQQEqZ6dgoMIiE150E7fSsiHYzKXaQCMbIzJ/S4ZYh0=;
        b=qf+9YdkIITvQwpins+vjvLyCsm266wHBD7/0ZxzikXB4n2uHtiG5cwkmShETO27y0s
         tsz1lwm8U4bZ88xMwEPcfe7rdveQX+AIjVjdksRHOX+My+b2viHwXfJDDmTXK8diTTxV
         5PQgPLS1LHrQKb+xGyBGZIVQwVhGtGeMWDpNKyXmOna/zqZNKZvNkS3I+xfS3OD1Q6Va
         +w9Z06VP8UaTOY4ZMDgnhlf8K3JrzwvgyeO1LCE6nZoBEtBg6An6+24K5PSvo4rm4/DV
         D83X17kfj3DSpK7Jrw1GUZwd/gUxmtBA0q3thqHr+etMMWwx/ahIfzgqlziD+ZLM1pTb
         9M6A==
X-Gm-Message-State: AOJu0YzF0JmRIwS5OaBmHwWWi9CnVqyaQr939ZEkFmvD3/b3Ea1m3br3
	/v5H0+X4zcLRSa3E2Z0liOJO/A==
X-Google-Smtp-Source: AGHT+IF/lcHc9XUltM5UGXmSAYqRcd/8VSrf26P8R3iLwmpTL9VeuYYzrZE6bmpvvFoO8WJJ0m9ktQ==
X-Received: by 2002:a5d:6909:0:b0:314:dc0:2fca with SMTP id t9-20020a5d6909000000b003140dc02fcamr5280803wru.29.1696521457202;
        Thu, 05 Oct 2023 08:57:37 -0700 (PDT)
Received: from gpeter-l.lan (host-92-12-225-146.as13285.net. [92.12.225.146])
        by smtp.gmail.com with ESMTPSA id t9-20020a5d4609000000b0031f8a59dbeasm2084336wrq.62.2023.10.05.08.57.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 08:57:36 -0700 (PDT)
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
Subject: [PATCH 12/21] clk: samsung: clk-pll: Add support for pll_{0516,0517,518}
Date: Thu,  5 Oct 2023 16:56:09 +0100
Message-ID: <20231005155618.700312-13-peter.griffin@linaro.org>
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

Thesee plls are found in the Tensor gs101 SoC found in the Pixel 6.

pll0516x: Integrer PLL with high frequency
pll0517x: Integrer PLL with middle frequency
pll0518x: Integrer PLL with low frequency

PLL0516x
FOUT = (MDIV * 2 * FIN)/PDIV * 2^SDIV)

PLL0517x and PLL0518x
FOUT = (MDIV * FIN)/PDIV*2^SDIV)

The PLLs are similar enough to pll_0822x that the same code can handle
both. The main difference is the change in the fout formula for the
high frequency 0516 pll.

Locktime for 516,517 & 518 is 150 the same as the pll_0822x lock factor.
MDIV, SDIV PDIV masks and bit shifts are also the same as 0822x.

When defining the PLL the "con" parameter should be set to CON3
register, like this

PLL(pll_0517x, CLK_FOUT_SHARED0_PLL, "fout_shared0_pll", "oscclk",
    PLL_LOCKTIME_PLL_SHARED0, PLL_CON3_PLL_SHARED0,
    NULL),

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/clk/samsung/clk-pll.c | 9 ++++++++-
 drivers/clk/samsung/clk-pll.h | 3 +++
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/samsung/clk-pll.c b/drivers/clk/samsung/clk-pll.c
index 74934c6182ce..4ef9fea2a425 100644
--- a/drivers/clk/samsung/clk-pll.c
+++ b/drivers/clk/samsung/clk-pll.c
@@ -442,7 +442,11 @@ static unsigned long samsung_pll0822x_recalc_rate(struct clk_hw *hw,
 	pdiv = (pll_con3 >> PLL0822X_PDIV_SHIFT) & PLL0822X_PDIV_MASK;
 	sdiv = (pll_con3 >> PLL0822X_SDIV_SHIFT) & PLL0822X_SDIV_MASK;
 
-	fvco *= mdiv;
+	if (pll->type == pll_0516x)
+		fvco = fvco * 2 * mdiv;
+	else
+		fvco *= mdiv;
+
 	do_div(fvco, (pdiv << sdiv));
 
 	return (unsigned long)fvco;
@@ -1316,6 +1320,9 @@ static void __init _samsung_clk_register_pll(struct samsung_clk_provider *ctx,
 	case pll_1417x:
 	case pll_0818x:
 	case pll_0822x:
+	case pll_0516x:
+	case pll_0517x:
+	case pll_0518x:
 		pll->enable_offs = PLL0822X_ENABLE_SHIFT;
 		pll->lock_offs = PLL0822X_LOCK_STAT_SHIFT;
 		if (!pll->rate_table)
diff --git a/drivers/clk/samsung/clk-pll.h b/drivers/clk/samsung/clk-pll.h
index 0725d485c6ee..ffd3d52c0dec 100644
--- a/drivers/clk/samsung/clk-pll.h
+++ b/drivers/clk/samsung/clk-pll.h
@@ -38,6 +38,9 @@ enum samsung_pll_type {
 	pll_0822x,
 	pll_0831x,
 	pll_142xx,
+	pll_0516x,
+	pll_0517x,
+	pll_0518x,
 };
 
 #define PLL_RATE(_fin, _m, _p, _s, _k, _ks) \
-- 
2.42.0.582.g8ccd20d70d-goog


