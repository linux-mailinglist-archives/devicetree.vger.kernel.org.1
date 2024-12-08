Return-Path: <devicetree+bounces-128256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 381D09E83A6
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 06:30:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 13D8A165A38
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 05:30:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40B214437C;
	Sun,  8 Dec 2024 05:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mx0o2C2U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E2724690
	for <devicetree@vger.kernel.org>; Sun,  8 Dec 2024 05:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733635832; cv=none; b=TZswB/4GYaEOVonmZJ94pRy6KKnesGSgYZdW+xJliPP1NYO6XRgvH4eElHFuLAv1aQpNhWtxIxQycePFK+Ps3KRcguBBk9QEdBq+P1irh3FAWUlXyTcwCFabaxG4WzBJu7RVHDrFXqYi6B2APrFkh9GBqlHk+tmSYdvh1gSY3ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733635832; c=relaxed/simple;
	bh=KvnIfFf8P+FLDr+t06zo2ANjcZmqdeZgnkbH9neKfp8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KU5Rfszq3IviNI1Fxugu2grw0k6YVOioK0k+s5573loxOu7Xo+MiAXFOvKnshml+yinssiJ86VJNfGn60myaqSlOpUZ70/ifYcNhBO+GC7zYK911F9WRfzN31hKAdmFNhagMPIMpRCWncGiA/8jC2b5fJs+Hf7phBVM9rt+rY/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mx0o2C2U; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2ffa49f623cso36451251fa.1
        for <devicetree@vger.kernel.org>; Sat, 07 Dec 2024 21:30:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733635828; x=1734240628; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Wvacb83oMug8ZaJH3xcieEjmfoUkx49WyZ97VXV3ZeM=;
        b=mx0o2C2UYAfyxuPhYQ4zF+/r38aKN9+/2jiaOtQfv5vlKbXYKwBNfy2bB52g9jOtR2
         dcSW/16Y9mVFUOOrzwMBBp+2dUyUoMBlpn9fHbfS2r9HMH2sbBJRYA4w7mQW15ri8kZm
         T8rkTuccUp6OUALmooc7B/lVKEBntNpFN+R/Uk+xxMljs6p2qnOh9gUFzepWB7qoyHKo
         l8mmUFdphT1cs/GfaESue2UC3N5bs9K4sFopCUOUbeF7V2v9pA/JRUNndAMhli9zV4G6
         DP+s5snisJKACnsl9hkIDHbcQ+870UdzBEbc/YZ3VbCg628GnWwJEDQn8+QE7QG//Fa0
         OzUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733635828; x=1734240628;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wvacb83oMug8ZaJH3xcieEjmfoUkx49WyZ97VXV3ZeM=;
        b=Bs3HBEGMS0m53a2LzwNq2W1UT2js/0Gcd49pDAOHElqygS4dbUUBl1+UJpvcELTIKU
         YXMkWe3326yNoieMeNxKkntSuq7eQ9x588O2zzMXeui46GWi0Vrht5Mw9auDIGn/VdcM
         NO5xK37qwujAI0TK4CRrtcvgNsWz6DfW6e9ezAxjPCx1FYzu2Xt4Qt4yJV93/jOXEqXM
         /sX7aVliwoNgkONmr+sUO2VgU//8NdEXZJSezqFttHmwKC0cAwFjsNwvPw0AmAHhUK31
         RKT/nJeuf4g7lBj7KFtlgaEuU0mUh31PowhY0tNvaUgUENBNhtVjGNTMPovGalfwHeSp
         omSw==
X-Forwarded-Encrypted: i=1; AJvYcCVrhRT/1x8NQQHWif5x82qR2grin9va+PSm4HBwCtQnFEnJVXmB9OpgMNkT33g3FgUdFeJU5gHH9Aha@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+4oWjA6eSEe9gyc3616t4meXLZxgjtR9ZTKu3SXt6TZ9ozIaX
	DwJwZNLXIQINMOg3kkETcVxYwbvft4YfrS0SM78iU5kUzJYb8cOIYRvfZWV0hdA=
X-Gm-Gg: ASbGncvsPQ5UmDagqHz5uBAqoRo8/s5Zdl99jMG4jc3z/lJeqvfEdC1yXTrVWWGoJKP
	7a9E5j7k8LwinkcrxSOiRDqA+qETw0HCj8L0S8840G46qoZImwrU8AMCidxecBwrGOqj1DVDEXI
	0tfptJqzoaHo9iYlXV15yGee1a7HmihnnUHG8FNWr3j5t2nXY+Q8omkOY0UwBAXcEI3TB6xVSh6
	+RHuhEHTUyURAUyoAHcxgma68ctGPe23Rgt09NZeRTrzZxcT/b6EUhbFEGLRS/3p6/VhE+OFQHF
	ThZc5D8UrJMB1w492fMiS0pbFn58XQ==
X-Google-Smtp-Source: AGHT+IEGWyfmfMdOOWg2y1WPhvOD4Je6bh0ZK678xD9W3i2q/SCD+U4JO0yDb00ekQtqi9O1yIIVaw==
X-Received: by 2002:a05:6512:3d07:b0:53e:3ac2:9c03 with SMTP id 2adb3069b0e04-53e3ac29ca4mr1184966e87.31.1733635827566;
        Sat, 07 Dec 2024 21:30:27 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e378c4264sm574040e87.239.2024.12.07.21.30.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Dec 2024 21:30:26 -0800 (PST)
Date: Sun, 8 Dec 2024 07:30:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ajit Pandey <quic_ajipan@quicinc.com>, Imran Shaik <quic_imrashai@quicinc.com>, 
	Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] clk: qcom: branch: Extend invert logic for branch2
 mem clocks
Message-ID: <oylnao5wjtqyczivesfg46eexfb5oj6o2azprtwf4bl7yhko2c@saqzbycbixqk>
References: <20241206-sm8750_videocc-v1-0-5da6e7eea2bd@quicinc.com>
 <20241206-sm8750_videocc-v1-1-5da6e7eea2bd@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241206-sm8750_videocc-v1-1-5da6e7eea2bd@quicinc.com>

On Fri, Dec 06, 2024 at 11:07:11PM +0530, Taniya Das wrote:
> Extend the support for mem ops implementation to handle the
> sequence of enable/disable of the memories for the invert
> logic.

This mostly duplicates the patch contents. Instead commit message should
explain what is the "invert logic" and why it is relevant.

> 
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---
>  drivers/clk/qcom/clk-branch.c | 14 +++++++++++---
>  drivers/clk/qcom/clk-branch.h |  4 ++++
>  2 files changed, 15 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/clk/qcom/clk-branch.c b/drivers/clk/qcom/clk-branch.c
> index 229480c5b075a0e70dc05b1cb15b88d29fd475ce..6caded8688c081e51ad0649f9c2f82919e461668 100644
> --- a/drivers/clk/qcom/clk-branch.c
> +++ b/drivers/clk/qcom/clk-branch.c
> @@ -142,8 +142,12 @@ static int clk_branch2_mem_enable(struct clk_hw *hw)
>  	u32 val;
>  	int ret;
>  
> -	regmap_update_bits(branch.clkr.regmap, mem_br->mem_enable_reg,
> -			   mem_br->mem_enable_ack_mask, mem_br->mem_enable_ack_mask);
> +	if (mem_br->mem_enable_invert)
> +		regmap_update_bits(branch.clkr.regmap, mem_br->mem_enable_reg,
> +				mem_br->mem_enable_mask, 0);
> +	else
> +		regmap_update_bits(branch.clkr.regmap, mem_br->mem_enable_reg,
> +			mem_br->mem_enable_ack_mask, mem_br->mem_enable_ack_mask);
>  
>  	ret = regmap_read_poll_timeout(branch.clkr.regmap, mem_br->mem_ack_reg,
>  				       val, val & mem_br->mem_enable_ack_mask, 0, 200);
> @@ -159,7 +163,11 @@ static void clk_branch2_mem_disable(struct clk_hw *hw)
>  {
>  	struct clk_mem_branch *mem_br = to_clk_mem_branch(hw);
>  
> -	regmap_update_bits(mem_br->branch.clkr.regmap, mem_br->mem_enable_reg,
> +	if (mem_br->mem_enable_invert)
> +		regmap_update_bits(mem_br->branch.clkr.regmap, mem_br->mem_enable_reg,
> +			   mem_br->mem_enable_mask, mem_br->mem_enable_mask);
> +	else
> +		regmap_update_bits(mem_br->branch.clkr.regmap, mem_br->mem_enable_reg,
>  			   mem_br->mem_enable_ack_mask, 0);
>  
>  	return clk_branch2_disable(hw);
> diff --git a/drivers/clk/qcom/clk-branch.h b/drivers/clk/qcom/clk-branch.h
> index 292756435f53648640717734af198442a315272e..6bc2ba2b5350554005b7f0c84f933580b7582fc7 100644
> --- a/drivers/clk/qcom/clk-branch.h
> +++ b/drivers/clk/qcom/clk-branch.h
> @@ -44,6 +44,8 @@ struct clk_branch {
>   * @mem_enable_reg: branch clock memory gating register
>   * @mem_ack_reg: branch clock memory ack register
>   * @mem_enable_ack_mask: branch clock memory enable and ack field in @mem_ack_reg
> + * @mem_enable_mask: branch clock memory enable mask
> + * @mem_enable_invert: branch clock memory enable and disable has invert logic
>   * @branch: branch clock gating handle
>   *
>   * Clock which can gate its memories.
> @@ -52,6 +54,8 @@ struct clk_mem_branch {
>  	u32	mem_enable_reg;
>  	u32	mem_ack_reg;
>  	u32	mem_enable_ack_mask;
> +	u32	mem_enable_mask;
> +	bool	mem_enable_invert;
>  	struct clk_branch branch;
>  };
>  
> 
> -- 
> 2.45.2
> 

-- 
With best wishes
Dmitry

