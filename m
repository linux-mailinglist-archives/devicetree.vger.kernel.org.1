Return-Path: <devicetree+bounces-97746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBFC963358
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 23:02:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 10623B20CE4
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 21:01:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2CFA1AC891;
	Wed, 28 Aug 2024 21:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SBp4eS4t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1E791AC42A
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 21:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724878913; cv=none; b=EfOzKJHVE6kkPJJeNRbtjWfCYzhmrPoxRFBnizYj2q4wHQg1f9KJSoUfEg5UiSEZt+Chw170nK/IVjdkScDmSEh18WWiveEXTjsHurEhlzrT+HgU7L7a1EgzWv/zbPrGApD9BgviUld0vcij79/pIV6/MyKr9Pql0fbK6nGJjxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724878913; c=relaxed/simple;
	bh=dlIRFRRqOUfbBTTzHCw3bIRHgjbd1gyMfANoQGpbubA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JdCxDjG98RqIeXUBuuk7bymnAvifANI55I3HBBvvSm72VFiKCg5fCsbeEWh0jY8ADKkv8lipirD32rwVZ2R+Zs53tODyiZ58EwAnpOsaiZzaLRtRv8mkkeAi3JOBL2KqmkVGLEEwyXFrYeKG00Xwz4hsbtiIc5KFzB7rjbzLIrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SBp4eS4t; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53351642021so8561594e87.3
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 14:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724878910; x=1725483710; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9OrGNAAWQoFpJEHjcXRj5aD9CPBwOs7tFWfZHpIv76g=;
        b=SBp4eS4tsGwMuVTZFDCCmivDqNijPni3pfsAhRtP02LB+kGcfeK7g6EKa3LVc+TVcL
         cf5Xs9TBJ8XD0FJvjt0/SLRK7kFQNd0vVW0gInMmu2BX8dtYJJyQSHIUWNL1b+P+mpcn
         iete7iFnM9aJ5p+gMvuIkuK6IV7kC2IIlMkJddZDozSbfi2D6ky2SDWtbicdJhcEkgTm
         pNG8EGdIJtMtV0FDvbYX3Tq+0Et6n8L0AFFMqImpA5jEB3kM0vSk/U6F26JgzWMejPWT
         JzOPuDXTfE3IkrkY1v7yU3wudM0Ce8uRxd6FyxGtw6kThBACi4ZLV4ktuFqa8Tkrzo5O
         KTtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724878910; x=1725483710;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9OrGNAAWQoFpJEHjcXRj5aD9CPBwOs7tFWfZHpIv76g=;
        b=FX4KVbwdZ4+UDFMJjn8YGCSzC0IRHaasT5swq+IAELNFf0OKKgboxsw6dz3cGFVzuj
         LmW9v/IW4Phtki+UDRsFYvG8E9cFoAmhs78oZ6nyz1H8HzycwZGzfxsbrZmpVyFZV3NC
         UJG+RFckrs6nDzFVTQphAlDb6qxu1bTC2ioDGTL4gquLxdkIS49w3Fy2sI585oX5LQd4
         b5Xa6vJA5ZiOQDgphCo22NaV4tTc1ejJ9TN3qu+UyK/wVKgMwEGfOAv8B3t0HIe2ohjJ
         dHfkHsjh7luvrQeIsZbtMdpDEhgCJguV27KPIe7R2NGe+6ehhm3IBiv0975voS61xdkQ
         uB4g==
X-Forwarded-Encrypted: i=1; AJvYcCVCqGiH63Zf/VP8J+mOSLviYBPuj3CZM1huvLRk8VX5f3dUnszEAoYfkStDoM15hFEmgwNpSx0HqPRz@vger.kernel.org
X-Gm-Message-State: AOJu0YxWzkwudPtpJFScdxqm5cUGk01LQHiQqrZ6pYP0yaPCB4dmricb
	fC7JZd0bTbIo+FqT67nBDokx5YMrlL4R65d35psOYXZawTL1vPNiQ1E6hnt+DlA=
X-Google-Smtp-Source: AGHT+IGiHuoKMiiPcr4b2w40l5MMLxSg/HrhC7ywebXGvK5HJJmHbS3Pb68beruYP+cc7V41QUN+Cg==
X-Received: by 2002:a05:6512:ba1:b0:530:c1fb:51a1 with SMTP id 2adb3069b0e04-5353e56764fmr263510e87.17.1724878909295;
        Wed, 28 Aug 2024 14:01:49 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5334ea366desm2283755e87.82.2024.08.28.14.01.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 14:01:48 -0700 (PDT)
Date: Thu, 29 Aug 2024 00:01:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, 
	ilia.lin@kernel.org, rafael@kernel.org, viresh.kumar@linaro.org, 
	ulf.hansson@linaro.org, linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	Praveenkumar I <quic_ipkumar@quicinc.com>
Subject: Re: [PATCH v7 6/7] soc: qcom: cpr3: Add IPQ9574 definitions
Message-ID: <fmzjfzksja24pev7bkjdr2kelp7djq3jlwib2dauzop7em7tkl@gurroyrzeqqm>
References: <20240820055705.3922754-1-quic_varada@quicinc.com>
 <20240820055705.3922754-7-quic_varada@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240820055705.3922754-7-quic_varada@quicinc.com>

On Tue, Aug 20, 2024 at 11:27:04AM GMT, Varadarajan Narayanan wrote:
> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> * Add thread, scaling factor, CPR descriptor defines to enable
>   CPR on IPQ9574.
> 
> * Skip 'acc' usage since IPQ9574 does not have acc
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v7: Add rangeuV vaues
>     Fix IRQ handler 'argument'
> 
> v6: Rebase on top of Konrad's v15
> 	- https://lore.kernel.org/lkml/20240708-topic-cpr3h-v15-0-5bc8b8936489@linaro.org/T/
> 
> v5: Move the 'acc_desc' usage check to first patch
> 
> v4: s/silver//, s/cprh/cpr4/
>     Skip 'acc' related code as IPQ9574 does not have acc
> 
> v3: Fix patch author
>     Included below information in cover letter
> v2: Fix Signed-off-by order
> Depends:
> 	[1] https://lore.kernel.org/lkml/20230217-topic-cpr3h-v14-0-9fd23241493d@linaro.org/T/
> 	[2] https://github.com/quic-varada/cpr/commits/konrad/
> ---
>  drivers/pmdomain/qcom/cpr3.c | 142 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 140 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pmdomain/qcom/cpr3.c b/drivers/pmdomain/qcom/cpr3.c
> index d594bc79be1c..51c8b5766ccd 100644
> --- a/drivers/pmdomain/qcom/cpr3.c
> +++ b/drivers/pmdomain/qcom/cpr3.c
> @@ -2461,7 +2597,7 @@ static int cpr_thread_init(struct cpr_drv *drv, int tid)
>  						NULL, cpr_irq_handler,
>  						IRQF_ONESHOT |
>  						IRQF_TRIGGER_RISING,
> -						"cpr", drv);
> +						"cpr", thread);

Unrelated change => separate patch.

LGTM otherwise.

>  		if (ret)
>  			goto fail;
>  	}
> @@ -2544,7 +2680,8 @@ static int cpr_probe(struct platform_device *pdev)
>  	desc = data->cpr_desc;
>  
>  	/* CPRh disallows MEM-ACC access from the HLOS */
> -	if (!(data->acc_desc || desc->cpr_type == CTRL_TYPE_CPRH))
> +	if (!(data->acc_desc || desc->cpr_type == CTRL_TYPE_CPRH ||
> +	      of_device_is_compatible(dev->of_node, "qcom,ipq9574-cpr4")))
>  		return dev_err_probe(dev, -EINVAL, "Invalid ACC data\n");
>  
>  	drv = devm_kzalloc(dev, sizeof(*drv), GFP_KERNEL);
> @@ -2694,6 +2831,7 @@ static void cpr_remove(struct platform_device *pdev)
>  }
>  
>  static const struct of_device_id cpr3_match_table[] = {
> +	{ .compatible = "qcom,ipq9574-cpr4", .data = &ipq9574_cpr_acc_desc },
>  	{ .compatible = "qcom,msm8998-cprh", .data = &msm8998_cpr_acc_desc },
>  	{ .compatible = "qcom,sdm630-cprh", .data = &sdm630_cpr_acc_desc },
>  	{ }
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

