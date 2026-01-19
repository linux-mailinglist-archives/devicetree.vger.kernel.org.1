Return-Path: <devicetree+bounces-256726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C88AD3A273
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 10:09:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A656F30390E7
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 09:09:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5D82352C59;
	Mon, 19 Jan 2026 09:09:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AwTfJ2Ye"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076E033C1BD
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 09:09:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768813756; cv=none; b=N9nLUxgAhXh8Zt9ztvtb/xNrJk22s8/+zka9GDzqxsmJSbWXySWNG8N6c7fY+ZnfVmuyAwsDpVhhEliF9q0TKCH/DkYU0jWxFL0mcdU0s89EuQeANUeRLzdXObmCBU+oGFlvgW/aoQB+jJoJiY+3VeVpVP09cFiIoUPtaQTx12g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768813756; c=relaxed/simple;
	bh=ydgmFujQAEdW5m+Lv7Xux2iwlX2p+kWfcOPURjtzgFw=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=AIVqjIinUve10SQBR2mohMutb9Uje8Q7ZuYgdpDCllayIyW2gv+Mo7lUzRIJgdkFt5dijwzFLIz+HfmEaaPPC26ugAI45gd0DFVE/EPDcZ4lEOrR9zuFkJFMLcKydFyS6VLq7W8eW5d7lUNeEVLCEp+jy76bkTJGfiGs8iB4IdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AwTfJ2Ye; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4801bc32725so18682325e9.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 01:09:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768813753; x=1769418553; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X2qyChUcZ0ALXhZnLJMM6QJGa1Ir92G1VwHYl/E5QOo=;
        b=AwTfJ2YecmJkviwp2KvDIm1RpEjwW0xjhkU/ryQqcDgzsO3TJDvpJdRbao/z6CUogY
         W5j29GXhrIYazdwEgDm/H2yS0g6nNlSmpsMEs9wr1IggPcHG+De6mK8Y7AXRKuiHd3Iv
         0NMnV0Hwnyr6M7gLiNgAgvV0MbzLj8rDJXOWre0JL3Fbx0WlyApqCk8bk+b/Yuu0P10N
         qok1gdLC49wbVsB10o6uaeheX6ZWIOBgYDPNJUq2KqRivjWMm0qWRYBs//9EJCpnw4tK
         mOMIaLFRMSgT6mekdAaSjhjXUounXRzBzGNwqSz5uqCrKWGtaupGkIARRmXHz5Gz8v1o
         /goA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768813753; x=1769418553;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X2qyChUcZ0ALXhZnLJMM6QJGa1Ir92G1VwHYl/E5QOo=;
        b=vrtIefXHkVW3r/BKyF2RRr9uAgL2Cm44bWochlRt6hD0AyRx0jTssyDBIWAIoztIOl
         KY1QFIsftHjrrALNIDKXNXE4kjY4MUUBOWE5oqgtgaIY7gYKdwCo94D+HOoQELBnddJP
         tZFWgCN6JNIWnDTJqU3aMgf2PygNZjGq6O1ifs0oIV5qArOLjj8PB/SAJw+1nFs0Ucfs
         W7QoeZRx7Ql+4HiybStbSJEi67e0tMo8+JrOtrrqr6IBtInC05ldmXGofZBIZIvwodUF
         qB2tt3VAuQU0WY2tsKZ/KQEe+D+u9WcuhtHCvv0xCuTB2bfgoz0R8BussQY8rFwVEAnk
         +UQA==
X-Gm-Message-State: AOJu0YzKQWVJcmmZc3bnN24Q4pEdrA3V+cDD4EMNAcJAyGUZQWIYg/t0
	IImYaFCBjZntPAYc9GiYSVMVgvbDRoiTbNyu1qhlfRe9OVkESV3fWZyOobvC1E2qvtMgMaTGbai
	Wkb0L
X-Gm-Gg: AY/fxX54o865mFAt91gUXXIqEAE0+FjB98KqEwlEndf0+v+8VHg3j3PDx1HlCJSqOOr
	10OEW/ezifx6Q9hxpsSGc/glQSZnVE89V1tgZBPXydYk6e3GCCkuHfVoVT5+AiP3y3lBIZAgDxF
	zIK20J1O59JhkkXzEVcWsIMF+8ktdeFlhQN/lwaZSHe1m4Q05QOyoLodxdIjZ46ifU3II1YnFrG
	uRIohY7gBqK2rh72olelt+KT6s+c1HpQ3M7chM5Cu7kAZTNLxgVjxvwC6Kx6FgwhIjjL/FwPVR7
	1wcLj9CASbC1+x8zzVnt0UeFnM8iWQzyc4MILz1temOwI08gdGgqnFbx6zkqSQmVyvsq2AKKcS6
	yoFboqT6gzVgPQMeToWVPMxl9BiXrjUqM6Du2rjOgrljZJCcLvxzXCQQxHXilCLX7wjkoyU1L1l
	fDyMN23LDhktEzsY8WkhYk8Z55a1kobj05Mq6PMUBoYPapqR5U1HeLVGfRneXAC2Q=
X-Received: by 2002:a05:600c:1c1c:b0:47a:814c:ee95 with SMTP id 5b1f17b1804b1-4802319ad40mr128271065e9.12.1768813753236;
        Mon, 19 Jan 2026 01:09:13 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:a458:3e86:7822:1c2c? ([2a01:e0a:3d9:2080:a458:3e86:7822:1c2c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47f4289b789sm240369035e9.1.2026.01.19.01.09.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 01:09:12 -0800 (PST)
Message-ID: <0c753e87-0848-4d54-82f6-18c610657471@linaro.org>
Date: Mon, 19 Jan 2026 10:09:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] Eliminate Odroid HC4 power glitches during boot.
To: Eric.Neulight@linuxdev.slmail.me, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260116-odroid-hc4-dts-v1-1-459b601cd5cf@linuxdev.slmail.me>
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
In-Reply-To: <20260116-odroid-hc4-dts-v1-1-459b601cd5cf@linuxdev.slmail.me>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 1/17/26 05:02, Eric Neulight via B4 Relay wrote:
> From: Eric Neulight <Eric.Neulight@linuxdev.slmail.me>
> 
> Fix issue with Odroid HC4 (and all meson-sm1-odroid) DTS that causes
> regulator power to momentarily glitch OFF-ON during boot.  Add
> regulator-boot-on to all regulator-fixed and regulator-gpio entries
> that (1) define a gpio AND (2) define regulator-always-on.
> 
> U-boot powers on devices necessary for boot then hands off the DTB to
> the kernel.  During probe, linux drivers/regulator/fixed.c and
> gpio-regulator.c both first set the regulator control gpio (that U-boot
> already turned ON) to default OFF before then setting it to the defined
> (ON) state. This glitches the power to the affected devices, unless
> regulator-boot-on is specified with it.  In fact, U-boot has the same
> behavior.  So, during reboot, a power glitch can actually happen twice:
> once when U-boot reads the DTB and probes the gpio and again when the
> kernel reads the DTB and probes the gpio.
> 
> Problem this fixes: On the Odroid HC4, power to the SATA ports glitches
> during boot and causes some HDDs to do emergency head retract, which
> should be avoided.  On the HC4, power glitches to the SD card, USB,
> SATA, and HDMI interfaces during boot.  These are all boot devices.
> A power glitch can potentially cause a problem for any sensitive devices
> during boot.
> 
> NOTE: This is not limited to just the HC4, likely an issue with ALL DTS
> with regulator-fixed or regulator-gpio entries that (1) define a gpio
> AND (2) define regulator-always-on.  All such entries should also
> include regulator-boot-on in order to avoid potential power glitches.
> At worst, adding regulator-boot-on in such cases is harmless because of
> regulator-always-on, and, at best, it eliminates detrimental power
> glitches during boot.  So, this is best-practice.
> 
> Fixes: 164147f094ec5d0fc2c2098a888f4b50cf3096a7 ("arm64: dts: meson-sm1-odroid-hc4: add regulators controlled by GPIOH_8")
> Fixes: 45d736ab17b44257e15e75e0dba364139fdb0983 ("arm64: dts: meson-sm1-odroid: add 5v regulator gpio")
> Fixes: 1f80a5cf74a60997b92d2cde772edec093bec4d9 ("arm64: dts: meson-sm1-odroid: add missing enable gpio and supply for tf_io regulator")
> Fixes: 88d537bc92ca035e2a9920b0abc750dd62146520 ("arm64: dts: meson: convert meson-sm1-odroid-c4 to dtsi")
> 
> Signed-off-by: Eric Neulight <Eric.Neulight@linuxdev.slmail.me>
> ---
>   arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts | 2 ++
>   arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi    | 3 +++
>   2 files changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts
> index 0170139b8d32f4274ad991b0f3d9a0f6c67969ce..3ece30a0a1fff736c544cf89ed0a8cca0890f128 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts
> @@ -52,6 +52,7 @@ p12v_0: regulator-p12v-0 {
>   
>   		gpio = <&gpio GPIOH_8 GPIO_OPEN_DRAIN>;
>   		enable-active-high;
> +		regulator-boot-on;
>   		regulator-always-on;
>   	};
>   
> @@ -65,6 +66,7 @@ p12v_1: regulator-p12v-1 {
>   
>   		gpio = <&gpio GPIOH_8 GPIO_OPEN_DRAIN>;
>   		enable-active-high;
> +		regulator-boot-on;
>   		regulator-always-on;
>   	};
>   
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
> index c4524eb4f0996dfbccec16ca5b936a5c3b2663a5..0bce4e8d965f2c83e6ba677fef2ede2726de6ed1 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
> @@ -37,6 +37,7 @@ tflash_vdd: regulator-tflash-vdd {
>   
>   		gpio = <&gpio_ao GPIOAO_3 GPIO_OPEN_DRAIN>;
>   		enable-active-high;
> +		regulator-boot-on;
>   		regulator-always-on;
>   	};
>   
> @@ -50,6 +51,7 @@ tf_io: gpio-regulator-tf-io {
>   
>   		enable-gpios = <&gpio_ao GPIOE_2 GPIO_OPEN_DRAIN>;
>   		enable-active-high;
> +		regulator-boot-on;
>   		regulator-always-on;
>   
>   		gpios = <&gpio_ao GPIOAO_6 GPIO_OPEN_SOURCE>;
> @@ -81,6 +83,7 @@ vcc_5v: regulator-vcc-5v {
>   		regulator-name = "5V";
>   		regulator-min-microvolt = <5000000>;
>   		regulator-max-microvolt = <5000000>;
> +		regulator-boot-on;
>   		regulator-always-on;
>   		vin-supply = <&main_12v>;
>   		gpio = <&gpio GPIOH_8 GPIO_OPEN_DRAIN>;
> 
> ---
> base-commit: b71e635feefc852405b14620a7fc58c4c80c0f73
> change-id: 20260116-odroid-hc4-dts-54f4254d8554
> 
> Best regards,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

