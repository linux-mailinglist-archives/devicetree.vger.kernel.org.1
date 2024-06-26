Return-Path: <devicetree+bounces-80422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAC4918E2A
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 20:21:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5C2C9B20A6F
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 18:21:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 748FE19048F;
	Wed, 26 Jun 2024 18:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fbYU32NS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B407419047F
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 18:21:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719426109; cv=none; b=DJb96+45gfnlfLe4qG3uVkgWzw1GDQABPt8EqSRudiA0Z259tGvtbnX1mA55of/LCy0K9tNCMUMqE3IRE4y1If797/n+BHersozdyCl8SAav8qrdm53dVvMOumJx2RcZIwP25cnR78TxdqP+/FDZVsqME/VrwZ6LFxDa14VTUe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719426109; c=relaxed/simple;
	bh=6TYIPbPS4R6iweSpc2w1PZdKid1Wu6t/ISBPYdapvbM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sJ65M+/D4R9UmVrXtsNHd9knrndsSqOnzVvEhl6g6yKrFK761phXrtM39PdFYj7aXxqCb4Vp+7VIDF48qz/n2X3Z1PwlVoMxxHC8uKWvoEjGxvDeJF4wJNNNkhYHcUWWXsl7vX3OIy7v8ySnmX3ToKIMxwyQmm+M4yDsLLLwARc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fbYU32NS; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52cd80e55efso9560377e87.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 11:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719426106; x=1720030906; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=//MpmAILITzcKEizX/9gxPn9UDOA+9PRAYCNpg/DcRs=;
        b=fbYU32NSCLChz93v6SvxehylSi91JXAVA0I7Iz1fvcq4LbVVs0mRyRCVxAprAv+RbP
         CuDSPKJ2O+HNwe6zIGFI/4FRgcWsRDmexIGuneZtraj2I/E83LDkGyt1V0fG152OF262
         5QjVOBCkf+IY5iKtLh7EdKXnSEwoQoukGmxL8gzBzLuAPX9bumVYy9kf5PwcVyA6M9j4
         ECGDc+f1sRMqrvDHyvh8lSmAxE4PT5k0TfKOS4KadOMH9JP3SI8j4t6hPYogXGGcgE3U
         q9KrzxTt+Hxcb8hqs2Rdap/JwqcyA2EsF2F8Tde/adb8HGOLQV8ezYVCEbUVV+U064on
         ZyBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719426106; x=1720030906;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=//MpmAILITzcKEizX/9gxPn9UDOA+9PRAYCNpg/DcRs=;
        b=mqppHOmwl8CSM3ZTT+F/JFPoztqsQRqP94w9nLpeVEEaGJ/AwMSwDr1zSQHU7W0T10
         aZNUx0EyOFBCk5BULbcH3fsV3dBJJdH/Wxd0VigY+dqvS2eeZEtuTbR14qHd5DBE6Wkm
         b8iXjk9RDyPvEt5UaFhCSK0Emr1C0X/ho1ymfNV2RpwO5Z/5FLU0aufG0cvAvGQViRpa
         P1elj1zsIwpMIiSITVZ0nBgUPbfO2MDP1+0wPvDm/jBMFn/xeYCGUe2JLxiaD9Bc3LK6
         WkrXNWvqRlDZAjP1fSVL5IvnOBR5/kJjYf5yXtSu5hedwX4gw8CWeNqhsSzKiLb6WS/6
         Q2sg==
X-Forwarded-Encrypted: i=1; AJvYcCU0H0lLY/2FGyZrHpkBzp+KKwjlIQ0NLKE0nXGTJvW9bz9c9+Ch0Rb0kfRO0NTeCb7Bljm+Aaqz45xJbzDeBH1ezDxEqDm98pOkkw==
X-Gm-Message-State: AOJu0YwOTrjIs9clDJiEUf3X+fqJMrncFlYmb4S62JMcwzSFAYCHwHFR
	PYUuhCzeOyuCoT45uomIEZRJhe+hRpbr96P7bJsqRXO+Qj/eE5hQcKCIkAV1nVc=
X-Google-Smtp-Source: AGHT+IHJ4p//CH+AaNp/ZmyKwZ/tji9Ag3MV6cZw2C1QzU/zz+/aY3hOnCofp3e1KT6QUiZEBrnMNA==
X-Received: by 2002:a05:6512:308c:b0:52c:c9e4:3291 with SMTP id 2adb3069b0e04-52ce185ce9amr11764612e87.60.1719426105827;
        Wed, 26 Jun 2024 11:21:45 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52cdcdb981esm1450255e87.122.2024.06.26.11.21.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 11:21:45 -0700 (PDT)
Date: Wed, 26 Jun 2024 21:21:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	angelogioacchino.delregno@collabora.com, andersson@kernel.org, konrad.dybcio@linaro.org, 
	mturquette@baylibre.com, sboyd@kernel.org, ilia.lin@kernel.org, rafael@kernel.org, 
	viresh.kumar@linaro.org, ulf.hansson@linaro.org, quic_sibis@quicinc.com, 
	otto.pflueger@abscue.de, neil.armstrong@linaro.org, luca@z3ntu.xyz, abel.vesa@linaro.org, 
	danila@jiaxyga.com, quic_ipkumar@quicinc.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-pm@vger.kernel.org
Subject: Re: [PATCH v3 1/9] soc: qcom: cpr3: Fix 'acc_desc' usage
Message-ID: <jgboqj56nfeuv7qmi34chan46u5urdxyezqhfmqdq3clvcv2k6@k7aktead5qbk>
References: <20240626104002.420535-1-quic_varada@quicinc.com>
 <20240626104002.420535-2-quic_varada@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240626104002.420535-2-quic_varada@quicinc.com>

On Wed, Jun 26, 2024 at 04:09:54PM GMT, Varadarajan Narayanan wrote:
> cpr3 code assumes that 'acc_desc' is available for SoCs
> implementing CPR version 4 or less. However, IPQ9574 SoC
> implements CPRv4 without ACC. This causes NULL pointer accesses
> resulting in crashes. Hence, check is 'acc_desc' is populated
> before using it.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  drivers/pmdomain/qcom/cpr3.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/pmdomain/qcom/cpr3.c b/drivers/pmdomain/qcom/cpr3.c
> index c7790a71e74f..c28028be50d8 100644
> --- a/drivers/pmdomain/qcom/cpr3.c
> +++ b/drivers/pmdomain/qcom/cpr3.c
> @@ -2399,12 +2399,12 @@ static int cpr_pd_attach_dev(struct generic_pm_domain *domain,
>  		if (ret)
>  			goto exit;
>  
> -		if (acc_desc->config)
> +		if (acc_desc && acc_desc->config)
>  			regmap_multi_reg_write(drv->tcsr, acc_desc->config,
>  					       acc_desc->num_regs_per_fuse);
>  
>  		/* Enable ACC if required */
> -		if (acc_desc->enable_mask)
> +		if (acc_desc && acc_desc->enable_mask)
>  			regmap_update_bits(drv->tcsr, acc_desc->enable_reg,
>  					   acc_desc->enable_mask,
>  					   acc_desc->enable_mask);
> @@ -2676,7 +2676,7 @@ static int cpr_probe(struct platform_device *pdev)
>  	desc = data->cpr_desc;
>  
>  	/* CPRh disallows MEM-ACC access from the HLOS */
> -	if (!data->acc_desc && desc->cpr_type < CTRL_TYPE_CPRH)
> +	if (!data->acc_desc && desc->cpr_type < CTRL_TYPE_CPR4)
>  		return -EINVAL;
>  
>  	drv = devm_kzalloc(dev, sizeof(*drv), GFP_KERNEL);
> @@ -2703,7 +2703,7 @@ static int cpr_probe(struct platform_device *pdev)
>  
>  	mutex_init(&drv->lock);
>  
> -	if (desc->cpr_type < CTRL_TYPE_CPRH) {
> +	if (desc->cpr_type < CTRL_TYPE_CPR4) {

This is incorrect. This disables ACC usage for CPR4, while GFX CPR on
MSM8998 (which is CPR4) seems to use ACC.

>  		np = of_parse_phandle(dev->of_node, "qcom,acc", 0);
>  		if (!np)
>  			return -ENODEV;
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

