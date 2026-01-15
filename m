Return-Path: <devicetree+bounces-255627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EE03FD24E0B
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 15:08:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 253013006F4A
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 14:05:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 791873A1A37;
	Thu, 15 Jan 2026 14:05:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KIavuc9X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C73F339E19B
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 14:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768485942; cv=none; b=Gezs8SXE1bJpiZL7kqb/C/zZPBSU3tW1KnVW5Mx7MJ+j6wumvXNRLHBlOji2+w66P81ayl7TUBlsfetfF7DCnKyywXHKN1kl5E5BfDAZYVGVKrqTTPVI2eFodUhXwBempdt5Ct/qRZ+Sm6eFj1WlyhAqQkiIqFmu0lmsoIN1kw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768485942; c=relaxed/simple;
	bh=kZUdwyeP1mnIFxtNDKSNzJMBi8Z/yJpOn0c5q0WuxE8=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=tnxOhZBlZw3oZS5NfjmGV/VdffH6tWIMHQet9+N766FX4S8Tth108NJhLRqTdJOUEx1xsq4zMhZWZAokE5RhRXolhz3LarflvAwmNmcgvYVkKN1+XPv2RvGZ07E/T1BaoT0bPm9rcfzA2IyuQUYi2VB5lOP75LjX8g0oBI2Sci4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KIavuc9X; arc=none smtp.client-ip=209.85.221.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f68.google.com with SMTP id ffacd0b85a97d-432755545fcso576964f8f.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 06:05:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768485939; x=1769090739; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GYvocclPNzuO2Xle2lrVn+hLTZXEdchNTRgU0mDAfI4=;
        b=KIavuc9XrT1C2IeH5Cc2MkLv6pTIsAA/OJ5NA/iFD7GuPrEI1zz7bV10OkxdWBlYqd
         xgYOmNkiGkZkrDk69qpRBLK/X9bVzqlRlIaObxT3WmpfQUbeu5KFJM/qhDh//tbS/YV+
         WuiXbkGoEaFKe6lBPDkWKqc4IfPa0MjDrcRXS8wo0boMbDrlDmMh7SQQY5h+fAcMry/J
         jOUTxlfmrOpyknevGFa7giPucUnpBDNLw3r1zgJp79sSeNqg8waoEAoRDni2C+/uu9At
         yRWdiM9fPX3A2Is1qV1sQkz79pRtoOHk12QeTekVkOn66gS8JFpKM5O6Qw/icEGu2Y+x
         Jd4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768485939; x=1769090739;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GYvocclPNzuO2Xle2lrVn+hLTZXEdchNTRgU0mDAfI4=;
        b=aCDDfMeilvtU01XfMe5PoSQX+sm4TByyRQMDaY9i6WBivEv1SHIUgiDUj0Hia7PyGn
         G+yWeIXGFwCeQcj+YCXI0S2rvz7WtPZ1Cq8KD5eThir6+phP9a4K3RtYjQSMmSLdTTR0
         4LTPzFHyPTzvd8ZWDWjDnLLmy2QdjJzkCWhJSRkFTbZzsy96xNJ3B5dK3I3sZSkXAwh4
         U4ZDSTnsyHDLCZs4Xx9Yv1YAkgm1Zh93Y5t+T3MJ6nKxffZykcYV4foQrXHsTxgfI+Gr
         iFH+BgWZnhHvQPMef70F/jnFxRQkaClZmYVy9JmYuS3fV0VlhlqCk4yo9d0bc847JYS3
         vzTw==
X-Gm-Message-State: AOJu0YwAtEiwD0HBShxktJX9VkF0KwBnQxmKbcdOhdX7RWbiZfENlV9M
	XMV1Rf4vNU/xcBT5CxDn1daajsO2a7b4AXeI6foP4gu0lToI2FWQGRyigZghxCRUHbI=
X-Gm-Gg: AY/fxX7B+4g34jN7Uaj0+YAKd8YEObwitPerVZtObku9H+R6j7hrYOFtHQFEa9ZEj2x
	m8j1HFe/l4CHoN1OdboQOmwIsEWE7AALzliL+mJuKWYWr5hwdJ2yEK8Y9re67I10G6jLPNeMkUl
	pzMa6CMBoBfG/eu9AAcUxtvt3Niz058GAMiqjMU0fsmN7l4ahb0cQadLsLUvsiq1XNaa2U8uiZK
	VJ99LfUpLNHE03U5jL0SesqCGiRS1HVO3czhXEDA9dyK6pyjOPBXYPcX8WgwL1yaLsdhw8U6+WY
	wzGB69XWHjCwdc4RgC2x6u7qSdgtNez8GtELlFlgVrJc8H8dA3xnS669fLRE1K7UtBUu9LdZmon
	Slgb3hso3PFiGkIwuiY8D5r5Y+inBVzVzzRXfoZ3zkkeRSgUphOd+EtQ7MQTBOcGbQ6LWeY19AS
	DvO7Ktcn+iJVQR9wD3RcYMkOthe5cGLeNah7yMqdZuYZ8EpAmyZq/bMmE71NXZ+Sw=
X-Received: by 2002:a5d:5f52:0:b0:431:8f8:7f17 with SMTP id ffacd0b85a97d-4342d59bf78mr7749285f8f.10.1768485938970;
        Thu, 15 Jan 2026 06:05:38 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:d283:7a7e:4c57:678d? ([2a01:e0a:3d9:2080:d283:7a7e:4c57:678d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-434af6fc8dcsm6215675f8f.40.2026.01.15.06.05.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 06:05:38 -0800 (PST)
Message-ID: <89634869-7858-45b7-bc2c-81436e028b83@linaro.org>
Date: Thu, 15 Jan 2026 15:05:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 2/2] arm64: dts: amlogic: add the type-c controller on
 Radxa Zero 2
To: Ricardo Pardini <ricardo@pardini.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260114-arm64-dts-amlogic-radxa-zero2-additions-v1-0-8b5cdf328fde@pardini.net>
 <20260114-arm64-dts-amlogic-radxa-zero2-additions-v1-2-8b5cdf328fde@pardini.net>
 <aeaee3b5-5f08-4abe-b646-a45ab79a35ab@linaro.org>
 <1f256bf2-2739-4785-88fd-25101df9dad9@pardini.net>
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
In-Reply-To: <1f256bf2-2739-4785-88fd-25101df9dad9@pardini.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 1/15/26 14:59, Ricardo Pardini wrote:
> Hi Neil,
> 
> On 15/01/2026 14:00, Neil Armstrong wrote:
> 
>>> The Radxa Zero2 has an FUSB302 controller on i2c3 at address 0x22 and
>>> INT# wired to GPIOA-13.
>>>
>>> +        interrupts = <13 IRQ_TYPE_LEVEL_LOW>;
>>
>> OK it seems I did read too fast, this should be 74 !
>>
>> S922X Datasheet (same as A311D for this)
>>
>> Table 6-32 GPIO Interrupt Sources
>>
>> ---------------------------------------------
>> | Input Mux Location    |    Description |
>> ---------------------------------------------
>> | [76:61]        |    gpioA[15:0] |
>> ---------------------------------------------
>>
>> So gpioA13 ==> 74
> 
> Indeed. Sorry for this.
> 
>>> +
>>> +        vbus-supply = <&ao_5v>;
>>> +
>>> +        status = "okay";
>>
>> And I get:
>>
>>    DTC [C] arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dtb
>> arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dtb: fusb302@22 (fcs,fusb302): 'connector' is a required property
>>          from schema $id: http://devicetree.org/schemas/usb/ fcs,fusb302.yaml#
>>
>> Please add a minimal connector, like:
>>
>> +               connector {
>> +                       compatible = "usb-c-connector";
>> +                       label = "USB-C";
>> +                       data-role = "host";
>> +                       power-role = "source";
>> +                       source-pdos = <PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM)>;
>> +               };
>>
>> I'll drop this change from my tree.
> 
> Again, my bad. My intention here was a "minimal" description, mostly to reserve 0x22 so end-users can run `i2cdetect` or such on the 40-pin exposed i2c3 and not be surprised. Guess I didn't run dtbs_check hard enough and missed the required connector.
> 
>>
>> And you may also add support for the superspeed mux to switch the USB3 polarity.
>>
>> I have a prototype at https://gitlab.com/superna9999/linux/-/tree/topic/ amlogic/radxa-zero2/fusb302?ref_type=heads
> 
> I'll try your prototype. I had no idea it actually had those capabilities.
> 
> Do you think it is worth to resend this with just the fixed 74 pin & the minimal connector as you suggested? Now that I've seen your work, a "add FUSB302" that does nothing (while being capable) feels frivolous and confusing.

Yes please resent with the interrupt fix and minimal connector, I'll rebase my work on top. It still needs some testing, but I'll be happy if you test it on your side aswell.

Neil

> 
> Thanks,
> Ricardo
> 
> 
> 


