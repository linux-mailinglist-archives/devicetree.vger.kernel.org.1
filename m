Return-Path: <devicetree+bounces-110502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0E099A8F7
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 18:35:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 520081F22916
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 16:35:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D709199932;
	Fri, 11 Oct 2024 16:35:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="FnpfjoSx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8893919922F
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 16:35:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728664529; cv=none; b=KuSYqzGGvaJzPR8xrV11IEGZSNgW/vHYNncN0Don7EsC9S0K4pSlmfJ3N68Aw+wfPttP+T9Ex19rIovzqNYFY20T8oPOw6b6PxIEp1L1tcutpZ9xdfSJyT1jTjrM8acPyPfDNNUW54USy1Eqm2colLberQHD6jDQDiI35n9ucos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728664529; c=relaxed/simple;
	bh=b3qHa7r+6pV4lwvw748wSsm3U6bD7sQalwfrgCBv/O4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X3MAt4IUwEIq5WPHiLWmHCX3ApdMOi2VU+c19iWF63gUJz7GEv2TaQw/rD3ZvxpHHrvvYQ/m/7R73nGzh/KQSOMB/yfTmMT0F6nWEuLhSa4GjVcR6Wk8EknoUfG35WerdM4TIOaL+B7GS5TppTp0Hv+EvWK3YXwniSRvcyr+N84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=FnpfjoSx; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-2e221a7e7baso1560294a91.0
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 09:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1728664527; x=1729269327; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TmThUYkOTDaIhgghepZ/G5vDjgtJ1yvPAxuWgnKKjgg=;
        b=FnpfjoSxp8vDP5r606YLYnmCEB96q9KPPc8bi/Uldx+wLgkH7U1LB115j0oiVVmjYH
         sIkoOhCXZSLXCS+UUlwl1sSs21n/SP00yTaWS/9vNGAUYGweKxgThRyKaiZ/2spVZ7eP
         yiUwY10jqCwX0hvAhLhc8N3tPB/3tm9ZHsM01V9WGzKSftF9jhyCfKYe3tw/2fMnOWLu
         DkXwcY+zmdgqKET1ofczeWQl0G254fvmgtqMhMcOLOOMb2H4E5ETyHqizX4y+JGWXTKj
         RhWnRnsPFxpUccwxWgKAiIUB9ttIwxcjX7R5bNAGPkw91ZHhaB2FS9ct/eZd8GKCCXUX
         fUcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728664527; x=1729269327;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TmThUYkOTDaIhgghepZ/G5vDjgtJ1yvPAxuWgnKKjgg=;
        b=idYtad/+L+VWZEJusuk6q0cVeTLJqytPQVIgG+uBQmOxBFmJMxeE/gOB/wIismjx8V
         JLgZTHe9dO2BIYAeKGYpkq0uV+0NZyRlRiQwzn7XHedRldQFXmIe6HBGo/2DT0vek1Ow
         Y/wC/u53kcTx3Ue8RvUNqqLsINCiqOxfS3wx3AWFzvfFZC+hRhBTgtZBC49b1cthaMgO
         TBSIkAuRAg2Qb5L2wtZ1W1eun7wJIlP+55MGZMWC0Rprr2ZzmEVwtpRYSYqwOGQCG5w5
         KwBk/QZPPWPmznqHDlGd8Mo9utrLTxTA2DgjcmXiur5hseogPEZfAlgnBFaP3nLLAqpM
         twOg==
X-Forwarded-Encrypted: i=1; AJvYcCUezmS+THq+DeSovYvEgKtFoctGVsEW0ub053+kAbd3cspIuuBowA9w7ShPIizR6Tsp74lHsuUsxJh1@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0/l5+uLlDxWUcVZ6j4HhKC4DLb4klUXToSY0KkE63KgZ+qo/Q
	keEYJ3q5CXti6mhvJmGfu766JuZF0wt27XKaQ2gVjfTah353HuD8z5h0/gCbthJLp9MvvBGeKW2
	T
X-Google-Smtp-Source: AGHT+IGLIOSThxWqsd5665YVQNbI9JkSuYl+8F50zeEjp5XfPQiX8r4yeY1njTehNjbi8gl5qYZD8A==
X-Received: by 2002:a17:90a:d815:b0:2e2:e086:f550 with SMTP id 98e67ed59e1d1-2e2f0af2ee3mr4374574a91.21.1728664526828;
        Fri, 11 Oct 2024 09:35:26 -0700 (PDT)
Received: from x1 (71-34-69-82.ptld.qwest.net. [71.34.69.82])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e2d5c99db3sm3415093a91.0.2024.10.11.09.35.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 09:35:26 -0700 (PDT)
Date: Fri, 11 Oct 2024 09:35:25 -0700
From: Drew Fustini <dfustini@tenstorrent.com>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	Linus Walleij <linus.walleij@linaro.org>,
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Subject: Re: [PATCH v1 3/3] pinctrl: th1520: Factor out casts
Message-ID: <ZwlTzbsiyr8994S+@x1>
References: <20241011144826.381104-1-emil.renner.berthing@canonical.com>
 <20241011144826.381104-4-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241011144826.381104-4-emil.renner.berthing@canonical.com>

On Fri, Oct 11, 2024 at 04:48:25PM +0200, Emil Renner Berthing wrote:
> Limit the casts to get the mux data and flags from the driver data
> pointer with each pin to two inline functions as requested by Andy
> during review.
> 
> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> ---
>  drivers/pinctrl/pinctrl-th1520.c | 22 +++++++++++++++++-----
>  1 file changed, 17 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/pinctrl/pinctrl-th1520.c b/drivers/pinctrl/pinctrl-th1520.c
> index 8bd40cb2f013..7474d8da32f9 100644
> --- a/drivers/pinctrl/pinctrl-th1520.c
> +++ b/drivers/pinctrl/pinctrl-th1520.c
> @@ -152,6 +152,16 @@ static enum th1520_muxtype th1520_muxtype_get(const char *str)
>  		(TH1520_MUX_##m0 <<  0) | (TH1520_MUX_##m1 <<  5) | (TH1520_MUX_##m2 << 10) | \
>  		(TH1520_MUX_##m3 << 15) | (TH1520_MUX_##m4 << 20) | (TH1520_MUX_##m5 << 25)) }
>  
> +static unsigned long th1520_pad_muxdata(void *drv_data)
> +{
> +	return (uintptr_t)drv_data & TH1520_PAD_MUXDATA;
> +}
> +
> +static bool th1520_pad_no_padcfg(void *drv_data)
> +{
> +	return (uintptr_t)drv_data & TH1520_PAD_NO_PADCFG;
> +}
> +
>  static const struct pinctrl_pin_desc th1520_group1_pins[] = {
>  	TH1520_PAD(0,  OSC_CLK_IN,    ____, ____, ____, ____, ____, ____, TH1520_PAD_NO_PADCFG),
>  	TH1520_PAD(1,  OSC_CLK_OUT,   ____, ____, ____, ____, ____, ____, TH1520_PAD_NO_PADCFG),
> @@ -590,7 +600,7 @@ static int th1520_pinconf_get(struct pinctrl_dev *pctldev,
>  	u32 value;
>  	u32 arg;
>  
> -	if ((uintptr_t)desc->drv_data & TH1520_PAD_NO_PADCFG)
> +	if (th1520_pad_no_padcfg(desc->drv_data))
>  		return -ENOTSUPP;
>  
>  	value = readl_relaxed(th1520_padcfg(thp, pin));
> @@ -660,7 +670,7 @@ static int th1520_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
>  	unsigned int i;
>  	u16 mask, value;
>  
> -	if ((uintptr_t)desc->drv_data & TH1520_PAD_NO_PADCFG)
> +	if (th1520_pad_no_padcfg(desc->drv_data))
>  		return -ENOTSUPP;
>  
>  	mask = 0;
> @@ -793,12 +803,14 @@ static int th1520_pinmux_set_mux(struct pinctrl_dev *pctldev,
>  {
>  	struct th1520_pinctrl *thp = pinctrl_dev_get_drvdata(pctldev);
>  	const struct function_desc *func = pinmux_generic_get_function(pctldev, fsel);
> +	enum th1520_muxtype muxtype = (uintptr_t)func->data;
>  
>  	if (!func)
>  		return -EINVAL;
> +
>  	return th1520_pinmux_set(thp, thp->desc.pins[gsel].number,
> -				 (uintptr_t)thp->desc.pins[gsel].drv_data & TH1520_PAD_MUXDATA,
> -				 (uintptr_t)func->data);
> +				 th1520_pad_muxdata(thp->desc.pins[gsel].drv_data),
> +				 muxtype);
>  }
>  
>  static int th1520_gpio_request_enable(struct pinctrl_dev *pctldev,
> @@ -809,7 +821,7 @@ static int th1520_gpio_request_enable(struct pinctrl_dev *pctldev,
>  	const struct pin_desc *desc = pin_desc_get(pctldev, offset);
>  
>  	return th1520_pinmux_set(thp, offset,
> -				 (uintptr_t)desc->drv_data & TH1520_PAD_MUXDATA,
> +				 th1520_pad_muxdata(desc->drv_data),
>  				 TH1520_MUX_GPIO);
>  }
>  
> -- 
> 2.43.0
> 

Reviewed-by: Drew Fustini <dfustini@tenstorrent.com>

Thanks for improving this. I see the feedback from Andy [1] on your v2
now that you mention it.

-Drew

[1] https://lore.kernel.org/linux-gpio/Zj8K_0zpI_IAY66R@surfacebook.localdomain/

