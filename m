Return-Path: <devicetree+bounces-155445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECD4A56BAD
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 16:18:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3604D7ABA86
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 15:15:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E903221D87;
	Fri,  7 Mar 2025 15:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QBA6VD2A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE04221717
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 15:12:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741360342; cv=none; b=mTxFnA4Mkbbw4H6bTgdCfP93j6CUyqEi1JqBQads/+S2aT5UQ2A+PJtfJhI+nIRXyGWPbru2nOSFxMc+6v7eFROeuSSirbn1wX1TyHTEdihXwro48rsusG9BypgHPQofVIKnGCfZPcLS+T8xQmLobvglVkFzcO5wIgb0oKTkurc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741360342; c=relaxed/simple;
	bh=X8bFjvWIEL6nNohkMOL5h5TzljFrKQZopW+uAVwDnpk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m/HOcSFOVS0IA5YTdZNiQpqp4z2NL6umYlwTY5yJ3BoAmOpk5Sz4/n9ONjYr5x6qWWU4Ghsl6g2dWRyyTaFvcrx2w+yqKwe6KJ2KNPaPn9m9o8NyTtym1cLwJ0rX5zexaFBLcIqkPUs7Era06wb0GNzIBQGJjDRHkA45IUcniTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QBA6VD2A; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3912fdddf8fso913767f8f.1
        for <devicetree@vger.kernel.org>; Fri, 07 Mar 2025 07:12:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741360338; x=1741965138; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3KPjXWWPyK0oX1t83TQ9M25n1uZNpHn3HsSYBqjRW2A=;
        b=QBA6VD2AunMwKkSaHhn3XdS+lZVP9RJtNwJLVA9jIyJm8pk2KrkZ0YPZNStB1TfI05
         ARP4m9N0uxq7hXtfkj8yHYTJRvGuqpWEAKhtrqxocT/KzV5L0zSIn3ziWPr0ef4INjCt
         BcEtMWvK8BoPFqrled1IOzS4G5WfcAnYIQ4wnTfy+oUrukhxt7FUhHBXxByiIWKpW3HP
         ObES84JtOipmEkbsN/MUCBD4mp0Q7K2Xo08XZrn7By/VPmzrW6+KNRMEn8euM5/xLdJu
         WlevOkY/lNmp5v3QqjnQrFzrTiWAhczM3TwRdaR0C1JY89mDpEVhfns1R9VsxGoRGOTq
         0taw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741360338; x=1741965138;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3KPjXWWPyK0oX1t83TQ9M25n1uZNpHn3HsSYBqjRW2A=;
        b=GRIQn8IhwPIyXMyQswYBem5PqkNVqnNJG+jt6nu8o3IEHy0Nbswn1+gJo2VqMe2inc
         43ZxRQyrsW0ozYuiLJu8j2f43Ui1MpyI0cgnrXD/ObsZfyK3E8YEeQptkhbBTftSrI7o
         6pv3iqJGxDH7rFW4GR53XrOI6zS2Js+3SF8VnmJFV9Vhal/X/7tOOq1ifZh5VhA8orMm
         wjSCXAIkEnuE811F7FZ0P/syx0Nzk3mq1AAomeJJamcVbdMaaT+NxeXrSUanTckcP1d4
         b57ic2gwaUz+E+LoWRM0iSVYnF+lO4AUuotnYbRvtDIwPHEjdoez5202ImlDkmpC9PiS
         Cfng==
X-Forwarded-Encrypted: i=1; AJvYcCV7gTUW39ncjnqedWnc/eqk9rGLOQeznSbvpc6yJxWvOyngncRvIGXFCbfbq+h6HgR3baX+R8ymParY@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/RedvyB4FMeHtwA7ON3rm+QxMdB3SXFQcg53TQgekTixA1OMG
	szYj+KaEfyjuuAYJgqKZO8Z8X54HoYdmL0haIUPgsh9vas/BWY0WegX+1SFi4Gw=
X-Gm-Gg: ASbGncsFB9TUQahArOp7ZuMrDWL7xYoy34Ect7JqJort0SJc6Gjb9bOKCa3d0+siOJ7
	qgXqdBTOCIQurR/o6INNPEt7eCauh4eKdA/76cJ1xR95/FDpHXBJ8BbxMsrHZGYL8UT/R6u+HyA
	9rn74Opjhu5pgnar3kfQ3+Ett/a/eRMiLDsjTjOe+ZilHgia5EwxSenAGa2CpzpFYXtMlV87S90
	Y/XOgR+PBgKwf7/zH+4WdCWuqtYQdPuDDfmYGAMzqZjsBeBHG761HcZwkBx9XYrv7/VOc77bylK
	o7P5k3wSvtD1W/3THzmuRptGL0fUmgCpGdNRqdp+RxgbfG0nztVcu3nfjhoJ7suSElb7rENy2Ic
	tBlMU4mu7
X-Google-Smtp-Source: AGHT+IF/RAT3IwHfPoJTNREYxSSMrMjlEJSFksJXdPdttaAQyHvw/bJK7g/nq3YVVLUv/LTreYAVjw==
X-Received: by 2002:a5d:59ae:0:b0:391:22e2:ccd2 with SMTP id ffacd0b85a97d-391296c2485mr5482638f8f.3.1741360338305;
        Fri, 07 Mar 2025 07:12:18 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3912c104acesm5662531f8f.98.2025.03.07.07.12.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Mar 2025 07:12:17 -0800 (PST)
Message-ID: <83283a94-6833-4d7d-8d89-6ba42b43b96c@linaro.org>
Date: Fri, 7 Mar 2025 16:12:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/8] clocksource: stm32-lptimer: add support for
 stm32mp25
To: Fabrice Gasnier <fabrice.gasnier@foss.st.com>, lee@kernel.org,
 ukleinek@kernel.org, alexandre.torgue@foss.st.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jic23@kernel.org, tglx@linutronix.de
Cc: catalin.marinas@arm.com, will@kernel.org, devicetree@vger.kernel.org,
 wbg@kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pwm@vger.kernel.org,
 olivier.moysan@foss.st.com
References: <20250305094935.595667-1-fabrice.gasnier@foss.st.com>
 <20250305094935.595667-5-fabrice.gasnier@foss.st.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20250305094935.595667-5-fabrice.gasnier@foss.st.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 05/03/2025 10:49, Fabrice Gasnier wrote:
> On stm32mp25, DIER (former IER) must only be modified when the lptimer
> is enabled. On earlier SoCs, it must be only be modified when it is
> disabled. Read the LPTIM_VERR register to properly manage the enable
> state, before accessing IER.
> 
> Signed-off-by: Patrick Delaunay <patrick.delaunay@foss.st.com>
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
> ---
> Changes in V2:
> - rely on fallback compatible as no specific .data is associated to the
>    driver. Use version data from MFD core.
> - Added interrupt enable register access update in (missed in V1)
> ---
>   drivers/clocksource/timer-stm32-lp.c | 26 ++++++++++++++++++++++----
>   1 file changed, 22 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/clocksource/timer-stm32-lp.c b/drivers/clocksource/timer-stm32-lp.c
> index a4c95161cb22..96d975adf7a4 100644
> --- a/drivers/clocksource/timer-stm32-lp.c
> +++ b/drivers/clocksource/timer-stm32-lp.c
> @@ -25,6 +25,7 @@ struct stm32_lp_private {
>   	struct clock_event_device clkevt;
>   	unsigned long period;
>   	struct device *dev;
> +	bool ier_wr_enabled;	/* Enables LPTIMER before writing into IER register */
>   };
>   
>   static struct stm32_lp_private*
> @@ -37,8 +38,15 @@ static int stm32_clkevent_lp_shutdown(struct clock_event_device *clkevt)
>   {
>   	struct stm32_lp_private *priv = to_priv(clkevt);
>   
> -	regmap_write(priv->reg, STM32_LPTIM_CR, 0);
> +	/* Disable LPTIMER either before or after writing IER register (else, keep it enabled) */
> +	if (!priv->ier_wr_enabled)
> +		regmap_write(priv->reg, STM32_LPTIM_CR, 0);
> +
>   	regmap_write(priv->reg, STM32_LPTIM_IER, 0);
> +

Why not encapsulate the function ?

	regmap_write_ier(struct stm32_lp_private *priv, int value)
	{

		/* A comment ... */
		if (!priv->ier_wr_enabled)
			regmap_write(priv->reg, STM32_LPTIM_CR, 0);

		regmap_write(priv->reg, STM32_LPTIM_IER, value);

		if (!priv->ier_wr_enabled)
			regmap_write(priv->reg, STM32_LPTIM_CR, STM32_LPTIM_ENABLE);
	}


> +	if (priv->ier_wr_enabled)
> +		regmap_write(priv->reg, STM32_LPTIM_CR, 0);
> +

>   	/* clear pending flags */
>   	regmap_write(priv->reg, STM32_LPTIM_ICR, STM32_LPTIM_ARRMCF);
>   
> @@ -51,12 +59,21 @@ static int stm32_clkevent_lp_set_timer(unsigned long evt,
>   {
>   	struct stm32_lp_private *priv = to_priv(clkevt);
>   
> -	/* disable LPTIMER to be able to write into IER register*/
> -	regmap_write(priv->reg, STM32_LPTIM_CR, 0);
> +	if (!priv->ier_wr_enabled) {
> +		/* Disable LPTIMER to be able to write into IER register */
> +		regmap_write(priv->reg, STM32_LPTIM_CR, 0);
> +	} else {
> +		/* Enable LPTIMER to be able to write into IER register */
> +		regmap_write(priv->reg, STM32_LPTIM_CR, STM32_LPTIM_ENABLE);
> +	}
> +
>   	/* enable ARR interrupt */
>   	regmap_write(priv->reg, STM32_LPTIM_IER, STM32_LPTIM_ARRMIE);
> +
>   	/* enable LPTIMER to be able to write into ARR register */
> -	regmap_write(priv->reg, STM32_LPTIM_CR, STM32_LPTIM_ENABLE);
> +	if (!priv->ier_wr_enabled)
> +		regmap_write(priv->reg, STM32_LPTIM_CR, STM32_LPTIM_ENABLE);
> +
>   	/* set next event counter */
>   	regmap_write(priv->reg, STM32_LPTIM_ARR, evt);
>   
> @@ -151,6 +168,7 @@ static int stm32_clkevent_lp_probe(struct platform_device *pdev)
>   		return -ENOMEM;
>   
>   	priv->reg = ddata->regmap;
> +	priv->ier_wr_enabled = ddata->version == STM32_LPTIM_VERR_23;
>   	ret = clk_prepare_enable(ddata->clk);
>   	if (ret)
>   		return -EINVAL;


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

