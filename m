Return-Path: <devicetree+bounces-216919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 51CCEB5687B
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 14:21:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0D77A3B587B
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 12:21:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF34426A0AD;
	Sun, 14 Sep 2025 12:21:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D/rx6r0u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC7C264A8D
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 12:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757852487; cv=none; b=ENEbgjkoiatStLMrtGUHNrbI9ezarz33k0fDqjLk1Bejc1snZrD02RbMOFNaGaNKHwQZ0xLLsrheaDaQirlmQJ+SVBWrCWJONn/Wd/lqcJUjk2JNXvKHXKjMEpv4YHf5Yu8h0Cd7ESUW1n8WLxCrYfjnEVw8svVGakiHRmcAkj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757852487; c=relaxed/simple;
	bh=hyEa/GySa/6Ls75v6+v9jFgXVHwsTBG2UIuaqEWAzoI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aEkRJVBCHX0sr8D3pC2F3Dw6a7q0XUZdC7er3fuIeFg6blI5oMpmzC47g9tDnEaqKvfQnWSTwR9WTK6CSZikKcffFRO3RW61fDNtVVbf+U+FrftN7+MJBwzjwGD0dNBAxyfsxHLVsruoMlZHFQrJ9Vu6mi+xdPYt5JAVS+LZM1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D/rx6r0u; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-45dd7b15a64so29360095e9.0
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 05:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757852484; x=1758457284; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I5V5EvIIFmYlE3GyO/jzMM5XnNife2k0lUvzm2HmsfY=;
        b=D/rx6r0uFSdJtz2w12P1kmfl/F1yXRfsAVUI8lEK+M0KNftzb2UkM0SFDtRIff4FSZ
         BUR9MNPr3NwBx0kqY2iX6M7wTXtLuKGN2kVZyqzRz5YU/5wg0I+aG4Ctq19VEqIfcwvL
         n01aqwHiRjH7zyi1/NsoRLHtL051eEktR5TRF0g/gUfR2oIyDKDrjZCjpkadEuH00zLj
         N/WqSoQ+pf8U+4VUm8GlmqpQR0fv0ldfTjEiAMJeNzUSoinQCWFYZ3B/ABlcOBsT7hFA
         6qbf2fP7FpBZwBtztwBTZqSKbEE+FjMMhTDdwkKv2ERD92CR40hF043bSXjKo1EbU65L
         oDHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757852484; x=1758457284;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I5V5EvIIFmYlE3GyO/jzMM5XnNife2k0lUvzm2HmsfY=;
        b=LHWeg+oF5SFz5HIvmAAnUrxCkqZk7ygqLpZO+8XdQ7Y50R0i9qUyo+lxAO6YRjiLHK
         r6j9TBe01tNlL34gVbVg4S0cav4XV7SKvs6r6Ipa1hQx/gsw9xiQ+aomLcXXFDEDFwIa
         /tyCj7VIgo7qE2uScbTkSpnGjiRNLQxGOKxdv4ajrgaSIsQKRbcNZIIvEMsgzwkxYS0G
         Rfk+y5r4lJaXxu+p/URr1IA996BjxJuQF8j/MdfJp9E1nWQ48g9uFjcFa37gayAWuJ8Q
         LTf0NTLWjNZo7ddvZjujI392Uyt7TjpOpXrD3ZyW6DzfEXVb9yZ8Y4GJSF6P5LlTmS4u
         rnxA==
X-Forwarded-Encrypted: i=1; AJvYcCXlDFFnulCCAAqDXhjRB+P4QdGcVh4/1EBhj2DpYStC104j1sVoCSj2See3rbO2v4I9Kam70Q3auTSE@vger.kernel.org
X-Gm-Message-State: AOJu0YyjFIngfgDv69ZNsWFDLwetjcXRQK2pH7G5vApDUAdIZFa7w55j
	Di47qovPzB464nfB7HuwSlFeB6NnkqhmgQmb2MDPVd/Y7v/yvz0IeEBw
X-Gm-Gg: ASbGncvHjExIyVDrrhw7pkCokaGwcEhcKmACFJHN+kGsHqp7S7GDmqrbDc/kmcJJumG
	TzaCMPMtmLnPsSkgtQCqH4ru/5qBKS8yWyY3TidSFPV9pvgoRECjZvyHaEuLt5mXYIhsv1X1Q6c
	qbRE/Z6WDaQG8jtXxg1K9R9j0F9P8VnGcGd6BBatfPJPaou3IUh3M3QYvZjGYXh3faX4pc0vFZ7
	x9YiTTcqMLQMGSIdiZaCFjONSsa+GF0BTVfduK0eUvji3xnVDj9yKLRSEg3jgQRVxM8m/xOndN7
	TpJ8LZP9jlcSoNpNabCmFetC4Pf43yDymqi5x7J9jQIqH2kwlOh9mJ5m00KaPAWuGltWyOU7Oj7
	M/BtNgTifDF46uzcIxJDCD0S6nbl6tpRrk5o9xyfAjg70sa5UEv5WS+PPVsGAUvwYxefgGcd10g
	==
X-Google-Smtp-Source: AGHT+IG0ZXg0sjBbUNfdeanXFe0dMTX//arWD3IfNQ77haSimowawRn8wcMXpw44W5JXi1TEnscc4w==
X-Received: by 2002:a05:600c:468a:b0:45d:5c71:769d with SMTP id 5b1f17b1804b1-45f2126253emr91249815e9.8.1757852484220;
        Sun, 14 Sep 2025 05:21:24 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e017b4222sm136476615e9.20.2025.09.14.05.21.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 05:21:23 -0700 (PDT)
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
Subject: [PATCH v1 4/5] clk: samsung: clk-pll: Add support for pll_1431x
Date: Sun, 14 Sep 2025 15:21:15 +0300
Message-ID: <20250914122116.2616801-5-ivo.ivanov.ivanov1@gmail.com>
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

The PLL is similar enough to pll_36xx that the same code can be used.

When defining a PLL, the "con" parameter should be set to CON0
register, like this:

PLL(pll_1431x, CLK_FOUT_SHARED0_PLL, "fout_shared0_pll", "oscclk",
     PLL_LOCKTIME_PLL_SHARED0, PLL_CON0_PLL_SHARED0,
     pll_shared0_rate_table),

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 drivers/clk/samsung/clk-pll.c | 1 +
 drivers/clk/samsung/clk-pll.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/clk/samsung/clk-pll.c b/drivers/clk/samsung/clk-pll.c
index 6b3593445..e52e010ad 100644
--- a/drivers/clk/samsung/clk-pll.c
+++ b/drivers/clk/samsung/clk-pll.c
@@ -1420,6 +1420,7 @@ static void __init _samsung_clk_register_pll(struct samsung_clk_provider *ctx,
 	/* clk_ops for 36xx and 2650 are similar */
 	case pll_36xx:
 	case pll_2650:
+	case pll_1431x:
 		pll->enable_offs = PLL36XX_ENABLE_SHIFT;
 		pll->lock_offs = PLL36XX_LOCK_STAT_SHIFT;
 		if (!pll->rate_table)
diff --git a/drivers/clk/samsung/clk-pll.h b/drivers/clk/samsung/clk-pll.h
index c07d76121..964c35ddc 100644
--- a/drivers/clk/samsung/clk-pll.h
+++ b/drivers/clk/samsung/clk-pll.h
@@ -51,6 +51,7 @@ enum samsung_pll_type {
 	pll_4311,
 	pll_141xx,
 	pll_1419x,
+	pll_1431x,
 };
 
 #define PLL_RATE(_fin, _m, _p, _s, _k, _ks) \
-- 
2.43.0


