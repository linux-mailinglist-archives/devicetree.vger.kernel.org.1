Return-Path: <devicetree+bounces-130068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D579EDCF0
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 02:09:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4FBAE166ACB
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 01:09:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DC3022611;
	Thu, 12 Dec 2024 01:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OXXgCV+X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5276118AEA
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 01:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733965776; cv=none; b=P3zqJ1sdZmv+Hl1pnwvkeRKIUwSlLXGZM0cN3CMwNP9wGPfyfs48+lWEvdy046LdubA/FnGw6zFwqMD0rzGs8no5xyYcFdxryKWTyyzF1la/64oBeEibXBSh2xgvKAYj9/5hpMe2OlioSDlP3GxBbvNwMAhW9xCQxrqI8L/E+64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733965776; c=relaxed/simple;
	bh=qv6OvIXWsYjVmNDnmi27QYO7K3Ldrx/3qmudjTkRhOA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qQ3Jo2FY6lPmoSmJb/wUOSImtaPG5/gvDYDgGyrLhIe7DpHx+kpz8EJvlIZSt5hqa79K4+mUAKzocsCnsaMf+c03Dam07zgcBc/JpSNjFGDACbUhP5wqp01HhMU/2kGAP1w+L51XFMsUysxjBYo9+3mRU4e40RLjjEe2yM0opa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OXXgCV+X; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5401c2bb7ccso11167e87.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 17:09:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733965772; x=1734570572; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Gn9/HJ6VMzSGcGaxW/y8OLh9unHBkAJxM422iTplG24=;
        b=OXXgCV+XyDKtnMBAUy67lAsg+jul86ow4DOlxcLS/FMXKnZ7i+I/HwGf20cNrf39FV
         v4DJDy5CYG181Z/J1sAN9MsbyebJPfsorHlpsGWLyZ+Sp7NSXaaesQ3comF2vj84MWz0
         JchqiFBkRp1v3tKi0Hg6sDkaxGxRMNN8N7JrhV1qNNe4Hqs2nJ4LM1uUzjFKfm14JJir
         qc8uQGvPYsgVwp0yrUTIZaESYjruWk7eB4VnecGkMTQJ1GP/eA+uzWQ3/jC/j1/H/kE9
         vmaoe1EDNy/b+X7nPJOHCK9AEOIuPbmw+MnU2bDzVanFt3s/omSfFfyHX8F0o19BUvUi
         +jsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733965772; x=1734570572;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gn9/HJ6VMzSGcGaxW/y8OLh9unHBkAJxM422iTplG24=;
        b=AoGLZZqAxxV2naHZsq9wWOxBFcOmOnvDRKuoliG+T/G0nr45d5v6oaewVVccgPZSWD
         W4cnkRpOAsTiCW/8v2QZNKXOGovB/3vuKy2Kt1ACmb/YEk8SkjoIEQlFwpmjY1zqShID
         KeWh73TpbPJGsvNHXcOJu8m0wsZ0utMDgYxRGw1FpHceKZiNyGjWHLbYxjMh4/ya85VP
         glgyB1sgCSeoU2KYfpjtKS2O5BMSKgeqEt2EoLbsTS4S2lzPCf9IWOdPu1HbPzAuNXQw
         eoyd+w2fE8iNxw8cZPkLN+ixlTRO2z4ef1Drprii7H6R+wEJLrVTzle+NfsDJ8QD21J0
         C/tw==
X-Forwarded-Encrypted: i=1; AJvYcCVhkw1NPnxrFjV8Fda9CqCI+PVvPE9FFZr5YGWz+DFIUluGE+ROnHrSbLX9/HlZRDPirhwbmwqzRjJu@vger.kernel.org
X-Gm-Message-State: AOJu0Yxpu+tRNjwAcPN7mtNBU57jUM3fvTSNYh8DZIGntyxrYUtIi96R
	G9h1mbqxwpPksLCJ+jNYA3VrAf2mfXDdJqc97cfQ5LQy2s4i2lCQBhVcnfvw3M0=
X-Gm-Gg: ASbGncvmCxrk3aSI0rxXJYZS1FM5J8lB//nbbGQhXllfPVLsvJrM+ftfiOu9NQC7q+I
	/khBzE4EPF/5e4kU+9L+FfnrqJvQGH4sn6NvC93MKXGuNhRkAabHpvv1TGmvGyNr6Npu1tGMwgk
	pksmiGAPXuqY/yWRhvWU9E3bb1GOMOy3wUz5z6HiEMf0hz1+2PSH0QeMjkz/650FyuOZlRRnqTs
	IuWvHaQFjnNXJc5qBHuB5oaQDQOhAA2+foqdUrWwn9cHMl7yFT99S1r9h+P9FDEmMgu3w+kjmJN
	+U74E15fRaVEaDbaBE+7+p7+TrVCjKOajEk=
X-Google-Smtp-Source: AGHT+IHRJbCRF9Jm0y8nQsEY/6+MzdeRL4pBScxOAhsjaPVS6Xq51uBxkCQytZMf4/xdGli7wFb9qQ==
X-Received: by 2002:a05:651c:b28:b0:302:27c6:fc7b with SMTP id 38308e7fff4ca-30249e053bcmr1830891fa.6.1733965772467;
        Wed, 11 Dec 2024 17:09:32 -0800 (PST)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30231594b18sm7330921fa.16.2024.12.11.17.09.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Dec 2024 17:09:31 -0800 (PST)
Message-ID: <1ac23fa1-fc35-45fb-9338-d5f304c869ba@linaro.org>
Date: Thu, 12 Dec 2024 03:09:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/16] media: qcom: camss: Add callback API for RUP update
 and buf done
Content-Language: ru-RU
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, bryan.odonoghue@linaro.org, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: quic_eberman@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241211140738.3835588-1-quic_depengs@quicinc.com>
 <20241211140738.3835588-10-quic_depengs@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20241211140738.3835588-10-quic_depengs@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Depeng and Bryan.

On 12/11/24 16:07, Depeng Shao wrote:
> The RUP registers and buf done irq are moved from the IFE to CSID register
> block on recent CAMSS implementations. Add callbacks structure to wrapper
> the location change with minimum logic disruption.
> 
> Signed-off-by: Depeng Shao <quic_depengs@quicinc.com>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

It's unexpected to see two your Signed-off-by: tags, either one is invalid
or the authorship of the change shall be changed appropriately.

> ---
>   .../media/platform/qcom/camss/camss-csid.h    |  9 ++++++++
>   drivers/media/platform/qcom/camss/camss.c     | 22 +++++++++++++++++++
>   drivers/media/platform/qcom/camss/camss.h     |  3 +++
>   3 files changed, 34 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-csid.h b/drivers/media/platform/qcom/camss/camss-csid.h
> index f52209b96583..1369e7ea7219 100644
> --- a/drivers/media/platform/qcom/camss/camss-csid.h
> +++ b/drivers/media/platform/qcom/camss/camss-csid.h
> @@ -152,6 +152,14 @@ struct csid_hw_ops {
>   	 * @csid: CSID device
>   	 */
>   	void (*subdev_init)(struct csid_device *csid);
> +
> +	/*
> +	 * reg_update - receive message from other sub device
> +	 * @csid: CSID device
> +	 * @port_id: Port id
> +	 * @is_clear: Indicate if it is clearing reg update or setting reg update
> +	 */
> +	void (*reg_update)(struct csid_device *csid, int port_id, bool is_clear);
>   };
>   
>   struct csid_subdev_resources {
> @@ -168,6 +176,7 @@ struct csid_device {
>   	struct media_pad pads[MSM_CSID_PADS_NUM];
>   	void __iomem *base;
>   	u32 irq;
> +	u32 reg_update;
>   	char irq_name[30];
>   	struct camss_clock *clock;
>   	int nclocks;
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 9fb31f4c18ad..e24084ff88de 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -2087,6 +2087,28 @@ static int camss_link_entities(struct camss *camss)
>   	return 0;
>   }
>   
> +void camss_reg_update(struct camss *camss, int hw_id, int port_id, bool is_clear)
> +{
> +	struct csid_device *csid;
> +
> +	if (hw_id < camss->res->csid_num) {
> +		csid = &camss->csid[hw_id];
> +
> +		csid->res->hw_ops->reg_update(csid, port_id, is_clear);
> +	}
> +}
> +
> +void camss_buf_done(struct camss *camss, int hw_id, int port_id)
> +{
> +	struct vfe_device *vfe;
> +
> +	if (hw_id < camss->res->vfe_num) {
> +		vfe = &camss->vfe[hw_id];
> +
> +		vfe->res->hw_ops->vfe_buf_done(vfe, port_id);
> +	}
> +}
> +
>   /*
>    * camss_register_entities - Register subdev nodes and create links
>    * @camss: CAMSS device
> diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
> index 9da7f48f5dd7..6dceff8ce319 100644
> --- a/drivers/media/platform/qcom/camss/camss.h
> +++ b/drivers/media/platform/qcom/camss/camss.h
> @@ -161,5 +161,8 @@ void camss_pm_domain_off(struct camss *camss, int id);
>   int camss_vfe_get(struct camss *camss, int id);
>   void camss_vfe_put(struct camss *camss, int id);
>   void camss_delete(struct camss *camss);
> +void camss_buf_done(struct camss *camss, int hw_id, int port_id);
> +void camss_reg_update(struct camss *camss, int hw_id,
> +		      int port_id, bool is_clear);
>   
>   #endif /* QC_MSM_CAMSS_H */

--
Best wishes,
Vladimir

