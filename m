Return-Path: <devicetree+bounces-85286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7848C92F8B9
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 12:13:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 335942822E1
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 10:13:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A917B145B0D;
	Fri, 12 Jul 2024 10:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GICrmJJC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDE782D93
	for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 10:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720779206; cv=none; b=DjeeL15ii5BFL1iGECXlaUGvUKKtXRk3AEuCnpzqe8LpD235ITX5DVegPD0nkycJDxdgslCEviylbfeqxlJ8ZtUkE/6XHX7bb/i713hR/3kYRuZaiWHUJfeSL2Q5Au3hjjEruZCrKCe53ttp97/mawK9pz6H8nl/LsaGYDDLMSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720779206; c=relaxed/simple;
	bh=ckM7CA1txjCZqOnjkIofxhfSQtC7gHq2zK63rihn8Ys=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=ckTmpDNrhYEtDn1o+j1CC+PM2ZY7RjY0sProfPpDcJeokjGHJCTuTQc/5IMMqdYY7RSqQbsSoT3Yh7Q4JcNiB+Nca6ylOzcmSUfvBKj+5OaMWOVFyxrekB4y3W+GNszCvauPiAgwYi/v0xqLeT9NRTJIe0JhbtvVuIJPr7Ie1hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GICrmJJC; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52eafa1717bso1853327e87.2
        for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 03:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720779202; x=1721384002; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wsNQy2jkaM+75qScnBWI2TYdQLBLHvT5k26EPfA7lXY=;
        b=GICrmJJCVYCsr6dkjajCpOc8byBYSN2pp8glrbUZEEXs/f3QsnHhGfGqKtcb3TBw/o
         So/b4a9n7Q/XFuA6V6FdPQWFDNRxC7K8zy4J8xgx5TDYBuT+naLOjM9NbxyBM25BOZwZ
         57YL9dTqGFDDGRNZ7L6noheLDmUpAVXeK9U0trz8jvTqeUHjrOq5Aor+yDIXBlY7aUk/
         rYCZ4k/rXueIHDBb7cyD6oi1xVBujFMH/hetWt9dlBBUqwCNbhBFsGymrJex/FSCyaVy
         zS16ll7io30jGTlTet1AS0QVdYw9GNOM59W5Z2XXqfoFpu4c1GycVskdgL49jyBlAtZr
         R+zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720779202; x=1721384002;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wsNQy2jkaM+75qScnBWI2TYdQLBLHvT5k26EPfA7lXY=;
        b=OBY8Npxm8ATJ2RpOK3VrxQVPtYoRymdLt4beZ16ODDJ5vzeQJyaEqCHtfGYgdM5LL4
         qenu79HaJzhssH39qjv1ou9BaboGCA8ecl3G7QsCh0xS2CKCDwbPwpy+g7aKa8DWAQoP
         iqyCuvrVjRpr89uujXWC2yrEXAIfdS3jagvogrYfjEzhTQu4jlhUQxFt43L3ImlX6uaj
         SomMwc9X/LyxL0AQNh1FUJa1QXzhcebZwJ3YBdnJrCz4TyJnZ0iykmEiSIG65oLxlvSJ
         JVk8XHM16M/a0G424dmz702QniokIaNIa7XszzZ76eETn+TjyTujRTU7x+g0EDmVGmaj
         VGVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZUjP70FsdM+n3b3n2uvuILrQhLzZ3nvK8F4YnvExe8ETzQk5elH1pEmtKU13BKHdTnWr1ruuz5i5baObS0mXNus4w8SaP1RoUGQ==
X-Gm-Message-State: AOJu0YwfbA5r4X5/koAX0aW4snWmW0in/35NcxX7Qmo8YxbZdbrf7gCR
	jExcMczDE0NBGXonI8K4eXma7xFCECuaPMuyMIGUDGH9rpShNspobZ/sp4pNNuI=
X-Google-Smtp-Source: AGHT+IEd539KfFqmFkT7ezigm7FWUMfk2F113/IRkdhrdt+By5gFDbRh6mCXMgLrkEd5RzxzR8JerA==
X-Received: by 2002:a19:f703:0:b0:52e:9407:ddcd with SMTP id 2adb3069b0e04-52eb9994b6dmr6480310e87.18.1720779202092;
        Fri, 12 Jul 2024 03:13:22 -0700 (PDT)
Received: from ?IPV6:2a0d:e487:123f:f92c:dc0b:c36a:f16e:7964? ([2a0d:e487:123f:f92c:dc0b:c36a:f16e:7964])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4279f28872fsm18119105e9.25.2024.07.12.03.13.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jul 2024 03:13:21 -0700 (PDT)
Message-ID: <182477e0-3be4-4de0-a8e8-3e6562b16d53@linaro.org>
Date: Fri, 12 Jul 2024 12:13:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 2/2] arm64: dts: amlogic: add support for Radxa ZERO 2
 Pro
To: FUKAUMI Naoki <naoki@radxa.com>,
 Christian Hewitt <christian@hewittfamily.org.uk>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree <devicetree@vger.kernel.org>,
 AML <linux-amlogic@lists.infradead.org>
References: <20240711202013.26573-1-naoki@radxa.com>
 <20240711202013.26573-2-naoki@radxa.com>
 <D60FBED7-C930-41F6-A2C6-12C2CAC62F5D@hewittfamily.org.uk>
 <E799C1884844F5FB+df8c5d6d-c623-4960-b974-80b1953cb748@radxa.com>
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
In-Reply-To: <E799C1884844F5FB+df8c5d6d-c623-4960-b974-80b1953cb748@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 12/07/2024 07:01, FUKAUMI Naoki wrote:
> Hi,
> 
> On 7/12/24 13:55, Christian Hewitt wrote:
>>> On 12 Jul 2024, at 12:20 AM, FUKAUMI Naoki <naoki@radxa.com> wrote:
>>>
>>> Radxa ZERO 2 Pro is a ultra tiny high performance SBC[1] using the
>>> Amlogic A311D chip that ships in a number of eMMC configurations:
>>>
>>> - Amlogic A311D SoC
>>> - Quad A73 + Dual A53 CPU
>>> - Mali G52-MP4 GPU
>>> - NPU (5 TOPs)
>>> - 4GB LPDDR4 RAM
>>> - 32/64/128GB eMMC
>>> - micro SD Card slot
>>> - Wi-Fi 5 and BT 5.0
>>> - 1x USB 2.0 Type-C port (OTG)
>>> - 1x USB 3.0 Type-C port (Host)
>>> - Micro HDMI 2.0
>>> - MIPI DSI
>>> - MIPI CSI
>>> - 40 Pin GPIO header
>>>
>>> [1] https://radxa.com/products/zeros/zero2pro
>>
>>                                           ^^^
>> The Radxa website team uses this :)
> 
> please open link in browser.
> (I'm not talking about URL)

Yeah so the marketing name is "Zero 2 Pro", so the dt file should either be:
- meson-g12b-radxa-zero-2-pro.dts
or
- meson-g12b-radxa-zero2-pro.dts
for consistency.

Neil

> 
> -- 
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
> 
>>>
>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>>
>>> Changes in v2:
>>> - fix dtb build error
>>> ---
>>> arch/arm64/boot/dts/amlogic/Makefile          |   1 +
>>> .../amlogic/meson-g12b-radxa-zero-2pro.dts    |  14 +
>>
>> If it’s a Radxa Zero 2 ‘Pro’ then meson-g12b-zero2-pro.dts
>> or meson-g12b-zero2pro.dts would be appropriate. The Zero
>> ‘2pro’ filename is giving me OCD twitches.
>>
>> CH.
>>
>>> .../dts/amlogic/meson-g12b-radxa-zero2.dts    | 527 +-----------------
>>> ...-zero2.dts => meson-g12b-radxa-zero2.dtsi} |   6 +-
>>> 4 files changed, 30 insertions(+), 518 deletions(-)
>>> create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero-2pro.dts
>>> rewrite arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts (98%)
>>> copy arch/arm64/boot/dts/amlogic/{meson-g12b-radxa-zero2.dts => meson-g12b-radxa-zero2.dtsi} (98%)
>>>
>>> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
>>> index 29417f04f886..4f95721698d0 100644
>>> --- a/arch/arm64/boot/dts/amlogic/Makefile
>>> +++ b/arch/arm64/boot/dts/amlogic/Makefile
>>> @@ -31,6 +31,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-go-ultra.dtb
>>> dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2-plus.dtb
>>> dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2.dtb
>>> dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2l.dtb
>>> +dtb-$(CONFIG_ARCH_MESON) += meson-g12b-radxa-zero-2pro.dtb
>>> dtb-$(CONFIG_ARCH_MESON) += meson-g12b-radxa-zero2.dtb
>>> dtb-$(CONFIG_ARCH_MESON) += meson-g12b-s922x-bananapi-m2s.dtb
>>> dtb-$(CONFIG_ARCH_MESON) += meson-g12b-s922x-khadas-vim3.dtb
>>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero-2pro.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero-2pro.dts
>>> new file mode 100644
>>> index 000000000000..62e44de9a550
>>> --- /dev/null
>>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero-2pro.dts
>>> @@ -0,0 +1,14 @@
>>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>> +
>>> +/dts-v1/;
>>> +
>>> +#include "meson-g12b-radxa-zero2.dtsi"
>>> +
>>> +/ {
>>> + compatible = "radxa,zero-2pro", "amlogic,a311d", "amlogic,g12b";
>>> + model = "Radxa ZERO 2 Pro";
>>> +};
>>> +
>>> +&sound {
>>> + model = "RADXA-ZERO-2PRO";
>>> +};
>>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
>>> dissimilarity index 98%
>>> index 8445701100d0..b4734cb63aaa 100644
>>> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
>>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
>>> @@ -1,513 +1,14 @@
>>> -// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>> -/*
>>> - * Copyright (c) 2019 BayLibre, SAS
>>> - * Author: Neil Armstrong <narmstrong@baylibre.com>
>>> - * Copyright (c) 2019 Christian Hewitt <christianshewitt@gmail.com>
>>> - * Copyright (c) 2022 Radxa Limited
>>> - * Author: Yuntian Zhang <yt@radxa.com>
>>> - */
>>> -
>>> -/dts-v1/;
>>> -
>>> -#include "meson-g12b-a311d.dtsi"
>>> -#include <dt-bindings/input/input.h>
>>> -#include <dt-bindings/leds/common.h>
>>> -#include <dt-bindings/gpio/meson-g12a-gpio.h>
>>> -#include <dt-bindings/sound/meson-g12a-tohdmitx.h>
>>> -
>>> -/ {
>>> - compatible = "radxa,zero2", "amlogic,a311d", "amlogic,g12b";
>>> - model = "Radxa Zero2";
>>> -
>>> - aliases {
>>> - serial0 = &uart_AO;
>>> - serial2 = &uart_A;
>>> - };
>>> -
>>> - chosen {
>>> - stdout-path = "serial0:115200n8";
>>> - };
>>> -
>>> - memory@0 {
>>> - device_type = "memory";
>>> - reg = <0x0 0x0 0x0 0x80000000>;
>>> - };
>>> -
>>> - fan0: pwm-fan {
>>> - compatible = "pwm-fan";
>>> - #cooling-cells = <2>;
>>> - cooling-levels = <0 64 128 192 255>;
>>> - pwms = <&pwm_AO_ab 0 40000 0>;
>>> - };
>>> -
>>> - gpio-keys-polled {
>>> - compatible = "gpio-keys-polled";
>>> - poll-interval = <100>;
>>> - power-button {
>>> - label = "power";
>>> - linux,code = <KEY_POWER>;
>>> - gpios = <&gpio_ao GPIOAO_3 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
>>> - };
>>> - };
>>> -
>>> - leds {
>>> - compatible = "gpio-leds";
>>> -
>>> - led-green {
>>> - color = <LED_COLOR_ID_GREEN>;
>>> - function = LED_FUNCTION_STATUS;
>>> - gpios = <&gpio GPIOA_12 GPIO_ACTIVE_HIGH>;
>>> - linux,default-trigger = "heartbeat";
>>> - };
>>> - };
>>> -
>>> - hdmi-connector {
>>> - compatible = "hdmi-connector";
>>> - type = "a";
>>> -
>>> - port {
>>> - hdmi_connector_in: endpoint {
>>> - remote-endpoint = <&hdmi_tx_tmds_out>;
>>> - };
>>> - };
>>> - };
>>> -
>>> - emmc_pwrseq: emmc-pwrseq {
>>> - compatible = "mmc-pwrseq-emmc";
>>> - reset-gpios = <&gpio BOOT_12 GPIO_ACTIVE_LOW>;
>>> - };
>>> -
>>> - sdio_pwrseq: sdio-pwrseq {
>>> - compatible = "mmc-pwrseq-simple";
>>> - reset-gpios = <&gpio GPIOX_6 GPIO_ACTIVE_LOW>;
>>> - clocks = <&wifi32k>;
>>> - clock-names = "ext_clock";
>>> - };
>>> -
>>> - ao_5v: regulator-ao-5v {
>>> - compatible = "regulator-fixed";
>>> - regulator-name = "AO_5V";
>>> - regulator-min-microvolt = <5000000>;
>>> - regulator-max-microvolt = <5000000>;
>>> - regulator-always-on;
>>> - };
>>> -
>>> - vcc_1v8: regulator-vcc-1v8 {
>>> - compatible = "regulator-fixed";
>>> - regulator-name = "VCC_1V8";
>>> - regulator-min-microvolt = <1800000>;
>>> - regulator-max-microvolt = <1800000>;
>>> - vin-supply = <&vcc_3v3>;
>>> - regulator-always-on;
>>> - };
>>> -
>>> - vcc_3v3: regulator-vcc-3v3 {
>>> - compatible = "regulator-fixed";
>>> - regulator-name = "VCC_3V3";
>>> - regulator-min-microvolt = <3300000>;
>>> - regulator-max-microvolt = <3300000>;
>>> - vin-supply = <&vddao_3v3>;
>>> - regulator-always-on;
>>> - /* FIXME: actually controlled by VDDCPU_B_EN */
>>> - };
>>> -
>>> - vddao_1v8: regulator-vddao-1v8 {
>>> - compatible = "regulator-fixed";
>>> - regulator-name = "VDDIO_AO1V8";
>>> - regulator-min-microvolt = <1800000>;
>>> - regulator-max-microvolt = <1800000>;
>>> - vin-supply = <&vddao_3v3>;
>>> - regulator-always-on;
>>> - };
>>> -
>>> - vddao_3v3: regulator-vddao-3v3 {
>>> - compatible = "regulator-fixed";
>>> - regulator-name = "VDDAO_3V3";
>>> - regulator-min-microvolt = <3300000>;
>>> - regulator-max-microvolt = <3300000>;
>>> - vin-supply = <&ao_5v>;
>>> - regulator-always-on;
>>> - };
>>> -
>>> - vddcpu_a: regulator-vddcpu-a {
>>> - /*
>>> - * MP8756GD Regulator.
>>> - */
>>> - compatible = "pwm-regulator";
>>> -
>>> - regulator-name = "VDDCPU_A";
>>> - regulator-min-microvolt = <730000>;
>>> - regulator-max-microvolt = <1022000>;
>>> -
>>> - pwm-supply = <&ao_5v>;
>>> -
>>> - pwms = <&pwm_ab 0 1250 0>;
>>> - pwm-dutycycle-range = <100 0>;
>>> -
>>> - regulator-boot-on;
>>> - regulator-always-on;
>>> - };
>>> -
>>> - vddcpu_b: regulator-vddcpu-b {
>>> - /*
>>> - * Silergy SY8120B1ABC Regulator.
>>> - */
>>> - compatible = "pwm-regulator";
>>> -
>>> - regulator-name = "VDDCPU_B";
>>> - regulator-min-microvolt = <730000>;
>>> - regulator-max-microvolt = <1022000>;
>>> -
>>> - pwm-supply = <&ao_5v>;
>>> -
>>> - pwms = <&pwm_AO_cd 1 1250 0>;
>>> - pwm-dutycycle-range = <100 0>;
>>> -
>>> - regulator-boot-on;
>>> - regulator-always-on;
>>> - };
>>> -
>>> - sound {
>>> - compatible = "amlogic,axg-sound-card";
>>> - model = "RADXA-ZERO2";
>>> - audio-aux-devs = <&tdmout_b>;
>>> - audio-routing = "TDMOUT_B IN 0", "FRDDR_A OUT 1",
>>> - "TDMOUT_B IN 1", "FRDDR_B OUT 1",
>>> - "TDMOUT_B IN 2", "FRDDR_C OUT 1",
>>> - "TDM_B Playback", "TDMOUT_B OUT";
>>> -
>>> - assigned-clocks = <&clkc CLKID_MPLL2>,
>>> -  <&clkc CLKID_MPLL0>,
>>> -  <&clkc CLKID_MPLL1>;
>>> - assigned-clock-parents = <0>, <0>, <0>;
>>> - assigned-clock-rates = <294912000>,
>>> -       <270950400>,
>>> -       <393216000>;
>>> -
>>> - dai-link-0 {
>>> - sound-dai = <&frddr_a>;
>>> - };
>>> -
>>> - dai-link-1 {
>>> - sound-dai = <&frddr_b>;
>>> - };
>>> -
>>> - dai-link-2 {
>>> - sound-dai = <&frddr_c>;
>>> - };
>>> -
>>> - /* 8ch hdmi interface */
>>> - dai-link-3 {
>>> - sound-dai = <&tdmif_b>;
>>> - dai-format = "i2s";
>>> - dai-tdm-slot-tx-mask-0 = <1 1>;
>>> - dai-tdm-slot-tx-mask-1 = <1 1>;
>>> - dai-tdm-slot-tx-mask-2 = <1 1>;
>>> - dai-tdm-slot-tx-mask-3 = <1 1>;
>>> - mclk-fs = <256>;
>>> -
>>> - codec {
>>> - sound-dai = <&tohdmitx TOHDMITX_I2S_IN_B>;
>>> - };
>>> - };
>>> -
>>> - /* hdmi glue */
>>> - dai-link-4 {
>>> - sound-dai = <&tohdmitx TOHDMITX_I2S_OUT>;
>>> -
>>> - codec {
>>> - sound-dai = <&hdmi_tx>;
>>> - };
>>> - };
>>> - };
>>> -
>>> - wifi32k: clock-0 {
>>> - compatible = "pwm-clock";
>>> - #clock-cells = <0>;
>>> - clock-frequency = <32768>;
>>> - pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
>>> - };
>>> -};
>>> -
>>> -&arb {
>>> - status = "okay";
>>> -};
>>> -
>>> -&cec_AO {
>>> - pinctrl-0 = <&cec_ao_a_h_pins>;
>>> - pinctrl-names = "default";
>>> - status = "disabled";
>>> - hdmi-phandle = <&hdmi_tx>;
>>> -};
>>> -
>>> -&cecb_AO {
>>> - pinctrl-0 = <&cec_ao_b_h_pins>;
>>> - pinctrl-names = "default";
>>> - status = "okay";
>>> - hdmi-phandle = <&hdmi_tx>;
>>> -};
>>> -
>>> -&clkc_audio {
>>> - status = "okay";
>>> -};
>>> -
>>> -&cpu0 {
>>> - cpu-supply = <&vddcpu_b>;
>>> - operating-points-v2 = <&cpu_opp_table_0>;
>>> - clocks = <&clkc CLKID_CPU_CLK>;
>>> - clock-latency = <50000>;
>>> -};
>>> -
>>> -&cpu1 {
>>> - cpu-supply = <&vddcpu_b>;
>>> - operating-points-v2 = <&cpu_opp_table_0>;
>>> - clocks = <&clkc CLKID_CPU_CLK>;
>>> - clock-latency = <50000>;
>>> -};
>>> -
>>> -&cpu100 {
>>> - cpu-supply = <&vddcpu_a>;
>>> - operating-points-v2 = <&cpub_opp_table_1>;
>>> - clocks = <&clkc CLKID_CPUB_CLK>;
>>> - clock-latency = <50000>;
>>> -};
>>> -
>>> -&cpu101 {
>>> - cpu-supply = <&vddcpu_a>;
>>> - operating-points-v2 = <&cpub_opp_table_1>;
>>> - clocks = <&clkc CLKID_CPUB_CLK>;
>>> - clock-latency = <50000>;
>>> -};
>>> -
>>> -&cpu102 {
>>> - cpu-supply = <&vddcpu_a>;
>>> - operating-points-v2 = <&cpub_opp_table_1>;
>>> - clocks = <&clkc CLKID_CPUB_CLK>;
>>> - clock-latency = <50000>;
>>> -};
>>> -
>>> -&cpu103 {
>>> - cpu-supply = <&vddcpu_a>;
>>> - operating-points-v2 = <&cpub_opp_table_1>;
>>> - clocks = <&clkc CLKID_CPUB_CLK>;
>>> - clock-latency = <50000>;
>>> -};
>>> -
>>> -&cpu_thermal {
>>> - trips {
>>> - cpu_active: cpu-active {
>>> - temperature = <70000>; /* millicelsius */
>>> - hysteresis = <2000>; /* millicelsius */
>>> - type = "active";
>>> - };
>>> - };
>>> -
>>> - cooling-maps {
>>> - map2 {
>>> - trip = <&cpu_active>;
>>> - cooling-device = <&fan0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
>>> - };
>>> - };
>>> -};
>>> -
>>> -&frddr_a {
>>> - status = "okay";
>>> -};
>>> -
>>> -&frddr_b {
>>> - status = "okay";
>>> -};
>>> -
>>> -&frddr_c {
>>> - status = "okay";
>>> -};
>>> -
>>> -&gpio {
>>> - gpio-line-names =
>>> - /* GPIOZ */
>>> - "PIN_27", "PIN_28", "PIN_7", "PIN_11", "PIN_13", "PIN_15", "PIN_18", "PIN_40",
>>> - "", "", "", "", "", "", "", "",
>>> - /* GPIOH */
>>> - "", "", "", "", "PIN_19", "PIN_21", "PIN_24", "PIN_23",
>>> - "",
>>> - /* BOOT */
>>> - "", "", "", "", "", "", "", "",
>>> - "", "", "", "", "EMMC_PWRSEQ", "", "", "",
>>> - /* GPIOC */
>>> - "", "", "", "", "", "", "SD_CD", "PIN_36",
>>> - /* GPIOA */
>>> - "PIN_32", "PIN_12", "PIN_35", "", "", "PIN_38", "", "",
>>> - "", "", "", "", "LED_GREEN", "PIN_31", "PIN_3", "PIN_5",
>>> - /* GPIOX */
>>> - "", "", "", "", "", "", "SDIO_PWRSEQ", "",
>>> - "", "", "", "", "", "", "", "",
>>> - "", "BT_SHUTDOWN", "", "";
>>> -};
>>> -
>>> -&gpio_ao {
>>> - gpio-line-names =
>>> - /* GPIOAO */
>>> - "PIN_8", "PIN_10", "", "BTN_POWER", "", "", "", "PIN_29",
>>> - "PIN_33", "PIN_37", "FAN", "",
>>> - /* GPIOE */
>>> - "", "", "";
>>> -};
>>> -
>>> -&hdmi_tx {
>>> - status = "okay";
>>> - pinctrl-0 = <&hdmitx_hpd_pins>, <&hdmitx_ddc_pins>;
>>> - pinctrl-names = "default";
>>> - hdmi-supply = <&ao_5v>;
>>> -};
>>> -
>>> -&hdmi_tx_tmds_port {
>>> - hdmi_tx_tmds_out: endpoint {
>>> - remote-endpoint = <&hdmi_connector_in>;
>>> - };
>>> -};
>>> -
>>> -&ir {
>>> - status = "disabled";
>>> - pinctrl-0 = <&remote_input_ao_pins>;
>>> - pinctrl-names = "default";
>>> -};
>>> -
>>> -&pwm_ab {
>>> - pinctrl-0 = <&pwm_a_e_pins>;
>>> - pinctrl-names = "default";
>>> - clocks = <&xtal>;
>>> - clock-names = "clkin0";
>>> - status = "okay";
>>> -};
>>> -
>>> -&pwm_ef {
>>> - pinctrl-0 = <&pwm_e_pins>;
>>> - pinctrl-names = "default";
>>> - clocks = <&xtal>;
>>> - clock-names = "clkin0";
>>> - status = "okay";
>>> -};
>>> -
>>> -&pwm_AO_ab {
>>> - pinctrl-0 = <&pwm_ao_a_pins>;
>>> - pinctrl-names = "default";
>>> - clocks = <&xtal>;
>>> - clock-names = "clkin0";
>>> - status = "okay";
>>> -};
>>> -
>>> -&pwm_AO_cd {
>>> - pinctrl-0 = <&pwm_ao_d_e_pins>;
>>> - pinctrl-names = "default";
>>> - clocks = <&xtal>;
>>> - clock-names = "clkin1";
>>> - status = "okay";
>>> -};
>>> -
>>> -&saradc {
>>> - status = "okay";
>>> - vref-supply = <&vddao_1v8>;
>>> -};
>>> -
>>> -/* SDIO */
>>> -&sd_emmc_a {
>>> - status = "okay";
>>> - pinctrl-0 = <&sdio_pins>;
>>> - pinctrl-1 = <&sdio_clk_gate_pins>;
>>> - pinctrl-names = "default", "clk-gate";
>>> - #address-cells = <1>;
>>> - #size-cells = <0>;
>>> -
>>> - bus-width = <4>;
>>> - cap-sd-highspeed;
>>> - max-frequency = <100000000>;
>>> -
>>> - non-removable;
>>> - disable-wp;
>>> -
>>> - /* WiFi firmware requires power to be kept while in suspend */
>>> - keep-power-in-suspend;
>>> -
>>> - mmc-pwrseq = <&sdio_pwrseq>;
>>> -
>>> - vmmc-supply = <&vddao_3v3>;
>>> - vqmmc-supply = <&vddao_1v8>;
>>> -
>>> - brcmf: wifi@1 {
>>> - reg = <1>;
>>> - compatible = "brcm,bcm4329-fmac";
>>> - };
>>> -};
>>> -
>>> -/* SD card */
>>> -&sd_emmc_b {
>>> - status = "okay";
>>> - pinctrl-0 = <&sdcard_c_pins>;
>>> - pinctrl-1 = <&sdcard_clk_gate_c_pins>;
>>> - pinctrl-names = "default", "clk-gate";
>>> -
>>> - bus-width = <4>;
>>> - cap-sd-highspeed;
>>> - max-frequency = <50000000>;
>>> - disable-wp;
>>> -
>>> - cd-gpios = <&gpio GPIOC_6 GPIO_ACTIVE_LOW>;
>>> - vmmc-supply = <&vddao_3v3>;
>>> - vqmmc-supply = <&vddao_3v3>;
>>> -};
>>> -
>>> -/* eMMC */
>>> -&sd_emmc_c {
>>> - status = "okay";
>>> - pinctrl-0 = <&emmc_ctrl_pins>, <&emmc_data_8b_pins>, <&emmc_ds_pins>;
>>> - pinctrl-1 = <&emmc_clk_gate_pins>;
>>> - pinctrl-names = "default", "clk-gate";
>>> -
>>> - bus-width = <8>;
>>> - cap-mmc-highspeed;
>>> - mmc-ddr-1_8v;
>>> - mmc-hs200-1_8v;
>>> - max-frequency = <200000000>;
>>> - disable-wp;
>>> -
>>> - mmc-pwrseq = <&emmc_pwrseq>;
>>> - vmmc-supply = <&vcc_3v3>;
>>> - vqmmc-supply = <&vcc_1v8>;
>>> -};
>>> -
>>> -&tdmif_b {
>>> - status = "okay";
>>> -};
>>> -
>>> -&tdmout_b {
>>> - status = "okay";
>>> -};
>>> -
>>> -&tohdmitx {
>>> - status = "okay";
>>> -};
>>> -
>>> -&uart_A {
>>> - status = "okay";
>>> - pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
>>> - pinctrl-names = "default";
>>> - uart-has-rtscts;
>>> -
>>> - bluetooth {
>>> - compatible = "brcm,bcm43438-bt";
>>> - shutdown-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
>>> - max-speed = <2000000>;
>>> - clocks = <&wifi32k>;
>>> - clock-names = "lpo";
>>> - };
>>> -};
>>> -
>>> -&uart_AO {
>>> - status = "okay";
>>> - pinctrl-0 = <&uart_ao_a_pins>;
>>> - pinctrl-names = "default";
>>> -};
>>> -
>>> -&usb {
>>> - status = "okay";
>>> -};
>>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>> +
>>> +/dts-v1/;
>>> +
>>> +#include "meson-g12b-radxa-zero2.dtsi"
>>> +
>>> +/ {
>>> + compatible = "radxa,zero2", "amlogic,a311d", "amlogic,g12b";
>>> + model = "Radxa ZERO2";
>>> +};
>>> +
>>> +&sound {
>>> + model = "RADXA-ZERO2";
>>> +};
>>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dtsi
>>> similarity index 98%
>>> copy from arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
>>> copy to arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dtsi
>>> index 8445701100d0..b73c4a423dfd 100644
>>> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
>>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dtsi
>>> @@ -16,9 +16,6 @@
>>> #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
>>>
>>> / {
>>> - compatible = "radxa,zero2", "amlogic,a311d", "amlogic,g12b";
>>> - model = "Radxa Zero2";
>>> -
>>> aliases {
>>> serial0 = &uart_AO;
>>> serial2 = &uart_A;
>>> @@ -167,9 +164,8 @@ vddcpu_b: regulator-vddcpu-b {
>>> regulator-always-on;
>>> };
>>>
>>> - sound {
>>> + sound: sound {
>>> compatible = "amlogic,axg-sound-card";
>>> - model = "RADXA-ZERO2";
>>> audio-aux-devs = <&tdmout_b>;
>>> audio-routing = "TDMOUT_B IN 0", "FRDDR_A OUT 1",
>>> "TDMOUT_B IN 1", "FRDDR_B OUT 1",
>>> -- 
>>> 2.43.0
>>>
>>>
>>> _______________________________________________
>>> linux-amlogic mailing list
>>> linux-amlogic@lists.infradead.org
>>> http://lists.infradead.org/mailman/listinfo/linux-amlogic
>>
>>


