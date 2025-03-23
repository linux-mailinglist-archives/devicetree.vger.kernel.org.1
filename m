Return-Path: <devicetree+bounces-159940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1F2A6D19D
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 23:40:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 316CB16F29B
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 22:40:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EF901DF72C;
	Sun, 23 Mar 2025 22:39:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ro5ATcEw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A47C71D6DAA
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 22:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742769573; cv=none; b=ft/PalVN610U10/HXYHQoGJsYLEvgzkN4BCXZYsks+MHrYnwTwlLzLj/ckxRz01sH9wfPDeXYp7aFnOF2u7QfoFn8k21xRYXj5esP5Ab09gz339B6gAadw4AyZfQLoiBB82Va3KdP4uxHkQ5FxqzEv9UkAgi3PslmpD7ur4+61M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742769573; c=relaxed/simple;
	bh=SOWDFBYDVimh2JZdbpqs93MuJ5ZKdaya15zjUJJgJoE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ef5i5AiMU9e5QZGS++aVIe8PgiIpZqheKBPD28YfvgmgF/7pVI7VCccy3mCFk3tOmWPfZc6A/jtGzHLDBX8ON2wOt5nwf9PMdyDyjN3cmM46vBwDGEH5N1kMrA3MjN5a2IiwvTkxePdIw7KzakSoN9II5Zn5wkIkEDasuw14S2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ro5ATcEw; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ac2ab99e16eso764025566b.0
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 15:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742769568; x=1743374368; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a1WAgr4uwM04DZyOzCnLxT64GQbYEMMtR1/k9PjNmnI=;
        b=Ro5ATcEwOXJoVYOumsx3SzyVEZr0IG0MbaEdO3CqShFnuHHX7IA3m+53Mge+A4z2+K
         Y4gISwjjFDeTGH+A5hP5NV37c3Mfk1ZROF6AeKE66mHgWJ0rbvnyRe2h5SCxyavfrjP/
         xOX05pEBekJgjHGfLO4PmSIYxso5YMdkOI8ZpXp5oiQLCrqMWFfYaQgp8lVJ96JPsfBy
         KsOvSJRRe4uaTIPxXOF03cAA0oqbGCJ6CSP7YEO8x3Ncs1SsxqHmbjvwZR80nzm56bWY
         zroBW25Zsp9DOgHUsb+nRZLCF0rlB+LDEdvogubZegvgBkEOGZO7l1skyOEFAAdhvJr7
         9+aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742769568; x=1743374368;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a1WAgr4uwM04DZyOzCnLxT64GQbYEMMtR1/k9PjNmnI=;
        b=PfJ+Fee+Y1MOEx2nBHtvBCFLzhzx8U4NvW+puPqFuxl6a8PchczwXVh0xObm9WG/Er
         NPNNcMAhOkmo+ww6FOJ/XOLMDvahichvfA/HFpIqFFtpLWUoRZ5H9+A+NZVjLLJwzYh1
         jwPJyVfjcGBEcX1ZtXBcYN/+CRd3GKp+2TWsnrYt5e3cMY2q7zoB5mdyIXerzq+BkSq3
         8YZIfvT6yqk4xuYd3s2hCeLJCVPPE+v7clyPIfOXBfKHBYW+eQju7wMTUg5773t2dXeX
         IgeU7v7sWHZ6jgOYURVFJLneafohWWxU90QChcYEghKwD4EkG4dCmcVO1H/bx/i8NNA4
         pF/A==
X-Forwarded-Encrypted: i=1; AJvYcCVxXY/tB3kiboEfmoxC3cGY3DDhm+nU/jOpi/h0ZWb5vmCEWMlUgju3pl8bIG4p6HmQkNyJHF/dDaeI@vger.kernel.org
X-Gm-Message-State: AOJu0Yyo8+vkZTHeXz7Sm1R0tjqwByw5njO3+jpTanxoqdRJnNsndmCC
	524WoHIwu5+1pHdrY+Xq+U1xFFVVS34yx96cVo/rQhFc1KAbM8Y4lRJ/yZCYQlY=
X-Gm-Gg: ASbGncvoebBfw9RL435ktxtexBFSejHZ33DVKEzLXXrBK3x/XWg1K1EuW043GAYrPx4
	kMeHX5BjFIG5N/hZ+GgQcYv1RgRyx04JuBXH1r5ESIPtfZFzXn/OQ8stdYt8pbZBNgeXneQ7ieq
	BRcygmH1hmEdWHvg+94p3bMGE5DFjs9Xgof2CbPS1oKIEoaw3/hEsJlADwCqQ1v9nkvzyRVF2am
	Fj7vC914VbM/iLMdOO5BEgPWxQX+aKmRl+KtzywTssYEelGjKhdzCm6nnaw7g7PF91tRKuKtvXY
	H8N+Bzr+3BzDFGNIJarzKAW/7heRaRlypDxVLXoOOCxNpevTBywNfWQkT/Bn7wk7Id8Gcj+JhmO
	j1jRitjt4vk5WheuHkcjxHj3JYY1N
X-Google-Smtp-Source: AGHT+IGESlPld0TIZcF+ERlnjIFgWzaZCupFw8MycHD7wowlazt/klJI/2hD2dVdJFw5afV/HysuBA==
X-Received: by 2002:a17:907:bd88:b0:ac4:491:1548 with SMTP id a640c23a62f3a-ac404911816mr803996166b.11.1742769568148;
        Sun, 23 Mar 2025 15:39:28 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3ef86e44dsm559686666b.31.2025.03.23.15.39.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Mar 2025 15:39:27 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sun, 23 Mar 2025 22:39:24 +0000
Subject: [PATCH 08/34] mfd: sec: fix open parenthesis alignment
 (of_property_read_bool)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250323-s2mpg10-v1-8-d08943702707@linaro.org>
References: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
In-Reply-To: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

As a preparation for adding support for Samsung's S2MPG10, which is
connected via SPEEDY / ACPM rather than I2C, we're going to split out
(move) all I2C-specific driver code into its own kernel module, and
create a (common) core transport-agnostic kernel module.

That move of code would highlight some unexpected alignment which
checkpatch would complain about. To avoid that, address the error now,
before the split, to keep the amount of unrelated changes to a minimum
when actually doing the split.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/mfd/sec-core.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/mfd/sec-core.c b/drivers/mfd/sec-core.c
index 83693686567df61b5e09f7129dc6b01d69156ff3..b931f66f366571d93ce59c301265fe1c9550b37d 100644
--- a/drivers/mfd/sec-core.c
+++ b/drivers/mfd/sec-core.c
@@ -276,10 +276,12 @@ sec_pmic_i2c_parse_dt_pdata(struct device *dev)
 	if (!pd)
 		return ERR_PTR(-ENOMEM);
 
-	pd->manual_poweroff = of_property_read_bool(dev->of_node,
-						"samsung,s2mps11-acokb-ground");
-	pd->disable_wrstbi = of_property_read_bool(dev->of_node,
-						"samsung,s2mps11-wrstbi-ground");
+	pd->manual_poweroff =
+		of_property_read_bool(dev->of_node,
+				      "samsung,s2mps11-acokb-ground");
+	pd->disable_wrstbi =
+		of_property_read_bool(dev->of_node,
+				      "samsung,s2mps11-wrstbi-ground");
 	return pd;
 }
 

-- 
2.49.0.395.g12beb8f557-goog


