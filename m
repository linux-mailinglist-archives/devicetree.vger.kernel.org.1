Return-Path: <devicetree+bounces-94624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAEF95607F
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 02:17:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B738B281C40
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 00:17:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D72DFD2FF;
	Mon, 19 Aug 2024 00:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="glo55wnU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F11EA1B969
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 00:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724026650; cv=none; b=oQlInjcqfWUgAGrZxECPeGtFLA0J7UoOG3L9HXEoZxUX5NjDsSAis6J3EQpyAEg3Y37aa9rSo43KjGikqyqINxi/85LM5Ske+5wlKXyVbRwJ6ADk6uuEiyyCKn24AjbHZg0l9JrfGevAI1LBAJWqJDtahPBsaNVZ8zY5VANKDvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724026650; c=relaxed/simple;
	bh=goMcV+VLa2jotfCfaphpaHrg6yDyMlQVDvkRE+xfjNQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TZyXtxC83RjKWIejXmf2YYXQ+Cj7ikKin0ewzhNPqbcykcsT1vve+wnBsdPQ/d8DEysI7DLZbWvJ8EQviDBblZlg6NtANbGZWjdd+LJrhrbjowu/vGi97f1pDa71lh88J4ky8fp0sg1bW4OL5gDFldiw9iaz7o/4v6gwLZ7x19A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=glo55wnU; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52f008b40d7so714698e87.2
        for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 17:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724026647; x=1724631447; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v2v/8rkLS10z84hTT6BSiPQVkyjciswn9+D1TF7Vww0=;
        b=glo55wnUIjTWqy0JEgReBxU0fLeeHbMgxnnBZzv9QiVglK/FJLgB2RyskLnCkOpUP1
         qwIXbN1mhXcsaZ8DzYRIqFzj82i3ASqGd+FBA3o/g0slDYAKhR1lnd7PMGtstZ4vBI63
         IpMMg7UXta3wnEctSz6Mug/pS6zvJWfecGX/MWdx/6Aii/MahDOdpQapAJI/+zSICeZS
         qB8OHLvt6Ivuu+hZPgjUixJQ33xWtgw+FPEBa9XyTvZeZnkoSdSp3ERQ15OdEzEXGP0m
         nl1sbmgntuOtG/cDBBavQsWPXe1N3X2P1awpN0/WFKJZLy2A2F8fwMu3Q1gIgDvysrZW
         esyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724026647; x=1724631447;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v2v/8rkLS10z84hTT6BSiPQVkyjciswn9+D1TF7Vww0=;
        b=ZYVqDXhtF1Kgdqi87K/EUY4dIMK9e+f6tlhVoqHUH630Ia4q2Jip80kLUIIP1OpJhQ
         Bfvo0g42MudZsfUNFCBARpX5FSzvptF07ciMto9JF/u0/h+DEOgzoGPQVu1aRLDCH6x0
         oSLFE7FzXg0+kzUXKE4dfanABhCA+Tbi3u6ElIUf1O3/M2zmAGjriCmrp3r7Qyka5t4/
         3qPxHcoBOf840AYUYewXvjwgTCv2uKZEsone9HsEb63mFceM3uPv11Qy99aW5FenMIWT
         1EacOQrb3QQxgqILWbz/kBD5i9gQYMRjkJvkE7l/P2RafKkRJa3YRRQvJ5wqmvUAXpd1
         Twqg==
X-Forwarded-Encrypted: i=1; AJvYcCUHx518RR/QSvaUhMJOE7vic7WQa+GViLU9nW+HfVYYIMx7R9+0rXB8xVIp/VmJwDdiVo01WlNBTcy8@vger.kernel.org
X-Gm-Message-State: AOJu0YywFwh0fR/VYSfBBrxfCv7bUQZrIkS/PrApyA9rh0o0uD7sOUol
	AKtfQaZw9Mwo1KByWlIaB+6cQUExFpruAeRP283SiDFfr6OnDPolVl7cGr6I284=
X-Google-Smtp-Source: AGHT+IFVS3NukrIXpBhBqdEbHV9SfprF5p2FP/geZzw7UvUYV+wn9VkEOjaKszoM73aMQqc0jEny1w==
X-Received: by 2002:a05:651c:211e:b0:2ef:226e:bc6d with SMTP id 38308e7fff4ca-2f3be581aa6mr38755401fa.2.1724026646929;
        Sun, 18 Aug 2024 17:17:26 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f3b748db93sm13354001fa.37.2024.08.18.17.17.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Aug 2024 17:17:26 -0700 (PDT)
Message-ID: <3cdd7101-ae8c-45c9-9695-f7f4202d1edb@linaro.org>
Date: Mon, 19 Aug 2024 03:17:25 +0300
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
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20240812144131.369378-1-quic_depengs@quicinc.com>
 <20240812144131.369378-5-quic_depengs@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20240812144131.369378-5-quic_depengs@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 8/12/24 17:41, Depeng Shao wrote:
> From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> Add a nop init callback to CSIPHY devices, this callback is used to add
> some HW register offset and register configuration for specific platform,
> then different platform can reuse the same CSIPHY driver. Later changes
> will enumerate with enabling code.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Depeng Shao <quic_depengs@quicinc.com>
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

As far as I see from the patchset there is no intention to populate this function,
see a comment below.

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
> +	if (ret)
> +		return ret;

I've already expressed concerns about a necessity of this function, since it
adds runtime burden of work, which can be successfully done at compile time,
but okay...

Since it is needed for 3PH case only, it may make sense to remove it from 2PH
and call it here conditionally like

	if (csiphy->res->hw_ops->init)
		ret = csiphy->res->hw_ops->init(csiphy);

But it's up to you, I hope the callback will be removed in short future.

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

