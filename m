Return-Path: <devicetree+bounces-142855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1EDA26D12
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 09:14:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 517357A4093
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 08:13:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBA952066E5;
	Tue,  4 Feb 2025 08:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F8nyURpS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D01FE2066D6
	for <devicetree@vger.kernel.org>; Tue,  4 Feb 2025 08:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738656857; cv=none; b=HeP6v4rkz4U6esDpNgvm8hN4hRCCa+NPKgV4bcuG2sNo9scix3qTjsj2L96VvJIWwNWRs/eKOdwHNlYON3iStx68/cBwRpscTIeXv9l6GMlxgNt798AAFm0NMx9yM702NBc24B7gcOKW9Z2zQaASoC0v9HLFtuN4OV/vM0U+lCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738656857; c=relaxed/simple;
	bh=B38rBSSh08CHoCV0k2KcAyPTOBqx1I5X9BaZL3HUXJI=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=WmQvdcNrJ52dGB/sAagmYkkmRKfaTt8kO3MXmKoCSMcG9iZ2Ok7GFNbIdC8n7HMemhWhWawegShXi6fKOAJIkRr1Zg9PkU3fK3HnDdoSUHC766/DUPQgcumnOz/XD3vsnWOHwPEMT9hWsKyGfj0lGAKO95zhm3YHX5AptnbELtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F8nyURpS; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-436a39e4891so35841885e9.1
        for <devicetree@vger.kernel.org>; Tue, 04 Feb 2025 00:14:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738656853; x=1739261653; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8sCR9UpdvPq54knP20h3bb4wqIzkXCrYqODJJrs8Hjo=;
        b=F8nyURpSxkSDL4F2SnV2XfeHbxR/eag7Xn+gpDj4DnxsI5IQmCST1+cQX1bhLPNkCJ
         Iuhx/BLw3sP8OEWFT04bl1Tw4U6HGbmhhP9MNnuw7Add88WP1zsDE0q5RDT2GRyFC4fd
         2acCDuU9rOLPNRKN3MJGcx7I2zcHyKM6tPHuQwNEpAKUK7qJU27/8fMP6vzO1TtSdot0
         SrwyICgdqvjat07+IrMfI6Uv7eJ37yf0eEVUMAenoRQY+UVX4sGM6Dh9v1kSMpDh4RNi
         Ht3AypZG7o20cp1g5lF/3lijE32Oxd4S+3jVy7sQreG3HhnWatY8JzPvxajj5kf1pXYO
         xSFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738656853; x=1739261653;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8sCR9UpdvPq54knP20h3bb4wqIzkXCrYqODJJrs8Hjo=;
        b=bO2ox6mo2Hh42n9ySXSO8D6+4avRCT21K1MKd1eC8C1B4VVfJS2+c29D2is0FVIoDG
         7jpjL3cxKdKV5eoCr73Jt6xPuCAAlPGfAJfPVh9Px3PBDg1E52pzftxIZNvU8aUA+k0a
         xYlkG5sSF2S3b9017l/yK3ij/XAQ2ihcfbKDng1kTzpSrCaInFMAU2me/sHMIkC0cMNM
         wKwNOk/7sqKa88ygDsIIJjzJZQsxeCTkpuR41gXkN1KPJwHvjom7Dr5D4GpTQoke4Vwf
         TElW3T/cD6Qbndd9ZB6MpAqA8MT2H5/sGKNHSC8K3L5BZjdPv8diPKPQbhz1am5kSIC/
         3jwA==
X-Forwarded-Encrypted: i=1; AJvYcCU5LuQCohDr2SQLIIGetghkX6tM2c1DokEFDN2OudsKjhd3txbAJ1pFZd/+E44Slwsh3oWt06zsmF9t@vger.kernel.org
X-Gm-Message-State: AOJu0YwaWa0Dh7ohbB2nOsc9yQ7mSgOf+IsnFnH5Z//1A9q+e9Wcm7NI
	OBDmrlHalw1JcT1bhN/UzGDhMTpXFwZGBCzUkNySxbLhTY0uuypM6UHgrgpnFxg=
X-Gm-Gg: ASbGncvXNUdgNXpibCA1/syKi7wbFSmjWJzr+b/p+UEb84y/bBUEWmks6vhA6jsOtjT
	2mrzZdlxMz/goyMI08/Fo46QmbgvzhP+24KGDX7Yjs76uJ8o46wNtZrya8jSQSlcSAEfe/m0iyb
	38y1t4que71HPRDf2EJHn5zZlzSPdtHMDq30vYh9j8Qxm8CFm/z23JtShEaYQJ0oxiCSITXnRkg
	ZhQK560Gh5Tv/mdUsx+H/Xl3Z+ewYe5FwEhlHmihdvJzGTBHKRuj7jSO9ufby6k8vd19jthvDWP
	jwrQYnUQT+WB9BJq5a3+TgeKD5KcoxenAohGtza5IyTaiaizs3aIs7xi8TxBOEMxMOdA
X-Google-Smtp-Source: AGHT+IG3tRoGmZu1OmIgYWpqEIVgV5wfqw0l/woeaKBkcCKJ2qcs0i4efob+omaMPGS57HdE6nfnIA==
X-Received: by 2002:a05:600c:3510:b0:434:f925:f5c9 with SMTP id 5b1f17b1804b1-438dc3af8c1mr200771315e9.6.1738656853012;
        Tue, 04 Feb 2025 00:14:13 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:8db5:d196:bd48:5fbb? ([2a01:e0a:982:cbb0:8db5:d196:bd48:5fbb])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dac5a3e79sm900306f8f.63.2025.02.04.00.14.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Feb 2025 00:14:12 -0800 (PST)
Message-ID: <3ecf58f4-38c0-4435-899a-400df62f5d51@linaro.org>
Date: Tue, 4 Feb 2025 09:14:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] dt-bindings: mmc: move compatible property to its
 specific binding
To: Dharma.B@microchip.com, robh@kernel.org, conor@kernel.org
Cc: ulf.hansson@linaro.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 khilman@baylibre.com, jbrunet@baylibre.com, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 martin.blumenstingl@googlemail.com
References: <20241219-mmc-slot-v1-1-dfc747a3d3fb@microchip.com>
 <20241219-scenic-revision-17da9231d61a@spud>
 <91dfdd42-6ddb-490f-acda-41ce55782959@microchip.com>
 <CAFBinCCxZjuXL0duy3ePPDtL1oJS_GZiX3=djXpHR+-6gLkN_w@mail.gmail.com>
 <39be0bea-c207-4bcd-b464-ca93e91cec93@microchip.com>
 <CAFBinCAO0bpd7PXaVJWMby4Mqj1On5DaqNZua4V3gPUDms8=LA@mail.gmail.com>
 <779651f3-e5d4-4de8-878a-84653735e5cb@microchip.com>
 <f312c7ff-8d9b-4317-a75b-ce3d0f94a7ae@microchip.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <f312c7ff-8d9b-4317-a75b-ce3d0f94a7ae@microchip.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

On 04/02/2025 05:24, Dharma.B@microchip.com wrote:
> Rob / Conor,
> 
> On 20/01/25 10:00 am, Dharma B wrote:
>> Hi Rob/Conor,
>>
>> On 09/01/25 2:26 am, Martin Blumenstingl wrote:
>>> EXTERNAL EMAIL: Do not click links or open attachments unless you know
>>> the content is safe
>>>
>>> Hi Dharma,
>>>
>>> On Wed, Jan 8, 2025 at 4:11 AM <Dharma.B@microchip.com> wrote:
>>> [...]
>>>> "One issue is 'compatible' is required. Either that would have to be
>>>> dropped as required."
>>>>
>>>> Instead of just dropping it from "required:", I removed the property
>>>> itself and moved it to another binding.
>>>>
>>>> I will send a v2 by removing it from the required, will it be fine?
>>> For me this is fine.
>>>
>>> My understanding is that if we drop the compatible property completely
>>> then any compatible string will be allowed (for example: compatible =
>>> "random,name"). This is because mmc-slot.yaml inherits the properties
>>> from mmc-controller-common.yaml which itself has
>>> "additionalProperties: true".
>>> However, if we allow it but make it optional it means that there's
>>> only two valid states:
>>> - no compatible property (on the Atmel / Microchip SoCs)
>>> - a compatible property with the value "mmc-slot" (as used on Amlogic
>>> Meson and Cavium Thunder SoCs)
>>> - (anything else is considered invalid)
>>>
>>> Rob, Conor: can confirm this or correct me wherever I got something
>>> wrong.
>>> I hope that your feedback will help Dharma write a good patch
>>> description for v2.
>>
>> Shall I proceed with v2 by dropping the compatible from the required
>> property list?
> 
> I hope this email finds you well. Just following up on my previous
> message from 20/01/25, as it seems to have achieved an impressive
> feat—perfect stealth mode. Either my patch is so flawless that it left
> everyone speechless, or it has been silently sacrificed to the inbox
> gods. 😅
> 
> If there are any concerns, feedback, or a secret ritual I need to
> perform to get a response, please do let me know. Would love to hear
> your thoughts when time permits.
> 
> Looking forward to breaking the radio silence!

Just send a v2 as RFC, so we can comment on it.

Thanks,
Neil

>>
>>>
>>>
>>> Best regards,
>>> Martin
>>>
>>
>>
> 
> 


