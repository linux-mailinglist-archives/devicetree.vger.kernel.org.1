Return-Path: <devicetree+bounces-94623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58AFF956045
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 02:01:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0FBF3281963
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 00:01:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28E27208A4;
	Mon, 19 Aug 2024 00:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xQa+KlO1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A632E7E9
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 00:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724025675; cv=none; b=LdNRh6U80XdLuabqOxMmbiTu73/1SfiEeTCQ5oKRPCCOlhgFbRd+iCMvjLOGQdXrctLxuN+PZUbzrrVZTbkZLHQ1ZqfTUZl9qOf1338SkkWOcupoAnWzssAalxkm9V1sR9JkYHP0eg3zeIBtkBwdV34Y1V6QnjCmgunLASMZ4GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724025675; c=relaxed/simple;
	bh=6hYpg0m5Rt67g7Mxzu2ElLnjjv6XNz+ikayF+thPaug=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j1hLDqOPx/M6tMq25sLAVHYHk8u+IfGZoYk5KhFvTOjMpuuanzu4Ylzlyyu2aldYyTxlzv+8bH4Bf9jI7ZIfD6Dl3yiFsiBr8jstJkrFduXtw4kZCCkF/4OZ8Q+lO7Ryrhnj6qc/XUBEX9MEILaCWrHhmF0H1Hde0fT6IvUfFnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xQa+KlO1; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2ef260c4467so8377851fa.0
        for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 17:01:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724025671; x=1724630471; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BYOLFiuwIeABlNgpCgPMEdlJrY/ffM3olbhyHsVZ574=;
        b=xQa+KlO1JetyXBB2uHz+pGrTwu6y07n3Ix+kUKNV9FG8gayQzC7Fk8CDC4M87imz+B
         amkij1vOuTgmQlPEJeGHtGETavOXtH71qh363OmVr7ykfYFsFfggFqZsWhpJCOtOQtlo
         gXP3u59enZppPNF62UBoob2CFm6+SdcxiD8X3Hvdldl1kA0+JFXeAbXDXM2Zf2mZjSR5
         JjoBcTOt2VxpOjuCv96PVrXyC9fBksg1OS/K/ObwyY2PSsckl2hgae02MRgDro5dDy7S
         XvF6qTT9KWeFZXdTiLsxHLRlydPdyN1JMY5I0JQLhNpXQaU1GEMnBt5tR2o4ETQ9Wj41
         pWgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724025671; x=1724630471;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BYOLFiuwIeABlNgpCgPMEdlJrY/ffM3olbhyHsVZ574=;
        b=Ej/hwrE+MZxqj1NPJuJeY05dLtywGNUJlUMnVV2/SIqx97lQ3ZcpRVe+RMPjXDTlgT
         IgsbXR8djPTdeqafH5p1OHw5w5qGeU18eNYWEIGZ9hWyeRP4HtJjKELtCaBxjP41JpfG
         kytuJytOiW1tfqdwaJ1Up+N//8zl24TfJ7ezGCXX8pfFg7m/Pk9hjaqizclZIJDmw3P/
         c7gwaIceoro2GCItrF1PA/HpJhW6cb6WsdcptvDyBwkIWfK8elp0KzeeV4HYB+tVa5i1
         58KwuAWg9t4LFUdLrp4imaa9Lkj+7RgUjNed3ZEbD24jO6DwGG8UaNqS55BoBuTCPe3q
         xnUw==
X-Forwarded-Encrypted: i=1; AJvYcCWAAZY/ABiBoRAbTQKczti+CRAI7gDLJRAaC6Ibw91G3Gb1JLcyD4dQIK8aFJej204hO9Yidg+U4rFu@vger.kernel.org
X-Gm-Message-State: AOJu0YwUpbqn96qEl+p00uy5RtHQRuH3XibvQDzVu0ViessDbq4jACi+
	PiusDTylmYntnHC46SAijTSpW/luS/ye9z3PRTiR4YZnysncTmENCBQLvBPyTs0=
X-Google-Smtp-Source: AGHT+IFhCmHG6qv7yNoduE8Vmk9V9zmO0z2IBMuw/McbuDAD0EmCQtvNUBmXvNzXpFO744+oecAeYQ==
X-Received: by 2002:a05:6512:1081:b0:530:e0fd:4a92 with SMTP id 2adb3069b0e04-5331c618ffemr3586968e87.0.1724025670471;
        Sun, 18 Aug 2024 17:01:10 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5330d424c63sm1318158e87.259.2024.08.18.17.01.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Aug 2024 17:01:09 -0700 (PDT)
Message-ID: <cc1484d4-7a61-4f5c-b617-a6ad99985bda@linaro.org>
Date: Mon, 19 Aug 2024 03:01:08 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/13] media: qcom: camss: csiphy-3ph: Move CSIPHY
 variables to data field inside csiphy struct
Content-Language: en-US
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, bryan.odonoghue@linaro.org, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20240812144131.369378-1-quic_depengs@quicinc.com>
 <20240812144131.369378-6-quic_depengs@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20240812144131.369378-6-quic_depengs@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 8/12/24 17:41, Depeng Shao wrote:
> From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> A .data field in the csiphy device structure allows us to extend out the
> register layout of the three phase capable CSIPHY layer.
> 
> Move the existing lane configuration structure to an encapsulating
> structure -> struct csiphy_device_regs which is derived from the .data
> field populated at PHY init time, as opposed to calculated at lane
> configuration.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Depeng Shao <quic_depengs@quicinc.com>
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   .../qcom/camss/camss-csiphy-3ph-1-0.c         | 55 ++++++++++++-------
>   .../media/platform/qcom/camss/camss-csiphy.h  |  1 +
>   2 files changed, 36 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> index b60c32a195df..93782ebfe0ea 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> @@ -63,6 +63,11 @@ struct csiphy_lane_regs {
>   	u32 csiphy_param_type;
>   };
>   
> +struct csiphy_device_regs {
> +	const struct csiphy_lane_regs *lane_regs;
> +	int lane_array_size;
> +};
> +
>   /* GEN2 1.0 2PH */
>   static const struct
>   csiphy_lane_regs lane_regs_sdm845[] = {
> @@ -470,28 +475,11 @@ static void csiphy_gen1_config_lanes(struct csiphy_device *csiphy,
>   static void csiphy_gen2_config_lanes(struct csiphy_device *csiphy,
>   				     u8 settle_cnt)
>   {
> -	const struct csiphy_lane_regs *r;
> -	int i, array_size;
> +	struct csiphy_device_regs *csiphy_regs = csiphy->data;
> +	const struct csiphy_lane_regs *r = csiphy_regs->lane_regs;
> +	int i, array_size = csiphy_regs->lane_array_size;
>   	u32 val;
>   
> -	switch (csiphy->camss->res->version) {
> -	case CAMSS_845:
> -		r = &lane_regs_sdm845[0];
> -		array_size = ARRAY_SIZE(lane_regs_sdm845);
> -		break;
> -	case CAMSS_8250:
> -		r = &lane_regs_sm8250[0];
> -		array_size = ARRAY_SIZE(lane_regs_sm8250);
> -		break;
> -	case CAMSS_8280XP:
> -		r = &lane_regs_sc8280xp[0];
> -		array_size = ARRAY_SIZE(lane_regs_sc8280xp);
> -		break;
> -	default:
> -		WARN(1, "unknown cspi version\n");
> -		return;
> -	}
> -
>   	for (i = 0; i < array_size; i++, r++) {
>   		switch (r->csiphy_param_type) {
>   		case CSIPHY_SETTLE_CNT_LOWER_BYTE:
> @@ -583,6 +571,33 @@ static void csiphy_lanes_disable(struct csiphy_device *csiphy,
>   
>   static int csiphy_init(struct csiphy_device *csiphy)
>   {
> +	struct device *dev = csiphy->camss->dev;
> +	struct csiphy_device_regs *regs;
> +
> +	regs = devm_kmalloc(dev, sizeof(*regs), GFP_KERNEL);
> +	if (!regs)
> +		return -ENOMEM;
> +
> +	csiphy->data = regs;
> +
> +	switch (csiphy->camss->res->version) {
> +	case CAMSS_845:
> +		regs->lane_regs = &lane_regs_sdm845[0];
> +		regs->lane_array_size = ARRAY_SIZE(lane_regs_sdm845);
> +		break;
> +	case CAMSS_8250:
> +		regs->lane_regs = &lane_regs_sm8250[0];
> +		regs->lane_array_size = ARRAY_SIZE(lane_regs_sm8250);
> +		break;
> +	case CAMSS_8280XP:
> +		regs->lane_regs = &lane_regs_sc8280xp[0];
> +		regs->lane_array_size = ARRAY_SIZE(lane_regs_sc8280xp);
> +		break;
> +	default:
> +		WARN(1, "unknown csiphy version\n");
> +		return -ENODEV;
> +	}
> +
>   	return 0;
>   }
>   
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.h b/drivers/media/platform/qcom/camss/camss-csiphy.h
> index bdf9a9c8bacc..cac1f800b7d8 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy.h
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy.h
> @@ -95,6 +95,7 @@ struct csiphy_device {
>   	struct csiphy_config cfg;
>   	struct v4l2_mbus_framefmt fmt[MSM_CSIPHY_PADS_NUM];
>   	const struct csiphy_subdev_resources *res;
> +	void *data;

I would suggest to make the type/name above explicit:

struct csiphy_device_regs *regs;

>   };
>   
>   struct camss_subdev_resources;

--
Best wishes,
Vladimir

