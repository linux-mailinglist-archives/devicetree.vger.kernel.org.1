Return-Path: <devicetree+bounces-228076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DEABE755F
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 11:02:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E2AF19A40C4
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 09:02:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EDDC2D46DA;
	Fri, 17 Oct 2025 09:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QOFXl5KL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA6E72C3274
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 09:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760691711; cv=none; b=Q5XcZvXTSUkEngAvKt18KPsQasq7GAAOKzOFYLlYHlZy5XoSl+EDJYwAaWckpx1TtACHaFi2r56bJmZ2Zot+bhWEIBwtmh1tU8g1d4zR/dsyomCx/5QW/KCFGTiq73Ehec1D9FASEuy/Ly/HJzokqwf1GwOCAvvAFmJZAfDdiCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760691711; c=relaxed/simple;
	bh=djPFq2gC3Dt2nGEV5JtwRUan8R7/PSxIqukec0osdPY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GEaCHCsSvA6UkvauOM46IkfGpbXr/Tc6Ou1bqQhmkN7cp+WRza18IzIZmIFwftWGt9E4SI9Z4JpJh7O4NE6stNeRrZ+BU61o+nTB3yAGam5ONuvfA4eIYbk6nT+R+qd8FKFPhp48vw02lqaGgC6XUZp4GVlHtxNclclOYlW0imU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QOFXl5KL; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-421851bca51so1302615f8f.1
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 02:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760691705; x=1761296505; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iKxKNbwNQkJ4t2h3+ChbVVYFS7tJ5MtBs9u+B3K37UU=;
        b=QOFXl5KL4U+k0Fpc7GMr389k2YQ7xd/gprGyE2KZUhX+xOz+XpBbOylSIqnWKl0gJ0
         0N2ls/gqREThOYfA3RS7V1kqifyYmitgwRwpGE2dBeRCpaK9Y+hjkt2TOutw3b2YGt4F
         ACJpWmCcNzEJJDvp8uG6Gd1qsz9hWpmEtZaX9xvCbmhTQV4wOGsHJmk0Ih9HYi1xYqRT
         +y00ahTZ3UZa4+I/+8Lt+C/q9nzEEFKI4A04m/j+RHZVwuBP689tvbcVSgBO9Fo1GELm
         uXCbmBCUL8yquvYwoD2oC14Mf/krLP7Y6P288QFuMnBk10WclJWO/eMfxzn5zro496js
         0/dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760691705; x=1761296505;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iKxKNbwNQkJ4t2h3+ChbVVYFS7tJ5MtBs9u+B3K37UU=;
        b=j8L2/I7K78FM8B5IhBP7cLcm4vJt+yoDrfltxZ/zDj1XGDULtBIT+zZ6dAE/jFO6Nc
         mG7mtwsolxjc7yu+gqzkPa7qAExdg1HUiMJW7n3udnkw1OaLQmLlxkDD6WtVhmcLHMIY
         J5MZ52xkrcxCYzIBLlutqSfb7bOtQOMIxbWXSr/XgPrtXmPeTw4wwrjKGNoalLlSTTi1
         OE2VK6gJ8tcQCPRRSjj3BmO0Q7BWYKzTrMYNyayJ1vYLC6PWyc7H5ImP7Hf17Y75VNJ7
         wlTCOT9ZBwhJ8Dw7pEF5KGTLxz4UQdWAJu/kf0y9xZV02c+y2+EAWb35LqJ7sQWLYVPZ
         WW5A==
X-Forwarded-Encrypted: i=1; AJvYcCUuPCB4vHluq+JzyiyvyKcg9EzV7C4I5dPDQXY2DAWOnIS4zkY2L7JFpRwTAnG/Jq61T4FeNlJAIyLL@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5RsHoVFuB+sYMIL1tYq2t+KfNuGq5kAPEMIiv3bHX+i/7vubm
	V1Z83oaOXM4HsnW9NCpFmbg9bEJHrsnC44Kqm7KRhP3tt3ZaSODucU5mKA2Btiak9SU=
X-Gm-Gg: ASbGncu7/IBzKyP7w9KgrilgrMpK+r7aCIT092vDRHuwNxn9O6rFKXy+iLMo/S24bZd
	hiaeNRYoSTIDYC1tgqAAMiPdGniZy7R/yCPgzRx+745BwPAVX7Eu1LUPyUkXkYMycPM0G0rSgEa
	ASRPh2rNV0iBa7YzesrrxnhgvgeopcYfff+oqwdqCMCt5guW1tDkRhSHZStPbedhNR1XrN+V7+U
	KUr2lallQoNlw8HEzotWUJgqfIk6jPMC/cmHf4LAtlp+z59GFgJmmQJpL/2BegwnlEMLHp4LEqn
	ZkWOzKUQSgZkRzSwTBQBFavDO0bTWWeMfJhazvDDp3Kql5/l5X81bX/FkEw685yLxmhb7UbTevU
	MBEXqz3Qq3A0IuRaIQYf3q3WZK5rC/2zAmrbO6pB84xl4x8ClyIrX7q4IGkwiI+aXrj/7mOqzpa
	5fcSyH5GlNjtjlxufMWZcerOlQOupEm/nkzf4Shuv2+/Of/dR6JfpkqcU=
X-Google-Smtp-Source: AGHT+IHfJonJhWahWTiwtz0KvkOGbv6zgJWv7y5VwWJlO4+UNFuOt7HIqplliOl6LmCWRzK2SmhOrA==
X-Received: by 2002:a05:6000:2087:b0:427:921:8972 with SMTP id ffacd0b85a97d-42709218a43mr446976f8f.40.1760691704830;
        Fri, 17 Oct 2025 02:01:44 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:1b84:3139:75f4:2ca6? ([2a05:6e02:1041:c10:1b84:3139:75f4:2ca6])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-4270516f930sm4722303f8f.31.2025.10.17.02.01.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Oct 2025 02:01:44 -0700 (PDT)
Message-ID: <1bfa9a86-0a80-416a-b653-8d14f5ebd891@linaro.org>
Date: Fri, 17 Oct 2025 11:01:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] iio: adc: Add the NXP SAR ADC support for the
 s32g2/3 platforms
To: Jonathan Cameron <jic23@kernel.org>
Cc: dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 linux-iio@vger.kernel.org, s32@nxp.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, chester62515@gmail.com, mbrugger@suse.com,
 ghennadi.procopciuc@oss.nxp.com
References: <20250919135618.3065608-1-daniel.lezcano@linaro.org>
 <20250919135618.3065608-3-daniel.lezcano@linaro.org>
 <20250920102742.4cadb734@jic23-huawei>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20250920102742.4cadb734@jic23-huawei>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 9/20/25 11:27, Jonathan Cameron wrote:

[ ... ]

>> +static void nxp_sar_adc_remove(struct platform_device *pdev)
>> +{
>> +	struct iio_dev *indio_dev = platform_get_drvdata(pdev);
>> +	struct nxp_sar_adc *info = iio_priv(indio_dev);
>> +
>> +	nxp_sar_adc_stop_conversion(info);
> 
> I assume this is safe even if no start has happened and is here so
> that the driver remove can run whilst buffered capture is still going on?
> That should be done by the core as part of unwinding the register().
> So I'd not expect a need for it here. This may be a side effect of the
> ordering issue mixing devm and not causes.  The same is true of some
> of these other calls - I haven't checked them all.
> 
>> +	nxp_sar_adc_channels_disable(info, NXP_SAR_ADC_CH_MASK);
>> +	nxp_sar_adc_dma_channels_disable(info, NXP_SAR_ADC_CH_MASK);
>> +	nxp_sar_adc_dma_cfg(info, false);
>> +	nxp_sar_adc_disable(info);
>> +	dmaengine_terminate_sync(info->dma_chan);
> 
> Mixing devm and non devm is a never a good idea. Here one possible issue is that
> the userspace interfaces are only torn down when devm unwind gets to unwind
> devm_iio_device_register();  That happens well after this code has ripped down the
> dma engine that a channel read will try to use.  It might be safe to do that
> but it certainly makes the driver harder to reason about.
> 
> A simple 'rule' is once you first call a non devm function in probe that needs unwinding
> in remove, you cannot call any more devm functions.   Whilst there are lots of cases
> that are safe, this approach ensures none of the cases that aren't sneak in and makes
> review straight forward.
> 
> devm_add_action_or_reset() can often be used to keep the chain of devm calls running,
> sometimes covering everything such that we don't need a remove callback.
> 
>> +}

Actually I think these calls are not relevant. If we remove the 
nxp_sar_adc_remove() function, the iio core code will unregister the device.

All operations are doing on/off in the different callbacks (raw_read, 
postenable, predisable). When the device is unregistered it is not 
possible to have an ongoing conversion, a channel enabled or the adc 
enabled, as well as the DMA. IINW, we can just remove this block of code.

[ ... ]



-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

