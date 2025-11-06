Return-Path: <devicetree+bounces-235673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FBFC3B27A
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 14:18:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4AC9E420178
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 13:07:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C093C30F7F0;
	Thu,  6 Nov 2025 13:07:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rmuPyfyb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D184FE571
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 13:07:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762434463; cv=none; b=Na9ZNmdcLEhU2j0/35hj46G95jJK2WIFqhzMq+IRtryDAeZmy8+J2WexiDlydO5jWI2AiLK7ROXbLrDON+NkzNqgjOWdQHSIQlPzgaPKBzVIu2Peru8I8QGSYjuH5UTf92E2VcNEHJc0yTcfUAt67FqpVysZcBUX1CZImczK6OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762434463; c=relaxed/simple;
	bh=LRYrbPfj7iDywk6i5TpH4lu16qc/Q3uOnOAZZcr1P5g=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=lA7Z8SrdL0CLMj+ZUaLyuVFvcU9u8N3t4QX0WHbZYXub/AkZY9AX9tkGSZ3kB9bd+lLWeaGkn0ryI7vJdMXHu3qmGKud7Jkey++E3ClKaYCZrPHPjxX2w69sEyCq1u8cP3O7mBdUmAT48F8vKEYCQkMl0UG4gG8CyZINbNbVQ7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rmuPyfyb; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47117f92e32so7676525e9.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 05:07:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762434460; x=1763039260; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2yLyeCjgls6cM1HvoV4Agizj+GB/rHC0r8rByuRqqxM=;
        b=rmuPyfybejU8CSesISW4TXUq35Zed2iFNGHyGPTDm7AvrRVmzbFSkSFqW/rKWCtJjg
         c7FTL5DZwYzEMdeIRZRSN5WRAcJnKwlT/9D4sFy2iCWWGS2oDjBaKuuIfkL93s+p75GI
         +Bw+DHg/jK+tbILL15FhwodMXpQ0ViGxt7IRwiIrtRg1xwKgwUgn0/DmQucLvQ9DhH+Q
         xBpaepkUJZPBr7xBgTbmgEwEgx4k8EmPZR2yFno4Rq+bGwip1hsGn9XnryyN3R/ZWxsE
         7bfvylCTh4SFRXjAGLhSB8AnPSIajMTOnBV7YRERl+xvD2WNplwt+8+z8qMdhbKI4OyO
         ooIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762434460; x=1763039260;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2yLyeCjgls6cM1HvoV4Agizj+GB/rHC0r8rByuRqqxM=;
        b=Dq0iXBmuhGLjYziHtrkEHWUq4UQ8EFYN6zHbY2jjMutEKQqVjmL/BveGjl920Iienf
         CaHajZIs6NDICogcyCpn4n5DthbsLuku5BnDDaTmaMnJr+l5zijybXWplhClpOGRz/Zw
         bYlTEjArpV4bETlJd1BjOvfgpHBN7XBu2idR5ZPFvWWk3VmJVKdpU9O/VsMi+ErXwSej
         8ZKFqm+Z/rmIRaw3L3xbxum3lB82BXQAmUbID+CsCLrsgCbF1MkI5GPT9L6Qowh0OwBp
         o8t68FZZFId0kjIySSQvFhMWAY2nw1Eg+fVa2KV+FyrBax88zlXJv/5GbLvNBs2MuVMI
         cMUQ==
X-Forwarded-Encrypted: i=1; AJvYcCU32viLyri1T6hFPd0DqczpYV76MbIHUUhl7Ae4Fa09ukT8z3BoWw6bAHCv7cb1kC5mXAZ6/LN4iCb/@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2sl8YAzL8s0OFSgHpKfbEbEnZxQNZtQ8F6C01N8TVjFBwYWUg
	jFfyY5fekkeAJtEf4hHspKKP67KWyfbgcgj1MFGszUyWBLA/+sYvNKI7NhBj/BC2xYQ=
X-Gm-Gg: ASbGncuDO8AUP3KJT7eNb5GxFxJz+iyCrv3jJVA56+YesmRBGwL7XYyDZKq1Wwy/ZlB
	+pbALEjlmu/OcIy6L5f6/f6+0GMsOWs2ImW3CFGtqQxPaS8csLAZTwHInA0tmKOpebnN+qbHSrj
	QR1EBzRC6iuR/uPWwaqzdWeBUkXBRcTnUuPdLLKbLsEv4S5f6ENU42qsRJHXzLa/WyfvCRiWv2O
	zFf/kEk3CAh2PBsy6E3Q7LhrSr1bEI7xEpN5SbiVX1ATGGb1HGfzarOu7rJk8x21D6Q0eutCqyf
	RTFU2YCEpRaf25e/yA4X21//+f9U+Ig0cYplGKdTkE4UYYDncj70OnblxGT4xJG4NBu8Hy6OA+X
	M0f5/YgJHpl8rO6lD6DmueLDQ24OjPDvJ1+tK82iD32xA0lJ0oKuRU6WS4u43y1ncZ7vk+ok64G
	cX7zq9QhPLSoSv/cIetXk/rTWnqj8szFgcig==
X-Google-Smtp-Source: AGHT+IFAsKArlrU067DkxQxwFDKfyGP6fHe4iUyS/Bdq+iRDMjLgKkS8gLp/s5Zpe2BQhezfS1P8SA==
X-Received: by 2002:a05:600c:1d88:b0:477:54cd:202e with SMTP id 5b1f17b1804b1-4775cdad6aamr62589075e9.2.1762434459994;
        Thu, 06 Nov 2025 05:07:39 -0800 (PST)
Received: from [192.168.27.65] (home.rastines.starnux.net. [82.64.67.166])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47763e4d7f2sm15640615e9.4.2025.11.06.05.07.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Nov 2025 05:07:39 -0800 (PST)
Message-ID: <f324cafd-c466-4cb8-81ab-fbabac7bbca7@linaro.org>
Date: Thu, 6 Nov 2025 14:07:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 2/5] irqchip: Add support for Amlogic S6 S7 and S7D SoCs
To: xianwei.zhao@amlogic.com, Thomas Gleixner <tglx@linutronix.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
References: <20251105-irqchip-gpio-s6-s7-s7d-v1-0-b4d1fe4781c1@amlogic.com>
 <20251105-irqchip-gpio-s6-s7-s7d-v1-2-b4d1fe4781c1@amlogic.com>
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
In-Reply-To: <20251105-irqchip-gpio-s6-s7-s7d-v1-2-b4d1fe4781c1@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/5/25 10:45, Xianwei Zhao via B4 Relay wrote:
> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
> 
> The Amlogic S6/S7/S7D SoCs support 12 GPIO IRQ lines,
> details are as below.
> 
>      S6 IRQ Number:
>      - 99:98    2 pins on bank CC
>      - 97       1 pin  on bank TESTN
>      - 96:81   16 pins on bank A
>      - 80:65   16 pins on bank Z
>      - 64:45   20 pins on bank X
>      - 44:37    8 pins on bank H offs H1
>      - 36:32    5 pins on bank F
>      - 31:25    7 pins on bank D
>      - 24:22    3 pins on bank E
>      - 21:14    8 pins on bank C
>      - 13:0    14 pins on bank B
> 
>      S7 IRQ Number:
>      - 83:82    2 pins on bank CC
>      - 81       1 pin  on bank TESTN
>      - 80:68   13 pins on bank Z
>      - 67:48   20 pins on bank X
>      - 47:36   12 pins on bank H
>      - 35:24   12 pins on bank D
>      - 23:22    2 pins on bank E
>      - 21:14    8 pins on bank C
>      - 13:0    14 pins on bank B
> 
>      S7D IRQ Number:
>      - 83:82    2 pins on bank CC
>      - 81:75    7 pins on bank DV
>      - 74       1 pin  on bank TESTN
>      - 73:61   13 pins on bank Z
>      - 60:41   20 pins on bank X
>      - 40:29   12 pins on bank H
>      - 28:24    5 pins on bank D
>      - 23:22    2 pins on bank E
>      - 21:14    8 pins on bank C
>      - 13:0    14 pins on bank B
> 
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
>   drivers/irqchip/irq-meson-gpio.c | 11 +++++++++++
>   1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/irqchip/irq-meson-gpio.c b/drivers/irqchip/irq-meson-gpio.c
> index 7d177626d64b..7e718b07e960 100644
> --- a/drivers/irqchip/irq-meson-gpio.c
> +++ b/drivers/irqchip/irq-meson-gpio.c
> @@ -174,6 +174,14 @@ static const struct meson_gpio_irq_params s4_params = {
>   	INIT_MESON_S4_COMMON_DATA(82)
>   };
>   
> +static const struct meson_gpio_irq_params s6_params = {
> +	INIT_MESON_S4_COMMON_DATA(100)
> +};
> +
> +static const struct meson_gpio_irq_params s7_params = {
> +	INIT_MESON_S4_COMMON_DATA(84)
> +};
> +
>   static const struct meson_gpio_irq_params c3_params = {
>   	INIT_MESON_S4_COMMON_DATA(55)
>   };
> @@ -195,6 +203,9 @@ static const struct of_device_id meson_irq_gpio_matches[] __maybe_unused = {
>   	{ .compatible = "amlogic,a4-gpio-ao-intc", .data = &a4_ao_params },
>   	{ .compatible = "amlogic,a4-gpio-intc", .data = &a4_params },
>   	{ .compatible = "amlogic,a5-gpio-intc", .data = &a5_params },
> +	{ .compatible = "amlogic,s6-gpio-intc", .data = &s6_params },
> +	{ .compatible = "amlogic,s7-gpio-intc", .data = &s7_params },
> +	{ .compatible = "amlogic,s7d-gpio-intc", .data = &s7_params },
>   	{ .compatible = "amlogic,c3-gpio-intc", .data = &c3_params },
>   	{ .compatible = "amlogic,t7-gpio-intc", .data = &t7_params },
>   	{ }
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

