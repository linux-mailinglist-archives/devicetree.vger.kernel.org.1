Return-Path: <devicetree+bounces-112921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A0A9A3E7A
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 14:32:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 69DD61F22ECF
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 12:32:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06C9B15B12F;
	Fri, 18 Oct 2024 12:32:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i+emEmzi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F4D42ABD
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 12:31:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729254720; cv=none; b=Zijr26ExoMkTD+klWHmagt+rQg/6wHHEI0+14o0H0iG7GoI6yKwxawfp57pNp31RDd6oJ++FNbrQRyc83h0UCd3wudsGyXgNNWt0JRWJgDb4bDVD1MmdZUjNGbFLrlBBOWCwp/oRvdTQRYSAAlE0zXwAJHhyK7UdYsP44SQkx2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729254720; c=relaxed/simple;
	bh=skiolaCNh/in/Qu0nir4dA/wJzJq4JNnqphngzf51xg=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=gWYEnVcS/X3TPvAlCZ7WHI8sff1jG4ltmAISFJbIVjF1LkBFRt939qf4MT+7OTxniItcc58d8MNrTTpcyCjNWBhsCupckYAFf7hFJMvbXwxQSJuDmb05e2AL+o3u0XRByfdLwxPskHDCub1aCl0H9c9O1k5zsCdFqfwDliTz7lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i+emEmzi; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4311c285bc9so20365055e9.3
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 05:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729254717; x=1729859517; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WQ57lSjaC9RAyZl1NHQTI6Ado2aNaJuw86YmjLl6fxI=;
        b=i+emEmzimQsfVE96FIwFLrCV4d4Xyd8MWEecKWoOQ1aFdhL6/yHJ5AspNbe+OPfqEa
         OiI024D1cGcaIh/z+Nt50LuGjDHSrmVTo0CHQ1WkFUVxtU7LEp2mU7QNza/Nj+eT5NCl
         Tgv9CKtF5zgNoiLPuSof1Wo1ZkyDPu6xUED2E695t4l38+XdZoSartBElnUZ0HLo/mYW
         2ZXKknQnmiy8JTsLSisKDlu6wWr8/ZbQ7Qg9aVa38LOEJ2t4ajQXA7foR7wQPS1VOGOc
         AV7dEpZRPv9wOuYGFYSiQ99Q6kncy+nzMSKRrjPQbqh1N6CrxbsS+55EyJRs9TZU/tau
         tG/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729254717; x=1729859517;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WQ57lSjaC9RAyZl1NHQTI6Ado2aNaJuw86YmjLl6fxI=;
        b=f65lzh0hqh1UwQ86aVF9OOHgBLidcnUfDp5/fE7CYd7dsJkkiKWmwpxhrCvJYh5+z1
         PqTD3YBsZWcTGOYqaUvhvcYXgwGK1hRbFc+VJJIji1IGnWaoG5yqD5v59Ri0ycNClevV
         Uum3TxbB0dk50Tua2xFD7oHh/mik4FsvrHhOo8CQFoQt1rH/47rZ4Bd1AFDYhzIlPM8K
         fMwd5E5yrD1d9nfgdrHQPbu2TPQqvrR8ySKQY5uABJhVyWSOYPpBnBPQlFQ+rs2ipdpj
         wulkcLn3mS+UcvTk64Z6WmtLvzKSMgz57g6FKRPPVYhZpx/3Mi0yGYoxBcgXTKTAv4f8
         jMFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWyq0ol2V2i8pKHglqvUaJ/90bqZOzKqFlnOI2cWrqmnnCl3Kd/XDouUvqkwLQVCQmcIdW/9jsBLE76@vger.kernel.org
X-Gm-Message-State: AOJu0YxDf91QxNmEc/CkhilvD4h1L/jgFhaOrrCcvXIlXjHeS1HYXI49
	yfVkAUAzJ0lG/8GpmKJRmfO2yBX45UszKW458LOuPT0sM28+OtShjajitZfGgb0=
X-Google-Smtp-Source: AGHT+IEUdRrlAq3WPxfqkG3BlZjmDH+ScLOh0LICFKDXfeE0jKHxiu7vIWXS+8hii+rHrVL6AW9mkQ==
X-Received: by 2002:a05:600c:c8a:b0:431:2b66:44f7 with SMTP id 5b1f17b1804b1-4316169737dmr17180495e9.31.1729254717395;
        Fri, 18 Oct 2024 05:31:57 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:b623:41fc:e293:c9b1? ([2a01:e0a:982:cbb0:b623:41fc:e293:c9b1])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43160dbe73bsm23197135e9.4.2024.10.18.05.31.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2024 05:31:56 -0700 (PDT)
Message-ID: <5ad8f396-84a5-486d-b90d-98fbf8882d1b@linaro.org>
Date: Fri, 18 Oct 2024 14:31:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 1/3] dt-bindings: pinctrl: Add support for Amlogic A4
 SoCs
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Jerome Brunet <jbrunet@baylibre.com>, Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20241018-a4_pinctrl-v3-0-e76fd1cf01d7@amlogic.com>
 <20241018-a4_pinctrl-v3-1-e76fd1cf01d7@amlogic.com>
 <4a79f996-9d82-48b2-8a93-d7917413ed8c@kernel.org>
 <1jttd9rein.fsf@starbuckisacylon.baylibre.com>
 <4127b448-a914-4c69-b938-29512995326f@amlogic.com>
 <1jmsj1rclh.fsf@starbuckisacylon.baylibre.com>
 <d654d2b2-977b-44c0-8b01-b26f5eb0a3fe@kernel.org>
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
In-Reply-To: <d654d2b2-977b-44c0-8b01-b26f5eb0a3fe@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 18/10/2024 12:13, Krzysztof Kozlowski wrote:
> On 18/10/2024 11:20, Jerome Brunet wrote:
>> On Fri 18 Oct 2024 at 17:01, Xianwei Zhao <xianwei.zhao@amlogic.com> wrote:
>>
>>> Hi Jerome,
>>>     Thanks for your reply.
>>>
>>> On 2024/10/18 16:39, Jerome Brunet wrote:
>>>> [ EXTERNAL EMAIL ]
>>>> On Fri 18 Oct 2024 at 10:28, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>>>
>>>>> On 18/10/2024 10:10, Xianwei Zhao via B4 Relay wrote:
>>>>>> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
>>>>>>
>>>>>> Add the new compatible name for Amlogic A4 pin controller, and add
>>>>>> a new dt-binding header file which document the detail pin names.
>>>> the change does not do what is described here. At least the description
>>>> needs updating.
>>>>
>>>
>>> Will do.
>>>
>>>> So if the pin definition is now in the driver, does it mean that pins have
>>>> to be referenced in DT directly using the made up numbers that are
>>>> created in pinctrl-amlogic-a4.c at the beginning of patch #2 ?
>>>>
>>>
>>> Yes.
>>>
>>>> If that's case, it does not look very easy a read.
>>>>
>>>
>>> It does happen. The pin definition does not fall under the category of
>>> binding.
>>>
>>> https://lore.kernel.org/all/106f4321-59e8-49b9-bad3-eeb57627c921@amlogic.com/
>>
>> So the expectation is that people will write something like:
>>
>>   reset-gpios = <&gpio 42 GPIO_ACTIVE_LOW>;
>>
>> And others will go in the driver to see that is maps to GPIOX_10 ? the number
>> being completly made up, with no link to anything HW/Datasheet
>> whatsoever ?
>>
>> This is how things should be done now ?
> 
> Why would you need to do this? Why it cannot be <&gpio 10
> GPIO_ACTIVE_LOW>, assuming it is GPIO 10?
> 
> Bindings have absolutely nothing to do with it. You have GPIO 10, not
> 42, right?

There's no 1:1 mapping between the number and the pin on Amlogic platforms,
so either a supplementary gpio phandle cell is needed to encode the gpio pin
group or some bindings header is needed to map those to well known identifiers.

Neil

> 
> Best regards,
> Krzysztof
> 


