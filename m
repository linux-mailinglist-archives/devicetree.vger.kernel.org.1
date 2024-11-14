Return-Path: <devicetree+bounces-121728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BBD9C81BD
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 05:10:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2EF8C1F2264B
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 04:10:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9064A1E7660;
	Thu, 14 Nov 2024 04:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oMxHaTOQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038671DFD82
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 04:10:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731557450; cv=none; b=JshQs9hqob9zJSuxve0v1dbR+ln2MsqLsVF4K3ZYqTMcaAV/4Fy5Ux9QW9uZszrwe7UYH/QrtVxqESvKCmPuTcjZoBTNdIkjwUiCV8udGax4yOsk1kbiqg6p3HcCxns7QfhSKKw43q7guOJELCnlF2ohgUFe45AWBEYiWzc2FmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731557450; c=relaxed/simple;
	bh=uZK/kjouv46+pdbCVKgjZCD7+R7rCdyQnqk9U8cLUb0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b3+YiX7fmYBRodZXBpv8hzLClchMOq++9Gj8qFuv9dQ8mgDbK4rhK/nAkJRcKcCBsHraBtQd3pmTTMg0zrLN6BOwZTQc5G66GyT0Ys+/OsaiSA+N5PKzuz48tLEhW/ioXaJCnrEKQWy4gIMUvMBt8kFLpUcIhTgKdUY27Pvn91E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oMxHaTOQ; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-718186b5c4eso63872a34.2
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 20:10:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731557448; x=1732162248; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=714o0ZvV3ReDS0/ENHf9k2aMav2Bj5ZxwGFca11krmI=;
        b=oMxHaTOQuJ+ZeRi96lBia1ko9dctULn6RDPKA+josLthmamfWU/FWnyT3kWgv1KJ65
         tCgfP7jQ8CqwLwg7wELLVTfG3205acLLL8qHAo2G8+V2myVfVqNHt47yYQILHGXu3Hr8
         wIvnr44xkuheK2r89wwUpmNbukvraKcV7qQaOy3ToCowh9dSJUyf7IU+EpBDkmFoQ/8M
         Al9gUymX37j78SZw8Der9o6iJEtotqq1Yc5Pc5Buyl8rv9Vfe0fN54CQqqS1am1I5Ehu
         DxgxlQe7rOBGshZmq3uhu3VDcKiG9QXj+Leo8G2RRFKJQRDE//hU+liODNKYrjpnExma
         Brtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731557448; x=1732162248;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=714o0ZvV3ReDS0/ENHf9k2aMav2Bj5ZxwGFca11krmI=;
        b=YsBc0q0uDGj00Xu+tGERb1ZqxSXfSNYmfSdpJV8Tkq9hGBQqLHLgz4LO04GvHERjo6
         d6BG7T4W43rsWF1cVETGhp4/GbKtiwP0cvS7t4Tae5PVnks6GyEUkTGO+JNrHN+Ah4kf
         od5pXbsfTk7WJLFGLzXiS17yHfsaTWPLO74dsdKy593ZeVDNTREwWCtVOcM27I2D4vHh
         aS6gmKQKmiswbXpZmNPLJlhbmrh25v9nq9wWGsjI7wrXzZ5voSRuok7r97tq9OQtjqfX
         ER4ihgWq68fOwZDDhUwnTHM/IxZ/GgKd8tjVpgnfDJ2ttH9skMV2ASzHfhyQCkEuh4PU
         JQQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWiKLhAua8nqoNYpGsABQrdf2mNAtntIGdMns2VSSv4WsQGHDXNOw39i7U0Oz/j5YUa2G+uF5j6gfoY@vger.kernel.org
X-Gm-Message-State: AOJu0YwM2lojuiWeNUfwCWrAFMdtHE7c6Q2mns98pi8db8nsqcjzR7vb
	vJs0oxLBHAs+fXgGMox53ghjeqQEIpvAs8IenmdS1cqfwt/lEVLUz9iP9922lgU=
X-Google-Smtp-Source: AGHT+IHhmzaCqJTL1FZBlYi3QTXBwW4hYnnT5adF5L4Dt+rljYzEGjLvaeQoWgOAVbjH16kKWY3SWA==
X-Received: by 2002:a05:6830:628d:b0:716:a62d:a8ac with SMTP id 46e09a7af769-71a601079a4mr6592178a34.9.1731557447938;
        Wed, 13 Nov 2024 20:10:47 -0800 (PST)
Received: from localhost ([122.172.86.146])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7f8b39b3ad9sm129628a12.81.2024.11.13.20.10.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 20:10:47 -0800 (PST)
Date: Thu, 14 Nov 2024 09:40:44 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Akhil P Oommen <quic_akhilpo@quicinc.com>,
	Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Connor Abbott <cwabbott0@gmail.com>, linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH RFC 1/8] opp: core: implement dev_pm_opp_get_bandwidth
Message-ID: <20241114041044.esfazw5mv6zfyrix@vireshk-i7>
References: <20241113-topic-sm8x50-gpu-bw-vote-v1-0-3b8d39737a9b@linaro.org>
 <20241113-topic-sm8x50-gpu-bw-vote-v1-1-3b8d39737a9b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241113-topic-sm8x50-gpu-bw-vote-v1-1-3b8d39737a9b@linaro.org>

On 13-11-24, 16:48, Neil Armstrong wrote:
> Add and implement the dev_pm_opp_get_bandwidth() to retrieve
> the OPP's bandwidth in the same was as the dev_pm_opp_get_voltage()

                                  way

> helper.
> 
> Retrieving bandwidth is required in the case of the Adreno GPU
> where the GPU Management Unit can handle the Bandwidth scaling.
> 
> The helper can get the peak or everage bandwidth for any of

                                 average

> the interconnect path.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/opp/core.c     | 25 +++++++++++++++++++++++++
>  include/linux/pm_opp.h |  7 +++++++
>  2 files changed, 32 insertions(+)
> 
> diff --git a/drivers/opp/core.c b/drivers/opp/core.c
> index 494f8860220d97fc690ebab5ed3b7f5f04f22d73..19fb82033de26b74e9604c33b9781689df2fe80a 100644
> --- a/drivers/opp/core.c
> +++ b/drivers/opp/core.c
> @@ -106,6 +106,31 @@ static bool assert_single_clk(struct opp_table *opp_table)
>  	return !WARN_ON(opp_table->clk_count > 1);
>  }
>  
> +/**
> + * dev_pm_opp_get_bandwidth() - Gets the peak bandwidth corresponding to an opp

s/peak bandwidth/bandwidth/

> + * @opp:	opp for which voltage has to be returned for
> + * @peak:	select peak or average bandwidth
> + * @index:	bandwidth index
> + *
> + * Return: peak bandwidth in kBps, else return 0

s/peak bandwidth/bandwidth/

> + */
> +unsigned long dev_pm_opp_get_bandwidth(struct dev_pm_opp *opp, bool peak, int index)
> +{
> +	if (IS_ERR_OR_NULL(opp)) {
> +		pr_err("%s: Invalid parameters\n", __func__);
> +		return 0;
> +	}
> +
> +	if (index > opp->opp_table->path_count)
> +		return 0;
> +
> +	if (!opp->bandwidth)
> +		return 0;
> +
> +	return peak ? opp->bandwidth[index].peak : opp->bandwidth[index].avg;
> +}
> +EXPORT_SYMBOL_GPL(dev_pm_opp_get_bandwidth);

All other bandwidth APIs are named as _bw, maybe do same here too ?

-- 
viresh

