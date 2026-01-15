Return-Path: <devicetree+bounces-255534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 013B3D23ED3
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 11:25:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0148E30164F8
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:25:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE12229ACC6;
	Thu, 15 Jan 2026 10:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rNy+ZENi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FA335502E
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768472749; cv=none; b=edjAlrcvGz2TsDA35Uj6MthOxZxcKHDpwWPWCmPT5EEyW44sy2nslZncZ5J4e+fHkLEiYeF9BPAh1yLaLL4rNnt85b1PmHUmZLOLZWfcqYWbUt4d5gSs5pPCMzPfDGKe8PwTcAXmjBWiI1KA6XzmOApBnWXaptVFpk3nKpCyaZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768472749; c=relaxed/simple;
	bh=vS/p70gb6jGnq7IoEr5IlodRD0vazwD1PyzvoXcwMvM=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=VlkZaCDZGRaUaTd6k7ZF2Rudmzhy6H/2aQ94ztpbvrcsAgJiB1Sd3eKJ1P78BDMiEpwWA3Wx13y9BtGE/oM7mnHLfpBSdEGcygd2yDxAbQSSb7nCSWWKWjvYZpEDldPZXnkyzJhY0Q8TeXXqLYYiXNGD2oeBhoLWPweMM+WnyDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rNy+ZENi; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47edd6111b4so6505745e9.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 02:25:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768472746; x=1769077546; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HFSizpn0QWrLEJm04aGvPh5FIfAv/Uy1/FCCcZUEvEQ=;
        b=rNy+ZENiKYfZq29ZaWQx+hRx/A6bVyx3Rr3hdBEBXstqBcg/bnCVDWEaNcPYcB+9/e
         TDkV03PLGjFCuo2io48pNlgnFcepfeH8q7KCS8vjaEeGtTRIDGioYsIE8DHDBw8NZIDd
         JtO5ENVmed8JegACIrmh0EOPujSZ1wtnaR4iB9+uKTFkbbzF33G92oeNqIUS6xq2+8Ha
         d2LBlwVlU6YnYh3zFfHyDPiwUIEvYoKr7oDtHwMo0kKzBeygEPwFeXteGMEawPs32HlM
         HKvXWeBit29mLHXevaC3LWaZR0MlPfO42ow4+HEY4eArBrpGk45LI4JgIhU6A7f8mON0
         DAtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768472746; x=1769077546;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HFSizpn0QWrLEJm04aGvPh5FIfAv/Uy1/FCCcZUEvEQ=;
        b=R5fmp2Zn++vyPblEdmS0itmjb4iQ56oue4/bB285yb4KJeluhKyJP8WYmMjLuMHFzi
         QuvXBt8NC6ur/tUYqWxn8bNkypIDY4ELy/0o2HqXOJw5BU0WsDpyx77hyqAdnBXy+fAd
         AMCPIjbWPuCKi1zB6e++VEi4FnaW2JOPMZDt2ETpFKn+cZDlgvf2tj+ymjeo90RA3SAu
         UOyQpf5iMsQgejDt+JYmnVkNukcaVul61Gz6cHAmdaNzJQoBFf1t3YGHgNR+rxAF3ecW
         T4EXUgHCKcuBfGNpFYy0FitQRNi+XFp7ZQdlZfw86HsxeXk1R5Ww6ZCxXUT+qWM7cnMu
         n1BA==
X-Forwarded-Encrypted: i=1; AJvYcCWOk54vyIxq1Sn89zxTYosLkdVC5DMfAFciEsh60loQ12J3S26cyJvDYuhPPKQjFHOKkwci8CY6UQlz@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0f5uX6XtzLUFQnvq4EedAE+hEe5hO5ZoNc6zFb62KpdU9uSGA
	TCqZm2RZUUl2aGsPYpoY98aTC4nuzuYI0DFgRYtiSBwPx397G4gSbSnNGM+5WqKnWbI=
X-Gm-Gg: AY/fxX72PdC4dW9naVlRJn9xYCRrhtVFp9i6qh0mInLH1LMGUaQWsf4Wa8pA7nHY6yi
	9xbfYKSvdanN92Yh1O1s8jEK+8kc8oqCn0Rzy2XoUN7iDUzgvPu7OrttXNIc85i6NmWgsgHIfRn
	iSWjQfZOskNkays4zjdSrmnbu2jr2zazNn7XXjAhyLY9Vzz+EMVUfQrL6a9MVG7Boa/ymblYzyu
	Xol/QFfi8FCvt/Wbp+KtwLmgu7LGUyOgjamap5DMfIq1cCw8nRowOczakYuK1ltWWbXDiDS0y8q
	0JYcrmdq+qJKJeQ4tmsGxW7KkR/d3C0KuI09UjrT6VD5gua44Kd4vZHFQF4HG8xAP6NKw+7iQ1A
	ehwEJbq0HzPlJEHVL6+dI0riH1Lfi6hnzjHv/cysiS3Z3kuuhoF7xb7FnsxOD+oSHc4ZCW7wWVf
	2000JMLGz87bH3z1LqN+4CD1PbT4IEVLoNm6n7TsFcVvz1q64aswD45//I4lsLI1U=
X-Received: by 2002:a05:6000:178e:b0:430:fbad:687a with SMTP id ffacd0b85a97d-4342d38974cmr6987675f8f.13.1768472746306;
        Thu, 15 Jan 2026 02:25:46 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:d283:7a7e:4c57:678d? ([2a01:e0a:3d9:2080:d283:7a7e:4c57:678d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-434af64a778sm5011554f8f.3.2026.01.15.02.25.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 02:25:45 -0800 (PST)
Message-ID: <1b17fb1b-9235-43b5-a57e-6b04fe8f4516@linaro.org>
Date: Thu, 15 Jan 2026 11:25:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 3/3] arm64: dts: meson-s4-s905y4-khadas-vim1s: add
 initial device tree
To: Nick Xie <nick@khadas.com>, khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Cc: xianwei.zhao@amlogic.com, christianshewitt@gmail.com, krzk+dt@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, nick@xieqinick.com
References: <20260115030015.1334517-1-nick@khadas.com>
 <20260115030015.1334517-4-nick@khadas.com>
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
In-Reply-To: <20260115030015.1334517-4-nick@khadas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/15/26 04:00, Nick Xie wrote:
> The Khadas VIM1S uses the Amlogic S905Y4 SoC, based on the
> Amlogic S4 SoC family, on a board with the same form factor as the
> VIM/VIM2/VIM3/VIM4 models. Serial debug console, ethernet, SD card
> work with this initial device tree.
> 
> It features:
>   - 2GB LPDDR4 RAM
>   - 16GB eMMC 5.1 storage
>   - 32MB SPI flash
>   - 100M Ethernet
>   - AP6256 Wireless (802.11 a/b/g/n/ac, BT5.0)
>   - HDMI 2.1 video
>   - 2x USB 2.0 ports
>   - 1x USB-C (power) with USB 2.0 OTG
>   - 2x LED's (1x red, 1x white)
>   - 3x buttons (power, function, reset)
>   - IR receiver
>   - 40pin GPIO Header
>   - 1x micro SD card slot
> 
> Signed-off-by: Nick Xie <nick@khadas.com>
> ---
>   arch/arm64/boot/dts/amlogic/Makefile          |   1 +
>   .../amlogic/meson-s4-s905y4-khadas-vim1s.dts  | 190 ++++++++++++++++++
>   2 files changed, 191 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts
> 
> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
> index 219fb088c704d..15f9c817e5023 100644
> --- a/arch/arm64/boot/dts/amlogic/Makefile
> +++ b/arch/arm64/boot/dts/amlogic/Makefile
> @@ -85,6 +85,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-gxm-ugoos-am3.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-gxm-vega-s96.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-gxm-wetek-core2.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-s4-s805x2-aq222.dtb
> +dtb-$(CONFIG_ARCH_MESON) += meson-s4-s905y4-khadas-vim1s.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-sm1-a95xf3-air-gbit.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-sm1-a95xf3-air.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-sm1-bananapi-m2-pro.dtb
> diff --git a/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts b/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts
> new file mode 100644
> index 0000000000000..79ffc703a2e99
> --- /dev/null
> +++ b/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts
> @@ -0,0 +1,190 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2026 Khadas Technology Co., Ltd.
> + */
> +
> +/dts-v1/;
> +
> +#include "meson-s4.dtsi"
> +
> +/ {
> +	model = "Khadas VIM1S";
> +	compatible = "khadas,vim1s", "amlogic,s905y4", "amlogic,s4";
> +	interrupt-parent = <&gic>;
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	aliases {
> +		mmc0 = &emmc; /* eMMC */
> +		mmc1 = &sd; /* SD card */
> +		mmc2 = &sdio; /* SDIO */
> +		serial0 = &uart_b;
> +	};
> +
> +	memory@0 {
> +		device_type = "memory";
> +		reg = <0x0 0x0 0x0 0x80000000>;
> +	};
> +
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		/* 52 MiB reserved for ARM Trusted Firmware */
> +		secmon_reserved: secmon@5000000 {
> +			reg = <0x0 0x05000000 0x0 0x3400000>;
> +			no-map;
> +		};
> +	};
> +
> +	sdio_32k: sdio-32k {
> +		compatible = "pwm-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <32768>;
> +		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
> +	};
> +
> +	sdio_pwrseq: sdio-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		reset-gpios = <&gpio GPIOX_6 GPIO_ACTIVE_LOW>;
> +		clocks = <&sdio_32k>;
> +		clock-names = "ext_clock";
> +	};
> +
> +	main_5v: regulator-main-5v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "5V";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-always-on;
> +	};
> +
> +	sd_3v3: regulator-sd-3v3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "SD_3V3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio GPIOD_4 GPIO_ACTIVE_LOW>;
> +		regulator-always-on;
> +	};
> +
> +	vddio_sd: regulator-vddio-sd {
> +		compatible = "regulator-gpio";
> +		regulator-name = "VDDIO_SD";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpios = <&gpio GPIOD_9 GPIO_ACTIVE_HIGH>;
> +		gpios-states = <1>;
> +		states = <1800000 1
> +				3300000 0>;
> +	};
> +
> +	/* SY8120B1ABC DC/DC Regulator. */
> +	vddcpu: regulator-vddcpu {
> +		compatible = "pwm-regulator";
> +
> +		regulator-name = "VDDCPU";
> +		regulator-min-microvolt = <689000>;
> +		regulator-max-microvolt = <1049000>;
> +
> +		vin-supply = <&main_5v>;
> +
> +		pwms = <&pwm_ij 1 1500 0>;
> +		pwm-dutycycle-range = <100 0>;
> +
> +		regulator-boot-on;
> +		regulator-always-on;
> +		/* Voltage Duty-Cycle */
> +		voltage-table = <1049000 0>,
> +				<1039000 3>,
> +				<1029000 6>,
> +				<1019000 9>,
> +				<1009000 12>,
> +				<999000 14>,
> +				<989000 17>,
> +				<979000 20>,
> +				<969000 23>,
> +				<959000 26>,
> +				<949000 29>,
> +				<939000 31>,
> +				<929000 34>,
> +				<919000 37>,
> +				<909000 40>,
> +				<899000 43>,
> +				<889000 45>,
> +				<879000 48>,
> +				<869000 51>,
> +				<859000 54>,
> +				<849000 56>,
> +				<839000 59>,
> +				<829000 62>,
> +				<819000 65>,
> +				<809000 68>,
> +				<799000 70>,
> +				<789000 73>,
> +				<779000 76>,
> +				<769000 79>,
> +				<759000 81>,
> +				<749000 84>,
> +				<739000 87>,
> +				<729000 89>,
> +				<719000 92>,
> +				<709000 95>,
> +				<699000 98>,
> +				<689000 100>;
> +	};
> +};
> +
> +&ethmac {
> +	status = "okay";
> +	phy-handle = <&internal_ephy>;
> +	phy-mode = "rmii";
> +};
> +
> +&ir {
> +	status = "okay";
> +	pinctrl-0 = <&remote_pins>;
> +	pinctrl-names = "default";
> +};
> +
> +&pwm_ef {
> +	status = "okay";
> +	pinctrl-0 = <&pwm_e_pins1>;
> +	pinctrl-names = "default";
> +};
> +
> +&pwm_ij {
> +	status = "okay";
> +};
> +
> +&sd {
> +	status = "okay";
> +	pinctrl-0 = <&sdcard_pins>;
> +	pinctrl-1 = <&sdcard_clk_gate_pins>;
> +	pinctrl-names = "default", "clk-gate";
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	sd-uhs-sdr12;
> +	sd-uhs-sdr25;
> +	sd-uhs-sdr50;
> +	sd-uhs-sdr104;
> +	max-frequency = <200000000>;
> +	disable-wp;
> +
> +	cd-gpios = <&gpio GPIOC_6 GPIO_ACTIVE_LOW>;
> +
> +	vmmc-supply = <&sd_3v3>;
> +	vqmmc-supply = <&vddio_sd>;
> +};
> +
> +&spicc0 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&spicc0_pins_x>;
> +	cs-gpios = <&gpio GPIOX_10 GPIO_ACTIVE_LOW>;
> +};
> +
> +&uart_b {
> +	status = "okay";
> +};

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

