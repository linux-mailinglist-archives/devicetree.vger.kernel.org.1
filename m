Return-Path: <devicetree+bounces-228229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C61BEAA6D
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 18:23:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 51D3E5A9329
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 16:14:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DB00288C26;
	Fri, 17 Oct 2025 16:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YIMW6a0b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8BEE286408
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 16:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760717664; cv=none; b=gwgxRPUEmXD0q0p0rmk/yzeHRdJ48OxbVF0IL4ujYdNPRRCZFLiS5MLhnpVUgKZsM5Zd7h6GtRvKihpbcWI/oplqcDKtMGzWs7IB2L4U15LZSKyJ1vezByl6bVBpiUXrj6tEj16RL0hkjtx4esWt32qD4gPJ9/ebJvsyL7j4RC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760717664; c=relaxed/simple;
	bh=XFwwYgwIrE13kgm1GHDPMNiskJfkj4wbU7LgqZMT5+c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PN8mQjpfENzGE1DafZ/MtFfW1iYX1uHr/Ry1Szpn/788n95HyiqcYVv6043PLl9dr09SUegDULg+L0YTbbmBi5VhkKNfEZSS1LEvFW6z5+KzxeLqNbA2mqwwyNADVas1vTSPOdxnzMYK92BY7oZeTHoT5XMlj7qF8k6H+FvxiwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YIMW6a0b; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b3e7cc84b82so384968766b.0
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 09:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760717659; x=1761322459; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O+ezreZej8AwNtgLmDRvkBFDk/rnw6yuzZ412Fm/rQ0=;
        b=YIMW6a0bqMl/IRqEE1KQVWc8RBdOvAoiGN4+K8z0xBtJjhG7DMwfoabK83Wik0ri00
         nHs7FYHbeiY7qg+9EqtDza7/QnnxQ00GiRQmGFKWGexDzsC+5frqIEqeCnpqeFA32app
         funHh40N/8ABzy900LlTcL4JE1PK8fkmnCh2ZcIF4Dcz761WY6vILShSIzcu86I0hP2B
         C/N/7C0q7Df1iBI5x2FdmB8TNSGe+0TLI319jCulceebz38YCMJ93IOhC4WFvN0R0AHr
         UyUEOa76tVMlsIuOEiJxAEuaxty4rUywenC3ysc/BEzrjdJjc0A6po5nuJ18f51Y6CYs
         p4Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760717659; x=1761322459;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O+ezreZej8AwNtgLmDRvkBFDk/rnw6yuzZ412Fm/rQ0=;
        b=t+39AE0QyvySBStc9ROlvkk5W0CCP7MqYj8ShAiH4xNq2hXF8iGYY6SSa4Y2TMhIKE
         TNbwT1rk/K71KMS1zLYzWmLkIEjXznjKC5rz1HuaPwlSpwrzuP6nTujNPz2w2z3R8ZQq
         hoL0cjPGlNYgPiO9ZKCs5icaLFlIXWQjrxrethbFpND7rgLc1TXG7LYvMvscAMtBlP8o
         YUz3gA26wj8DnkhAS9ofviqFE+rRRfDW/ng9g+SH9KG7YbFIgTrQo4LdWLN9deHMSnEf
         jKKwp1sE4Czm4CWV8ShN9qYiASlpqbPDLO/XKdAba8y6EaHaqyg0klTm44gcR0no3G0N
         mNiA==
X-Forwarded-Encrypted: i=1; AJvYcCUV36/uqqnyh84ks2wgsyq9yLDkKnZ8RkqdlAwh536UN9H7n5nfOSvywAz+akINc3ZyRX4804cdM1C5@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+5zkDTlGjwrS2Kys/+WJX2e7gmn0mcjr0qbB2OlYGO3rnm62g
	SungJ84Q+ipraM/3IJK9SF5ZXI50Eew14ZKm37UaEpXKk8TLNOMt3NK/
X-Gm-Gg: ASbGncvdQiqbOtzv7jbFxf+2zhBZnM4nbk09v21mfRmCbOXZhDIrYECgxi//eXTaI+I
	Iikm7n/bcTwpgr8o4h5O7ixGDBjgHY4faIlvJMlKwWoRIPZU1Z9h9O77zBX+M1TaMO+BikBRNAn
	qZ93wz4oZGkUnJPx/bUfSrmB5Aso8/Y8MnYUFaT1Ja8cQVSurI/exIwCMiZgH3+QaciMy42yANt
	yIVhiMw0mnxc0Ay8thSCe7bMu2lX+BZa2xnbs1fN/H56qTr9yXhRZvEXSyrXn5QptQ+l5oZorPk
	qsJHqOFCKamaMEKV5gYYxfpx6DNcYmojIXjlAKbKciT8gPwlcMidKNlivpyYC1DLOZd2YfDvRQD
	IvyISussl+MTfQn/Ph2UtAW4Oci3aKSuol9FSm6cpdFEkRxctAalkNU8DY4a8P/aC86kJqeEh2M
	5OY0Dv5M7jkPTrbQdRLEqAc2OysdN0G24tF7MUr9j3
X-Google-Smtp-Source: AGHT+IGaVeu0oUJ1C7UDFeHqtgsEFDLC0C+6KDtBnxoCgNM6QWJpaLsxbbHRVuTXDwHGVCCCSflQPg==
X-Received: by 2002:a17:906:c144:b0:b04:48b5:6e8a with SMTP id a640c23a62f3a-b6472d5d715mr467188466b.7.1760717659090;
        Fri, 17 Oct 2025 09:14:19 -0700 (PDT)
Received: from ivaylo-T580.. (79-100-18-255.ip.btc-net.bg. [79.100.18.255])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb036706sm9606466b.41.2025.10.17.09.14.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 09:14:18 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/5] clk: samsung: clk-pll: Add support for pll_1419x
Date: Fri, 17 Oct 2025 19:13:31 +0300
Message-ID: <20251017161334.1295955-4-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251017161334.1295955-1-ivo.ivanov.ivanov1@gmail.com>
References: <20251017161334.1295955-1-ivo.ivanov.ivanov1@gmail.com>
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
Reviewed-by: Peng Fan <peng.fan@nxp.com>
---
Changes from v2:
- rebase on next
- add r-b tag from Peng Fan
---
 drivers/clk/samsung/clk-pll.c |  7 ++++++-
 drivers/clk/samsung/clk-pll.h | 10 ++++++++++
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/samsung/clk-pll.c b/drivers/clk/samsung/clk-pll.c
index 4700eadad..3c7333529 100644
--- a/drivers/clk/samsung/clk-pll.c
+++ b/drivers/clk/samsung/clk-pll.c
@@ -234,7 +234,11 @@ static unsigned long samsung_pll35xx_recalc_rate(struct clk_hw *hw,
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
@@ -1498,6 +1502,7 @@ static void __init _samsung_clk_register_pll(struct samsung_clk_provider *ctx,
 	case pll_1451x:
 	case pll_1452x:
 	case pll_142xx:
+	case pll_1419x:
 	case pll_141xx:
 	case pll_1017x:
 		pll->enable_offs = PLL35XX_ENABLE_SHIFT;
diff --git a/drivers/clk/samsung/clk-pll.h b/drivers/clk/samsung/clk-pll.h
index 3c7575cde..04b3fe97f 100644
--- a/drivers/clk/samsung/clk-pll.h
+++ b/drivers/clk/samsung/clk-pll.h
@@ -52,6 +52,7 @@ enum samsung_pll_type {
 	pll_1017x,
 	pll_1031x,
 	pll_141xx,
+	pll_1419x,
 };
 
 #define PLL_RATE(_fin, _m, _p, _s, _k, _ks) \
@@ -68,6 +69,15 @@ enum samsung_pll_type {
 		.sdiv	=	(_s),				\
 	}
 
+#define PLL_1419X_RATE(_fin, _rate, _m, _p, _s)			\
+	{							\
+		.rate	=	PLL_VALID_RATE(_fin, _rate,	\
+				2 * _m, _p, _s, 0, 16),		\
+		.mdiv	=	(_m),				\
+		.pdiv	=	(_p),				\
+		.sdiv	=	(_s),				\
+	}
+
 #define PLL_36XX_RATE(_fin, _rate, _m, _p, _s, _k)		\
 	{							\
 		.rate	=	PLL_VALID_RATE(_fin, _rate,	\
-- 
2.43.0


