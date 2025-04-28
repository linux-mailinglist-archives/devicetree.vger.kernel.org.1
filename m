Return-Path: <devicetree+bounces-171425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDE4A9EA67
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 10:13:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C95B1898DE3
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 08:13:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 805CB25DAE2;
	Mon, 28 Apr 2025 08:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CqGfqF2f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DEB211476
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 08:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745827988; cv=none; b=HAznDIahYscNNTYDPwVc9gnZQpI9E0mzkIC68m/0LfxOe9foEY/9mERwIXeYD50UFAexE69J0EmxOsKnMhofHRWckoHGjoBTMu9kWbRUcymDUNjzZ0rOyPmOqYdG6pHfiQ4DFqM6yTbm94N+ViKRxEhBtJMVT1/BoVP/UPU2js4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745827988; c=relaxed/simple;
	bh=bVaq8ds7GrlFWe7h9Sp7Cj+/V1lazxrirLTIbwjo2I8=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=YU4uSBSygJhGjcsOf5KpbexGLz09TKwxpWCe+qlrZPhWKMoYVLFFHchpS/9bdhTKDtg7jNZxVS4vABC7TIgXa9DfKPyVsALWd5bYzzPhPNCZtJsK5fK925GKEKnQYsjafPew/DL+CPJFt9DP73rHTWs/w5fx5+fXvz7D5ILhcws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CqGfqF2f; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-39ee57c0b8cso5232050f8f.0
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 01:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745827983; x=1746432783; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A2BE4IFNraf2nwb+gMN6BrLPdvxjK4GMRcC/zeJ//7Y=;
        b=CqGfqF2fiSwH5xKoGgXv7jHxLbeeubslDlEJgIvEZ0DcPQ+AjMQGWdL58NpuENYaDC
         NfUkLb9Vi6iF6vI1jVJ/pDtPlVGY5bvf8qGmuNwecbsaylmzwz0XNNELAiCCLwLiHq/i
         HklXVGRdRCEHD2CgEB88RIvknbnzr6ODhaUzFmumxNxF7o1DNSup5SzmtHNyrMeXF0G2
         dx/Mnvz52LHRJGEAKR8m3Ko7St2nic3G0LoERy8Q1+LLmAWUMGz+bAkUZKs2wkVa2HeP
         NByOIfLw7xDbPxD1y2zeefs9tHet0MPKysk9gexzWk2O+dvkXucDjSYIGXE99DU54iaI
         KVEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745827983; x=1746432783;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=A2BE4IFNraf2nwb+gMN6BrLPdvxjK4GMRcC/zeJ//7Y=;
        b=T8I9SG626bNCSMAB0EYMKjmXnTpgtw/aGkoSjcOzbzTTwvViG7pJ6iJy2xwzLz29pt
         jaVARF8m8F9d6F7xbCVdJsVigwu2E8p1qtfE+l3hH5VTrS0cBh074tX2iQlCutK04Ba8
         L3LeVJxTiPOgNbCO75yH4DnKLesGnCDL2VO98jt4qECRdq6vxxSDlMGz4duVEe6Glg/G
         DtI25vmfXs6D2t4OPR6u4WKqdhIu9cvSe7RJRxTxMqufcVAD0XCn+x3GBfNDnMAjPRTj
         qfHgK2ALZL9NLn74sQ/HbPgVxiZQzky66XkW/yR0YRTAbOz48qT8Q7PiPBvgzTiNEffp
         XJGQ==
X-Gm-Message-State: AOJu0YyKjPB/5KkI0EkjU2EdgCIxsfLhfdzOB4HVbxvxqbPbbvv03j0v
	0F56+IjOUz7HZLyc4LyzXtN0RVHvv8CfGcQMB+0tfEG6/u/aAWy5zYzAbcwo1rQ=
X-Gm-Gg: ASbGncvbWBxXt9LIylOsoYiYGM1YKBECeOiWrGi/ZhX9VcWh91cKpbmtXNIkkZhvPOw
	jBmRsCmlWKJAhz/to7vHnqMLVA17Msh5aS27NpLCT6CRO5h6kFDtY4sXoNwJyC2RSSwaIyN2dpd
	3ORC1EgIuenhkGnPD2mMCkgTEPb4Kxv5oABwTXUGUZJmcR9DLVF/IO5GADddtbPw8pqx4UQt7TE
	CoQBRLiZvNTWFK7+Cy/A9Z397/oQw1L4RSyI8Xxku4mXHxwaekIh8TP13sd+eYJ0WfXkAYEGvT+
	8nIoaccaANT1AQpk8Xl5EI0S0appWMDJPtrh1e97nDTKVKDQCyrEziJYGXM1B8gVGJl3uzwxL59
	JWxYI22bt1m5WgPSmYQ==
X-Google-Smtp-Source: AGHT+IFirYO+R6cxa4E/PxDKxv2Eoalg7DNOh3n5z36BXYljdt+Ef5dXthwTwXbfPkkn6KEjfC0prQ==
X-Received: by 2002:a05:6000:1ac5:b0:390:f0ff:2c11 with SMTP id ffacd0b85a97d-3a074e146c6mr6922171f8f.2.1745827983497;
        Mon, 28 Apr 2025 01:13:03 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:e2bb:d0cc:c4c9:4442? ([2a01:e0a:3d9:2080:e2bb:d0cc:c4c9:4442])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073e5d264sm10609868f8f.95.2025.04.28.01.13.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Apr 2025 01:13:03 -0700 (PDT)
Message-ID: <449cc46e-fab8-401a-b887-51d621695a1c@linaro.org>
Date: Mon, 28 Apr 2025 10:13:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 0/7] Baisc devicetree support for Amlogic S6 S7 and S7D
To: Xianwei Zhao <xianwei.zhao@amlogic.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
References: <20250317-s6-s7-basic-v1-0-d653384e41f3@amlogic.com>
 <a175ed1d-9e57-4150-af8f-7ca785203108@amlogic.com>
 <e3229c42-b322-447a-ad1e-86c6f20dd54e@linaro.org>
 <be8b7874-1251-4ba8-9243-a615517861ab@amlogic.com>
 <eb1c3442-6b86-42e9-a672-eaba7de8b375@linaro.org>
 <32473413-b2fb-471b-b2d5-b4fd7914b57f@amlogic.com>
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
In-Reply-To: <32473413-b2fb-471b-b2d5-b4fd7914b57f@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 28/04/2025 09:57, Xianwei Zhao wrote:
> Hi Neil,
>     Thanks for your reply.
> 
> On 2025/4/23 15:23, neil.armstrong@linaro.org wrote:
>> [ EXTERNAL EMAIL ]
>>
>> Hi,
>>
>> On 23/04/2025 08:15, Xianwei Zhao wrote:
>>> Hi Neil,
>>>     Thanks for your reply.
>>>
>>> On 2025/4/22 21:49, Neil Armstrong wrote:
>>>> [ EXTERNAL EMAIL ]
>>>>
>>>> Hi,
>>>>
>>>> On 22/04/2025 13:45, Xianwei Zhao wrote:
>>>>> Hi Neil,
>>>>>     A gentle ping, thanks.
>>>>
>>>> I'll apply them this week except patch 4,
>>>>
>>>> so can you send patch 4 separately since it goes via the tty tree ?
>>>>
>>>
>>> I will send patch 4 separately.
>>> The following patches(5 6 7) can be not included for now. Without the patch 4, the command "make ARCH=arm64 dtbs_check W=1" will fail to execute.
>>
>> I know, but since it's reviewed, Greg KH will pick it for the next release so it's fine.
>>
> 
> I have already sent patch 4 separately. From Rob's reply, do you think it can be picked up together?
> 
> https://lore.kernel.org/all/CAL_JsqKD=yespd0WM90VBr_XWdppimzDzecmwNfGMV+hNSHuRA@mail.gmail.com/


Greg KH picked it already.

Neil

> 
>> Neil
>>
>>>
>>>> Thanks,
>>>> Neil
>>>>
>>>>>
>>>>> On 2025/3/17 15:16, Xianwei Zhao via B4 Relay wrote:
>>>>>> [ EXTERNAL EMAIL ]
>>>>>>
>>>>>> Amlogic S6 S7 and S7D are application processors designed for
>>>>>> hybrid OTT/IP Set Top Box and high-end media box applications.
>>>>>>
>>>>>> Add the new S6 SoC/board device tree bindings.
>>>>>> Add the new S7 SoC/board device tree bindings.
>>>>>> Add the new S7D SoC/board device tree bindings.
>>>>>>
>>>>>> Add basic support for the S6 based Amlogic BL209 board, which describes
>>>>>> the following components: CPU, GIC, IRQ, Timer and UART. These are capable of
>>>>>> booting up into the serial console.
>>>>>>
>>>>>> Add basic support for the S7 based Amlogic BP201 board, which describes
>>>>>> the following components: CPU, GIC, IRQ, Timer and UART. These are capable of
>>>>>> booting up into the serial console.
>>>>>>
>>>>>> Add basic support for the S7D based Amlogic BM202 board, which describes
>>>>>> the following components: CPU, GIC, IRQ, Timer and UART. These are capable of
>>>>>> booting up into the serial console.
>>>>>>
>>>>>> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
>>>>>> ---
>>>>>> Xianwei Zhao (7):
>>>>>>        dt-bindings: arm: amlogic: add S6 support
>>>>>>        dt-bindings: arm: amlogic: add S7 support
>>>>>>        dt-bindings: arm: amlogic: add S7D support
>>>>>>        dt-bindings: serial: amlogic,meson-uart: Add compatible string for S6/S7/S7D
>>>>>>        arm64: dts: add support for S6 based Amlogic BL209
>>>>>>        arm64: dts: add support for S7 based Amlogic BP201
>>>>>>        arm64: dts: add support for S7D based Amlogic BM202
>>>>>>
>>>>>>   Documentation/devicetree/bindings/arm/amlogic.yaml | 18 ++++
>>>>>>   .../bindings/serial/amlogic,meson-uart.yaml        |  3 +
>>>>>>   arch/arm64/boot/dts/amlogic/Makefile               |  3 +
>>>>>>   .../boot/dts/amlogic/amlogic-s6-s905x5-bl209.dts   | 42 +++++++++
>>>>>>   arch/arm64/boot/dts/amlogic/amlogic-s6.dtsi        | 97 +++++++++++++++++++++
>>>>>>   .../boot/dts/amlogic/amlogic-s7-s805x3-bp201.dts   | 41 +++++++++
>>>>>>   arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi        | 99 ++++++++++++++++++++++
>>>>>>   .../boot/dts/amlogic/amlogic-s7d-s905x5m-bm202.dts | 41 +++++++++
>>>>>>   arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi       | 99 ++++++++++++++++++++++
>>>>>>   9 files changed, 443 insertions(+)
>>>>>> ---
>>>>>> base-commit: 73e4ffb27bb8a093d557bb2dac1a271474cca99c
>>>>>> change-id: 20250221-s6-s7-basic-f300c30877e6
>>>>>>
>>>>>> Best regards,
>>>>>> -- 
>>>>>> Xianwei Zhao <xianwei.zhao@amlogic.com>
>>>>>>
>>>>>>
>>>>
>>


