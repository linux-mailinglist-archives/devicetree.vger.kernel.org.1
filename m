Return-Path: <devicetree+bounces-65373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC608BDF74
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 12:11:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A43B4283CF6
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 10:11:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A56F14EC45;
	Tue,  7 May 2024 10:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="qevq0o3H"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2DBE14EC44
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 10:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715076681; cv=none; b=rM1Azg0509N7ZBEAHUvsR+z/aFKHHQHpQf1aKNHEF+OfoVmyn3rYEBJnbb0J2ahiuqpGy4OUSHRBRAEZVfXrG8yPubl53msjR/K///G4TJTPyu9AHuKoFX0lYjqXFNaeAsARt565TyixP1z7Q/sIPGPgHTHDkUAnpeaTikkb2OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715076681; c=relaxed/simple;
	bh=s86jj/APKflYyOaCwacoP71XuO9wXKQ22Yv4nmuWEsg=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=k+pXII5QRD/6DpKJJRDojzT1qyTZeCepVKrTPJwxoLzDHnf6djFpjqYwoBbWb7IDiAGxmFFeDbZgCtA43aIL57iGYv5JPD10kcG4g7IWA3g1XDEBdSfNd18hoS7kvWvmNlXbvAkwkQqDH1EpM2Xj7lmJoafU42juYRzsYTyhNPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=qevq0o3H; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 29A3C424B3
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 10:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1715076673;
	bh=tN0TsnKRXwG6A84l3wPnbSYJqqWrPLAk8v9HABeeBQo=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=qevq0o3HGBsPp/Wl1QPGdwa7jsv+QczZ8R32d6D0tcRUKKZvhCHdYgc+AcX3LU3CG
	 j3S5lTdLMHvTGPvdw82byzsZ6RDhAFeAf2RNgq7FsJbLYXDjQeH+UlPCtvWLTzsSpW
	 /VkTWmoi6bH0kjSO1pVk6ZiJ/kt5m0js2ntGcL2kuBErmhPItG9rWs/sT+GqzXJj88
	 OYE+tvCr2DaJPN9JoGcTSLlX2K9P1IfT2/zg1TdZ2Iy5bHZt1VTjpzsjYg5mNW7jbA
	 vYri0++1FUVZuE1vqKQx80nGF7EeX+TLQDyYIqv2gfkXemZlUfSQLvbfrNsh5JN/jJ
	 BlAZt/UOUjfbw==
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-43b036e641aso44506341cf.2
        for <devicetree@vger.kernel.org>; Tue, 07 May 2024 03:11:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715076671; x=1715681471;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tN0TsnKRXwG6A84l3wPnbSYJqqWrPLAk8v9HABeeBQo=;
        b=Xh8R+l7CmuS/RfW+mLzeRbxVH9BISWNenkglpuQ3eXZTPYHGsDMw+griPCNZdiC1Wr
         9Cw0nHnXlX6TaCNSucZIB4xozFGuqd0tJSBXWGiavQwys32aMEBjGJHQNQ1GncS2/KXv
         IYkDWHu0lXS9T1XUdrAxOuLYmW5nXiOop0KwbUeA0Ys8bX3KhJ+OEVqszA2LxvNEdTHo
         sBaMCcRBTIQqNjljlP+/nM90xwNTdEp1lxoTmQsWvT13fm4kWlQJNde3x7pOLZD/h3zc
         zQKa7fOWbnXr5J1keboEltJ5fKMsgl8dZm1PXw0OPLqJ6NGE0ii2KNqiBWUOTLLbbjMb
         JIZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLabLENuhUYnbj2SVXjGX89Lh7Bwc1qFO7G3HRb4BMRSvF6quT0QhQJVKiiTFi86uyRROXHpjM7bGrqbWr5XjJFptBg2RE7wCcig==
X-Gm-Message-State: AOJu0Yxi70g61uGUtHEhZt/GeQNv3V+7KxQyrZanAUXdTQeZcgo/srX0
	oq/bY5guCPyZ49mtk9b3eKNvg1vAj5gKFv3x5MGxgshTtzJIMFT10gbKQD5xEmqnUrXAXFl452G
	oyYouH7FLcGetXrx/YirhWob7fSly9NCSPxF5fBVVUaYY86RkVKMvK1FL1LLIFnuaa17FpnxiBB
	YcTEJPZRc1iDB5hKhS2YFbExN3SaLQ0Z+xMOk2NlEwvz6Xgy7fKw==
X-Received: by 2002:ac8:5796:0:b0:43a:ee30:c554 with SMTP id v22-20020ac85796000000b0043aee30c554mr14429963qta.19.1715076671604;
        Tue, 07 May 2024 03:11:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEC7lED7C0+ygdXPmMOe7xhSHbvQ874n3CyLpSpLWzJYqBxzPH9DjYI8NhKtEuhH+DJaKvyqnKZq7GeBNuznjs=
X-Received: by 2002:ac8:5796:0:b0:43a:ee30:c554 with SMTP id
 v22-20020ac85796000000b0043aee30c554mr14429943qta.19.1715076671316; Tue, 07
 May 2024 03:11:11 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 7 May 2024 03:11:10 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240507065319.274976-2-xingyu.wu@starfivetech.com>
References: <20240507065319.274976-1-xingyu.wu@starfivetech.com> <20240507065319.274976-2-xingyu.wu@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Tue, 7 May 2024 03:11:10 -0700
Message-ID: <CAJM55Z9nJKOEawvxHwUt5w0FKYGw9pBN9_YtOCHjzFGTQ_HvAA@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] clk: starfive: jh7110-sys: Add notifier for PLL0 clock
To: Xingyu Wu <xingyu.wu@starfivetech.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Conor Dooley <conor@kernel.org>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Hal Feng <hal.feng@starfivetech.com>, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Xingyu Wu wrote:
> Add notifier function for PLL0 clock. In the function, the cpu_root clock
> should be operated by saving its current parent and setting a new safe
> parent (osc clock) before setting the PLL0 clock rate. After setting PLL0
> rate, it should be switched back to the original parent clock.
>
> Fixes: e2c510d6d630 ("riscv: dts: starfive: Add cpu scaling for JH7110 SoC")
> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>

This looks much better, thanks!

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

> ---
>  .../clk/starfive/clk-starfive-jh7110-sys.c    | 31 ++++++++++++++++++-
>  drivers/clk/starfive/clk-starfive-jh71x0.h    |  2 ++
>  2 files changed, 32 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/clk/starfive/clk-starfive-jh7110-sys.c b/drivers/clk/starfive/clk-starfive-jh7110-sys.c
> index 8f5e5abfa178..dafa3ae71751 100644
> --- a/drivers/clk/starfive/clk-starfive-jh7110-sys.c
> +++ b/drivers/clk/starfive/clk-starfive-jh7110-sys.c
> @@ -385,6 +385,32 @@ int jh7110_reset_controller_register(struct jh71x0_clk_priv *priv,
>  }
>  EXPORT_SYMBOL_GPL(jh7110_reset_controller_register);
>
> +/*
> + * This clock notifier is called when the rate of PLL0 clock is to be changed.
> + * The cpu_root clock should save the curent parent clock and swicth its parent
> + * clock to osc before PLL0 rate will be changed. Then swicth its parent clock
> + * back after the PLL0 rate is completed.
> + */
> +static int jh7110_pll0_clk_notifier_cb(struct notifier_block *nb,
> +				       unsigned long action, void *data)
> +{
> +	struct jh71x0_clk_priv *priv = container_of(nb, struct jh71x0_clk_priv, pll_clk_nb);
> +	struct clk *cpu_root = priv->reg[JH7110_SYSCLK_CPU_ROOT].hw.clk;
> +	int ret = 0;
> +
> +	if (action == PRE_RATE_CHANGE) {
> +		struct clk *osc = clk_get(priv->dev, "osc");
> +
> +		priv->original_clk = clk_get_parent(cpu_root);
> +		ret = clk_set_parent(cpu_root, osc);
> +		clk_put(osc);
> +	} else if (action == POST_RATE_CHANGE) {
> +		ret = clk_set_parent(cpu_root, priv->original_clk);
> +	}
> +
> +	return notifier_from_errno(ret);
> +}
> +
>  static int __init jh7110_syscrg_probe(struct platform_device *pdev)
>  {
>  	struct jh71x0_clk_priv *priv;
> @@ -413,7 +439,10 @@ static int __init jh7110_syscrg_probe(struct platform_device *pdev)
>  		if (IS_ERR(priv->pll[0]))
>  			return PTR_ERR(priv->pll[0]);
>  	} else {
> -		clk_put(pllclk);
> +		priv->pll_clk_nb.notifier_call = jh7110_pll0_clk_notifier_cb;
> +		ret = clk_notifier_register(pllclk, &priv->pll_clk_nb);
> +		if (ret)
> +			return ret;
>  		priv->pll[0] = NULL;
>  	}
>
> diff --git a/drivers/clk/starfive/clk-starfive-jh71x0.h b/drivers/clk/starfive/clk-starfive-jh71x0.h
> index 23e052fc1549..e3f441393e48 100644
> --- a/drivers/clk/starfive/clk-starfive-jh71x0.h
> +++ b/drivers/clk/starfive/clk-starfive-jh71x0.h
> @@ -114,6 +114,8 @@ struct jh71x0_clk_priv {
>  	spinlock_t rmw_lock;
>  	struct device *dev;
>  	void __iomem *base;
> +	struct clk *original_clk;
> +	struct notifier_block pll_clk_nb;
>  	struct clk_hw *pll[3];
>  	struct jh71x0_clk reg[];
>  };
> --
> 2.25.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

