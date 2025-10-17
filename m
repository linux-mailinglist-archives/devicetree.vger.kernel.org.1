Return-Path: <devicetree+bounces-228228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DA331BEA8CA
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 18:14:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 65046188C2CD
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 16:15:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E56EE287253;
	Fri, 17 Oct 2025 16:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="N5H9fOme"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1D482848B4
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 16:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760717661; cv=none; b=qIJehfJ8CKe5VccHMkReHEOLQI2NsZ+43oya6VyamVY4qOVjDCooqcCMteYcNSYHinOe6+i1xryIK9JN8+EM7fLjwOGgmJY8n4+wZuxhEQFA5uL4B1dXSEej1NqRsuSZvnxd9XJd7sLN6yqEFyuUao+bnEUgyzrgiRxrtLru2Sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760717661; c=relaxed/simple;
	bh=oxHS6u7FeboNBttWQlQCkoLj03pi1x2TmYSFQR57jhw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mQawAvO8hg/sZSvvnHybaYeb0yKINLydpBwcCg8Ywwdhcod+lzzXqjPKMLRVCqbRlTqXvnL0ej4FY6HCgJQG7qtVseFSD61iTbIBGckcApnY+TmHDYsRgtrAVOTmeCiIVmpuWPiKll3RCz0mts5XlDrL2kDeTobCmxqz+G30mX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N5H9fOme; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b3b27b50090so374945466b.0
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 09:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760717658; x=1761322458; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o/0xrgYWwbL6uDm6bWRd8Dfjm9NXSGd8s9gIV76gFCo=;
        b=N5H9fOme9RthmD+DW85Wkzdr73XsdociiRB0zb1pLi1WJCZiLY6RaDEZOtl73EV6ct
         I/udWKLcPwq+WiLhuNYtCcqi1GcNEOxIPTeDo/3vStx09k0ob4SQ4W9cqVxDI8uQKfU5
         v+R4C0TIsguDQ2eiZOzwKmjdTnXNT6xZuyrhLOtStD2BYRKRQUzMJeDC/XPqb2Feajhp
         fpxmoX0bDs0zH2eMGL2dfvtfGLJwUC5RR1zmC2jviyfncvKL1TzOwOxv1Du16+vNL7JV
         x/lbUIJbIQOkZOoCfzpaDkibjS1KNkPUJcav2zb3jaBG+zzPSwmVhDoh+WkEW1C9Cnbq
         LNjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760717658; x=1761322458;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o/0xrgYWwbL6uDm6bWRd8Dfjm9NXSGd8s9gIV76gFCo=;
        b=Yyt2CrOfxmRpFRuEVl3oWxSCH0U/TO+UAPRVbL4nHBPytCz2kxQUyzONjOO8aBooNT
         VMCntk13uJHnCPRKe2sUL4xM4uGVb2CY/w66nJRzY13lOJhxKQyDhbmXM8/O7c1Pf4Sd
         DR5knbrppF514dXUwvJ1hK8vrpX6Vp4BARB5rKRAYhEVgtDmWtjTYhBppkOSrHBpHCmK
         i40KhEOhxdLJGe4vALOH9i8ufLCydMFYixZqw4aTzl8VRKMB1Ei74QRrj1frvFKavXU0
         o8ZBESENgDGftznrZn94IuG/BVk7OpV+SThTWiWAOeghu+Wttq33iNTv5AoThsTqbfYn
         +Fdw==
X-Forwarded-Encrypted: i=1; AJvYcCXD6TnFjVr4nD8m9dGZ5MJ5jyGomdsCE51q5RBiv2m/v4ryEwX5qoeVlYmLvVqEZ/YMw8dStoEu6fFF@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2pWHRlGsyGGgguVkYaxFPUitmxZcz4eql3F5zDh/P2mHTNXfV
	15RoqFRWP26cxrxUoMSpZBWizdW7eQ38zVYlNcCjXPbJ/qSrjrZfbGG+
X-Gm-Gg: ASbGncv4Y2o16H1oMeMfIWfE6kVsyXrlKNfi3EHAVUI4eIF+Q/opdHM6NL+kkk/hOW2
	R/L5nibA/OP28CgVx9K1pNQ6znOZOjLEIdy2XUtRNcHPzqY/H28hy+M/gjFHwf5c2nmFFPFSeys
	INKsfrluFCO5qnCnT7YiEY08Ih435vxyZd+XHllc3mUE/iWbOX6K83N3zKwArquY57o3KRu2u99
	TfCrJkZMyxpTF24iRLQ1tNGdDYbOZUJyeZF83pVBZHkBuJSCkXpP+jVPWr/FzeugTDqNkh9Ixuz
	yzMXEXyKH8Loi2XXl6SgRLeRrWmIE12DsYg02MO1iLpEIArciLutXziPVZCTcAcKcXBFqGafQ0X
	geHY5X+5HO/VvTQVNi4CmZuu+eZNxluEfANOoHjIevYoXd50YhEnDGHCrbCuLTsdC+XMbpLd0Or
	L7KdJVRqEckmfLON/8AfUFFKTRFjOb9xat3oYgg5L8
X-Google-Smtp-Source: AGHT+IEvX2NLEl2JEWd8maw6vu+Cz/hVCzCLPJGWsXutTdMkKS8cKelXvHyzoaBlWYedD/QgQ0uDEA==
X-Received: by 2002:a17:907:a46:b0:b46:6718:3f30 with SMTP id a640c23a62f3a-b6475128af5mr477286966b.51.1760717657887;
        Fri, 17 Oct 2025 09:14:17 -0700 (PDT)
Received: from ivaylo-T580.. (79-100-18-255.ip.btc-net.bg. [79.100.18.255])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb036706sm9606466b.41.2025.10.17.09.14.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 09:14:17 -0700 (PDT)
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
Subject: [PATCH v2 2/5] clk: samsung: clk-pll: Add support for pll_141xx
Date: Fri, 17 Oct 2025 19:13:30 +0300
Message-ID: <20251017161334.1295955-3-ivo.ivanov.ivanov1@gmail.com>
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

The PLL is similar to pll_35xx, with the exception of a different
Locktime - 150 instead of 270, as with pll_142xx.

When defining a PLL, the "con" parameter should be set to CON0
register, like this:

PLL(pll_141xx, CLK_FOUT_SHARED0_PLL, "fout_shared0_pll", "oscclk",
    PLL_LOCKTIME_PLL_SHARED0, PLL_CON0_PLL_SHARED0,
    pll_shared0_rate_table),

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
Changes since V2:
- rebase on next and drop the unnecessary new line
---
 drivers/clk/samsung/clk-pll.c | 4 +++-
 drivers/clk/samsung/clk-pll.h | 1 +
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/samsung/clk-pll.c b/drivers/clk/samsung/clk-pll.c
index 7bea7be1d..4700eadad 100644
--- a/drivers/clk/samsung/clk-pll.c
+++ b/drivers/clk/samsung/clk-pll.c
@@ -278,7 +278,8 @@ static int samsung_pll35xx_set_rate(struct clk_hw *hw, unsigned long drate,
 	}
 
 	/* Set PLL lock time. */
-	if (pll->type == pll_142xx || pll->type == pll_1017x)
+	if (pll->type == pll_142xx || pll->type == pll_1017x ||
+	    pll->type == pll_141xx)
 		writel_relaxed(rate->pdiv * PLL142XX_LOCK_FACTOR,
 			pll->lock_reg);
 	else
@@ -1497,6 +1498,7 @@ static void __init _samsung_clk_register_pll(struct samsung_clk_provider *ctx,
 	case pll_1451x:
 	case pll_1452x:
 	case pll_142xx:
+	case pll_141xx:
 	case pll_1017x:
 		pll->enable_offs = PLL35XX_ENABLE_SHIFT;
 		pll->lock_offs = PLL35XX_LOCK_STAT_SHIFT;
diff --git a/drivers/clk/samsung/clk-pll.h b/drivers/clk/samsung/clk-pll.h
index 6c8bb7f26..3c7575cde 100644
--- a/drivers/clk/samsung/clk-pll.h
+++ b/drivers/clk/samsung/clk-pll.h
@@ -51,6 +51,7 @@ enum samsung_pll_type {
 	pll_4311,
 	pll_1017x,
 	pll_1031x,
+	pll_141xx,
 };
 
 #define PLL_RATE(_fin, _m, _p, _s, _k, _ks) \
-- 
2.43.0


