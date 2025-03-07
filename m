Return-Path: <devicetree+bounces-155308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 52767A562E6
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 09:48:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC52F188E02E
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 08:48:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C0FA1E1DE7;
	Fri,  7 Mar 2025 08:47:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o40S2uN1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71D8F14D283
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 08:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741337272; cv=none; b=c5voOjdYJe76g6FNO+aMaEKZPOkNlKwf3NtkkRonhGPuOD4jHpNjoHKwhwMuCFwfqzoJCoG3Lk6NRxhGUDvEW1f2LF4XgP/GEsQ9y6bQSUiqwLdPXVDIBYhXKOY/H0/6DfIgCAJpRjvGfPLYHXdlQOCh/NebCSHFtS4tap9IvVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741337272; c=relaxed/simple;
	bh=1klQmpUuK3tpkUPnhlarREZmlq+0v1VMdGLEMIYqCk0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PUCefgrbqNXWgdI5vy0/y2rzcEHwI+pYWJntvS4isB8DX5K1HzGcPc2ifmadP6gDW8UqFmN0xnFcPEUkNgs8KMI2mb9TkSEU51r15uYV3rm3n2OUJciKhR9F9hhvS8ANcrIWeHW8g8pw3SjMYlZGZL6I0SLvHtPSq6JhX5ztYDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o40S2uN1; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-30bfb6ab47cso61471fa.3
        for <devicetree@vger.kernel.org>; Fri, 07 Mar 2025 00:47:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741337268; x=1741942068; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LcV1MZ5e0X4Au7sgZSdAJMfYoBCfZQzOt7NC7B6Xb5o=;
        b=o40S2uN1UD4snsy1yMtLQ9aX0HoTHUsEC+4WNc+zoiie9OSmSC9NVvwhuJedncdKAc
         htJ1Oe9u3okimtRLAv3M6umbLrwvd8BV586IHDtfs3yd+CfCuccOc36nZ19qEnOGHfdM
         4mT+scV9S63ywTmTRcTiKWfuBjKhUIO7BUtgByvTF99Q9QrKzwm3BGaK6EkO4MJmhTOm
         /9AC6AqGW9oHHlpvP9e3lyK0rh9aviATAw5KUpPqsUHZm4Q6cHA9/giF8ySNG0Uju5Vj
         cQ0tHhjvrbjwuk2tICQ53z6FvTa7XKY+f8TLzwamjl79/JW/5i3nfrAzyHI+3hWxWU9z
         FZdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741337268; x=1741942068;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LcV1MZ5e0X4Au7sgZSdAJMfYoBCfZQzOt7NC7B6Xb5o=;
        b=lUTQhCEjq6DSUQ7WhznAm82nbPbsxe76PpvoBKAItZWkM4805TjGpXI8XiZ67yiML3
         erX/+ItwUL9F62Hd2LH4YZmTVoCsLSMmZJfHae6C4GvK99Q+iVk4WCLu+odp4obIBqIN
         27clSKjT7rFxULF1Cf03XbIFHk0bEVmXNVZA7y+2kczym8hXECxBHrvZ9lQPc/w+kSap
         cgxV97dX73v7f7LVCy84eSVJKHLu2tUDjiKSEZVcLeHOgpIBB79KhTyfqXlUDQa8xkMW
         IdSPo2ia50wzMJ0WQRiLaqf9O6n6r8BPjAqcj4vhoRFk495g0kjdgQT/HnVpBZ+8VIfy
         iZjA==
X-Forwarded-Encrypted: i=1; AJvYcCXxjH7BVMCzprcn3TxeaTsx/e23EQxWP1JkSoh3YU24+XaLHGkiHSMQk6XoCC5MmqzYW0ZGK0WYLVGU@vger.kernel.org
X-Gm-Message-State: AOJu0YwTe+el8V2GIovLrmmOBtb6GhQLtryHfB80mBYh0kNsxjyIes86
	34Ws5P4QrqAMdIztv5qwxdEpHWVgjk3EvpCXIUdCIOtLtVhLeyi1z6ZOKTpt4HM=
X-Gm-Gg: ASbGnctm//Gs7mLYv7JRBPK9ot+uCaSTNdfBHXYLI1+UZWSMQcmRNawW3XAYHNkz1uR
	UwLW1fD1w9XsIPd2iYnnBHOYhSlgU9YR8H8eSt5MgXr5MMk+MTHBxluzYXRQC8ECIoYAGN+qzuw
	Fa1kv+axwTP40vEn2GhLKjfjlzYQg7BRf9iI7I8Fc/kxDraWU6UFBLzvJpzMDyD7QcSPmK8z+HB
	aw/3d8/OCEYEGOsXTJJxElRrE/eO40OrPGpvq/x0wo0P6sJr57YgUuLNuVGSLXncSwa42wu/5kv
	HxfdxCjwnEb+jeZSqmowF8LXAokdM1qCGDNV/eR0C65J8tITEA3JyV5syqUWH6cjUMC+F++Elso
	5KTWRZkgQBc/Q4ZzLhcl2S8dz
X-Google-Smtp-Source: AGHT+IEiTwEYJTrTPyGNimhSVQS4rhsKdEBaz+K9T/k8At9auSzopeTRHY7N/xxUYxj35p79+k7uWg==
X-Received: by 2002:a2e:838a:0:b0:306:501:4772 with SMTP id 38308e7fff4ca-30bf4613cd7mr7319681fa.37.1741337267601;
        Fri, 07 Mar 2025 00:47:47 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30be98d0897sm4763021fa.2.2025.03.07.00.47.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Mar 2025 00:47:46 -0800 (PST)
Date: Fri, 7 Mar 2025 10:47:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Ajit Pandey <quic_ajipan@quicinc.com>, 
	Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>, 
	Satya Priya Kakitapalli <quic_skakitap@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/8] clk: qcom: common: Manage rpm, configure PLLs &
 AON clks in really probe
Message-ID: <vmxwmunmlknwp7elhp5zayoraccunxw5fex2hse2w4nwhuxzu5@atbcrfp2jgdm>
References: <20250306-videocc-pll-multi-pd-voting-v2-0-0cd00612bc0e@quicinc.com>
 <20250306-videocc-pll-multi-pd-voting-v2-3-0cd00612bc0e@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250306-videocc-pll-multi-pd-voting-v2-3-0cd00612bc0e@quicinc.com>

On Thu, Mar 06, 2025 at 02:25:35PM +0530, Jagadeesh Kona wrote:
> Add support for runtime power management, PLL configuration and enabling
> critical clocks in qcom_cc_really_probe() to commonize the clock
> controller probe.

Please split this into two commits: one for the runtime PM and another
one for clock configuration, because ...

> 
> The runtime power management is not required for all clock controllers,
> hence handle the rpm based on use_rpm flag in clock controller descriptor.
> Also the power domains need to be kept enabled during pll configuration,
> hence attach all required power domains prior to calling get_sync() on the
> device.
> 
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---
>  drivers/clk/qcom/common.c | 45 ++++++++++++++++++++++++++++++++++++---------
>  drivers/clk/qcom/common.h | 16 ++++++++++++++++
>  2 files changed, 52 insertions(+), 9 deletions(-)

[...]

> +
> +	for (i = 0; i < desc->num_plls; i++)
> +		qcom_cc_clk_pll_configure(desc->plls[i], regmap);
> +
> +	for (i = 0 ; i < desc->num_clks_cfg; i++)
> +		regmap_update_bits(regmap, clks_cfg[i].offset,
> +				   clks_cfg[i].mask, clks_cfg[i].mask);
> +

... just calling regmap_update_bits() looks like a step backwards. In
the past several years we got several sensible wrappers and helpers. I
suggest having a callback instead of a fixed 'update bits' table.

>  	reset = &cc->reset;
>  	reset->rcdev.of_node = dev->of_node;
>  	reset->rcdev.ops = &qcom_reset_ops;

The RPM part is fine with me.

-- 
With best wishes
Dmitry

