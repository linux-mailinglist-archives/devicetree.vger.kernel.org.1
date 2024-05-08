Return-Path: <devicetree+bounces-65836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 95ADA8C0348
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 19:37:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4BF851F22C24
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 17:37:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE5CE129A69;
	Wed,  8 May 2024 17:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u/7axkXU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE1A38F9A
	for <devicetree@vger.kernel.org>; Wed,  8 May 2024 17:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715189872; cv=none; b=nUpXjcFczaJFOGdBT+9/PvbMK1BW43Khu4VFhCpnd8zhPFEI5dbLhzwhes0kBko9vIf3a5lLy1Tf/jH+JvshQ6QaJcakuQUACbu8oO4Sf6S8kFBH9QKQuZlj3BEhWm0skNf8hwTcQEEt17n1ELL+wy9p8nB6j4fBqqEx7e25iFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715189872; c=relaxed/simple;
	bh=TXOzRo2lvLq2dLy4X4KCCbjFUla8ZPfNznBSr32fAwA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NG4KZmgDHuEs2NFV3plLhQU3oXsvqA7NXTpUw3OITo0JwnsX4ltz2Pa3eY8FOqvd7KLcvvBWMueXqh6F6c8lENPOFAcaHFrG3lvlV2riVKj/Tsk/Nin73QQ/69NNw5ZM7YEFXr1MrLkFLNjtPsCBWAZQlVp9CbCXQjBGy4v+UHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u/7axkXU; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-41b21ed19f5so32550055e9.2
        for <devicetree@vger.kernel.org>; Wed, 08 May 2024 10:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715189869; x=1715794669; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oqqIYAEt8QY8iBn2hcjwrp22I2V9u33qj84qnnfOYxo=;
        b=u/7axkXUTizRqcKto1EfE7rXascufU7BIkP9eUxi8DXPKFVBPXd6TTYgHvoORLlk1L
         ITXHwn/k+W4eyDQhig98EayGlEEV+8UkKFVmGMgqnnpL5IKQPjmNBOCL9J24RYXDSodb
         DeH22B50aJfGm8ErHbZ5Vk1MPl+aJ+i9yA30eBj6hh8NM9Y9c/Gny7fk2vEza2OF0qI0
         QKXJbWrzgoUIH/DNijYsldsHh4+5DehbNnnOBQ3rXJnl/EWKzFEMHSNGuoz6m0fmbYXn
         Yo3/8uO0pBzduymW3Vb7vKpCWa84IxOMGFcfGeUgkjeZStP9LX8uRMGI6dmFHV53kQzf
         R1mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715189869; x=1715794669;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oqqIYAEt8QY8iBn2hcjwrp22I2V9u33qj84qnnfOYxo=;
        b=k5KbtypTQjj1zdo62+6TQCQ7rXBF+Rw1fEWdU1h0Fo9+KSPHY8PFcg/gSyd3jGIDiQ
         ppg4BJBm4MvMd70SYd4qcgFADVmbH74i/ytW1o1/QK20c1ZN9IvCpmeYzYnV4qKXKbyI
         qXxcqZUJ2rFUp4mMymtYRslOvxZdFUk8RL8XOQozjPcDzrVUhhSKww0YParoMLyankGr
         1PjNVq/vszNJOJRKrofpXJInf4NgP37K5iYsCVkCJjFxYTcTASR5Qk6VeCVCDVCbPfQI
         Kn06Xvg3I4xl5x9Oh/zMb3ciRIlj1VdbXAO9QmWRiq2XZb6x4MXymY+exDI7XsJmIaU8
         s+fQ==
X-Forwarded-Encrypted: i=1; AJvYcCXz8bIKnBIgZGHlSvmXJsis7Y4QwTUWkY7H0a+47rva3DD+MLugjEE7LxvDR4XNp0dlq+zkoC1fMRrOCzzpHdAEbEHK0Fx2xRPtgQ==
X-Gm-Message-State: AOJu0YzOB27iED9Gs3cGuG9TNiBwsyTOGKWGYsJbYNDUtW70jDYmFD1Q
	2N66pwicirfT3Aff7hzUbZ11/0zmI1ZPH4R1V8dMbxSX8HSAMm797ZvdstG1nJs=
X-Google-Smtp-Source: AGHT+IG2HyWFwSUGdiJup/vedK3nsgsEgSjeU6gUkpcysNJXAQwDlCboLqHz1Lcaym8y5YeAFgXvTw==
X-Received: by 2002:a05:600c:154d:b0:419:f9ae:e50 with SMTP id 5b1f17b1804b1-41f71ad0a1bmr28793645e9.37.1715189869528;
        Wed, 08 May 2024 10:37:49 -0700 (PDT)
Received: from [192.168.0.3] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id m8-20020a05600c4f4800b0041bcb898984sm3005872wmq.31.2024.05.08.10.37.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 May 2024 10:37:49 -0700 (PDT)
Message-ID: <52a165bb-81d8-4fa5-8ead-7aced3ba9a45@linaro.org>
Date: Wed, 8 May 2024 18:37:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/13] mfd: pm8008: mark regmap structures as const
To: Johan Hovold <johan+linaro@kernel.org>, Lee Jones <lee@kernel.org>,
 Mark Brown <broonie@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Das Srinagesh <quic_gurus@quicinc.com>,
 Satya Priya <quic_c_skakit@quicinc.com>, Stephen Boyd <swboyd@chromium.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
References: <20240506150830.23709-1-johan+linaro@kernel.org>
 <20240506150830.23709-5-johan+linaro@kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240506150830.23709-5-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/05/2024 16:08, Johan Hovold wrote:
> The regmap irq chip structures can be const so mark them as such.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/mfd/qcom-pm8008.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mfd/qcom-pm8008.c b/drivers/mfd/qcom-pm8008.c
> index d0f190c2ea2b..42dd4bf039c9 100644
> --- a/drivers/mfd/qcom-pm8008.c
> +++ b/drivers/mfd/qcom-pm8008.c
> @@ -51,7 +51,7 @@ enum {
>   	POLARITY_LO_INDEX,
>   };
>   
> -static unsigned int pm8008_config_regs[] = {
> +static const unsigned int pm8008_config_regs[] = {
>   	INT_SET_TYPE_OFFSET,
>   	INT_POL_HIGH_OFFSET,
>   	INT_POL_LOW_OFFSET,
> @@ -131,7 +131,7 @@ static int pm8008_set_type_config(unsigned int **buf, unsigned int type,
>   	return 0;
>   }
>   
> -static struct regmap_irq_chip pm8008_irq_chip = {
> +static const struct regmap_irq_chip pm8008_irq_chip = {
>   	.name			= "pm8008_irq",
>   	.main_status		= I2C_INTR_STATUS_BASE,
>   	.num_main_regs		= 1,

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

