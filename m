Return-Path: <devicetree+bounces-86473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9943D9344B2
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 00:17:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 11CC41F20F5B
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 22:17:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99AE9374F6;
	Wed, 17 Jul 2024 22:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oafVs4wx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 649C96BB39
	for <devicetree@vger.kernel.org>; Wed, 17 Jul 2024 22:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721254663; cv=none; b=LuIXVprPdwfMxKR3chZDsFq32+AHF69W2YsxvKsHHgS4sTHMCU/3yPWexglUDt0DZCijGjdc6VmBgNxQXcmnqC9WHRhslnvL3q90i/y5GbqAa5yvKVQBuRBaJMC1Lqs80yavtexH1jsDx8n05Iny2Fngi9O0f4B7InoUrPAlF9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721254663; c=relaxed/simple;
	bh=YKkt1uoTVx6pKo9yumUlpZgUDSuBaEyeDsbFHUv59WQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WpiYSRKJqyv5leoWR8ZuX+6bolXFSye0JOs/WtbxxN1in5U7UjOZ4urBRjeevmFVxDvM8bQYSoANsu6GBtyKHU5aGDku0eJp3RuAJfKpS8nFepMGtz/g/gTiz3WpHJmjdqpSAqjJXLM5I5f4Mo970tzVAn+R+vCGDTlmF1MvN5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oafVs4wx; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ee9b098bd5so2987961fa.0
        for <devicetree@vger.kernel.org>; Wed, 17 Jul 2024 15:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721254658; x=1721859458; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JnZlrJOCCGBzSnHkIJUaKgSw689yjhOpz3uZQMJqsCo=;
        b=oafVs4wxR/fcuj2HcyllEtNYjMNIp7n2KcVOy6AuLSesCe1ZUzn5mFx3zOJINS4mBm
         d2Smrkrz9uzCzTHxq/6BNHTdx0icXhBujELBwTZ6lY5W/21lX2RtW6nyYywY3HyL4bmF
         DJArI4nlAbbk/42YynsW9EjleV+wxCbJnk2hH1n3B40nAbbZIQOxSWQyEO8hNzy1qqOs
         d2O+B3vUv/IQZuOzg6l+pEJ2RM+KXBwkBDA0TMGJCmcYp3JGznfXeo8lDqIaip+WnxU/
         izLBYe7Hmt1xvVv+BM5+aBM/ZWsLI01dWS/dn0WfaV4VaWoe5QKbzPDewEvTlqndFAaL
         rkVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721254658; x=1721859458;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JnZlrJOCCGBzSnHkIJUaKgSw689yjhOpz3uZQMJqsCo=;
        b=kkXcqLF1dT4sg75LgUXCCmUfMTlIMP/Hbo2q4rJ2G6vq+DwQTLa32AIScwViw+o3s9
         ExkCDwyeUXBT2pETHsRarozxv2al8DTBELW2AscRaa/mYz3woOfJfP2PFzfiQiSXTTJQ
         s8qIK3kIm1+BksYzjHTf3InHtbFoGUQ9OhMp9sASKWSxPWVS96BbLKlYyB2pabumT7O9
         tNwIc84am3UWS9Qj2c9BqWzZSy5ayDw0Z/70K6vH9am0VWDPstkH+lfhQnMl+okc2KUH
         VEIMWpgsmkrOAtdvHE5lkeqZOM8ZiAoelsVgc2ps0FgwipZSMrrH+8TqF38pwHEaYSrS
         IRFQ==
X-Forwarded-Encrypted: i=1; AJvYcCXEox5Ax0HYsFE4lXvt1lMf/V1KsgmeYXltITomjI3lL3Z9EWtBo7P4s/qQZL/3u/nYzgLmBhC5IArBFkBF7bNpEZ/vqoLeibNgzg==
X-Gm-Message-State: AOJu0YyK6sy1TKOE0f9fhIkKtcBcgpNahmY2Gcl+ihn9LqcrSTFDhMn4
	YLEqakHHMpzzDPU+Fxz5Zc5Wzfud4qN2YvyuaZqDAYqm1x40cp3iXrq4i3EIeVA=
X-Google-Smtp-Source: AGHT+IF2/Is9hXwwWG7YiAN81TRE1mtZLXDHXU46renAscxqKReQL8CjnOI+XC2q8nwpvZ28QexNSw==
X-Received: by 2002:a2e:9a87:0:b0:2ee:7a71:6e2d with SMTP id 38308e7fff4ca-2ef05c9e03amr4571481fa.28.1721254658502;
        Wed, 17 Jul 2024 15:17:38 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ef05d7341esm707471fa.79.2024.07.17.15.17.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jul 2024 15:17:38 -0700 (PDT)
Date: Thu, 18 Jul 2024 01:17:36 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Unnathi Chalicheemala <quic_uchalich@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kernel@quicinc.com, Bjorn Andersson <quic_bjorande@quicinc.com>
Subject: Re: [PATCH v6 2/5] soc: qcom: llcc: Add regmap for Broadcast_AND
 region
Message-ID: <44y52myo7tgdwxx47egsusndzlefy4nm45ycrkxvvjv6jdaspx@ltiyykzx4l5u>
References: <cover.1717014052.git.quic_uchalich@quicinc.com>
 <9cf19928a67eaa577ae0f02de5bf86276be34ea2.1717014052.git.quic_uchalich@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9cf19928a67eaa577ae0f02de5bf86276be34ea2.1717014052.git.quic_uchalich@quicinc.com>

On Fri, May 31, 2024 at 09:45:25AM GMT, Unnathi Chalicheemala wrote:
> Until SM8450, there was only one broadcast region (Broadcast_OR)
> used to broadcast write and check for status bit 0.
> >From SM8450 onwards another broadcast region (Broadcast_AND) has been
> added which checks for status bit 1. This hasn't been updated and
> Broadcast_OR region was wrongly being used to check for status bit 1 all
> along.
> 
> Hence define new regmap structure for Broadcast_AND region and initialize
> this regmap when HW block version is greater than 4.1, otherwise
> initialize as a NULL pointer for backwards compatibility.
> Switch from broadcast_OR to broadcast_AND region (when defined in DT)
> for checking status bit 1 as Broadcast_OR region checks only for bit 0.
> 
> Signed-off-by: Unnathi Chalicheemala <quic_uchalich@quicinc.com>
> Reviewed-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  drivers/soc/qcom/llcc-qcom.c       | 16 +++++++++++++++-
>  include/linux/soc/qcom/llcc-qcom.h |  4 +++-
>  2 files changed, 18 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/soc/qcom/llcc-qcom.c b/drivers/soc/qcom/llcc-qcom.c
> index cbef0dea1d5d..668e0cb6a925 100644
> --- a/drivers/soc/qcom/llcc-qcom.c
> +++ b/drivers/soc/qcom/llcc-qcom.c
> @@ -821,6 +821,7 @@ EXPORT_SYMBOL_GPL(llcc_slice_putd);
>  static int llcc_update_act_ctrl(u32 sid,
>  				u32 act_ctrl_reg_val, u32 status)
>  {
> +	struct regmap *regmap;
>  	u32 act_ctrl_reg;
>  	u32 act_clear_reg;
>  	u32 status_reg;
> @@ -849,7 +850,8 @@ static int llcc_update_act_ctrl(u32 sid,
>  		return ret;
>  
>  	if (drv_data->version >= LLCC_VERSION_4_1_0_0) {

This makes me wonder, why is the broadcast_AND region being used only
since LLCC 4.1, if it is existed since SM8450 (and SM8450 predates 4.1).

> -		ret = regmap_read_poll_timeout(drv_data->bcast_regmap, status_reg,
> +		regmap = drv_data->bcast_and_regmap ?: drv_data->bcast_regmap;
> +		ret = regmap_read_poll_timeout(regmap, status_reg,
>  				      slice_status, (slice_status & ACT_COMPLETE),
>  				      0, LLCC_STATUS_READ_DELAY);
>  		if (ret)
> @@ -1284,6 +1286,18 @@ static int qcom_llcc_probe(struct platform_device *pdev)
>  
>  	drv_data->version = version;
>  
> +	/* Applicable only when drv_data->version >= 4.1 */
> +	if (drv_data->version >= LLCC_VERSION_4_1_0_0) {
> +		drv_data->bcast_and_regmap = qcom_llcc_init_mmio(pdev, i + 1, "llcc_broadcast_and_base");
> +		if (IS_ERR(drv_data->bcast_and_regmap)) {
> +			ret = PTR_ERR(drv_data->bcast_and_regmap);
> +			if (ret == -EINVAL)
> +				drv_data->bcast_and_regmap = NULL;
> +			else
> +				goto err;
> +		}
> +	}
> +
>  	llcc_cfg = cfg->sct_data;
>  	sz = cfg->size;
>  
> diff --git a/include/linux/soc/qcom/llcc-qcom.h b/include/linux/soc/qcom/llcc-qcom.h
> index 1a886666bbb6..9e9f528b1370 100644
> --- a/include/linux/soc/qcom/llcc-qcom.h
> +++ b/include/linux/soc/qcom/llcc-qcom.h
> @@ -115,7 +115,8 @@ struct llcc_edac_reg_offset {
>  /**
>   * struct llcc_drv_data - Data associated with the llcc driver
>   * @regmaps: regmaps associated with the llcc device
> - * @bcast_regmap: regmap associated with llcc broadcast offset
> + * @bcast_regmap: regmap associated with llcc broadcast OR offset
> + * @bcast_and_regmap: regmap associated with llcc broadcast AND offset
>   * @cfg: pointer to the data structure for slice configuration
>   * @edac_reg_offset: Offset of the LLCC EDAC registers
>   * @lock: mutex associated with each slice
> @@ -129,6 +130,7 @@ struct llcc_edac_reg_offset {
>  struct llcc_drv_data {
>  	struct regmap **regmaps;
>  	struct regmap *bcast_regmap;
> +	struct regmap *bcast_and_regmap;
>  	const struct llcc_slice_config *cfg;
>  	const struct llcc_edac_reg_offset *edac_reg_offset;
>  	struct mutex lock;
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

