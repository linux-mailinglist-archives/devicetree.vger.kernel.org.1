Return-Path: <devicetree+bounces-44402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB8C85E0A8
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 16:12:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 796A6B26A78
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 15:12:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5981D80BFD;
	Wed, 21 Feb 2024 15:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="lOlMupNp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADE078004A
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 15:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708528335; cv=none; b=GhW9L1WRVUFOn/fWE4JgIwH9jl93yH7y7yn0la6dAjXP+y+uCKvGvFRtUkGKiPnoJpXkrQ7NhsA8ywmQr5wiNXLhCMsSvRcX+nhJREFxz4TgvFwYQJCwy0i46mJjur/2fi3nEPZXldBz+g6Fo27FZzEU0m233U3qsjd6h/T2g5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708528335; c=relaxed/simple;
	bh=MdLPv7HkKaZwwZh1xD8A4aluOJVBj8VBH2qLxu3qrcM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IQOWzEB3hAC5ATYSVlix9RxB7HCFvS8GhZ479ECuBlPHpl7SZAhj24JqB7vLqk+oJllVG2cPUx90EH7TMl7NDJ0eKxhJPpUj2MHWEcAsb9t7NlC6yg6poa0b5L6YfbYYe3DMhm+Ej7iz7qEBolyli5raIF40HO4E2wSaGnGmxDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=lOlMupNp; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4127190ad83so11074285e9.0
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 07:12:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1708528331; x=1709133131; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CDzlDzZQlyRp4tHPz70HDG/j2aqF8PDbUcJLYunNGlE=;
        b=lOlMupNpPEEBV1aMgYLpSCAOVrP+T9sekfvcpMz/FsTLddbeVskSLEVAB7kbpN33n8
         LqP2OouNwG6pwemH5N18NaDevENBmn2CyQqwF0vWSo3uBTHlL9xC9yZQg07/lNJeQJg4
         XwU4g/sgOR1nTZkGg4Q2kuXN929gFUN7q8yT8GIo+eJ3SyQNbFt37e1OHkK5aKECCAyf
         Fjiraf2ioKRncX1m4ERiyQNA5391SL/CzOZL970/+ZK7sFjMazx+F3JPDLBcDG/7bnU3
         AeaMfR8k8cym3ufg7d4qC555rrcig9ACwNHCSq++EflUtLI1YFrMR6mmcL8e3jqUPo+P
         NgYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708528331; x=1709133131;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CDzlDzZQlyRp4tHPz70HDG/j2aqF8PDbUcJLYunNGlE=;
        b=OKP1f6V8SpFzP4he683YCThNLGapqZPDKPtltyGzvOfDIub4MzdFbcm+OVSxpGi1b+
         mHc67f0/O7fAIItl68usgqVvKBmnsOOZSOkZys060oZz1n81RJH/5n0Abuh/5WWRo1Z0
         ZnzqIk5vLogxvkgUj+FNMC85SP6swbvCMB6dT5US9YXMvYKiaDtVZa7ZPXEbFlUV99yr
         qDbRsBZVwvx1Z7sYd3uYiGJsG5rxasCuAbUvhEJ89yf0b+44XWnSH0jvfbbhMnjE/jtY
         CDD6NGYx5jtwahId1mQiBga8odAL8gRkEY3kZJRaex9SGW9Lgx9pJFk3s+U7AjBhK17L
         HVaQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPeHZTYsLKlGHzMoKIMsdpyPOcZDctwBRf2DwiNVLAS0bHT6Lg41GR3mN0FjBnjiXzf1PlIS1o8gRZAYkUWl9LrjPpAdnT8PSQgw==
X-Gm-Message-State: AOJu0YzNOsGCLscLv5z6pGqH420jasnQiFl8A3zX7EukqT2F6FQ02Yk4
	MREzCF+QjZhucq+uHM1TiGhO3VIQsk66hoZye5J9dXxN94RwyVWgUNYal940YEM=
X-Google-Smtp-Source: AGHT+IFVjoug76sKUiM3bxfin/b2jHTnn52j44PDi+C4u8iMcyLosuU5W9Kxm6Kr7b2Go6+sQkLLSQ==
X-Received: by 2002:a05:600c:45d3:b0:410:2d72:63b3 with SMTP id s19-20020a05600c45d300b004102d7263b3mr13477876wmo.23.1708528331144;
        Wed, 21 Feb 2024 07:12:11 -0800 (PST)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:1b1a:d907:d735:9f9e])
        by smtp.googlemail.com with ESMTPSA id bg22-20020a05600c3c9600b0040fc56712e8sm18725342wmb.17.2024.02.21.07.12.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Feb 2024 07:12:10 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-pwm@vger.kernel.org,
	JunYi Zhao <junyi.zhao@amlogic.com>
Subject: [PATCH v5 4/5] pwm: meson: don't carry internal clock elements around
Date: Wed, 21 Feb 2024 16:11:50 +0100
Message-ID: <20240221151154.26452-5-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240221151154.26452-1-jbrunet@baylibre.com>
References: <20240221151154.26452-1-jbrunet@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit

Pointers to the internal clock elements of the PWM are useless
after probe. There is no need to carry this around in the device
data.

Rework the clock registration to let devres deal with it

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 drivers/pwm/pwm-meson.c | 73 ++++++++++++++++++++++-------------------
 1 file changed, 40 insertions(+), 33 deletions(-)

diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
index a02fdbc61256..fe61335d87d0 100644
--- a/drivers/pwm/pwm-meson.c
+++ b/drivers/pwm/pwm-meson.c
@@ -85,14 +85,17 @@ static struct meson_pwm_channel_data {
 	}
 };
 
+struct meson8b_pwm_clocks {
+	struct clk_divider div;
+	struct clk_gate gate;
+	struct clk_mux mux;
+};
+
 struct meson_pwm_channel {
 	unsigned long rate;
 	unsigned int hi;
 	unsigned int lo;
 
-	struct clk_mux mux;
-	struct clk_divider div;
-	struct clk_gate gate;
 	struct clk *clk;
 };
 
@@ -419,9 +422,14 @@ static int meson_pwm_init_channels(struct pwm_chip *chip)
 
 	for (i = 0; i < chip->npwm; i++) {
 		struct meson_pwm_channel *channel = &meson->channels[i];
-		struct clk_parent_data div_parent = {}, gate_parent = {};
+		struct clk_parent_data pdata = {};
+		struct meson8b_pwm_clocks *clks;
 		struct clk_init_data init = {};
 
+		clks = devm_kzalloc(dev, sizeof(*clks), GFP_KERNEL);
+		if (!clks)
+			return -ENOMEM;
+
 		snprintf(name, sizeof(name), "%s#mux%u", dev_name(dev), i);
 
 		init.name = name;
@@ -430,16 +438,15 @@ static int meson_pwm_init_channels(struct pwm_chip *chip)
 		init.parent_data = mux_parent_data;
 		init.num_parents = MESON_NUM_MUX_PARENTS;
 
-		channel->mux.reg = meson->base + REG_MISC_AB;
-		channel->mux.shift =
-				meson_pwm_per_channel_data[i].clk_sel_shift;
-		channel->mux.mask = MISC_CLK_SEL_MASK;
-		channel->mux.flags = 0;
-		channel->mux.lock = &meson->lock;
-		channel->mux.table = NULL;
-		channel->mux.hw.init = &init;
+		clks->mux.reg = meson->base + REG_MISC_AB;
+		clks->mux.shift = meson_pwm_per_channel_data[i].clk_sel_shift;
+		clks->mux.mask = MISC_CLK_SEL_MASK;
+		clks->mux.flags = 0;
+		clks->mux.lock = &meson->lock;
+		clks->mux.table = NULL;
+		clks->mux.hw.init = &init;
 
-		err = devm_clk_hw_register(dev, &channel->mux.hw);
+		err = devm_clk_hw_register(dev, &clks->mux.hw);
 		if (err)
 			return dev_err_probe(dev, err,
 					     "failed to register %s\n", name);
@@ -449,19 +456,19 @@ static int meson_pwm_init_channels(struct pwm_chip *chip)
 		init.name = name;
 		init.ops = &clk_divider_ops;
 		init.flags = CLK_SET_RATE_PARENT;
-		div_parent.index = -1;
-		div_parent.hw = &channel->mux.hw;
-		init.parent_data = &div_parent;
+		pdata.index = -1;
+		pdata.hw = &clks->mux.hw;
+		init.parent_data = &pdata;
 		init.num_parents = 1;
 
-		channel->div.reg = meson->base + REG_MISC_AB;
-		channel->div.shift = meson_pwm_per_channel_data[i].clk_div_shift;
-		channel->div.width = MISC_CLK_DIV_WIDTH;
-		channel->div.hw.init = &init;
-		channel->div.flags = 0;
-		channel->div.lock = &meson->lock;
+		clks->div.reg = meson->base + REG_MISC_AB;
+		clks->div.shift = meson_pwm_per_channel_data[i].clk_div_shift;
+		clks->div.width = MISC_CLK_DIV_WIDTH;
+		clks->div.hw.init = &init;
+		clks->div.flags = 0;
+		clks->div.lock = &meson->lock;
 
-		err = devm_clk_hw_register(dev, &channel->div.hw);
+		err = devm_clk_hw_register(dev, &clks->div.hw);
 		if (err)
 			return dev_err_probe(dev, err,
 					     "failed to register %s\n", name);
@@ -471,22 +478,22 @@ static int meson_pwm_init_channels(struct pwm_chip *chip)
 		init.name = name;
 		init.ops = &clk_gate_ops;
 		init.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED;
-		gate_parent.index = -1;
-		gate_parent.hw = &channel->div.hw;
-		init.parent_data = &gate_parent;
+		pdata.index = -1;
+		pdata.hw = &clks->div.hw;
+		init.parent_data = &pdata;
 		init.num_parents = 1;
 
-		channel->gate.reg = meson->base + REG_MISC_AB;
-		channel->gate.bit_idx = meson_pwm_per_channel_data[i].clk_en_shift;
-		channel->gate.hw.init = &init;
-		channel->gate.flags = 0;
-		channel->gate.lock = &meson->lock;
+		clks->gate.reg = meson->base + REG_MISC_AB;
+		clks->gate.bit_idx = meson_pwm_per_channel_data[i].clk_en_shift;
+		clks->gate.hw.init = &init;
+		clks->gate.flags = 0;
+		clks->gate.lock = &meson->lock;
 
-		err = devm_clk_hw_register(dev, &channel->gate.hw);
+		err = devm_clk_hw_register(dev, &clks->gate.hw);
 		if (err)
 			return dev_err_probe(dev, err, "failed to register %s\n", name);
 
-		channel->clk = devm_clk_hw_get_clk(dev, &channel->gate.hw, NULL);
+		channel->clk = devm_clk_hw_get_clk(dev, &clks->gate.hw, NULL);
 		if (IS_ERR(channel->clk))
 			return dev_err_probe(dev, PTR_ERR(channel->clk),
 					     "failed to register %s\n", name);
-- 
2.43.0


