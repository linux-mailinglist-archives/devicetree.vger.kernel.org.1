Return-Path: <devicetree+bounces-218873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8C8B852D6
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 16:21:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B429E3BE89C
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 14:17:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8508A31065C;
	Thu, 18 Sep 2025 14:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ADPGgY/O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A82FC30F7FF
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 14:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758204525; cv=none; b=tsyF96qYEzg6wVJbdV6AidsvSzEGv9cVfATZcYa2lUstWoPBu4ClONok5lQAyi3dCBw5SIydvBhu3F0ii4OEg4a1rRbPI4geSeqNo3UZQJ089txC295Hh5jcJbViXL7VDT1ZHG+S3Qz1jpBHOxpany7SpyavUmksgRw91sFycC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758204525; c=relaxed/simple;
	bh=lSnptP6fN/pLUqMZp6nJ4V8xc65Uw/ftY6R0OvBqZhg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nVfnBszdhIIC2u+Fk2vXA5tL7gexXu+UFMIts+gzSA2jAZFxZdN0dfF/OLJgyFrFXTanhKZ2rHpaH/uR9qhAYnmbwSWLe+GGZoNrOc19oRurfHWN+H7QgCWRUC8+PbqHAx+UbaewWut8mAEtm0G0H35KaZmJLz6CscZHGf1V0MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ADPGgY/O; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-45f2acb5f42so7820415e9.1
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 07:08:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758204522; x=1758809322; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z56yE3RhN98804tu3UJs8TFzZt1QW6pC6iU/RNTk30Q=;
        b=ADPGgY/O3d7Ayf80+XfBBUf6gknNdspaauC37Mbhmy7SS7B0IfYwiKxfjgMonxY19e
         feKqHqTN6lmUli3/GebPtzufu2v1ZNd2vUwGgIsplAoa+ucNRjxuHeXWqwayVLSZk5lj
         uZZn1s7vzZJYULcv5zXKiSZs5/8ybtcYe2jBN2qKJWz9pd/nR177Sv3zHrlgqrfxgsoQ
         xFLHR2XdFUMgDTKEIUrOCUTrVYPQm+T66XbgrTti4ue+4//1193OPETRanYok5LbUq6P
         kaA61G6hCSLyvbuOxxYVMQwbCHBjvbljcFoUPvJEQWYACSqXgR7zF0KwTDs45MRLT0ui
         5MIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758204522; x=1758809322;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z56yE3RhN98804tu3UJs8TFzZt1QW6pC6iU/RNTk30Q=;
        b=sqsQGv3V6Ne2mAjkjMmusra3wzV3sSZRhAivwashG8VI6gPVp1PERQxp1eh0VkUVOQ
         oKn3uDgFKyVshqBcBJYVIt0r+42L30yZ57pujihJOiQlJHmbMmwa/MULsg7Qb9sCFY+D
         BC9xJxAN63M0z83lHclhyK2GUQF6QrzSJIJyZassESeagUohhYhb5zIxWjWzw/ASYKpH
         UYSYjmtGm91p55mcG0ceHuyyFAs9beKD8eD9qwz9Q+uWd6IC6LBjs47D7GIwp2Nyy0Yr
         IhyiFgO4Phc2jrG532tlytEgcXaej1pzw2NFXiyokU2chgK79FWYIBqH30eguOsuzgq/
         tyAQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0/iBohijQwhpPxsyRIyd6b1ry4R9X1RSb78wFbC6vsOuIm6b6GDYAsrEDdlNpckFe86hGk09j7bpH@vger.kernel.org
X-Gm-Message-State: AOJu0YyXnrQAHafjqww/WaD1Z+nydb0OeFGtX9qFDE5+YpfvHowlmCSv
	BjNslFDC2Dwrgjo1zxKv+U0r8bT6FuJMe4gyyoeiSOslIwvvnbA+MClxlpmhz9FgB2w=
X-Gm-Gg: ASbGncsHZlFFO8uru5OeYWJG7tKIL0uLUohZ/gbmiNJ1ZhhRczTKQTrBbvglc8ivRiH
	//p0/ZdT02WTYP2u1WKY1S2CQ3az3qfqUTJm0G1OcHeojGlz033kLZ90HJrTn5KPn2IDXM61rkj
	XT5zY2Bcg2v2unxabgYJ4/DJcrzdudsyK4xdw0lqfhlc5pTOQu2kYkTTg5bR1BiPuxYvqtgvOfZ
	iLGFlU6lGUbJ6+MbTIjYp4/5JLJ2iJnBverg7gOpmJSryhurpqF1rreE8alcbgjVxejlLpVbpqY
	IcFE8szkn67NALiMyhTCoeR/A5tKW8kvLxFPEjtPaP6i07oArF9db4zfVXZiXMo5Hd94MWthCce
	fRq/xhZqv0vSdDXk9DllhpJIpFeD045N9NK4/q+96DIbVqt8tou0hHHhk3mftAvfixpen9TI0zg
	9tTC0GeGpsOvEOHXcY8fWK
X-Google-Smtp-Source: AGHT+IGkVygzuWQOBFP8MPnBERmac2GiMM8U2DkJGQ87TuQtchhlHOXF1i1UYPhRV/h5760ATIh9bA==
X-Received: by 2002:a05:600c:c0d7:b0:45b:9b9f:88cb with SMTP id 5b1f17b1804b1-464fdf4425emr30646335e9.16.1758204521996;
        Thu, 18 Sep 2025 07:08:41 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:37e6:ed62:3c8b:2621? ([2a05:6e02:1041:c10:37e6:ed62:3c8b:2621])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-464f5a2850csm42597235e9.19.2025.09.18.07.08.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Sep 2025 07:08:41 -0700 (PDT)
Message-ID: <32937382-ad81-4e9b-92d7-798dafea64c1@linaro.org>
Date: Thu, 18 Sep 2025 16:08:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] iio: adc: Add the NXP SAR ADC support for the
 s32g2/3 platforms
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>, jic23@kernel.org,
 dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, robh@kernel.org,
 conor+dt@kernel.org, krzk+dt@kernel.org
Cc: linux-iio@vger.kernel.org, s32@nxp.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, chester62515@gmail.com, mbrugger@suse.com,
 ghennadi.procopciuc@oss.nxp.com
References: <20250916202605.2152129-1-daniel.lezcano@linaro.org>
 <20250916202605.2152129-3-daniel.lezcano@linaro.org>
 <f4e52440-fa96-486b-9c50-828fdbbe27eb@wanadoo.fr>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <f4e52440-fa96-486b-9c50-828fdbbe27eb@wanadoo.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


Hi Christophe,

On 16/09/2025 22:53, Christophe JAILLET wrote:

[ ... ]

>> +static int nxp_sar_adc_dma_probe(struct device *dev, struct 
>> nxp_sar_adc *info)
>> +{
>> +    struct device *dev_dma;
>> +    u8 *rx_buf;
>> +
>> +    info->dma_chan = devm_dma_request_chan(dev, "rx");
>> +    if (IS_ERR(info->dma_chan))
>> +        return PTR_ERR(info->dma_chan);
>> +
>> +    dev_dma = info->dma_chan->device->dev;
>> +    rx_buf = dma_alloc_coherent(dev_dma, NXP_SAR_ADC_DMA_BUFF_SZ,
>> +                    &info->rx_dma_buf, GFP_KERNEL);
> 
> maybe dmam_alloc_coherent() for the managed version?
> This would save some LoC.

Ok, thanks for the suggestion, I'll do the change.





-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

