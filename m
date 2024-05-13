Return-Path: <devicetree+bounces-66646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 283B88C40FA
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 14:48:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 93EA61F24383
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 12:48:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E11B14F9FA;
	Mon, 13 May 2024 12:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="I5WddfN+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A22A1465A7
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 12:47:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715604481; cv=none; b=qQs2L7B/jv1MGN2PnACaURYd6cHFE2e5f/rS9SdIZ5qWu0n173YL/IKgX7BD9u9yKDtC9HNQrjKX6urkZMhOanE2DcFeicHlUJQRqLmfJYRcGx+E1IbD2xbe0LkZx8u71aaU+fw7sKzYK+mIK1X+5ZN5eAKMlmobfxXd/zLZQV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715604481; c=relaxed/simple;
	bh=TghhJdJ8P4MQ1ToTx62O5Kt1Ggi0cOhu1N6WVIdlRbo=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=XBCwy7Bq7Xf08br5vR3I6fA+grGT829244dRkDntp4stDLr9hvCL2AzUubgcJ/Ddac42rWHna4TNLQgcAmgz+bJlZM5JaCwvU7HtK1H2vyzA0QXvKfkiN1MwXIa76jZsFfvSZOU9/e+iQwYabPL8n5PjVYQZRzh8LehES7rwPFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=I5WddfN+; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-34f7d8bfaa0so3113007f8f.0
        for <devicetree@vger.kernel.org>; Mon, 13 May 2024 05:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1715604476; x=1716209276; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=fPNX1+WwpMtldcZbMIphrzlav74hQQ8rXHdwhbhRO+4=;
        b=I5WddfN+DwmpZCCGOIjIHSyYjs3JnlFA3jfH3rMz+72G6DGZ7/dBp2e+gs8KbNk9BC
         XwJteVtMdd8mL9lpnGtFVEHJtBjuFZWxFIg3nQ/y8T5avfYBjimAkElre57QVE8aAOvF
         1smqs49mm4MB9Ql7tyTOlHiZAknxfd0/btw1sYFoy4hjXu/7xt7ixiuMmJUb6AEf/lvu
         KobPT9VsOFqmbk/jVx1GsQvIFnb8cGA6m+rbb0P/uQR0VkD2+WtYc9qTlFAEMvzARTNw
         Ta35JPJ4+UdLH+zYSVCYpUyew2Y2XS1ZhxaiA0WXrQihQJ41Pny77/zvsp/I9RAZSYh5
         AwJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715604476; x=1716209276;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fPNX1+WwpMtldcZbMIphrzlav74hQQ8rXHdwhbhRO+4=;
        b=EApgrEcrNnfa6Bz32iKDTlYFX6fyui/c/Q8Ld7eJg8DMRe8/a7uFgnFw3qtnGe3B03
         2KflRFpafOFBTgu0G4UNQTjeZdHUoJEko0AmkVtcb6xi5j2x3IsBZ092sb6vy/h1xctL
         P9ZMIGvH+zANaM+Pt7cUFWvaTpgesoFz7OcO5rBhfUj/CaOi4Cb0CmkMYmS1oJYwsYCq
         WWVT2tFw2mvf4cjhjkGVzwSo0S8alQO3WSh/xnHl+x78IEkErglP5pMMOd/uKyI6bEg5
         PZH/ptkt0s0Bc5XQikGbz/Ip51DkthRq9pox9iRFQf9U6EjIkbc2bgJh5DZ65ftaqvME
         cV1g==
X-Forwarded-Encrypted: i=1; AJvYcCXgKzXyldzmTESnBMZi/exOUDr57mWFT9CtJyrsv+ccGPObD5Y1eQxCNiA/UB1l6FSIMhYa/TXqej2HhrlYwrAXjcRZiY0sybZFRQ==
X-Gm-Message-State: AOJu0Yxm7M/FAosmmz88IX0oNMiobJiigNXwPaYuJzmjNj1HfNp1DCx3
	ykpkPyqt4nLVsf3CwXRpzlvi4jiS/uuPuIMQeVP8zolq+gqjhD+7w43yKZ0HNh0=
X-Google-Smtp-Source: AGHT+IEk+Met1qf2o3dGT4F3YeppkeI/2Ixdh7UZ2ZMou78Xn6gzYNBNsB2yR/oj9LHHrEyEco7psg==
X-Received: by 2002:adf:f48a:0:b0:34c:6b36:33e5 with SMTP id ffacd0b85a97d-3504aa6a22emr6914680f8f.71.1715604475948;
        Mon, 13 May 2024 05:47:55 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:5b77:3e5a:a808:339a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502b896ab0sm11140161f8f.41.2024.05.13.05.47.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 May 2024 05:47:55 -0700 (PDT)
References: <20240510090933.19464-1-ddrokosov@salutedevices.com>
 <20240510090933.19464-2-ddrokosov@salutedevices.com>
User-agent: mu4e 1.10.8; emacs 29.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Dmitry Rokosov <ddrokosov@salutedevices.com>
Cc: neil.armstrong@linaro.org, jbrunet@baylibre.com,
 mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, khilman@baylibre.com,
 martin.blumenstingl@googlemail.com, jian.hu@amlogic.com,
 kernel@sberdevices.ru, rockosov@gmail.com,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/7] clk: meson: introduce 'INIT_ONCE' flag to
 eliminate init for enabled PLL
Date: Mon, 13 May 2024 14:44:06 +0200
In-reply-to: <20240510090933.19464-2-ddrokosov@salutedevices.com>
Message-ID: <1jfrulzxms.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Fri 10 May 2024 at 12:08, Dmitry Rokosov <ddrokosov@salutedevices.com> wrote:

> When dealing with certain PLLs, it is necessary to avoid modifying them
> if they have already been initialized by lower levels. For instance, in
> the A1 SoC Family, the sys_pll is enabled as the parent for the cpuclk,
> and it cannot be disabled during the initialization sequence. Therefore,
> initialization phase must be skipped.
>
> Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
> ---
>  drivers/clk/meson/clk-pll.c | 37 +++++++++++++++++++++----------------
>  drivers/clk/meson/clk-pll.h |  1 +
>  2 files changed, 22 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/clk/meson/clk-pll.c b/drivers/clk/meson/clk-pll.c
> index 78d17b2415af..47b22a6be2e4 100644
> --- a/drivers/clk/meson/clk-pll.c
> +++ b/drivers/clk/meson/clk-pll.c
> @@ -289,11 +289,32 @@ static int meson_clk_pll_wait_lock(struct clk_hw *hw)
>  	return -ETIMEDOUT;
>  }
>  
> +static int meson_clk_pll_is_enabled(struct clk_hw *hw)
> +{
> +	struct clk_regmap *clk = to_clk_regmap(hw);
> +	struct meson_clk_pll_data *pll = meson_clk_pll_data(clk);
> +
> +	if (MESON_PARM_APPLICABLE(&pll->rst) &&
> +	    meson_parm_read(clk->map, &pll->rst))
> +		return 0;
> +
> +	if (!meson_parm_read(clk->map, &pll->en) ||
> +	    !meson_parm_read(clk->map, &pll->l))
> +		return 0;
> +
> +	return 1;
> +}
> +
>  static int meson_clk_pll_init(struct clk_hw *hw)
>  {
>  	struct clk_regmap *clk = to_clk_regmap(hw);
>  	struct meson_clk_pll_data *pll = meson_clk_pll_data(clk);
>  
> +	/* Do not init already enabled PLL which marked with 'init_once'
> */

That is decribing the code, which we can read. So not really helpful
Saying why you do it, like "Keep the clock running from the bootloader
stage and avoid glitching it ..." gives more context about what you are
trying to do.

> +	if ((pll->flags & CLK_MESON_PLL_INIT_ONCE) &&

I don't like INIT_ONCE. It gives the false impression that

* The PLL is going to be initialized once in Linux if it has the flag
* Is initialised multiple times otherwise 

I agree that currently that carefully reading the code clears that up
but it is misleading

CLK_MESON_PLL_EN_NOINIT ?

> +	    meson_clk_pll_is_enabled(hw))
> +		return 0;
> +
>  	if (pll->init_count) {
>  		if (MESON_PARM_APPLICABLE(&pll->rst))
>  			meson_parm_write(clk->map, &pll->rst, 1);
> @@ -308,22 +329,6 @@ static int meson_clk_pll_init(struct clk_hw *hw)
>  	return 0;
>  }
>  
> -static int meson_clk_pll_is_enabled(struct clk_hw *hw)
> -{
> -	struct clk_regmap *clk = to_clk_regmap(hw);
> -	struct meson_clk_pll_data *pll = meson_clk_pll_data(clk);
> -
> -	if (MESON_PARM_APPLICABLE(&pll->rst) &&
> -	    meson_parm_read(clk->map, &pll->rst))
> -		return 0;
> -
> -	if (!meson_parm_read(clk->map, &pll->en) ||
> -	    !meson_parm_read(clk->map, &pll->l))
> -		return 0;
> -
> -	return 1;
> -}
> -
>  static int meson_clk_pcie_pll_enable(struct clk_hw *hw)
>  {
>  	int retries = 10;
> diff --git a/drivers/clk/meson/clk-pll.h b/drivers/clk/meson/clk-pll.h
> index a2228c0fdce5..23195ea4eae1 100644
> --- a/drivers/clk/meson/clk-pll.h
> +++ b/drivers/clk/meson/clk-pll.h
> @@ -28,6 +28,7 @@ struct pll_mult_range {
>  	}
>  
>  #define CLK_MESON_PLL_ROUND_CLOSEST	BIT(0)
> +#define CLK_MESON_PLL_INIT_ONCE		BIT(1)
>  
>  struct meson_clk_pll_data {
>  	struct parm en;


-- 
Jerome

