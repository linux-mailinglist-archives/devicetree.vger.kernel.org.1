Return-Path: <devicetree+bounces-185133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A9FAD693A
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 09:37:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 518911BC2E75
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 07:37:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3B8721147B;
	Thu, 12 Jun 2025 07:37:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ypM+PAJf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113AE204840
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 07:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749713831; cv=none; b=lKH4MPnd58pYbs5Ndk1TRfHSuytcU8yCWdzipRy8zSczLkorijd3IxH/oYmSh75L3EiaFucHdQfBNGeUlzU85SZFDsIhoN88t1GlWBv4R34/7EcLO27mj4f8dApofgLKKZIkRcU2qi6eBYD5aFz5rYx0YZAiLXZsGysw9r81Z94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749713831; c=relaxed/simple;
	bh=IU1p/IhvhGd0RyDOhdF8b84u2MP0frN/i4FGc+o9J5E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dnNkRVOB8kGsq+awgE8bXS7Cda+SZrWqVnmK8qv0Tbz9DhlzPoV1p5KZfqzSjkBkn/v7edO2fpRCLBc71DamqjCGjFgrC38Onm/GwxnB3n+yjMSnoyltwODDDpaMfcX4PoALnA/n4Ss6QwtV7PnaxsNmy+0ngx1J+5lc+wsDlYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ypM+PAJf; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-450dd065828so3888885e9.2
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 00:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749713828; x=1750318628; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W43XvGoEP8mkSB47crpooGunoOi4UYJdDSFj0MKmJkw=;
        b=ypM+PAJflQXGCo1+0omtyB45HfCOLs5kgLtB6/L+hEfrGkRdTR91llsn+fMLmfc2BE
         6aZ68JwcZmQ+3NfVtuUFN50zDlWjY0zxZeCViuxLghwFWojNvsMCdTjqEnIr9Snwv0MI
         6tRWLxYQHduxSsRB+FVt12CIqXb8ZE3X0O+7b8EsPmMLCXA5Aq2IM74BzEkSn4xk+v1y
         uHNsLibhlZpMoLQFOC7GzkIWZu+JYhUAj8mk0Oi3bvjqhZd9CGTNNe0X09Ru1RyQTGPd
         93Vwgo3u2exUUurkZAroXbCbZfVPNoj0Tx7yt+/wQsgjUCJv3tLi4+8NFlKXyMsD4kjH
         X0lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749713828; x=1750318628;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W43XvGoEP8mkSB47crpooGunoOi4UYJdDSFj0MKmJkw=;
        b=S8VJHe0PUST12TG676mDtJVqKVAYga5RxJEZhGOuDd9ZDS4qcyp8Bj8NR7f6ynDODK
         iwodzNECu1GZujlq9mS66oXMEVFRivNYxvHMtyMRPTcH7xJegGutBztAchiXQuhpdao4
         wH46dRieXM9On45995pHZqSOq/zYfipRXR4jsEBqFS/NbUjmruMbXVlI8qOiGC2rGOWY
         xXo3mj6JylA65dfYcXRMu42dunyAMH8WX/ZaIBG2sBWWqfQSICt/Rzzdw68lvydrdkqc
         0paNmj0CJ6za1P3gUK6nccJfRDXaZj74cZDObtxzJSUZ3kh9W8CvQoBmOlfJnt9E3jEb
         +oZA==
X-Forwarded-Encrypted: i=1; AJvYcCXVrdebH6dE50KU30yxZXiGwYamkveQ+ufr5Q9WfYyXvl55hCeuFMS8ZrZs+hCPe1w1IfRHXZZMPhVB@vger.kernel.org
X-Gm-Message-State: AOJu0YxhnWIKwugacgcHzQp+Za60rf2rGJ9zB4/kKdGCyPHDCVkVpuoi
	dQ7FUrzlVWDWFLEJi/h4s5hvx2d7LOiJsc9RWlg6a+EwafFn1OZDFNLpDSIyYu72a2c=
X-Gm-Gg: ASbGncuLhQhZqZSbOE7jsyW4vCWNCMZOY+Yj1wrLEp5kZqpgR9pjgjhebbkQ65lxVsn
	JhYm9EagzeN8/Vb9CXv2HlNZkpfAcJixhRiNIZ2qIVzaFhNRA8uAUWTV8Xjp/uAEj0kzMM/TTr8
	P1jBPTGyH7gZPi4QSJhDyAG0YypL0V3jH5AjrkjTOve7abFLkZuVEWedbqj+4DZMVyt2iShNE39
	8zg8oNijVqw4AXmvgEAZK2TyPfg0s87jCIRta9b9QNDjSgzYFTXYGl8Mj9vhJ62XH6/8rkUUONz
	uD3aYyFFhLw/askFD0VGWTF1f1oorqlaT4N3+8ipvfwzz8mGYuAyndZ6TOUn09bAUdYhXkfwEHw
	ZVRfb7o17ZEppzhwWuTEHyosj3N8=
X-Google-Smtp-Source: AGHT+IHL4AezVSzGCixMV23SR740pNZ45p8eWh/53EzPvM97Z+b2K3Gong4H2VnocQPS1Igv8w15Jw==
X-Received: by 2002:a05:6000:248a:b0:3a4:c6bc:995b with SMTP id ffacd0b85a97d-3a56075a226mr1774989f8f.35.1749713828299;
        Thu, 12 Jun 2025 00:37:08 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4532e13d014sm11881445e9.24.2025.06.12.00.37.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jun 2025 00:37:07 -0700 (PDT)
Message-ID: <9e992d51-1939-48b5-9798-7811a0c50033@linaro.org>
Date: Thu, 12 Jun 2025 08:37:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/10] media: qcom: camss: remove subdev resource argument
 from msm_csiphy_subdev_init()
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20250612011531.2923701-1-vladimir.zapolskiy@linaro.org>
 <20250612011531.2923701-3-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250612011531.2923701-3-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/06/2025 02:15, Vladimir Zapolskiy wrote:
> The removed argument is directly and unambiguously derived from other
> ones.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   drivers/media/platform/qcom/camss/camss-csiphy.c | 6 +++---
>   drivers/media/platform/qcom/camss/camss-csiphy.h | 5 +----
>   drivers/media/platform/qcom/camss/camss.c        | 1 -
>   3 files changed, 4 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.c b/drivers/media/platform/qcom/camss/camss-csiphy.c
> index 2de97f58f9ae..1ba3fc2e33ac 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy.c
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy.c
> @@ -569,16 +569,16 @@ static bool csiphy_match_clock_name(const char *clock_name, const char *format,
>   
>   /*
>    * msm_csiphy_subdev_init - Initialize CSIPHY device structure and resources
> + * @camss: CAMSS device
>    * @csiphy: CSIPHY device
> - * @res: CSIPHY module resources table
>    * @id: CSIPHY module id
>    *
>    * Return 0 on success or a negative error code otherwise
>    */
>   int msm_csiphy_subdev_init(struct camss *camss,
> -			   struct csiphy_device *csiphy,
> -			   const struct camss_subdev_resources *res, u8 id)
> +			   struct csiphy_device *csiphy, u8 id)
>   {
> +	const struct camss_subdev_resources *res = &camss->res->csiphy_res[id];
>   	struct device *dev = camss->dev;
>   	struct platform_device *pdev = to_platform_device(dev);
>   	int i, j;
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.h b/drivers/media/platform/qcom/camss/camss-csiphy.h
> index 895f80003c44..d82dafd1d270 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy.h
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy.h
> @@ -113,11 +113,8 @@ struct csiphy_device {
>   	struct csiphy_device_regs *regs;
>   };
>   
> -struct camss_subdev_resources;
> -
>   int msm_csiphy_subdev_init(struct camss *camss,
> -			   struct csiphy_device *csiphy,
> -			   const struct camss_subdev_resources *res, u8 id);
> +			   struct csiphy_device *csiphy, u8 id);
>   
>   int msm_csiphy_register_entity(struct csiphy_device *csiphy,
>   			       struct v4l2_device *v4l2_dev);
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 0d05f52a6e92..695f113472a5 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -3074,7 +3074,6 @@ static int camss_init_subdevices(struct camss *camss)
>   
>   	for (i = 0; i < camss->res->csiphy_num; i++) {
>   		ret = msm_csiphy_subdev_init(camss, &camss->csiphy[i],
> -					     &res->csiphy_res[i],
>   					     res->csiphy_res[i].csiphy.id);
>   		if (ret < 0) {
>   			dev_err(camss->dev,
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

