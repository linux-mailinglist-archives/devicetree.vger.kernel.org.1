Return-Path: <devicetree+bounces-216918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 03362B56877
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 14:21:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD6193BE6AE
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 12:21:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE55926657D;
	Sun, 14 Sep 2025 12:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X8i2fInP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9585261B6C
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 12:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757852486; cv=none; b=Yujbow9iaIIKClYZVHESD7t0YC/lQBYbcbNIkA1ad1f4NUAFTMRGdeeLscxFUQGUJI+okKJ/qSST9QwPJi6t9QTIZJ9uPILZh4vzICLDH39ZSYIzRKzLQI9mc2v/I0YSnLp+VnPv4XmfrRW01fjrUf+sDj/9C/YFQ3EjsF/b3hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757852486; c=relaxed/simple;
	bh=+ARkTTfgYAV8lq+cpguXWwMOib8tysz+VwmQ4xeFl5g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tDx6t+PGS3V9w0R/PzD1IoWeZiRA5uH79wdvcOPiejz+1udTF4RcGLHvvJImwX0gOHzoVZKPjJZaXPsEPVXx/hJDlqJQAsb/JbA69IGNDM2Q6ld04lMhN1JX3U8zxZsliQJzRrX8x4dIpPQov9g0+W4d/Py6Z18hEMdartCVtno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X8i2fInP; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-45f2cf99bbbso332415e9.0
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 05:21:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757852483; x=1758457283; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/o/CmP3Rg70MppvTZL3UgHlhdGprRSi/0bRMfCqA7ss=;
        b=X8i2fInPVWgbF0VhpKD2Soj5sBQbSsjvijxy4gGKB7pMm+u8ZdYr2AfX2kfAUk8aG5
         qerugikVWvZeSNAsnkvLFjs4jgiXCAJ71r/BVreVhEQ3ekh9zQGjBXF92hcj1/aOAiM+
         uZMrZ67J8D5Ikjt3mTekzAn+QqzvVnk0bdPUi6hX1alDH/hjwRpaC7qDg11sYDTc7Vza
         6psuANFgw94UyPCJ/jAACE3drmqcqsvz1SPWB4Z5yM7gwyfx0JSIl0i/KMIk1n/H/1mc
         ByMeA0n4F3VnzvaqVizYvxpOrllWF/Z3eh8lYKDZFEMLG8/hnY4kGJV1V3TwEKDdeuhT
         m1IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757852483; x=1758457283;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/o/CmP3Rg70MppvTZL3UgHlhdGprRSi/0bRMfCqA7ss=;
        b=HdBibW3Xr4Nw67RHxn6G2P8CWQlvtsG0odBJYiziyWat/qZjEsR/IaMMfOeCVJZ2I5
         OKEKTVHyB9B14wbjxuHFCuoobExlZfcMivKdBjOAIgtf2G9BNrwktzku4XM4Y/ku/ozE
         yRZ6jR6s/eGTeZzHOLmgR/2Fhc2RPsO9ct0BdPsDcJaDeXpbZPr+rP10EWg+InacqfbT
         EFgzyPCCFouEDhrHupEixgdNbJGGSCKzUfCLl3S37NT4VnEXbfVHlTbMMr9ANM86PbsE
         up6Uj027dwtWe3VpajA+PRVDI87kwOy0Mwi7ouX6jWAaAZDtNMn+S3S93zMPsdYDNaYF
         6Kzg==
X-Forwarded-Encrypted: i=1; AJvYcCXJq+wSytbO7dJ6lfsNvPA+UUlRS3n0PHdtplOMVySiPEXSz3J8FEs/ABw/cjMePVxOFCZyv3Mg3TA8@vger.kernel.org
X-Gm-Message-State: AOJu0YyZhgDCgSxsW1ru8GDQE8KMYgoEFkuv8BFAaECLmlMKIS6dB5WD
	tNHq1vT3HCIrbD6mgrhN03kq4q7Bl+bjFbNgF4eN2WlL8QfkHKLgtvN/
X-Gm-Gg: ASbGncu3QjICauVC6jR94X4YtTpO3vYB006g9JbCBA0IdfqrBlIuzb35XkZ6m0aDR51
	vuUTpIDoRsF8SsQ4ssx9+xHopElgtiiYrvKuspDeBm4XXSTTED0IWcz0ZJGVuKVLfuDi4HnUWBU
	FwHruAA6X5KARQiqt3EksqM3mnjXy4J8no43G4p0lKwD462PeaGKV8CAw3zjxYum+aAuuuLjxcR
	UrOHX+ao3YPvIIIhAuAR2Et+9c+y0r+ofi4bK1cbU3PIxslHxQg//HhBdrcdCQbP+/KSTOl8ezk
	6sJyJPvmcSxua2+3cShiKXntTXPOF0Z0q42cZor9MdFKGyx/fk/MQhtPNOT9QHASAqM2b5QHe3n
	4/IzcLwdxkO1TdwyeUXuFOQnfFP5OjmwexfqC8u8D+U/Qn7+dJQtVilRV7rmAYi7KovW11RQqVI
	oOc1ZSre4a
X-Google-Smtp-Source: AGHT+IF65054uWgaEnZnjo3739WPkXpFwENVCRBSnh2RLQhMQq0qfIAS99sWpws28e4M/hCiCQUjLQ==
X-Received: by 2002:a05:6000:178c:b0:3e7:63dc:1ff6 with SMTP id ffacd0b85a97d-3e7658bc908mr6223136f8f.8.1757852482965;
        Sun, 14 Sep 2025 05:21:22 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e017b4222sm136476615e9.20.2025.09.14.05.21.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 05:21:22 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 3/5] clk: samsung: clk-pll: Add support for pll_1419x
Date: Sun, 14 Sep 2025 15:21:14 +0300
Message-ID: <20250914122116.2616801-4-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250914122116.2616801-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250914122116.2616801-1-ivo.ivanov.ivanov1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The PLL is similar to pll_35xx, with the following differences:
- different locktime - 150 instead of 270, as with pll_142xx
- different rate calculation

When defining a PLL, the "con" parameter should be set to CON0
register, like this:

PLL(pll_1419x, CLK_FOUT_SHARED0_PLL, "fout_shared0_pll", "oscclk",
    PLL_LOCKTIME_PLL_SHARED0, PLL_CON0_PLL_SHARED0,
    pll_shared0_rate_table),

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 drivers/clk/samsung/clk-pll.c | 10 ++++++++--
 drivers/clk/samsung/clk-pll.h | 10 ++++++++++
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/samsung/clk-pll.c b/drivers/clk/samsung/clk-pll.c
index acb366f14..6b3593445 100644
--- a/drivers/clk/samsung/clk-pll.c
+++ b/drivers/clk/samsung/clk-pll.c
@@ -229,7 +229,11 @@ static unsigned long samsung_pll35xx_recalc_rate(struct clk_hw *hw,
 	pdiv = (pll_con >> PLL35XX_PDIV_SHIFT) & PLL35XX_PDIV_MASK;
 	sdiv = (pll_con >> PLL35XX_SDIV_SHIFT) & PLL35XX_SDIV_MASK;
 
-	fvco *= mdiv;
+	if (pll->type == pll_1419x)
+		fvco *= (2 * mdiv);
+	else
+		fvco *= mdiv;
+
 	do_div(fvco, (pdiv << sdiv));
 
 	return (unsigned long)fvco;
@@ -273,7 +277,8 @@ static int samsung_pll35xx_set_rate(struct clk_hw *hw, unsigned long drate,
 	}
 
 	/* Set PLL lock time. */
-	if (pll->type == pll_142xx || pll->type == pll_141xx)
+	if (pll->type == pll_142xx || pll->type == pll_141xx ||
+	    pll->type == pll_1419x)
 		writel_relaxed(rate->pdiv * PLL142XX_LOCK_FACTOR,
 			pll->lock_reg);
 	else
@@ -1373,6 +1378,7 @@ static void __init _samsung_clk_register_pll(struct samsung_clk_provider *ctx,
 	case pll_1450x:
 	case pll_1451x:
 	case pll_1452x:
+	case pll_1419x:
 	case pll_141xx:
 	case pll_142xx:
 		pll->enable_offs = PLL35XX_ENABLE_SHIFT;
diff --git a/drivers/clk/samsung/clk-pll.h b/drivers/clk/samsung/clk-pll.h
index 989addfdb..c07d76121 100644
--- a/drivers/clk/samsung/clk-pll.h
+++ b/drivers/clk/samsung/clk-pll.h
@@ -50,6 +50,7 @@ enum samsung_pll_type {
 	pll_0732x,
 	pll_4311,
 	pll_141xx,
+	pll_1419x,
 };
 
 #define PLL_RATE(_fin, _m, _p, _s, _k, _ks) \
@@ -57,6 +58,15 @@ enum samsung_pll_type {
 #define PLL_VALID_RATE(_fin, _fout, _m, _p, _s, _k, _ks) ((_fout) + \
 	BUILD_BUG_ON_ZERO(PLL_RATE(_fin, _m, _p, _s, _k, _ks) != (_fout)))
 
+#define PLL_1419X_RATE(_fin, _rate, _m, _p, _s)			\
+	{							\
+		.rate	=	PLL_VALID_RATE(_fin, _rate,	\
+				2 * _m, _p, _s, 0, 16),		\
+		.mdiv	=	(_m),				\
+		.pdiv	=	(_p),				\
+		.sdiv	=	(_s),				\
+	}
+
 #define PLL_35XX_RATE(_fin, _rate, _m, _p, _s)			\
 	{							\
 		.rate	=	PLL_VALID_RATE(_fin, _rate,	\
-- 
2.43.0


