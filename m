Return-Path: <devicetree+bounces-44264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B763985D521
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 11:05:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DA3C51C22852
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 10:05:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB5883D964;
	Wed, 21 Feb 2024 10:01:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pJRL/+Mh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B261D3D564
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 10:01:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708509698; cv=none; b=fS+lyR8KG3G8RPcqDKzKR3uzda3hSQaYT7sPdNXYSzMA+5H9Ug5o2yiTbY7LuqAQ417VT+3tf7l8hCnhRkzndljgjHRYMStK4x0P7loCLWjpIvcf6Phd3EAK6BjRIVNteOrGiBCbBa4P0Yj69oFhZMJzcCuCgn9WM8OiJVzHFy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708509698; c=relaxed/simple;
	bh=DgQbOVTU61ZBQie6d4pXr+DhEStCaUAiCU/ocdVWAbk=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=tz0SrQ1N5pAp29r3KybkQHPeKu5np+zEllhtDGg+l+i1gG0W3pc+DEr2BvphqHyqB6fi0Wy2KApCF1ljPqzQV4g8Yc8L62B5FiDtRjITuEY8sisXJ4TF9unZIlPuB/DLVgbNhDx+oFEzNnNUwOvxOsnhqJzUpPMqesQ4xvWFmd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pJRL/+Mh; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-33ce8cbf465so3260182f8f.3
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 02:01:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708509695; x=1709114495; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fL0mcOobTcwYxXx8b2m98+IfvOzworeTZ6aXI6tNbos=;
        b=pJRL/+MhFdP0LwMNf9IQJsJ/6PD5+wHoMen5lEEX8Aphtft9Fz+HKX8o55bCbrlAYA
         5Z/jYPO9SbkeierS6vAPb4scO533WgolOJaQgu8dROxbWMnqKdEoWPtDBte6PdBowvhH
         n0W1T9ka7IYRlubJSniifgrVGrP/B2KQiLd7ZfraH+10UyQ77z7hj6AS7AQjLyZAzbUR
         U5VtkKsU6kWjPwjAGTEJFgbc89TZZuTXC9VcauhYgtMEHiAy3WMM/lpWfR8f4jebsE59
         0IFgHxRKEhDDQgUthvkxRbPIBdyvykQG5yGc+ElLgxadWJTPadormq6ITulFLK5m4IvT
         E+6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708509695; x=1709114495;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fL0mcOobTcwYxXx8b2m98+IfvOzworeTZ6aXI6tNbos=;
        b=VWKI76co1i02f9K7eEmgpOQtMn4Wwhc465uNxbkZ7k+vlnNVN1G/1maFG+r4OFvsR1
         +MoCh7mNXgAIr/WaI7PlAlEu/CQF/CPiI1tkh8CfbOQMBzjTyWqBQy9+A2Eu0ezpp2Wa
         yFe6F2/HtTf3rxJ68qJAMV/wK66dC63ESL34D2Z6PZAqqysBcmivCFYOaJMGHmh7ofLU
         9BoXIcLAb21jrcLj+BbjcXVt57hc/SYLfDXuGHaWMUT2lAApdTNcN7JqbGE8NGg/OEce
         aWaPnp3KuLrKAk/h2bMXnFoyZ2i+aQgNPaPGkuhSuTksTU7CaH+vbBNYZ/9LMWiUzUAz
         qFsQ==
X-Forwarded-Encrypted: i=1; AJvYcCUQF+7UmNtPH3Ghu6eI/C+1YW2EsU5TP33HehWrMWH+dgnx3Ap00JWjzvx99M6duGW0jiI8SrAhnP1uzVRQz/CqH60gV1DI07Uk7w==
X-Gm-Message-State: AOJu0Yzuv0ZAw45/3Pu4co+JFWyaAYbqZkBABVmMdhudw1aNrNJhGkea
	5D4Ur0cjabP3TL8AZzfAhWTOUC5BeeajzuHtA85o/q8yDC7Iq0yNdGWp623nbx0=
X-Google-Smtp-Source: AGHT+IED/rCd+DPuRUaQSmLl0+vSXBMeqV159iQZjp6y9EdpFxVOjdsE2nlCGIofjRmaE51g1JXBgQ==
X-Received: by 2002:a5d:6784:0:b0:33d:3a02:8368 with SMTP id v4-20020a5d6784000000b0033d3a028368mr7178028wru.8.1708509694859;
        Wed, 21 Feb 2024 02:01:34 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:83fc:439c:6f36:ce5c? ([2a01:e0a:982:cbb0:83fc:439c:6f36:ce5c])
        by smtp.gmail.com with ESMTPSA id x11-20020a5d444b000000b0033b7ce8b496sm16405396wrr.108.2024.02.21.02.01.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Feb 2024 02:01:34 -0800 (PST)
Message-ID: <e3e47a72-8a6c-475b-a248-95da5dae24ff@linaro.org>
Date: Wed, 21 Feb 2024 11:01:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 4/4] arm64: dts: amlogic: add fbx8am DT overlays
Content-Language: en-US, fr
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Marc Gonzalez <mgonzalez@freebox.fr>, DT <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Pierre-Hugues Husson <phhusson@freebox.fr>,
 AML <linux-amlogic@lists.infradead.org>
References: <07f7a695-18a0-4211-82e9-b1e2c7166969@freebox.fr>
 <79ba726d-d02c-44b9-b6f6-59b17ba9755c@freebox.fr>
 <54b4e810-754e-481a-bbc8-984f859b116d@linaro.org>
 <15fcafb2-4b4a-40a1-8ef5-ee3aef9b3b9d@freebox.fr>
 <95cafd69-de6d-497f-b3d6-b6d7a8a3b795@linaro.org>
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
Organization: Linaro Developer Services
In-Reply-To: <95cafd69-de6d-497f-b3d6-b6d7a8a3b795@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Marc,

On 20/02/2024 11:01, Krzysztof Kozlowski wrote:
> On 19/02/2024 11:32, Marc Gonzalez wrote:
>> On 14/02/2024 10:47, Neil Armstrong wrote:
>>
>>> On 13/02/2024 18:14, Marc Gonzalez wrote:
>>>
>>>> Add support for two variants of the fbx8am board.
>>>>
>>>> Signed-off-by: Pierre-Hugues Husson <phhusson@freebox.fr>
>>>> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
>>>> ---
>>>>    arch/arm64/boot/dts/amlogic/Makefile                       |  6 ++++++
>>>>    arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso    | 35 ++++++++++++++++++++++++++++++++++
>>>>    arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso | 25 ++++++++++++++++++++++++
>>>>    3 files changed, 66 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
>>>> index cc8b34bd583d8..1ab160bf928ae 100644
>>>> --- a/arch/arm64/boot/dts/amlogic/Makefile
>>>> +++ b/arch/arm64/boot/dts/amlogic/Makefile
>>>> @@ -8,6 +8,8 @@ dtb-$(CONFIG_ARCH_MESON) += meson-axg-jethome-jethub-j100.dtb
>>>>    dtb-$(CONFIG_ARCH_MESON) += meson-axg-jethome-jethub-j110-rev-2.dtb
>>>>    dtb-$(CONFIG_ARCH_MESON) += meson-axg-jethome-jethub-j110-rev-3.dtb
>>>>    dtb-$(CONFIG_ARCH_MESON) += meson-axg-s400.dtb
>>>> +dtb-$(CONFIG_ARCH_MESON) += meson-g12a-fbx8am-brcm.dtb
>>>> +dtb-$(CONFIG_ARCH_MESON) += meson-g12a-fbx8am-realtek.dtb
>>>>    dtb-$(CONFIG_ARCH_MESON) += meson-g12a-radxa-zero.dtb
>>>>    dtb-$(CONFIG_ARCH_MESON) += meson-g12a-sei510.dtb
>>>>    dtb-$(CONFIG_ARCH_MESON) += meson-g12a-u200.dtb
>>>> @@ -80,3 +82,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-sm1-odroid-hc4.dtb
>>>>    dtb-$(CONFIG_ARCH_MESON) += meson-sm1-sei610.dtb
>>>>    dtb-$(CONFIG_ARCH_MESON) += meson-sm1-x96-air-gbit.dtb
>>>>    dtb-$(CONFIG_ARCH_MESON) += meson-sm1-x96-air.dtb
>>>> +
>>>> +# Overlays
>>>> +meson-g12a-fbx8am-brcm-dtbs	:= meson-g12a-fbx8am.dtb meson-g12a-fbx8am-brcm.dtbo
>>>> +meson-g12a-fbx8am-realtek-dtbs	:= meson-g12a-fbx8am.dtb meson-g12a-fbx8am-realtek.dtbo
>>>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso
>>>> new file mode 100644
>>>> index 0000000000000..ed79809b15859
>>>> --- /dev/null
>>>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso
>>>> @@ -0,0 +1,35 @@
>>>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>>> +// Copyright (c) 2024 Freebox SAS
>>>> +
>>>> +/dts-v1/;
>>>> +/plugin/;
>>>> +
>>>> +#include <dt-bindings/gpio/gpio.h>
>>>> +#include <dt-bindings/gpio/meson-g12a-gpio.h>
>>>> +
>>>> +/ {
>>>> +	compatible = "freebox,fbx8am-brcm", "freebox,fbx8am", "amlogic,g12a";
>>>
>>> This looks fine but I'm unsure if those new compatible should be documented or not,
>>> since they are in an overlay
> 
> All compatibles in entire Linux source code shall be documented, so
> please document any new ones appearing in overlays.

You can either add a follow-up patch to:
- document those new compatibles
- remove those compatibles

As you want, I plan to send the ARM64 DT PR next week.

Neil


> 
>>
>> Rob, Krzysztof, Conor,
>>
>> Just want to make sure this was done "right".
>>
>> Is it acceptable for an overlay (DTSO) to define a more specific compatible prop?
> 
> I think it is fine and some DTSO already do it. User-space might want to
> identify that specific overlay is applied or not. Of course this will
> not work when multiple overlays are applied and each changes compatible,
> thus I would say this is in general specific to particular cases of
> exclusive overlays. In such case, why not making it new board DTS?
> 
> If this is not exclusive overlay, then new compatible looks wrong.
> 
> Best regards,
> Krzysztof
> 


