Return-Path: <devicetree+bounces-90043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 70809943971
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 01:44:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED84C1F22BAF
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 23:44:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2E6D16D9D9;
	Wed, 31 Jul 2024 23:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o/OrLP/j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82081BC4E
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 23:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722469437; cv=none; b=Wnn6597nC1FCh62B3S3/etqCrY5pDjR13QXR9TtrwP33OhmcjWt/VqpVdnibFzHogQSWXYWTSYdEMrDavsGwNc8iJdYUUtbF2hTS6gOtPfYNoJTHuH0opWSw511gDEQaCY+z4VyyL9W9t9+qSQVGw6PizygBzgJ0rvjNZfKh5so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722469437; c=relaxed/simple;
	bh=RCRDGfwvR9uNsKWX42fmDTZzk63Zvu50z+x6CT+F3wo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PS/+LXER+g7zde6MZQK4rrwcL9fp973q3WSrzAAvoIqJOc48C6HiJCOmTmj2qaRWEz9JdW7c7xZPHbNWcnPsrS4OjUqOOP90u/PTI4AXBfKTkwhN4nOknHUXTwEYm22bCON/GgCBByy8tEsEZOyLdDZ360m1IWB55aimIE2Qy7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o/OrLP/j; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-52ef9714673so1046300e87.0
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 16:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722469434; x=1723074234; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=r+LMHL7nX7mTsZlsy4HX/NWAvahbqOYtg3bwYvzd2zw=;
        b=o/OrLP/jmOy/IMFEH6zeklcMTjBchLUSGUNrSLU9pCXe5FFfqwYjbzM6TSryli9C60
         ygj4yaHdEQGxEPxDpoGBEGgc4AwlZTk67sfMHbd1XjhnBoMF0qKzpHmbSsUOpTOEnPc3
         oEQmP3opFRNW6wUQlTY2kpVdKmRHyPi2mIz9XnzmrsmXOdMK/JRUoMZ0KPSvqL8SAufy
         GaKYT/vXccylfit0t8pdLBLWPookQ4E13qlFYgemrXWAe2U3A+vYk/RBRTv7guGkXakK
         ++KGygqfOqzjHkaFb9+pHouK7sSphFugke0L5nhUB69rBRyPrVsPjczyC9yGx5l7SAKw
         FusQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722469434; x=1723074234;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r+LMHL7nX7mTsZlsy4HX/NWAvahbqOYtg3bwYvzd2zw=;
        b=WbSFhZA+AP1RyLVQIUbjt6nhq2LNJK2gpOH4aeGAebK4MWOUUUeeZHpUY7N7Vsl3Ay
         zxpp+YfAg36h6MJjT6IuE3A0T4QRQY+MnX0ZsKQzhk9MzLaMDrlW1BkbUxTjkc0So43Q
         AVw3h/y1Ufl7WFf0jWWHfi6jyrvogyRsPOibSAngnpZ2DdO3ZZ/iB0Ni9gyhmA+UPidK
         SDBYqERSQVcnUExcvCkpJzHj1whZfdoPe42EESpLiIHtxctUUBFQyhRf/aCkiDGsqEmC
         edKBJQICh0i+sS9DsiI2lq3dxlyTg/LBu1xf9vDdtFFVn44SypyJS4KpaU702m8tO5Jo
         0bBQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBZ3RhZpoaOEbTk2uaZASN3H6tY6eSlQo4cMC5i+STrR+g0EoRrMrrVsq0gRCLHhxvL9Hw80MeIslwnt8mPWH+SL9qL/kbFvodug==
X-Gm-Message-State: AOJu0Yw4hlf4tAnel+XNkSD5AEhjJPwyYYZ1ro1rBhmcmG1gm4V7Q7XB
	o07Jr949hQ7NmvbLQmPeWMGR/bimZVvtee5bzTtpBh6tZ1girGxT6tyBbVr4BNg=
X-Google-Smtp-Source: AGHT+IHCQLdF8FPjUWGs2NzVKaEKmiVoOZE8Efv1mW1e7r/rgDqbYrveAPH1tcmzqMSaq5jy9cfgfw==
X-Received: by 2002:a05:6512:1042:b0:52f:3c:a81 with SMTP id 2adb3069b0e04-530b61b1609mr203047e87.3.1722469433869;
        Wed, 31 Jul 2024 16:43:53 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52fd5c08e9fsm2368357e87.134.2024.07.31.16.43.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jul 2024 16:43:53 -0700 (PDT)
Message-ID: <6dfc2c79-fc6d-4eed-bf3f-94396130cb4f@linaro.org>
Date: Thu, 1 Aug 2024 02:43:52 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/13] media: qcom: camss: csiphy: Add an init callback to
 CSI PHY devices
Content-Language: en-US
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, bryan.odonoghue@linaro.org, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: quic_eberman@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20240709160656.31146-1-quic_depengs@quicinc.com>
 <20240709160656.31146-5-quic_depengs@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20240709160656.31146-5-quic_depengs@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/9/24 19:06, Depeng Shao wrote:
> From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> Add a nop callback to CSIPHY devices. Later patches will enumerate with
> enabling code.

Please avoid references to "patches" in the commit messages, it'll be
changes.

I took a look at the next changes, and in my opinion the selected names
.init / csiphy_init() / csiphy->res->hw_ops->init(csiphy) are confusing,
since there is no intention for real hardware initialization, which is
presumed by "hw_ops->init()", I see only routines to get some offsets
and populate allocated memory with some values... Not closely a hw_ops.

> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Depeng Shao <quic_depengs@quicinc.com>
> Reviewed-by: Elliot Berman <quic_eberman@quicinc.com>
> ---
>   drivers/media/platform/qcom/camss/camss-csiphy-2ph-1-0.c | 6 ++++++
>   drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c | 6 ++++++
>   drivers/media/platform/qcom/camss/camss-csiphy.c         | 4 ++++
>   drivers/media/platform/qcom/camss/camss-csiphy.h         | 1 +
>   4 files changed, 17 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-2ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-2ph-1-0.c
> index cd4a8c369234..9d67e7fa6366 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy-2ph-1-0.c
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy-2ph-1-0.c
> @@ -180,6 +180,11 @@ static irqreturn_t csiphy_isr(int irq, void *dev)
>   	return IRQ_HANDLED;
>   }
>   
> +static int csiphy_init(struct csiphy_device *csiphy)
> +{
> +	return 0;
> +}
> +
>   const struct csiphy_hw_ops csiphy_ops_2ph_1_0 = {
>   	.get_lane_mask = csiphy_get_lane_mask,
>   	.hw_version_read = csiphy_hw_version_read,
> @@ -187,4 +192,5 @@ const struct csiphy_hw_ops csiphy_ops_2ph_1_0 = {
>   	.lanes_enable = csiphy_lanes_enable,
>   	.lanes_disable = csiphy_lanes_disable,
>   	.isr = csiphy_isr,
> +	.init = csiphy_init,
>   };
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> index bc4834ee2dcc..b60c32a195df 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> @@ -581,6 +581,11 @@ static void csiphy_lanes_disable(struct csiphy_device *csiphy,
>   			  CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(6));
>   }
>   
> +static int csiphy_init(struct csiphy_device *csiphy)
> +{
> +	return 0;
> +}
> +
>   const struct csiphy_hw_ops csiphy_ops_3ph_1_0 = {
>   	.get_lane_mask = csiphy_get_lane_mask,
>   	.hw_version_read = csiphy_hw_version_read,
> @@ -588,4 +593,5 @@ const struct csiphy_hw_ops csiphy_ops_3ph_1_0 = {
>   	.lanes_enable = csiphy_lanes_enable,
>   	.lanes_disable = csiphy_lanes_disable,
>   	.isr = csiphy_isr,
> +	.init = csiphy_init,
>   };
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.c b/drivers/media/platform/qcom/camss/camss-csiphy.c
> index 2f7361dfd461..ea5c7078ec8e 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy.c
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy.c
> @@ -576,6 +576,10 @@ int msm_csiphy_subdev_init(struct camss *camss,
>   	csiphy->cfg.combo_mode = 0;
>   	csiphy->res = &res->csiphy;
>   
> +	ret = csiphy->res->hw_ops->init(csiphy);

Here.

> +	if (ret)
> +		return ret;
> +
>   	/* Memory */
>   
>   	csiphy->base = devm_platform_ioremap_resource_byname(pdev, res->reg[0]);
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.h b/drivers/media/platform/qcom/camss/camss-csiphy.h
> index 47f0b6b09eba..bdf9a9c8bacc 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy.h
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy.h
> @@ -71,6 +71,7 @@ struct csiphy_hw_ops {
>   	void (*lanes_disable)(struct csiphy_device *csiphy,
>   			      struct csiphy_config *cfg);
>   	irqreturn_t (*isr)(int irq, void *dev);
> +	int (*init)(struct csiphy_device *csiphy);
>   };
>   
>   struct csiphy_subdev_resources {

--
Best wishes,
Vladimir

