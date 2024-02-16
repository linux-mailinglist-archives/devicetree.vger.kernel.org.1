Return-Path: <devicetree+bounces-42601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FBB5857DC9
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 14:37:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 46C01281919
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 13:37:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8703212A164;
	Fri, 16 Feb 2024 13:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oK0GGcr+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70A6D78694
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 13:37:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708090647; cv=none; b=IaZReCkNx7jlHhZm6rgLAeDp27ND+YTgulCmR6E3jXtxWqzonjYKgDZcGxg0XJ7lUHa06fsRL2e7WfCUFL0Tw39PXA9wh4kA/mHPYHsiN2OXP8/krQqxqKBI2L61U4FwAsC6xm+Mw+jIZhf9diYVCMO5EqOT5jZM6wAeAZs8WOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708090647; c=relaxed/simple;
	bh=tBzEnpo6V6IoCla74hvhX5lK3lSzxG36T+6/aFqAzK0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=StRIwkzZ8o73safoTUK/RuT/Uta9CHo1wA2AUhXm2JSRkGd59rxiruKIoRmo1DQzOfKwEhsRfKeZorNToxo5nSTu/ycn3c8wWzYA8jmfm+ZQ83KA6c6o8wzTvTDW31jNKYChR8EyCIPKLRmKZm4yBPac2brrHxG/SA7UkUohGpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oK0GGcr+; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5640fef9fa6so35915a12.0
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 05:37:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708090643; x=1708695443; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=e7mWMJkXIbMvIROqSSXDtNCbW+ZmdhTlFHhBB0TaXxE=;
        b=oK0GGcr+00a4YBQ4s1ZbfeMtjS67Pqr9ckiM1AGc7SxRMGyAiuueFPGuJdjOUvT+9g
         o4IH36XRpN8s8UG0G1Mf8FLiaO03w2G1hYZi3wwGVd+oc9wnnrJBD08PncWFsz+HnsHH
         i4Z7S/7zvCv/hwxMh/Mj7mL/0KDzFM/thM++VHd9Ow4oWd4G+LYLHpCOAqnZl5Ac4VXx
         MhRQgPrQ/jkJB9Aj/Bjjk3cheoDcSMxZl3NonBD1fdqQfSTMJZ4Pxi3Ck1ayY9jpOxYr
         TRC1niilKRi3dWpG7ig/GSjYE4QaqGwhmucRt+0T95i2h0L6vpmUleIOa18+AAHhf0Bf
         WVfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708090643; x=1708695443;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e7mWMJkXIbMvIROqSSXDtNCbW+ZmdhTlFHhBB0TaXxE=;
        b=lkT8Gi6++KXwAwkvULFjB9oSaBOhZLxEIAGLT+uuxr6Rfo4Fbm1n4WXJ7YqVHm0/rS
         T4UZj+YEVhb2jKU8RaWwQ06fJ7bjVc4B9PhW+38kQ4IQULQo2qOrJGdZPlcVxAtaXkrA
         8IQIADYjmW6A18Xz1Juq779zYd+7Q1yEozqOCMNkqo7n14+TaPrLaaFJeUqyQynzJhMs
         /WeB6dlN9dnbPnymwC114YITlkzJS/F7RhSHHAO+cghHEl4IJ4/Ab67xU0S/bWLceKAO
         QywgiFEkmskmoHH7HRFtfuY7tJ585RljNOWWJPMrjxW+OrglgjeQuHB2MLly11QLMBtn
         b2Og==
X-Forwarded-Encrypted: i=1; AJvYcCX+fVrs2sVeq7iv1vrFA7OqGer79ST0dVl0/rwzKYea8dGd0cC0fEpoOgPv0+QvcVn7fxa/xSLIENYXhIfUfQgimpyE4hTs6iAaGg==
X-Gm-Message-State: AOJu0Yy0BJXdr8ni55obn1iXfE4T1hWbPC2xL+bOdecB1qbF0K1+yYJp
	07UiYTLXpWpAHAWp42wobS90lqqto9d7vIU8QDu4mZFbXQy/Q/cLrsVDqvUmGzM=
X-Google-Smtp-Source: AGHT+IFwsnhqo5fuZJ8FqRpHtnHU94q/U/1l85xYwdqcS08wSTd5C15gHUgVfO6Fv6+Xgy0dq7WHEQ==
X-Received: by 2002:a05:6402:50c:b0:563:c54e:fb with SMTP id m12-20020a056402050c00b00563c54e00fbmr160941edv.15.1708090642646;
        Fri, 16 Feb 2024 05:37:22 -0800 (PST)
Received: from [192.168.192.135] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id y2-20020a50eb02000000b00561a443a393sm1495698edp.92.2024.02.16.05.37.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Feb 2024 05:37:21 -0800 (PST)
Message-ID: <b11ec88e-5408-4bcc-9d93-942ad81eccde@linaro.org>
Date: Fri, 16 Feb 2024 14:37:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] phy: qcom: edp: Add set_mode op for configuring
 eDP/DP submode
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Johan Hovold <johan@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20240216-x1e80100-phy-edp-compatible-refactor-v4-0-c07fd1a52186@linaro.org>
 <20240216-x1e80100-phy-edp-compatible-refactor-v4-2-c07fd1a52186@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240216-x1e80100-phy-edp-compatible-refactor-v4-2-c07fd1a52186@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 16.02.2024 14:02, Abel Vesa wrote:
> Future platforms should not use different compatibles to differentiate
> between eDP and DP mode. Instead, they should use a single compatible as
> the IP block is the same. It will be the job of the controller to set the
> submode of the PHY accordingly.
> 
> The existing platforms will remain with separate compatibles for each
> mode.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

[...]

>  
> +static int qcom_edp_phy_set_mode(struct phy *phy, enum phy_mode mode, int submode)
> +{
> +	struct qcom_edp *edp = phy_get_drvdata(phy);
> +
> +	if (mode != PHY_MODE_DP)
> +		return -EINVAL;
> +
> +	edp->is_edp = submode == PHY_SUBMODE_EDP ? true : false;

it's bool-converted even without the ternary operator

Konrad

