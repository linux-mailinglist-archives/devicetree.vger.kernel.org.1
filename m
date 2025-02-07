Return-Path: <devicetree+bounces-143880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4259A2BF11
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 10:18:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 32BDC3AA501
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 09:18:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 937E023499B;
	Fri,  7 Feb 2025 09:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PHrAczNh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92B6A1E5B9F
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 09:17:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738919854; cv=none; b=KBGY2QcEPvrr4a585RjCxORgj6CJBF83M17O4ofeKqL6jVLz4TC9trUbow0IXObkVOn+fQy3vP1Fr9JPObgRMR4DoLKAxa2ye3vj9K5bYt0rvUTa9VJQms+IX+fvHpmw+BCZIsEK+fSvSsYxH48iHBCeS8ZJyuVTSu4y3ggu4HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738919854; c=relaxed/simple;
	bh=4sLgzJdXEoCSFEANM5B681JYjIInCuX+heQpB/pWcXI=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=b9PO6XQwlZ2KfAzQiBgzC4OTvchyfFXjBG3qTmBq6xIL0+qhCvIEzyxrJeQIhTthIB5i3/MUYyns+rhnQDnf5STSVtTF1gqwUrFd3WQ1Hl0iuO3xwtaZ2e0/fato7/s32iSlf6v/4lJna5XZeHlSqJWcqyVGXSfny5uGfIaZdkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PHrAczNh; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-436a03197b2so12065285e9.2
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 01:17:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738919851; x=1739524651; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tq0arpYSvoFDp5urlt72DtEA/DJDLUpDJMGDTdBFzlc=;
        b=PHrAczNhn7fTujUipW1TJDiEUqDY4YdUCwdGXWKRvDU4u2BNPMUg2BGWw8tJJEQ6rw
         2Fb/bDRRkNPijUNNtH0MKHruGTMfII+L4FEJA+FH8lyedN4iuqcXpvvZTKej+KdiFQAJ
         GBSvsfnU7UuGf2WAydbNz//MfHBogOIgZTm+mLXgD4WIfdqhPEIN5P4r0q8IxOwl4PaD
         T2mvixFD4yQCCIwBJElvGyWrZ/yaI2TWqv9j84mH1Y9qXKzGhvS07QRLH0M3774SH3ok
         fXCV1KoboC6PD4505w2+pdLI6+VME/qT8cuSMpzHXR6ubjbpr9CdPG9sSD31HEWKlJLw
         gRCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738919851; x=1739524651;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Tq0arpYSvoFDp5urlt72DtEA/DJDLUpDJMGDTdBFzlc=;
        b=LAaKoKhP2xnsbZb5mddfP19X0CeBE6sGKGUZmV6hjJt20XQrfLHC1WZJ39DC+n9OQl
         sW1BosuEG88AgXhvhcz7WwCh9ghRBHeO7/WfPH3pannt+CSQOjjDEGFosr2LKLRgLG2i
         c9qDEFstOh1pDCogAmdidGqj7bCKLoomZKVc8HqpSMw8svHRGHvaKNpwfKNa2nS6DhtL
         9ulJ++iVS+iTMJiPde2vUpA7uOpRTWfDCeDuKb1ZVLOo5e5R9cYTD/p3TgLLVgK5xorX
         HcfmRdx8P62QqXH2OBV1fkg8blOuVqlkqvBSv+FbgE3+I9wV3LWWjYgHlT7FJ9eRomIk
         uPIw==
X-Forwarded-Encrypted: i=1; AJvYcCVMo0AbzN4bRIk9ToQagrDBOcARPKgYBVFcueY9UmJnTHiz/hbwLWHTvPcnwt7HsuRLeubmumErjI7D@vger.kernel.org
X-Gm-Message-State: AOJu0YzChOaev8/WnVWEpMVlZXv76tCJFM2Wi8lwo5DLLrVbq1N7NzrT
	Q6LZy6WU7+K1DdA7zN8LkJORcTG4pdnW/obcwS/c0C0BmMKwZMkXpE3tC5LqNN0=
X-Gm-Gg: ASbGncvZ01l5nJ4UwG0X/2ovC1PzM4zewKL7NqQ3djQiZgAowjIoXCH3S87zUGTuqB1
	KcgBO+iZqasrmh4XNbXwuR/VGij3ZJ5oGkAM7pSRxQwtB3ItS1l4Qy+VCR6RpgCI2aa3ECjmyb3
	yevJKKvw/oKVkZJZgVAfZqIWuzP8razggRQf+YY/JNpgXyM+DATEdhvdPQZpYLD+FVORFGnTWzL
	4qQzI4zWIVQB3rut6fpG4dPClpK7S0FNShAEd94Qnuxh1koftq8P0Zy4a+Bin4+XQT/8ULraHv4
	ZzEm4OohvB6L8iZQHVAz3elYhWD+3nceR05g8jDwPnMJNDwEmjdXF/hGbm7rVAk+Y7Y1
X-Google-Smtp-Source: AGHT+IGQfxMRIuGwsG2LhdgudYjnLLYSobR1Dg5dLuvm+yyL57tGU6pvxJPHQWM8uWlNOLtqEwvAaw==
X-Received: by 2002:a05:600c:1d90:b0:436:faeb:2a1b with SMTP id 5b1f17b1804b1-43924991f5dmr20328145e9.13.1738919850827;
        Fri, 07 Feb 2025 01:17:30 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:5b26:96be:712e:30cd? ([2a01:e0a:982:cbb0:5b26:96be:712e:30cd])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4391dca0179sm47187875e9.11.2025.02.07.01.17.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 01:17:30 -0800 (PST)
Message-ID: <7180babd-302a-4f86-8770-bdd9f5c773cf@linaro.org>
Date: Fri, 7 Feb 2025 10:17:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH RFC v2] dt-bindings: mmc: mmc-slot: make compatible
 property optional
To: Dharma.B@microchip.com, ulf.hansson@linaro.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, khilman@baylibre.com,
 jbrunet@baylibre.com, martin.blumenstingl@googlemail.com
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250205-mmc-slot-v2-1-da3c5f30e2d9@microchip.com>
 <f6d7ffa0-6c08-45fb-9153-5e4aad1ca86a@linaro.org>
 <003ffa44-c88a-4234-a54a-50cd1140982a@microchip.com>
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
In-Reply-To: <003ffa44-c88a-4234-a54a-50cd1140982a@microchip.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 07/02/2025 10:02, Dharma.B@microchip.com wrote:
> On 07/02/25 2:25 pm, Neil Armstrong wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know
>> the content is safe
>>
>> On 05/02/2025 04:48, Dharma Balasubiramani wrote:
>>> Remove the compatible property from the list of required properties and
>>> mark it as optional.
>>>
>>> Signed-off-by: Dharma Balasubiramani <dharma.b@microchip.com>
>>> ---
>>> Changes in v2:
>>> - Instead of moving the compatible string to the other binding, just
>>> make it
>>>     optional (remove from required list).
>>> - Link to v1: https://lore.kernel.org/r/20241219-mmc-slot-v1-1-
>>> dfc747a3d3fb@microchip.com
>>> ---
>>>    Documentation/devicetree/bindings/mmc/mmc-slot.yaml | 1 -
>>>    1 file changed, 1 deletion(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/mmc/mmc-slot.yaml b/
>>> Documentation/devicetree/bindings/mmc/mmc-slot.yaml
>>> index 1f0667828063..ca3d0114bfc6 100644
>>> --- a/Documentation/devicetree/bindings/mmc/mmc-slot.yaml
>>> +++ b/Documentation/devicetree/bindings/mmc/mmc-slot.yaml
>>> @@ -29,7 +29,6 @@ properties:
>>>        maxItems: 1
>>>
>>>    required:
>>> -  - compatible
>>>      - reg
>>
>> If you remove it from here then it's still required in Documentation/
>> devicetree/bindings/mmc/amlogic,meson-mx-sdio.yaml
>> so please add it.
> 
> If moving the compatible to its specific binding isn't appropriate (as
> per Conor),
> and if removing it from the required list here doesn’t seem reasonable
> to you,
> then adding an unnecessary compatible string in our DTS files doesn’t
> make sense to me.
> 
> What could be the solution then?

The solution is right but you modify the meson-mx-sdio bindings, so
simply add compatible in a required list for the slot node.

Something like:
========================================================================
diff --git a/Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdio.yaml b/Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdio.yaml
index 022682a977c6..0d4d9ca6a8d9 100644
--- a/Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdio.yaml
+++ b/Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdio.yaml
@@ -60,6 +60,9 @@ patternProperties:
        bus-width:
          enum: [1, 4]

+    required:
+      - compatible
+
      unevaluatedProperties: false

========================================================================

Conor, Is it right ?

Neil

>>
>> Thanks,
>> Neil
>>
>>>
>>>    unevaluatedProperties: false
>>>
>>> ---
>>> base-commit: 40b8e93e17bff4a4e0cc129e04f9fdf5daa5397e
>>> change-id: 20241219-mmc-slot-0574889daea3
>>>
>>> Best regards,
>>
> 
> 


