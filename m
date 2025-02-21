Return-Path: <devicetree+bounces-149412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1101A3F69C
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 14:59:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B910C174B33
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 13:59:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F9FB20E02F;
	Fri, 21 Feb 2025 13:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JwEiZFH0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB2220B1EE
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 13:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740146378; cv=none; b=SM3piq+K9vIpAtECUuL/Xc3BRB1D+8ze9jLpzEMmJe9B86O5N71re4k9pAzReDix/kDMi9BOFE9x2MmgN1V22BTNYN7bKNxkGSNvGxmE03WsKvdJscvUuchSICg4P3f0ACXMmq5VabkcL6lpyLHyTRmEDfBusbxf0YGqstB4PoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740146378; c=relaxed/simple;
	bh=CbxAJQT3KnJjiwPB/Rc1ytu55iSPfTpU8eUVc7UEzqA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UAt3kRh+o/LCeIGBiJ1ZuvelFwcd3avlpb+JmPIF/kAnkBsT+VS7PF3lTHnI4bzWyLG8i0TLlEoNWllOMd2Y/zwY81N66kI6prRZ5ZtipmlNJgv+zSKf2CdY3qhhKU1GBipOwr/kJjmhpsDdgyMYPBmG7yrvNCzEf3j/FWctFVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JwEiZFH0; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-546267ed92fso2472597e87.2
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 05:59:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740146374; x=1740751174; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/zYl4L9cR43dlWu0AvSnmoEUXilsvHz4aPwBMTecENo=;
        b=JwEiZFH0sCyQlkXWPegQw5ZOVXQUJxVe3IlZiS32RMNudvk2ud3S7iLbn05/AEATSY
         vh2t2cN3ZBVCGWpiTslQtGbuZRyUI5tPniq9Mk50LRhqPiq+03HWoDIBgbrz/+8UgIea
         YE1Mn8qrRLL2DdcseyP2UxnZ1jNAigHnnAP4narVJWiYJTQkB/qgGiuqAFcUomp5dGsv
         MUTeKW8k4YQNfSPdZhakH5N6VfslSJu88hkMxivr3WkcT9QVxsGPwjw8qd4aYfFoOgOC
         rvqt2fs9OcjZKP42AZFxp5j5BnDygAdj7t+GO4Ovh7QqYICGgzdxE92V2OPiLsdlhFr6
         Y/oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740146374; x=1740751174;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/zYl4L9cR43dlWu0AvSnmoEUXilsvHz4aPwBMTecENo=;
        b=oTePUFjqDOKIjAijElMTSMtjd8ua1i/sT3hdUjRBjnrEHf3cYq2wb7wAdMJdLxMaT5
         woQWHYXhe45w6igZa2ZuBVtsARCpwUF+4UZ7otalV/6AktIXifcGGDLcLLJpLbLDkyLX
         jD7jNAedGsauA2y3Xb6J1F1HmFigABHackAPMMmOZZsRRAybvPWvFFBjAA4fvXtOA8kt
         81Rx0vwJ2G0JaOS2bCvpP3iZflsBTM3ddsuzpZFu8pfUwxT4CzmIWGD0IxwRhyhJqhNw
         b+L716584QmWwfu+Qw8YWJdLho7nHKbXFBZ63GPTDtmN7VI13egFdQe8Pryl6KYCZI8V
         w8Rg==
X-Forwarded-Encrypted: i=1; AJvYcCVdUb43g1qNkPOEWSe2ZaSkNMH9pgwH7oz2XlqXDFr8sI/SrUbEv+Yznt8plk18axeBP7Fi+wBOYS88@vger.kernel.org
X-Gm-Message-State: AOJu0YzTB2UosED8ByiWISIjem2BFOCc3mwHYq9arTzr+lDwx7s5tpNL
	gMNZYR64eO9WfhZMHedVEfOvgGr1vpMs6o2NjZBP7v6Hx2lwDTZvxESnL7FDqpo=
X-Gm-Gg: ASbGncsq/u6UX1/Bu10+Tr7JdXPmlsD8ibMRQHAX+9okVv4CpdreczyYSVWlpDHc2Lx
	Eis2qdz0VXdFZ+D01266b5btlMUvpDoPI1iku4tyU8+vTQC4D/ISmUhANbpfFgS50CsXZ8f8tzM
	AtnOUzurS93bsAJJB7rFeepEbf7t1kHM9z1QYvGO0ob4DwXyCzRe2UYYIdJAtaPD9u69P11CMRb
	b7870euCU5Hv6HqUbiwb52u5eTo3zwHY0H2nzNxY+9TwCUxy0EGndS1Y0a4MXW+mXU1ZLO0MUvC
	h7WXfO7rbbMjbEnSYiJPYqaCAZrCTRnfOJekdwTaA005SAfJ0r7tTlw11Te0TOPJ3rfvz6s8FwN
	RVqpqUg==
X-Google-Smtp-Source: AGHT+IH1adyJodZuxejqxdNY7+1MgnBwNtjWHQ8rUzYhMFZCIdPs+a2+d5mwFLrhDrfQsO0ptGItPA==
X-Received: by 2002:a05:6512:ad2:b0:545:191:81db with SMTP id 2adb3069b0e04-54838f5e248mr1022548e87.50.1740146374490;
        Fri, 21 Feb 2025 05:59:34 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54531b8ac1dsm1994118e87.75.2025.02.21.05.59.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 05:59:33 -0800 (PST)
Date: Fri, 21 Feb 2025 15:59:30 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, amitk@kernel.org, thara.gopinath@gmail.com, robh@kernel.org, 
	krzk+dt@kernel.org, quic_srichara@quicinc.com
Subject: Re: [PATCH v4 4/5] thermal: qcom: tsens: Add support for IPQ5018
 tsens
Message-ID: <zesif5ehsoho3725k4xjqhb3tizj6fj6ufocdlzd3facj5hrrt@r4t5hthvyp2p>
References: <20250221065219.17036-1-george.moussalem@outlook.com>
 <DS7PR19MB8883A75912761EB89C9A1B409DC72@DS7PR19MB8883.namprd19.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DS7PR19MB8883A75912761EB89C9A1B409DC72@DS7PR19MB8883.namprd19.prod.outlook.com>

On Fri, Feb 21, 2025 at 10:52:18AM +0400, George Moussalem wrote:
> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
> IPQ5018 has tsens IP V1.0, 4 sensors and 1 interrupt.
> The soc does not have a RPM, hence tsens has to be reset and
> enabled in the driver init. Adding the driver support for same.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  [v4] Added Dmitry's Reviewed-by tag
>       Fixed modpost warning: added __init to init_common
> 
>  drivers/thermal/qcom/tsens-v1.c | 60 +++++++++++++++++++++++++++++++++
>  drivers/thermal/qcom/tsens.c    |  3 ++
>  drivers/thermal/qcom/tsens.h    |  2 +-
>  3 files changed, 64 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/thermal/qcom/tsens-v1.c b/drivers/thermal/qcom/tsens-v1.c
> index 1a7874676f68..1f955acbc2cf 100644
> --- a/drivers/thermal/qcom/tsens-v1.c
> +++ b/drivers/thermal/qcom/tsens-v1.c
> @@ -79,6 +79,18 @@ static struct tsens_features tsens_v1_feat = {
>  	.trip_max_temp	= 120000,
>  };
>  
> +static struct tsens_features tsens_v1_ipq5018_feat = {
> +	.ver_major	= VER_1_X,
> +	.crit_int	= 0,
> +	.combo_int	= 0,
> +	.adc		= 1,
> +	.srot_split	= 1,
> +	.max_sensors	= 11,
> +	.trip_min_temp	= -40000,
> +	.trip_max_temp	= 120000,
> +	.ignore_enable	= 1,
> +};
> +
>  static const struct reg_field tsens_v1_regfields[MAX_REGFIELDS] = {
>  	/* ----- SROT ------ */
>  	/* VERSION */
> @@ -150,6 +162,41 @@ static int __init init_8956(struct tsens_priv *priv) {
>  	return init_common(priv);
>  }
>  
> +static int __init init_ipq5018(struct tsens_priv *priv)
> +{
> +	int ret;
> +	u32 mask;
> +
> +	ret = init_common(priv);
> +	if (ret < 0) {
> +		dev_err(priv->dev, "Init common failed %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = regmap_field_write(priv->rf[TSENS_SW_RST], 1);
> +	if (ret) {
> +		dev_err(priv->dev, "Reset failed\n");
> +		return ret;
> +	}
> +
> +	mask = GENMASK(priv->num_sensors, 0);
> +	ret = regmap_field_update_bits(priv->rf[SENSOR_EN], mask, mask);
> +	if (ret) {
> +		dev_err(priv->dev, "Sensor Enable failed\n");
> +		return ret;
> +	}
> +
> +	ret = regmap_field_write(priv->rf[TSENS_EN], 1);
> +	if (ret) {
> +		dev_err(priv->dev, "Enable failed\n");
> +		return ret;
> +	}
> +
> +	ret = regmap_field_write(priv->rf[TSENS_SW_RST], 0);
> +
> +	return ret;
> +}
> +
>  static const struct tsens_ops ops_generic_v1 = {
>  	.init		= init_common,
>  	.calibrate	= calibrate_v1,
> @@ -194,3 +241,16 @@ struct tsens_plat_data data_8976 = {
>  	.feat		= &tsens_v1_feat,
>  	.fields		= tsens_v1_regfields,
>  };
> +
> +const struct tsens_ops ops_ipq5018 = {
> +	.init		= init_ipq5018,
> +	.calibrate	= tsens_calibrate_common,
> +	.get_temp	= get_temp_tsens_valid,
> +};
> +
> +struct tsens_plat_data data_ipq5018 = {
> +	.num_sensors	= 5,

Commit message suggests that this should be '4'.

> +	.ops		= &ops_ipq5018,
> +	.feat		= &tsens_v1_ipq5018_feat,
> +	.fields		= tsens_v1_regfields,
> +};

-- 
With best wishes
Dmitry

