Return-Path: <devicetree+bounces-214791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D931AB4A697
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 11:06:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A7563A2E80
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 09:05:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E907279DDB;
	Tue,  9 Sep 2025 09:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JCVUCu/f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE8B27F183
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 09:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757408671; cv=none; b=TxFtBn0kONjG6/sBOTK8Ny9M7yMBVZdl8qtHlq1JmzSNTNJmmOrKfkli+gp+0nbEUW1IDeuvuUwsZstwKCNObafI0/Z30j7nMHkQp8riiiHtyyoSGvSgCOSFEyPlZYhpGorUUC+TtsItTCjtTuHrD5Wsdfd3tRXwVsXpzuwW3YQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757408671; c=relaxed/simple;
	bh=npAdt2MXok2VEU//pTwTqp9KnuJyLtKd07PIs+LRgEU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eu+kcYXfNYzY0mWhxWYubvs232sU/85X4L7Y618I/Az0WRXb6WQhQghtU3cjzfLVdzBkaM45u0fIY6pjAxqemhvVKndPPziAIavxeNMBHj9zMRC1q+Bf3HgNIlgbDGihsKgpYRYMwJnCRn/QlkW55EkRaKZepetDRk7120/YZCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JCVUCu/f; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3dea538b826so4562892f8f.2
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 02:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757408667; x=1758013467; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hDNp+09RRMXcmw2av/GSmihaAI/fIen6tu2gvQNcAWI=;
        b=JCVUCu/fp6yR1IrNYsHraxRSYx9kTcKv9QiB25AKcJham0grvNt1q7QMn6cjAjNCL3
         XwtH4dUd04XzItNNWYeU+SfSFWn8U2WTmyjrHj8imOiaIO8rYpS4NFN6cLIxtOj37PKv
         UBDKfnZ9KI2NmMqT+8OnGvxSll/pMIQDQqZ7/WV2fDoUzcYNntuxyUDVfrOVEr8PuB9G
         nSRUwsvzosB6RsPMPNe5JGljEXJUJsCeOuf3ReXB5MztxQ1AtQ9YJRdGH1yj98EJlt61
         TYyRAe7JRXTvRTKU86UNA1Eas1wxf0P4kNKKTOTvB5c+9XuY+yiGaOC0jIusngmAh05g
         9jAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757408667; x=1758013467;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hDNp+09RRMXcmw2av/GSmihaAI/fIen6tu2gvQNcAWI=;
        b=LPy1TzuzjBtl1bJOsJSvzJ5sP/RvYjOGAKGjubiZp7Ps5sNg3WUhJCL8LtQjQY0FEu
         fj2IKoarrUdY5rMusO8eYOerOYdIFnmuKxxNco8C1EY2+xT7+oQY2LC41uAKK5iyJmto
         plP5jKNiZeXUSrKw8q8I59xgxX0emPByTEcVB6FSud0W+VMPTpmen19GpHujuwz8UUee
         2dT9t0XQrEmWE/fqmF11z3zCFcNPxIq+BInBaNvz2x8wJY7nP630VGxN2oaaCeSW9Sg+
         jMONvDTte6rwNLIXNOL2jLsZwd8lOuX4kLZb2Kxh2NJt8u9AD+uTfL+jA7qqKztqAkzs
         X4rg==
X-Forwarded-Encrypted: i=1; AJvYcCXvx3kwzRp8SU+4qwSX/Ec+gxdggq3mAB/ca7Aw7KatlVxWrTxHCNNhoUPBvuDAj+mbzT+9H8XZXANh@vger.kernel.org
X-Gm-Message-State: AOJu0YxaLjhHL+/ye9ZUtMaNkI7XBBwrIO77NfN/lWwa+o7uMgUxmVQd
	bTW6FRe0AxX+uIQ4rfz5my9DyAdbU2Tm22r4gpLiXTIqcKGPKvHepQEwvU0T0l3IJc8=
X-Gm-Gg: ASbGncvBma7EKAdckogsO9jsKBOUtcMETIqLAtnRuvAGQw1gEmrdm/WwSZosj8F1R0w
	2xGx596tfNVcDwEqpnynUZj8qAQXwXc6XkRdQwnVml8CrTNkmxmaK6yPxCsAftxhd2tyqui/Kqv
	+VF90nTGQN8+DEmwCaGJv07r65glfnab2gWmSnaAEN9mn7xyKttOZ5OfYPpiNOqLpzCOtAufjjf
	doojQzLNfS7k14tqN+F97IuMOOX7OB//GWzNsbTKInDQw7+b7vy9Bc4+7H8zsYD/fvM0ocufT4L
	9nFnoQineLJVw3OIHY1aqlJ4ewLP/C/LPjBrbgTsKMyLsNnZQK8LvJEpPFTHq47HW3DNgllm05t
	8ElDnb9jFyT6fKCKsaO4ufxd5bTV6DoisEmG7x362dxES7eUCx16VbrH5WoTomfJ5o0gKSYQv1r
	hSxLDgVhMLM6wh
X-Google-Smtp-Source: AGHT+IGpok2rbe+PM/m3BufdeCo188/KOxQEw562uyqXa+yKjY0Jrvcfkxzp0puKcXaQ7WzgbjFXkQ==
X-Received: by 2002:a05:6000:420f:b0:3d1:5869:d4c5 with SMTP id ffacd0b85a97d-3e641e3b134mr10268242f8f.17.1757408667499;
        Tue, 09 Sep 2025 02:04:27 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:545e:637a:28a6:9ede? ([2a05:6e02:1041:c10:545e:637a:28a6:9ede])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-45b9bcda91dsm315163425e9.6.2025.09.09.02.04.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 02:04:27 -0700 (PDT)
Message-ID: <47d31043-f25c-487d-9676-928f391516ff@linaro.org>
Date: Tue, 9 Sep 2025 11:04:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] iio: adc: Add the NXP SAR ADC support for the
 s32g2/3 platforms
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
 andy@kernel.org, robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 linux-iio@vger.kernel.org, s32@nxp.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, chester62515@gmail.com, mbrugger@suse.com,
 ghennadi.procopciuc@oss.nxp.com
References: <20250903102756.1748596-1-daniel.lezcano@linaro.org>
 <20250903102756.1748596-3-daniel.lezcano@linaro.org>
 <aLgrGlpNrDTC5LAd@smile.fi.intel.com>
 <a34efc36-0100-4a7f-b131-566413ab88ae@linaro.org>
 <aLlAugdr-hwMNIje@smile.fi.intel.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <aLlAugdr-hwMNIje@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 04/09/2025 09:33, Andy Shevchenko wrote:
> On Wed, Sep 03, 2025 at 05:28:09PM +0200, Daniel Lezcano wrote:
>> On 03/09/2025 13:48, Andy Shevchenko wrote:
>>> On Wed, Sep 03, 2025 at 12:27:56PM +0200, Daniel Lezcano wrote:

[ ... ]

>>>> +		nxp_sar_adc_channels_enable(info, 1 >> chan->channel);
>>>
>>> 1 >> ?!? Did you want BIT(channel)? Or simply channel != 0?
>>
>> Yeah, BIT(chan->channel) is better
> 
> But is the above a bug in the original proposal or not? I mean one wanted left
> instead of right shift.

It is actually a bug, you are right it should have been left shift

>>>> +	dmaengine_tx_status(info->dma_chan,
>>>> +			    info->cookie, &state);
>>>
>>> Perfectly one line. No return check?
>>
>> Ok, will see if the IIO DMA API has an impact on this portion of code before
>> checking the return code. However, the status is often ignored in the other
>> drivers.
> 
> ...which doesn't mean it's a good example to follow.





-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

