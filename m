Return-Path: <devicetree+bounces-250140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 853EBCE6747
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:08:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E92A13001C0E
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 11:08:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E52972F9C32;
	Mon, 29 Dec 2025 11:08:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="icdti6Ls"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E10402F7ABB
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 11:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767006512; cv=none; b=AgNyTujzYSYUY+ROn2L5LwNujhd/0EnouhkIJIVH1n2dCj8lIAsR/NwP2JqAVprEaFvozD7cnoSkNfvYVr57r2jSN5nWTGLir+lUeq9D8Z9366vRXz7//enDnuihaEyS8VdASGwQmCSl9g4jeoFHP/fj+Nw6Nk7RfjwYBEfZLoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767006512; c=relaxed/simple;
	bh=mvTRMMCL5RZ4BZ6ReS6eys7tkGj6CcSCpfSOhXlEW4U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IK8ckxp8vNvbs4YQGTEDBmjKNLz/OzK9dyiH/XTch+eUobyP7APqXyeYVdVHCqIbJurm13rFPjDQhCTYeK6h7zywChWzV6s5hWs1n6Csb7IS8Rbp2lnO8lDF48H2Y+fvlxr28XnesqW0Xq62IhWtEwVdVb4e1LM2Hrc3kgvVmbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=icdti6Ls; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-64d0d41404cso10300627a12.0
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 03:08:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767006508; x=1767611308; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EDNpH0M3uSivXuXT5U5j0XwxOr48cVPii2SiJVOuw30=;
        b=icdti6LsWw/+HVAON6tthsJrH+7zWnGbaXLy/O6kgmqgAUpIo0a2txy/M6eyF2KSVK
         TldkctQTplXkYmPqAHLUZBbl16S8pzXtse18TV1fENnabFjxx8uNdeeGsDRZsZfy+HJ2
         ZAlAHGet5N1gT8uf6t6US3mHFKZ/IdnAIEySPQ+dkKIbhH8KiSdQqtNneZEg1OWDGAhu
         QE+ZdLIlzY35V0bPgMHxpMobtDsb57tRQSsV/oh/sQAkpclVNmu22RhIhuiuucsJvsrV
         e/hCWbGYhQ4v7Icjub2Yny6cm6a6PRoQqO6jlXbA2CelkRQLDR5pxVTGxqpWw9jJPvuE
         1xbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767006508; x=1767611308;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EDNpH0M3uSivXuXT5U5j0XwxOr48cVPii2SiJVOuw30=;
        b=MOW2JziHpbdRZy0TYi+Mb+VYvs9A4Gnf6W5HS/h/Gd5pT+NBDs4kXyEHsfqnyllGyp
         NrvvAAqKdQnkXAQM9kDeYUSQwD1MHHyDetdTsp/GZlX6L5gf+pTGB1iNow0FvHgYUvqE
         P+vIOUjOE25H7c/KvEXotAdrlTqM/dQzutHOSOd6Ee/fBJasQGmdJb8gfViW4ls/+/Rp
         1B32XMCQ9vNSo617JDgHemjodT1jSIqIDxvaDVj0WyuOC/3mTT5DnQUE2pjHTblLomWX
         sTfXkt+Otm5wJpzf3QqTwwcFkyQdwLHs/XQGnO5z4c/CK9xMA5DFUVAin8QRrg8jqJBO
         4uGA==
X-Forwarded-Encrypted: i=1; AJvYcCUGwP4Sp+Yyw2a0yWiPbJY/Fjf3me1Mg9n8S3gb24DExyF3x9Z5CQ0W4+CpaBAyrdO9KiIWTaYpGKcK@vger.kernel.org
X-Gm-Message-State: AOJu0Yymu0M/TY4bMWIMbBBB7C5aJuwDIdCIC+bLBLGbmE1N6UBiDsR9
	59v8sJxKFI4K/ujlTJiPrsZJybE2aoP/RfeAdwHK0flJWDBlF6QQ+tTXDeDwDJn9aFw=
X-Gm-Gg: AY/fxX4ibUgamvvfVJDHHdjdy8O820PxWxFnG4DFF32l20hyBqhowRNREkTAVmK2ZpV
	36DQHiKC1P+nwsNcSZpIeRvUmi0GMD33xpMrvGXgQIz6HX0pQvBJ8FY8CMwWLJoU/3WP5C64Mq0
	dFmmq/CjkulxnrwaMXMyKU0q9U+8aGjUY3N0rD8LM3mkGM/RAmlzad/ScEWlpCFwctYVhOaBbq7
	5cyze+03ObtE/MCh9tyvaKuHxM/8x9IKYOnkhEKCFE0DtptcePZATW41h2hj4bogQSvrlB+xoM1
	27Sp3fxYrUOj+h4DOCDoUX9+dUv0u/xKjDUEupq77RsZFcn5uNVPOzrRyXrTnNyFy+rt86XzYzK
	Dka3QRE7JXNwevV2PLL1lNRk1yoF/XxEfoidD9VPqHuiskXjwqA7rS3DwEveceMv6tsZh6WOm5/
	piJHq8tmtwEGY46drj
X-Google-Smtp-Source: AGHT+IFdqvRMDU+1HShKXzvNt54ZV5MxDiUe71q1HsCeGk+c7DD7LsfJqZBS0W+l8rfo3mlbyZkzHQ==
X-Received: by 2002:a17:907:d87:b0:b73:5d8c:dd0d with SMTP id a640c23a62f3a-b80371d69e5mr3256854366b.52.1767006508045;
        Mon, 29 Dec 2025 03:08:28 -0800 (PST)
Received: from linaro.org ([77.64.146.193])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b91494c03sm31698752a12.18.2025.12.29.03.08.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 03:08:27 -0800 (PST)
Date: Mon, 29 Dec 2025 12:08:15 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: =?iso-8859-1?B?QmFybmFi4XMgQ3rpbeFu?= <barnabas.czeman@mainlining.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stephan Gerhold <stephan@gerhold.net>,
	linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/8] remoteproc: qcom_q6v5_mss: Add MSM8917
Message-ID: <aVJhH17XH1srlroL@linaro.org>
References: <20251228-mss-v1-0-aeb36b1f7a3f@mainlining.org>
 <20251228-mss-v1-4-aeb36b1f7a3f@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251228-mss-v1-4-aeb36b1f7a3f@mainlining.org>

On Sun, Dec 28, 2025 at 03:21:54PM +0100, Barnabás Czémán wrote:
> Add support for MSM8917 MSS it is similar for MDM9607 MSS
> only difference is the mss power domain.
> 
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---
>  drivers/remoteproc/qcom_q6v5_mss.c | 46 ++++++++++++++++++++++++++++++++++++--
>  1 file changed, 44 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/remoteproc/qcom_q6v5_mss.c b/drivers/remoteproc/qcom_q6v5_mss.c
> index ffafbe501a05..2579558fb567 100644
> --- a/drivers/remoteproc/qcom_q6v5_mss.c
> +++ b/drivers/remoteproc/qcom_q6v5_mss.c
> @@ -259,6 +259,7 @@ enum {
>  	MSS_MSM8226,
>  	MSS_MSM8909,
>  	MSS_MSM8916,
> +	MSS_MSM8917,
>  	MSS_MSM8926,
>  	MSS_MSM8953,
>  	MSS_MSM8974,
> @@ -749,13 +750,15 @@ static int q6v5proc_reset(struct q6v5 *qproc)
>  		goto pbl_wait;
>  	} else if (qproc->version == MSS_MDM9607 ||
>  		   qproc->version == MSS_MSM8909 ||
> +		   qproc->version == MSS_MSM8917 ||
>  		   qproc->version == MSS_MSM8953 ||
>  		   qproc->version == MSS_MSM8996 ||
>  		   qproc->version == MSS_MSM8998 ||
>  		   qproc->version == MSS_SDM660) {
>  
>  		/* Override the ACC value if required */
> -		if (qproc->version == MSS_MDM9607)
> +		if (qproc->version == MSS_MDM9607 ||
> +		    qproc->version == MSS_MSM8917)
>  			writel(QDSP6SS_ACC_OVERRIDE_VAL_9607,
>  			       qproc->reg_base + QDSP6SS_STRAP_ACC);
>  		else if (qproc->version != MSS_MSM8909 &&
> @@ -817,6 +820,7 @@ static int q6v5proc_reset(struct q6v5 *qproc)
>  
>  			/* Turn on L1, L2, ETB and JU memories 1 at a time */
>  			if (qproc->version == MSS_MDM9607 ||
> +			    qproc->version == MSS_MSM8917 ||
>  			    qproc->version == MSS_MSM8953 ||
>  			    qproc->version == MSS_MSM8996) {
>  				mem_pwr_ctl = QDSP6SS_MEM_PWR_CTL;
> @@ -826,7 +830,8 @@ static int q6v5proc_reset(struct q6v5 *qproc)
>  				 * Set first 5 bits in reverse to avoid
>  				 * "inrush current" issues.
>  				 */
> -				if (qproc->version == MSS_MDM9607)
> +				if (qproc->version == MSS_MDM9607 ||
> +				    qproc->version == MSS_MSM8917)
>  					reverse = 6;
>  			} else {
>  				/* MSS_MSM8998, MSS_SDM660 */
> @@ -2538,6 +2543,42 @@ static const struct rproc_hexagon_res msm8916_mss = {
>  	.version = MSS_MSM8916,
>  };
>  
> +static const struct rproc_hexagon_res msm8917_mss = {
> +	.hexagon_mba_image = "mba.mbn",
> +	.proxy_supply = (struct qcom_mss_reg_res[]) {
> +		{
> +			.supply = "pll",
> +			.uA = 100000,
> +		},
> +		{}
> +	},
> +	.proxy_clk_names = (char*[]){
> +		"xo",
> +		NULL
> +	},
> +	.active_clk_names = (char*[]){
> +		"iface",
> +		"bus",
> +		"mem",
> +		NULL
> +	},
> +	.proxy_pd_names = (char*[]) {
> +		"cx",
> +		"mx",
> +		"mss",

Are you sure mss/pm8937_s1 also works as a power domain? It seems to be
a plain regulator downstream (similar to msm8226/msm8974).

Same thing applies to MSM8953 as well though and there we seem to have
decided to model it as a power domain ...

> +		NULL
> +	},
> +	.need_mem_protection = false,
> +	.has_alt_reset = false,
> +	.has_mba_logs = false,
> +	.has_spare_reg = false,
> +	.has_qaccept_regs = false,
> +	.has_ext_bhs_reg = false,
> +	.has_ext_cntl_regs = false,
> +	.has_vq6 = false,
> +	.version = MSS_MSM8917,

You could set MSS_MDM9607 here to drop the extra diff above (but not
sure if that would be clearer).

Thanks,
Stephan

