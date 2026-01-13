Return-Path: <devicetree+bounces-254405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A55D4D17D88
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:05:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 71623303E658
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:01:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BF49343D6F;
	Tue, 13 Jan 2026 10:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GhpNtDX/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EAF433F8C5
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768298483; cv=none; b=jQyPEzYpGjGVaILw3hSfiydyNvfLUoy9LsSM6IruBBtwBcQoxIlCmQxFO1X59IJOcIh0osdvy9dtl8DeCulAdtpFa59QnSZcT+8nhyks1T+PoLnOkV8kPBWiqCYtWs8qvKjmuRW0imz3Ku7wU7+tVNp4gtg87nrc2MhEYXzt3a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768298483; c=relaxed/simple;
	bh=GzTqntcd3GakPhCWLwB5H+TGW/kz+KgJ63jR9aHt5mA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=lYrwaxPqZgvxf8vk8pxrHmSv0WkIgEPf1FRYQwmWjOtFRbhatmBYWnEx87yz+1nBG2KIHe13HxdsUmeEhfcjaRFBrohFGCZY/drDkNYJBumDntMZpUTgR/1YAMNhhmJznKLBlJbIoYUnV1aM7a9P8TDkyuv6IO/iLGFNr/HkKv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GhpNtDX/; arc=none smtp.client-ip=209.85.221.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f65.google.com with SMTP id ffacd0b85a97d-42fbc3056afso4222958f8f.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:01:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768298480; x=1768903280; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SxiGIDObJlq7aXCI7xV3vqh5HtX1MZl5+b/eMs8JrbQ=;
        b=GhpNtDX/f4XXRWPdqdywytak/4VYOrJKwNq6i3Hanc8elx+T1lYlBg4lBhfLMvikQm
         M11O8HXFsrki+e3sEuxqTACA4J5vvztyoOAzRRvUdrxX1FnvrpcRQyf+/llh45BxnXZj
         972K++Y19npxfb0DTnLzOtRV7X3yKbIua4Om81g/VcgAvm1PzbPdeVe/utl3WgcQD1o7
         b0zk9dpePORi9hS4ZnU206kkIDlQc/RR+0ICu5FqlGRRxeAma6uDTTiq4DmsWnTqaXUa
         QsfAv/C9AcEEFSeFpQPzaVEF5VgmuJHCFj2cSCl7xQXMoQ40TtPV8o9rG3HJgomqPVby
         gzpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768298480; x=1768903280;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SxiGIDObJlq7aXCI7xV3vqh5HtX1MZl5+b/eMs8JrbQ=;
        b=vA+mvjIu00JMa+vfuNPvVTH4J1AyjKUsNRnKFK0L92qPb3ManiVCR6tt5Q+ffwNULA
         nCpbmIokoPD4IZ/e9N/wauRswPqNnbRYXE/n4JJ74HbYJbDKWVqbqvhm+VsiD0gsLqEv
         TyQU5SWI9r4nZVQOOPjCjXeVdfAuzzfvdVg8CzERETaLpuyVlXEj1wIPuDAKMEzrzZqo
         9MNNBMJ8ztGkwyI+0I8T5wU+iXxWKjdb9olKAs3egJM3rtJYOz2wnEDDdJKX0wKNiZJL
         ialIIG+OZbJuxI2mtx9MuWRlKs/lBKLgsYu3kE810V+9n1Sqj4ltXEdyL5+B+OALKdJH
         T/Mw==
X-Forwarded-Encrypted: i=1; AJvYcCVv65182x2qCMzn9Lpr0lF6lHPavI8DyCGu5BsQY7tXWefVGs/CcLgdbkv5GXIBvdcVskOszIQ15FtN@vger.kernel.org
X-Gm-Message-State: AOJu0Yzgx3BL/CknKoLijZfshJFT0HbW5U0KV6nhIfNkRCafawojJ48u
	Oa+1bte5OyxcOp875xfJp5XzxTxt7BpnH95L76Jqx6EM0HKk0BXaWJmjfiUC0ntI4RE=
X-Gm-Gg: AY/fxX5/qIradigjOW4udxmPxH1DT4Oe2Z/3L46TwRdIUSzRdnvnuUDwt/re82deuFC
	B2ttxZZSJV5qpwiXbjor1EpG/Ry78HA5vSkLW4opi3VuPYb/8GyDBXfTyje6L1r7T9l/pMu4359
	ooqbllHbR9UnWFigB2Vqk5WGnisod6HjQUA20wGeTxATY4/RG/CVNuKAAgrgHE0rRltBAWQ1tSL
	rh5nC5ge4N8RWLNwcmwhqp+LGda4KcoCysLhwBbSjLVUaSNN6jUTkC29wLIaRfTdwiXoaSZedpn
	EyrtSp2CYYO3KPUJjfb5NKFEkfCUNvQ3qVacSvns1fN4DV1sDNXWVwU3IkfeLbtJ4u+ihMTGjwk
	PKJ0k0skDQ4MPNqrMNIio/6SXm0uP6t/ysgGRIAFtXDI0ItVgqq7cTfcWPx7EXJZjMG2qRpspX0
	0FHh2NriXr9dsIHwlkvgcLJliylTZcPJz8jjBXK64=
X-Google-Smtp-Source: AGHT+IFtEGp5Rx9oO08Dn4BpMJA+C/+ExWnZVveHe5szu0IIx2qhT1DHX8lPqBYm1TAwPRYOdBfKYQ==
X-Received: by 2002:adf:ea46:0:b0:432:dfa8:e1b6 with SMTP id ffacd0b85a97d-432dfa8e228mr10548599f8f.39.1768298479725;
        Tue, 13 Jan 2026 02:01:19 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080::fa42:7768? ([2a01:e0a:3d9:2080::fa42:7768])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0860f5sm43045980f8f.0.2026.01.13.02.01.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 02:01:18 -0800 (PST)
Message-ID: <5e3ee829-9c9b-4494-878c-09fa58cad63b@linaro.org>
Date: Tue, 13 Jan 2026 11:01:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] arm64: dts: amlogic: S4: fix SD card initialization
 failure
To: Nick Xie <xieqinick@gmail.com>, Jerome Brunet <jbrunet@baylibre.com>
Cc: khilman@baylibre.com, martin.blumenstingl@googlemail.com,
 xianwei.zhao@amlogic.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 robh@kernel.org, nick@khadas.com
References: <20260113011931.40424-1-nick@khadas.com>
 <1jsec9ritd.fsf@starbuckisacylon.baylibre.com>
 <CAP4nuTXUd23e6k6iqRVJw6Rcsc46+RrLGR9ZCu=o28g3u2FKSQ@mail.gmail.com>
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
In-Reply-To: <CAP4nuTXUd23e6k6iqRVJw6Rcsc46+RrLGR9ZCu=o28g3u2FKSQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 1/13/26 10:38, Nick Xie wrote:
> Jerome Brunet <jbrunet@baylibre.com> 于2026年1月13日周二 16:57写道：
>>
>> On mar. 13 janv. 2026 at 09:19, Nick Xie <xieqinick@gmail.com> wrote:
>>
>>> The SD controller (sd@fe08a000) requires a clock source capable of
>>> generating a 400kHz frequency for the identification phase.
>>>
>>> Currently, the sd node uses CLKID_SD_EMMC_B as clkin0 and CLKID_FCLK_DIV2
>>> as clkin1. Both of these are high-frequency clocks (e.g., ~1GHz).
>>
>> The reason you are having this problem is because CLKID_SD_EMMC_B does
>> not provide 400kHz by default on this platform. We have been operating
>> with this (weak) assumption so far ... and it was OK until now.
>>
>>> The internal divider of the SD controller is limited to a maximum value
>>> of 64 (2^6). With input frequencies significantly higher than 25.6MHz
>>> (400kHz * 64), the driver is unable to generate the required 400kHz
>>> clock, causing the probe to fail with -EINVAL.
>>>
>>> Fix this by reparenting clkin0 to the 24MHz XTAL clock, consistent with
>>> the configuration of the sdio and emmc nodes. This allows the divider
>>> to successfully generate 400kHz (24MHz / 60).
>>>
>>
>> DT generally describe what the HW is, not how you wish to configure it.
>>
>> What you are doing here does not reparent anything. You are actually
>> mis-representing the clock tree, making the MMC device believe it has
>> 24MHz on its clkin0, even-though what it is really has still is
>> CLKID_SD_EMMC_B (presumably running a 1GHz)
>>
>> So if my understanding is correct, you are indeed setting the divider to
>> 60 instead of 64, but you are still dividing 1GHz so what you actually
>> get it 16,6MHz
>>
>> If you want to get 24MHz the clkin0, we need to assign the rate,
>> something we probably should have done before.
>>
>> I'll send something for this
>>
>>> Verified on Khadas VIM1S with SoC S4 S905Y4.
>>>
>>> Fixes: 3ab9d54b5d847 ("arm64: dts: amlogic: enable some device nodes for S4")
>>>
>>> Signed-off-by: Nick Xie <nick@khadas.com>
>>> ---
>>>   arch/arm64/boot/dts/amlogic/meson-s4.dtsi | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
>>> index 9d99ed2994dfa..b87bc83b5a9bb 100644
>>> --- a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
>>> +++ b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
>>> @@ -833,7 +833,7 @@ sd: mmc@fe08a000 {
>>>                        reg = <0x0 0xfe08a000 0x0 0x800>;
>>>                        interrupts = <GIC_SPI 177 IRQ_TYPE_EDGE_RISING>;
>>>                        clocks = <&clkc_periphs CLKID_SDEMMC_B>,
>>> -                              <&clkc_periphs CLKID_SD_EMMC_B>,
>>> +                              <&xtal>,
>>>                                 <&clkc_pll CLKID_FCLK_DIV2>;
>>>                        clock-names = "core", "clkin0", "clkin1";
>>>                        resets = <&reset RESET_SD_EMMC_B>;
>>
>> --
>> Jerome
> 
> Hello Jerome,
> 
> Thanks for your review.
> 
> I also checked the Amlogic 5.15 vendor kernel [1], it also use xtal as clkin0.
> 
> [1] - https://github.com/khadas/common_drivers/blob/khadas-vims-5.15.y/arch/arm64/boot/dts/amlogic/meson-s4.dtsi#L1358

OK looking at the driver, they reference mux0 (CLKID_SD_EMMC_B_CLK_MUX) & mux1 (CLKID_SD_EMMC_B_CLK) and they set parent of mux0, clkin0 (xtal) which is exactly what Jerome said:
https://github.com/khadas/common_drivers/blob/e9cec30b94864f4f3518cc492940690709a5075b/drivers/mmc/host/meson-gx-mmc.c#L751

We need to assign the rate of clkin0 to a low enough rate for the internal divider of the SD controller
to achieve 400KHz.

Neil

