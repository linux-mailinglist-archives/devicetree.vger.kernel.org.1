Return-Path: <devicetree+bounces-23526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4326980B7E1
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 00:32:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F3ED8280FAE
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 23:32:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AB2C20DCD;
	Sat,  9 Dec 2023 23:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EpsbpIw6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC4C710C4
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 15:31:31 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-40c32df9174so23534615e9.3
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 15:31:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702164690; x=1702769490; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2xJMMkIi7gHwqFFRiNxJNl8E4vObJQqSH/0uTp/Sg+Q=;
        b=EpsbpIw6n8AKvkOYSmNjllZfcMjQa0vegbJyPXEakNDVUbVRxJC3x+Ap5L7qkfbjuz
         rFllnDcY7R/rZZCJWzicKn1ihObFT2FrqDtSqqtZ/nAJawlhEPXHsychyLzvg6QNTAps
         gSPB7PPfNIbW41dtR6i0SRsUqz/XUtJ16FLv3biuL5erxoj24hUK/RxjOc0JlXSHC/ds
         MNI2mQrG38z4sSsk7l2zbT4q1eLOBE7UH3uPWYy4vb9AIyeYYjBNpXapTWBNmU5E/Fi9
         MuUUEVI1K4aEU9Aa3H8V4Yu73fV+Jhx894S47tkvlXpq2kRFNZxpuIWXWUdAOGu4f12g
         UwnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702164690; x=1702769490;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2xJMMkIi7gHwqFFRiNxJNl8E4vObJQqSH/0uTp/Sg+Q=;
        b=MrXd7FjeZmqujj8kp00fvB1dFRaKdfs7nPQ806LVHFuIep9+osGL9cRx7Ba3wl0g3i
         V3E/JdulbnOaJ2zcKBug5tu/ffslQiT+gcG3zN68dxz9skDFjlIJGwG8JiSMhVZI2jOU
         o4soVA+OMuLK9XVNc9TJN30Khko+exKn9diw9bPtTTl8dIUmPw6bsMpMYXQaTOYLOA2w
         J4o45POPWLczBHWi73zs9j8wmXGP8oZIgM4sbSgstzBK0PKw1Wz30JVFJB6k9lCXWIEc
         Z0AZY7aHurraP735/Vpq/FASZhXigNgbmnXwVIe3gnD3YEkiXvbc+RqQgjPbYpgxIwMg
         8GFA==
X-Gm-Message-State: AOJu0YzNEwM36k0/L4SZ27VkkPYudt2tHVOZHAfOm4F3vbhH9VYHkbu8
	DzKAPFfJ02Kb9FTT92JZqx/OSQ==
X-Google-Smtp-Source: AGHT+IFzcDIQzUfZRPbTkMhtVL/A5vnbyjnWALM6VMaCSNOIf0ll9TyONx6g9zFQADGgXl8vbrrY9w==
X-Received: by 2002:a05:600c:3212:b0:40b:5e21:c598 with SMTP id r18-20020a05600c321200b0040b5e21c598mr749759wmp.102.1702164690518;
        Sat, 09 Dec 2023 15:31:30 -0800 (PST)
Received: from gpeter-l.lan (host-92-23-61-173.as13285.net. [92.23.61.173])
        by smtp.gmail.com with ESMTPSA id n9-20020a05600c4f8900b0040c41846923sm1875277wmq.26.2023.12.09.15.31.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 15:31:30 -0800 (PST)
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
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	cw00.choi@samsung.com,
	alim.akhtar@samsung.com
Cc: peter.griffin@linaro.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	semen.protsenko@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	soc@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	kernel-team@android.com,
	linux-serial@vger.kernel.org
Subject: [PATCH v6 11/20] clk: samsung: clk-pll: Add support for pll_{0516,0517,518}
Date: Sat,  9 Dec 2023 23:30:57 +0000
Message-ID: <20231209233106.147416-12-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231209233106.147416-1-peter.griffin@linaro.org>
References: <20231209233106.147416-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

These plls are found in the Tensor gs101 SoC found in the Pixel 6.

pll0516x: Integer PLL with high frequency
pll0517x: Integer PLL with middle frequency
pll0518x: Integer PLL with low frequency

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

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
Tested-by: Will McVicker <willmcvicker@google.com>
Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/clk/samsung/clk-pll.c | 6 ++++++
 drivers/clk/samsung/clk-pll.h | 3 +++
 2 files changed, 9 insertions(+)

diff --git a/drivers/clk/samsung/clk-pll.c b/drivers/clk/samsung/clk-pll.c
index 74934c6182ce..4bbdf5e91650 100644
--- a/drivers/clk/samsung/clk-pll.c
+++ b/drivers/clk/samsung/clk-pll.c
@@ -443,6 +443,9 @@ static unsigned long samsung_pll0822x_recalc_rate(struct clk_hw *hw,
 	sdiv = (pll_con3 >> PLL0822X_SDIV_SHIFT) & PLL0822X_SDIV_MASK;
 
 	fvco *= mdiv;
+	if (pll->type == pll_0516x)
+		fvco *= 2;
+
 	do_div(fvco, (pdiv << sdiv));
 
 	return (unsigned long)fvco;
@@ -1316,6 +1319,9 @@ static void __init _samsung_clk_register_pll(struct samsung_clk_provider *ctx,
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
2.43.0.472.g3155946c3a-goog


