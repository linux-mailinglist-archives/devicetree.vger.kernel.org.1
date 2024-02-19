Return-Path: <devicetree+bounces-43308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B185859ECC
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 09:52:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D571280EBB
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 08:52:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76978210E1;
	Mon, 19 Feb 2024 08:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ovEN4+pT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0FEB219E1
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 08:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708332730; cv=none; b=iiNaOyjcMruQupPxvxCl4AqJ+7tHhX6kL8jHDSXC2lAVTzpxAhPeAtNOPYd5Z9EGgybM6okA6qp0tMPdjJJDwCp6qbE3d18ycimzoNCJwT0HbHg8zhEHzqy7IPoeu5rRTow8oe3jZ48fqd7BBg37XqS21zBdoWM8JkM4Yt4I92Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708332730; c=relaxed/simple;
	bh=IM78U8mfo2JVmBG+hTEmXNbFEwxDM8zefjcguoXwQKw=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=R/UgjIV5s5Hobu5RxLL1fOzWANvDGV+GgLfTfpISqsLN7GZBgeEIerLZAtqkVuOJkf40vPieRY4PSXot/V7BMyYSqaisqifAWfoEYIsThQxVrSsaU7SC7VduWRH5A7B3HS7AV4JES6nmTgVbx1Kp9IY3Ga4Ms5MMhhXyH2bNx8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ovEN4+pT; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-33d2710f3acso1260193f8f.0
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 00:52:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708332725; x=1708937525; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tPCkQEJaDAnc/jr70PEwpYcABrQ1R5X/yV/OXJd/YWk=;
        b=ovEN4+pTbd/SSr0GSDxMkDef9dweutQm49456Nf4yQHM8D8zZbNzIYtLvxiMAOJckM
         EJCGvyeE/w46qhGTcSFECZVoI9OV+FZjTpvknl65qUMBW3yVVEeNu4vky4Ex7oNqMkP0
         sycZSBJkD+RF0ca6n5tHP5U1i4gnpa3g/978u+VBqPJ/diqgQBi82q2PlVeJNhafcwIV
         fF11ahuxjD/OmAqL8PpABUKnqhg+rB7a9gx6mUqwu2zrVqtwDz+ZaipIveqyrJYpOYBl
         yGQl7Q083YTbGNpYc9C1Pw1cTIQgJq1zfc5sk4PBfsNEQjPbTg5EYUPbmSLp/ewEoZwx
         Bcrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708332725; x=1708937525;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tPCkQEJaDAnc/jr70PEwpYcABrQ1R5X/yV/OXJd/YWk=;
        b=akmhiYd3exEmC+mfCy8OHROpvUSNHkC8VQsgbU+hmYnPABRsyxcMDoThTyGASMc+SZ
         kEb9Y1JX3XbxbSZkB2pOJP5Q/JxbWKicEsvg/Sp435vGjvodDHMwr3worst6yZjeJSbi
         1AXn+f3terfn/XVTtxXPzEe7M5mPGj/q5A+u9WiEYUgdalY78uDMflGEhcombRtkPdSX
         3gVmG+6q0XhVZR1BZDPnfD+5N7AV1uFcEebSpWP0sgBneW/ZLhi0cjLdHH5YdnoY0lT3
         id7qal/vjuiV+OzwD/x1XSWeIYN7SZ18fnREppsHNqjrIUUdIVziJFjlRIjC/bDShTfq
         EdHA==
X-Forwarded-Encrypted: i=1; AJvYcCVs7aHV5CwPMP4rLSHWefFpcAVnkA65Q4ZrJHN3/p6lLtOun3sV4frOc4PPwC/1JPZ/EDlluqUriho/ZPwVz9MgCPwr28GAUriooA==
X-Gm-Message-State: AOJu0Yywufeu+UZRyrADGw6WHlhOi7rWUzM7v8/lGx9yWlmzrFtEIxm2
	aX0GNPvHVFyDBiGYryJrNU2QIr6n3KK3N29Lo6YJvpK2Glrco8fn0tOgEMOEdaI=
X-Google-Smtp-Source: AGHT+IFBiMFT+PX9A0xo7SINHG88AvMSXHhKB77gN2IqQadCXoM3ODOt6RqCAXV2dX2xsDik537T5A==
X-Received: by 2002:adf:f791:0:b0:33d:30ae:5386 with SMTP id q17-20020adff791000000b0033d30ae5386mr4139744wrp.14.1708332724769;
        Mon, 19 Feb 2024 00:52:04 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:9470:c6e0:c87a:fa9f? ([2a01:e0a:982:cbb0:9470:c6e0:c87a:fa9f])
        by smtp.gmail.com with ESMTPSA id q4-20020a5d5744000000b0033b47ee01f1sm9661075wrw.49.2024.02.19.00.52.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Feb 2024 00:52:04 -0800 (PST)
Message-ID: <ca1334d4-fc07-4951-a3f6-7c71d9ac4169@linaro.org>
Date: Mon, 19 Feb 2024 09:52:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] arm64: dts: amlogic: replace underscores in node names
Content-Language: en-US, fr
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Marc Gonzalez <mgonzalez@freebox.fr>
References: <20240213143217.336341-1-krzysztof.kozlowski@linaro.org>
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
In-Reply-To: <20240213143217.336341-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 13/02/2024 15:32, Krzysztof Kozlowski wrote:
> Underscores should not be used in node names (dtc with W=2 warns about
> them), so replace them with hyphens.
> 
> Cc: Marc Gonzalez <mgonzalez@freebox.fr>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   .../arm64/boot/dts/amlogic/meson-a1-ad402.dts |  2 +-
>   .../meson-axg-jethome-jethub-j1xx.dtsi        | 14 ++++++-------
>   .../arm64/boot/dts/amlogic/meson-axg-s400.dts | 16 +++++++--------
>   .../dts/amlogic/meson-g12a-radxa-zero.dts     | 12 +++++------
>   .../boot/dts/amlogic/meson-g12a-sei510.dts    | 14 ++++++-------
>   .../boot/dts/amlogic/meson-g12a-u200.dts      | 16 +++++++--------
>   .../boot/dts/amlogic/meson-g12a-x96-max.dts   | 14 ++++++-------
>   .../dts/amlogic/meson-g12b-odroid-n2.dtsi     |  2 +-
>   .../boot/dts/amlogic/meson-g12b-odroid.dtsi   | 20 +++++++++----------
>   .../boot/dts/amlogic/meson-g12b-w400.dtsi     | 10 +++++-----
>   .../dts/amlogic/meson-gx-libretech-pc.dtsi    | 12 +++++------
>   .../boot/dts/amlogic/meson-gx-p23x-q20x.dtsi  |  8 ++++----
>   .../dts/amlogic/meson-gxbb-nexbox-a95x.dts    |  6 +++---
>   .../boot/dts/amlogic/meson-gxbb-odroidc2.dts  |  8 ++++----
>   .../boot/dts/amlogic/meson-gxbb-p200.dts      |  4 ++--
>   .../boot/dts/amlogic/meson-gxbb-p20x.dtsi     |  6 +++---
>   .../boot/dts/amlogic/meson-gxbb-vega-s95.dtsi |  8 ++++----
>   .../boot/dts/amlogic/meson-gxbb-wetek.dtsi    |  8 ++++----
>   .../amlogic/meson-gxl-s805x-libretech-ac.dts  |  8 ++++----
>   .../boot/dts/amlogic/meson-gxl-s805x-p241.dts |  8 ++++----
>   .../meson-gxl-s905w-jethome-jethub-j80.dts    |  8 ++++----
>   .../meson-gxl-s905x-hwacom-amazetv.dts        |  6 +++---
>   .../meson-gxl-s905x-libretech-cc-v2.dts       | 12 +++++------
>   .../amlogic/meson-gxl-s905x-libretech-cc.dts  |  6 +++---
>   .../amlogic/meson-gxl-s905x-nexbox-a95x.dts   |  6 +++---
>   .../dts/amlogic/meson-gxl-s905x-p212.dtsi     |  8 ++++----
>   .../dts/amlogic/meson-gxm-khadas-vim2.dts     |  8 ++++----
>   .../amlogic/meson-gxm-s912-libretech-pc.dts   |  2 +-
>   .../boot/dts/amlogic/meson-khadas-vim3.dtsi   | 16 +++++++--------
>   .../amlogic/meson-libretech-cottonwood.dtsi   |  6 +++---
>   .../boot/dts/amlogic/meson-sm1-ac2xx.dtsi     | 10 +++++-----
>   .../boot/dts/amlogic/meson-sm1-bananapi.dtsi  | 14 ++++++-------
>   .../boot/dts/amlogic/meson-sm1-odroid-hc4.dts |  4 ++--
>   .../boot/dts/amlogic/meson-sm1-odroid.dtsi    | 20 +++++++++----------
>   .../boot/dts/amlogic/meson-sm1-sei610.dts     | 12 +++++------
>   35 files changed, 167 insertions(+), 167 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1-ad402.dts b/arch/arm64/boot/dts/amlogic/meson-a1-ad402.dts
> index 1c20516fa653..4bc30af05848 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-a1-ad402.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-a1-ad402.dts
> @@ -106,7 +106,7 @@ &spifc {
>   	pinctrl-0 = <&spifc_pins>;
>   	pinctrl-names = "default";
>   
> -	spi_nand@0 {
> +	flash@0 {
>   		compatible = "spi-nand";
>   		status = "okay";
>   		reg = <0>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j1xx.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j1xx.dtsi
> index db605f3a22b4..a53e1fe9ac1e 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j1xx.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j1xx.dtsi
> @@ -35,7 +35,7 @@ emmc_pwrseq: emmc-pwrseq {
>   		reset-gpios = <&gpio BOOT_9 GPIO_ACTIVE_LOW>;
>   	};
>   
> -	vcc_3v3: regulator-vcc_3v3 {
> +	vcc_3v3: regulator-vcc-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_3V3";
>   		regulator-min-microvolt = <3300000>;
> @@ -44,7 +44,7 @@ vcc_3v3: regulator-vcc_3v3 {
>   		regulator-always-on;
>   	};
>   
> -	vcc_5v: regulator-vcc_5v {
> +	vcc_5v: regulator-vcc-5v {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC5V";
>   		regulator-min-microvolt = <5000000>;
> @@ -52,7 +52,7 @@ vcc_5v: regulator-vcc_5v {
>   		regulator-always-on;
>   	};
>   
> -	vddao_3v3: regulator-vddao_3v3 {
> +	vddao_3v3: regulator-vddao-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_3V3";
>   		regulator-min-microvolt = <3300000>;
> @@ -61,7 +61,7 @@ vddao_3v3: regulator-vddao_3v3 {
>   		regulator-always-on;
>   	};
>   
> -	vddio_ao18: regulator-vddio_ao18 {
> +	vddio_ao18: regulator-vddio-ao18 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_AO18";
>   		regulator-min-microvolt = <1800000>;
> @@ -70,7 +70,7 @@ vddio_ao18: regulator-vddio_ao18 {
>   		regulator-always-on;
>   	};
>   
> -	vddio_boot: regulator-vddio_boot {
> +	vddio_boot: regulator-vddio-boot {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_BOOT";
>   		regulator-min-microvolt = <3300000>;
> @@ -79,7 +79,7 @@ vddio_boot: regulator-vddio_boot {
>   		regulator-always-on;
>   	};
>   
> -	vccq_1v8: regulator-vccq_1v8 {
> +	vccq_1v8: regulator-vccq-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCCQ_1V8";
>   		regulator-min-microvolt = <1800000>;
> @@ -88,7 +88,7 @@ vccq_1v8: regulator-vccq_1v8 {
>   		regulator-always-on;
>   	};
>   
> -	usb_pwr: regulator-usb_pwr {
> +	usb_pwr: regulator-usb-pwr {
>   		compatible = "regulator-fixed";
>   		regulator-name = "USB_PWR";
>   		regulator-min-microvolt = <5000000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-axg-s400.dts b/arch/arm64/boot/dts/amlogic/meson-axg-s400.dts
> index c8905663bc75..7ed526f45175 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-axg-s400.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-axg-s400.dts
> @@ -12,7 +12,7 @@ / {
>   	compatible = "amlogic,s400", "amlogic,a113d", "amlogic,meson-axg";
>   	model = "Amlogic Meson AXG S400 Development Board";
>   
> -	adc_keys {
> +	keys {
>   		compatible = "adc-keys";
>   		io-channels = <&saradc 0>;
>   		io-channel-names = "buttons";
> @@ -111,7 +111,7 @@ memory@0 {
>   		reg = <0x0 0x0 0x0 0x40000000>;
>   	};
>   
> -	main_12v: regulator-main_12v {
> +	main_12v: regulator-main-12v {
>   		compatible = "regulator-fixed";
>   		regulator-name = "12V";
>   		regulator-min-microvolt = <12000000>;
> @@ -119,7 +119,7 @@ main_12v: regulator-main_12v {
>   		regulator-always-on;
>   	};
>   
> -	vcc_3v3: regulator-vcc_3v3 {
> +	vcc_3v3: regulator-vcc-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_3V3";
>   		regulator-min-microvolt = <3300000>;
> @@ -128,7 +128,7 @@ vcc_3v3: regulator-vcc_3v3 {
>   		regulator-always-on;
>   	};
>   
> -	vcc_5v: regulator-vcc_5v {
> +	vcc_5v: regulator-vcc-5v {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC5V";
>   		regulator-min-microvolt = <5000000>;
> @@ -139,7 +139,7 @@ vcc_5v: regulator-vcc_5v {
>   		enable-active-high;
>   	};
>   
> -	vddao_3v3: regulator-vddao_3v3 {
> +	vddao_3v3: regulator-vddao-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_3V3";
>   		regulator-min-microvolt = <3300000>;
> @@ -148,7 +148,7 @@ vddao_3v3: regulator-vddao_3v3 {
>   		regulator-always-on;
>   	};
>   
> -	vddio_ao18: regulator-vddio_ao18 {
> +	vddio_ao18: regulator-vddio-ao18 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_AO18";
>   		regulator-min-microvolt = <1800000>;
> @@ -157,7 +157,7 @@ vddio_ao18: regulator-vddio_ao18 {
>   		regulator-always-on;
>   	};
>   
> -	vddio_boot: regulator-vddio_boot {
> +	vddio_boot: regulator-vddio-boot {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_BOOT";
>   		regulator-min-microvolt = <1800000>;
> @@ -166,7 +166,7 @@ vddio_boot: regulator-vddio_boot {
>   		regulator-always-on;
>   	};
>   
> -	usb_pwr: regulator-usb_pwr {
> +	usb_pwr: regulator-usb-pwr {
>   		compatible = "regulator-fixed";
>   		regulator-name = "USB_PWR";
>   		regulator-min-microvolt = <5000000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts
> index fcd7e1d8e16f..15b9bc280706 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts
> @@ -60,7 +60,7 @@ sdio_pwrseq: sdio-pwrseq {
>   		clock-names = "ext_clock";
>   	};
>   
> -	ao_5v: regulator-ao_5v {
> +	ao_5v: regulator-ao-5v {
>   		compatible = "regulator-fixed";
>   		regulator-name = "AO_5V";
>   		regulator-min-microvolt = <5000000>;
> @@ -68,7 +68,7 @@ ao_5v: regulator-ao_5v {
>   		regulator-always-on;
>   	};
>   
> -	vcc_1v8: regulator-vcc_1v8 {
> +	vcc_1v8: regulator-vcc-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_1V8";
>   		regulator-min-microvolt = <1800000>;
> @@ -77,7 +77,7 @@ vcc_1v8: regulator-vcc_1v8 {
>   		regulator-always-on;
>   	};
>   
> -	vcc_3v3: regulator-vcc_3v3 {
> +	vcc_3v3: regulator-vcc-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_3V3";
>   		regulator-min-microvolt = <3300000>;
> @@ -86,7 +86,7 @@ vcc_3v3: regulator-vcc_3v3 {
>   		regulator-always-on;
>   	};
>   
> -	hdmi_pw: regulator-hdmi_pw {
> +	hdmi_pw: regulator-hdmi-pw {
>   		compatible = "regulator-fixed";
>   		regulator-name = "HDMI_PW";
>   		regulator-min-microvolt = <5000000>;
> @@ -95,7 +95,7 @@ hdmi_pw: regulator-hdmi_pw {
>   		regulator-always-on;
>   	};
>   
> -	vddao_1v8: regulator-vddao_1v8 {
> +	vddao_1v8: regulator-vddao-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_1V8";
>   		regulator-min-microvolt = <1800000>;
> @@ -104,7 +104,7 @@ vddao_1v8: regulator-vddao_1v8 {
>   		regulator-always-on;
>   	};
>   
> -	vddao_3v3: regulator-vddao_3v3 {
> +	vddao_3v3: regulator-vddao-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_3V3";
>   		regulator-min-microvolt = <3300000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
> index 4c4550dd4711..61cb8135a392 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
> @@ -15,7 +15,7 @@ / {
>   	compatible = "seirobotics,sei510", "amlogic,g12a";
>   	model = "SEI Robotics SEI510";
>   
> -	adc_keys {
> +	keys {
>   		compatible = "adc-keys";
>   		io-channels = <&saradc 0>;
>   		io-channel-names = "buttons";
> @@ -83,7 +83,7 @@ memory@0 {
>   		reg = <0x0 0x0 0x0 0x40000000>;
>   	};
>   
> -	ao_5v: regulator-ao_5v {
> +	ao_5v: regulator-ao-5v {
>   		compatible = "regulator-fixed";
>   		regulator-name = "AO_5V";
>   		regulator-min-microvolt = <5000000>;
> @@ -92,7 +92,7 @@ ao_5v: regulator-ao_5v {
>   		regulator-always-on;
>   	};
>   
> -	dc_in: regulator-dc_in {
> +	dc_in: regulator-dc-in {
>   		compatible = "regulator-fixed";
>   		regulator-name = "DC_IN";
>   		regulator-min-microvolt = <5000000>;
> @@ -100,7 +100,7 @@ dc_in: regulator-dc_in {
>   		regulator-always-on;
>   	};
>   
> -	emmc_1v8: regulator-emmc_1v8 {
> +	emmc_1v8: regulator-emmc-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "EMMC_1V8";
>   		regulator-min-microvolt = <1800000>;
> @@ -109,7 +109,7 @@ emmc_1v8: regulator-emmc_1v8 {
>   		regulator-always-on;
>   	};
>   
> -	vddao_3v3: regulator-vddao_3v3 {
> +	vddao_3v3: regulator-vddao-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_3V3";
>   		regulator-min-microvolt = <3300000>;
> @@ -118,7 +118,7 @@ vddao_3v3: regulator-vddao_3v3 {
>   		regulator-always-on;
>   	};
>   
> -	vddao_3v3_t: regultor-vddao_3v3_t {
> +	vddao_3v3_t: regulator-vddao-3v3-t {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_3V3_T";
>   		regulator-min-microvolt = <3300000>;
> @@ -147,7 +147,7 @@ vddcpu: regulator-vddcpu {
>   		regulator-always-on;
>   	};
>   
> -	vddio_ao1v8: regulator-vddio_ao1v8 {
> +	vddio_ao1v8: regulator-vddio-ao1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_AO1V8";
>   		regulator-min-microvolt = <1800000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
> index 8355ddd7e9ae..3da7922d83f1 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
> @@ -75,7 +75,7 @@ memory@0 {
>   		reg = <0x0 0x0 0x0 0x40000000>;
>   	};
>   
> -	flash_1v8: regulator-flash_1v8 {
> +	flash_1v8: regulator-flash-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "FLASH_1V8";
>   		regulator-min-microvolt = <1800000>;
> @@ -84,7 +84,7 @@ flash_1v8: regulator-flash_1v8 {
>   		regulator-always-on;
>   	};
>   
> -	main_12v: regulator-main_12v {
> +	main_12v: regulator-main-12v {
>   		compatible = "regulator-fixed";
>   		regulator-name = "12V";
>   		regulator-min-microvolt = <12000000>;
> @@ -92,7 +92,7 @@ main_12v: regulator-main_12v {
>   		regulator-always-on;
>   	};
>   
> -	usb_pwr_en: regulator-usb_pwr_en {
> +	usb_pwr_en: regulator-usb-pwr-en {
>   		compatible = "regulator-fixed";
>   		regulator-name = "USB_PWR_EN";
>   		regulator-min-microvolt = <5000000>;
> @@ -103,7 +103,7 @@ usb_pwr_en: regulator-usb_pwr_en {
>   		enable-active-high;
>   	};
>   
> -	vcc_1v8: regulator-vcc_1v8 {
> +	vcc_1v8: regulator-vcc-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_1V8";
>   		regulator-min-microvolt = <1800000>;
> @@ -112,7 +112,7 @@ vcc_1v8: regulator-vcc_1v8 {
>   		regulator-always-on;
>   	};
>   
> -	vcc_3v3: regulator-vcc_3v3 {
> +	vcc_3v3: regulator-vcc-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_3V3";
>   		regulator-min-microvolt = <3300000>;
> @@ -122,7 +122,7 @@ vcc_3v3: regulator-vcc_3v3 {
>   		/* FIXME: actually controlled by VDDCPU_B_EN */
>   	};
>   
> -	vcc_5v: regulator-vcc_5v {
> +	vcc_5v: regulator-vcc-5v {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_5V";
>   		regulator-min-microvolt = <5000000>;
> @@ -133,7 +133,7 @@ vcc_5v: regulator-vcc_5v {
>   		enable-active-high;
>   	};
>   
> -	vddao_1v8: regulator-vddao_1v8 {
> +	vddao_1v8: regulator-vddao-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_1V8";
>   		regulator-min-microvolt = <1800000>;
> @@ -142,7 +142,7 @@ vddao_1v8: regulator-vddao_1v8 {
>   		regulator-always-on;
>   	};
>   
> -	vddao_3v3: regulator-vddao_3v3 {
> +	vddao_3v3: regulator-vddao-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_3V3";
>   		regulator-min-microvolt = <3300000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
> index 9b55982b6a6b..05c7a1e3f1b7 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
> @@ -66,7 +66,7 @@ sdio_pwrseq: sdio-pwrseq {
>   		clock-names = "ext_clock";
>   	};
>   
> -	flash_1v8: regulator-flash_1v8 {
> +	flash_1v8: regulator-flash-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "FLASH_1V8";
>   		regulator-min-microvolt = <1800000>;
> @@ -75,7 +75,7 @@ flash_1v8: regulator-flash_1v8 {
>   		regulator-always-on;
>   	};
>   
> -	dc_in: regulator-dc_in {
> +	dc_in: regulator-dc-in {
>   		compatible = "regulator-fixed";
>   		regulator-name = "DC_IN";
>   		regulator-min-microvolt = <5000000>;
> @@ -83,7 +83,7 @@ dc_in: regulator-dc_in {
>   		regulator-always-on;
>   	};
>   
> -	vcc_1v8: regulator-vcc_1v8 {
> +	vcc_1v8: regulator-vcc-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_1V8";
>   		regulator-min-microvolt = <1800000>;
> @@ -92,7 +92,7 @@ vcc_1v8: regulator-vcc_1v8 {
>   		regulator-always-on;
>   	};
>   
> -	vcc_3v3: regulator-vcc_3v3 {
> +	vcc_3v3: regulator-vcc-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_3V3";
>   		regulator-min-microvolt = <3300000>;
> @@ -102,7 +102,7 @@ vcc_3v3: regulator-vcc_3v3 {
>   		/* FIXME: actually controlled by VDDCPU_B_EN */
>   	};
>   
> -	vcc_5v: regulator-vcc_5v {
> +	vcc_5v: regulator-vcc-5v {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_5V";
>   		regulator-min-microvolt = <5000000>;
> @@ -112,7 +112,7 @@ vcc_5v: regulator-vcc_5v {
>   		gpio = <&gpio GPIOH_8 GPIO_OPEN_DRAIN>;
>   	};
>   
> -	vddao_1v8: regulator-vddao_1v8 {
> +	vddao_1v8: regulator-vddao-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_1V8";
>   		regulator-min-microvolt = <1800000>;
> @@ -121,7 +121,7 @@ vddao_1v8: regulator-vddao_1v8 {
>   		regulator-always-on;
>   	};
>   
> -	vddao_3v3: regulator-vddao_3v3 {
> +	vddao_3v3: regulator-vddao-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_3V3";
>   		regulator-min-microvolt = <3300000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> index 91c9769fda20..d80dd9a3da31 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> @@ -19,7 +19,7 @@ dio2133: audio-amplifier-0 {
>   		status = "okay";
>   	};
>   
> -	hub_5v: regulator-hub_5v {
> +	hub_5v: regulator-hub-5v {
>   		compatible = "regulator-fixed";
>   		regulator-name = "HUB_5V";
>   		regulator-min-microvolt = <5000000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid.dtsi
> index 9e12a34b2840..09d959aefb18 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid.dtsi
> @@ -48,7 +48,7 @@ led-blue {
>   		};
>   	};
>   
> -	tflash_vdd: regulator-tflash_vdd {
> +	tflash_vdd: regulator-tflash-vdd {
>   		compatible = "regulator-fixed";
>   
>   		regulator-name = "TFLASH_VDD";
> @@ -60,7 +60,7 @@ tflash_vdd: regulator-tflash_vdd {
>   		regulator-always-on;
>   	};
>   
> -	tf_io: gpio-regulator-tf_io {
> +	tf_io: gpio-regulator-tf-io {
>   		compatible = "regulator-gpio";
>   
>   		regulator-name = "TF_IO";
> @@ -74,7 +74,7 @@ tf_io: gpio-regulator-tf_io {
>   			 <1800000 1>;
>   	};
>   
> -	flash_1v8: regulator-flash_1v8 {
> +	flash_1v8: regulator-flash-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "FLASH_1V8";
>   		regulator-min-microvolt = <1800000>;
> @@ -83,7 +83,7 @@ flash_1v8: regulator-flash_1v8 {
>   		regulator-always-on;
>   	};
>   
> -	main_12v: regulator-main_12v {
> +	main_12v: regulator-main-12v {
>   		compatible = "regulator-fixed";
>   		regulator-name = "12V";
>   		regulator-min-microvolt = <12000000>;
> @@ -91,7 +91,7 @@ main_12v: regulator-main_12v {
>   		regulator-always-on;
>   	};
>   
> -	usb_pwr_en: regulator-usb_pwr_en {
> +	usb_pwr_en: regulator-usb-pwr-en {
>   		compatible = "regulator-fixed";
>   		regulator-name = "USB_PWR_EN";
>   		regulator-min-microvolt = <5000000>;
> @@ -103,7 +103,7 @@ usb_pwr_en: regulator-usb_pwr_en {
>   		enable-active-high;
>   	};
>   
> -	vcc_5v: regulator-vcc_5v {
> +	vcc_5v: regulator-vcc-5v {
>   		compatible = "regulator-fixed";
>   		regulator-name = "5V";
>   		regulator-min-microvolt = <5000000>;
> @@ -114,7 +114,7 @@ vcc_5v: regulator-vcc_5v {
>   		enable-active-high;
>   	};
>   
> -	vcc_1v8: regulator-vcc_1v8 {
> +	vcc_1v8: regulator-vcc-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_1V8";
>   		regulator-min-microvolt = <1800000>;
> @@ -123,7 +123,7 @@ vcc_1v8: regulator-vcc_1v8 {
>   		regulator-always-on;
>   	};
>   
> -	vcc_3v3: regulator-vcc_3v3 {
> +	vcc_3v3: regulator-vcc-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_3V3";
>   		regulator-min-microvolt = <3300000>;
> @@ -171,7 +171,7 @@ vddcpu_b: regulator-vddcpu-b {
>   		regulator-always-on;
>   	};
>   
> -	vddao_1v8: regulator-vddao_1v8 {
> +	vddao_1v8: regulator-vddao-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_1V8";
>   		regulator-min-microvolt = <1800000>;
> @@ -180,7 +180,7 @@ vddao_1v8: regulator-vddao_1v8 {
>   		regulator-always-on;
>   	};
>   
> -	vddao_3v3: regulator-vddao_3v3 {
> +	vddao_3v3: regulator-vddao-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_3V3";
>   		regulator-min-microvolt = <3300000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-w400.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-w400.dtsi
> index ac8b7178257e..4cb6930ffb19 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-w400.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-w400.dtsi
> @@ -39,7 +39,7 @@ sdio_pwrseq: sdio-pwrseq {
>   		clock-names = "ext_clock";
>   	};
>   
> -	flash_1v8: regulator-flash_1v8 {
> +	flash_1v8: regulator-flash-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "FLASH_1V8";
>   		regulator-min-microvolt = <1800000>;
> @@ -48,7 +48,7 @@ flash_1v8: regulator-flash_1v8 {
>   		regulator-always-on;
>   	};
>   
> -	main_12v: regulator-main_12v {
> +	main_12v: regulator-main-12v {
>   		compatible = "regulator-fixed";
>   		regulator-name = "12V";
>   		regulator-min-microvolt = <12000000>;
> @@ -56,7 +56,7 @@ main_12v: regulator-main_12v {
>   		regulator-always-on;
>   	};
>   
> -	vcc_5v: regulator-vcc_5v {
> +	vcc_5v: regulator-vcc-5v {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_5V";
>   		regulator-min-microvolt = <5000000>;
> @@ -67,7 +67,7 @@ vcc_5v: regulator-vcc_5v {
>   		enable-active-high;
>   	};
>   
> -	vcc_1v8: regulator-vcc_1v8 {
> +	vcc_1v8: regulator-vcc-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_1V8";
>   		regulator-min-microvolt = <1800000>;
> @@ -76,7 +76,7 @@ vcc_1v8: regulator-vcc_1v8 {
>   		regulator-always-on;
>   	};
>   
> -	vcc_3v3: regulator-vcc_3v3 {
> +	vcc_3v3: regulator-vcc-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_3V3";
>   		regulator-min-microvolt = <3300000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi
> index 5e7b9273b062..efd662a452e8 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi
> @@ -84,7 +84,7 @@ memory@0 {
>   		reg = <0x0 0x0 0x0 0x80000000>;
>   	};
>   
> -	ao_5v: regulator-ao_5v {
> +	ao_5v: regulator-ao-5v {
>   		compatible = "regulator-fixed";
>   		regulator-name = "AO_5V";
>   		regulator-min-microvolt = <5000000>;
> @@ -93,7 +93,7 @@ ao_5v: regulator-ao_5v {
>   		regulator-always-on;
>   	};
>   
> -	dc_in: regulator-dc_in {
> +	dc_in: regulator-dc-in {
>   		compatible = "regulator-fixed";
>   		regulator-name = "DC_IN";
>   		regulator-min-microvolt = <5000000>;
> @@ -120,7 +120,7 @@ led-blue {
>   		};
>   	};
>   
> -	vcc_card: regulator-vcc_card {
> +	vcc_card: regulator-vcc-card {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_CARD";
>   		regulator-min-microvolt = <3300000>;
> @@ -141,7 +141,7 @@ vcc5v: regulator-vcc5v {
>   		gpio = <&gpio GPIOH_3 GPIO_OPEN_DRAIN>;
>   	};
>   
> -	vddio_ao18: regulator-vddio_ao18 {
> +	vddio_ao18: regulator-vddio-ao18 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_AO18";
>   		regulator-min-microvolt = <1800000>;
> @@ -150,7 +150,7 @@ vddio_ao18: regulator-vddio_ao18 {
>   		regulator-always-on;
>   	};
>   
> -	vddio_ao3v3: regulator-vddio_ao3v3 {
> +	vddio_ao3v3: regulator-vddio-ao3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_AO3V3";
>   		regulator-min-microvolt = <3300000>;
> @@ -159,7 +159,7 @@ vddio_ao3v3: regulator-vddio_ao3v3 {
>   		regulator-always-on;
>   	};
>   
> -	vddio_boot: regulator-vddio_boot {
> +	vddio_boot: regulator-vddio-boot {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_BOOT";
>   		regulator-min-microvolt = <1800000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi
> index e59c3c92b1e7..08d6b69ba469 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi
> @@ -50,28 +50,28 @@ hdmi_5v: regulator-hdmi-5v {
>   		regulator-always-on;
>   	};
>   
> -	vddio_ao18: regulator-vddio_ao18 {
> +	vddio_ao18: regulator-vddio-ao18 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_AO18";
>   		regulator-min-microvolt = <1800000>;
>   		regulator-max-microvolt = <1800000>;
>   	};
>   
> -	vddio_boot: regulator-vddio_boot {
> +	vddio_boot: regulator-vddio-boot {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_BOOT";
>   		regulator-min-microvolt = <1800000>;
>   		regulator-max-microvolt = <1800000>;
>   	};
>   
> -	vddao_3v3: regulator-vddao_3v3 {
> +	vddao_3v3: regulator-vddao-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_3V3";
>   		regulator-min-microvolt = <3300000>;
>   		regulator-max-microvolt = <3300000>;
>   	};
>   
> -	vcc_3v3: regulator-vcc_3v3 {
> +	vcc_3v3: regulator-vcc-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_3V3";
>   		regulator-min-microvolt = <3300000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts
> index 4aab1ab705b4..cca129ce2c58 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts
> @@ -78,21 +78,21 @@ vddio_card: gpio-regulator {
>   			 <3300000 1>;
>   	};
>   
> -	vddio_boot: regulator-vddio_boot {
> +	vddio_boot: regulator-vddio-boot {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_BOOT";
>   		regulator-min-microvolt = <1800000>;
>   		regulator-max-microvolt = <1800000>;
>   	};
>   
> -	vddao_3v3: regulator-vddao_3v3 {
> +	vddao_3v3: regulator-vddao-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_3V3";
>   		regulator-min-microvolt = <3300000>;
>   		regulator-max-microvolt = <3300000>;
>   	};
>   
> -	vcc_3v3: regulator-vcc_3v3 {
> +	vcc_3v3: regulator-vcc-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_3V3";
>   		regulator-min-microvolt = <3300000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
> index e6d2de7c45a9..c431986e6a33 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
> @@ -67,7 +67,7 @@ p5v0: regulator-p5v0 {
>   		regulator-always-on;
>   	};
>   
> -	hdmi_p5v0: regulator-hdmi_p5v0 {
> +	hdmi_p5v0: regulator-hdmi-p5v0 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "HDMI_P5V0";
>   		regulator-min-microvolt = <5000000>;
> @@ -76,7 +76,7 @@ hdmi_p5v0: regulator-hdmi_p5v0 {
>   		vin-supply = <&p5v0>;
>   	};
>   
> -	tflash_vdd: regulator-tflash_vdd {
> +	tflash_vdd: regulator-tflash-vdd {
>   		compatible = "regulator-fixed";
>   
>   		regulator-name = "TFLASH_VDD";
> @@ -92,7 +92,7 @@ tflash_vdd: regulator-tflash_vdd {
>   		vin-supply = <&vddio_ao3v3>;
>   	};
>   
> -	tf_io: gpio-regulator-tf_io {
> +	tf_io: gpio-regulator-tf-io {
>   		compatible = "regulator-gpio";
>   
>   		regulator-name = "TF_IO";
> @@ -148,7 +148,7 @@ vddio_ao3v3: regulator-vddio-ao3v3 {
>   		vin-supply = <&p5v0>;
>   	};
>   
> -	ddr3_1v5: regulator-ddr3_1v5 {
> +	ddr3_1v5: regulator-ddr3-1v5 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "DDR3_1V5";
>   		regulator-min-microvolt = <1500000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts
> index 591455c50e88..7f94716876d3 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts
> @@ -21,14 +21,14 @@ spdif_dit: audio-codec-0 {
>   		sound-name-prefix = "DIT";
>   	};
>   
> -	avdd18_usb_adc: regulator-avdd18_usb_adc {
> +	avdd18_usb_adc: regulator-avdd18-usb-adc {
>   		compatible = "regulator-fixed";
>   		regulator-name = "AVDD18_USB_ADC";
>   		regulator-min-microvolt = <1800000>;
>   		regulator-max-microvolt = <1800000>;
>   	};
>   
> -	adc_keys {
> +	keys {
>   		compatible = "adc-keys";
>   		io-channels = <&saradc 0>;
>   		io-channel-names = "buttons";
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-p20x.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-p20x.dtsi
> index e803a466fe4e..52d57773a77f 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb-p20x.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-p20x.dtsi
> @@ -53,21 +53,21 @@ vddio_card: gpio-regulator {
>   		regulator-settling-time-down-us = <150000>;
>   	};
>   
> -	vddio_boot: regulator-vddio_boot {
> +	vddio_boot: regulator-vddio-boot {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_BOOT";
>   		regulator-min-microvolt = <1800000>;
>   		regulator-max-microvolt = <1800000>;
>   	};
>   
> -	vddao_3v3: regulator-vddao_3v3 {
> +	vddao_3v3: regulator-vddao-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_3V3";
>   		regulator-min-microvolt = <3300000>;
>   		regulator-max-microvolt = <3300000>;
>   	};
>   
> -	vcc_3v3: regulator-vcc_3v3 {
> +	vcc_3v3: regulator-vcc-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_3V3";
>   		regulator-min-microvolt = <3300000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
> index 74df32534231..255e93a0b36d 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
> @@ -47,28 +47,28 @@ usb_pwr: regulator-usb-pwrs {
>   		enable-active-high;
>   	};
>   
> -	vddio_boot: regulator-vddio_boot {
> +	vddio_boot: regulator-vddio-boot {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_BOOT";
>   		regulator-min-microvolt = <1800000>;
>   		regulator-max-microvolt = <1800000>;
>   	};
>   
> -	vddao_3v3: regulator-vddao_3v3 {
> +	vddao_3v3: regulator-vddao-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_3V3";
>   		regulator-min-microvolt = <3300000>;
>   		regulator-max-microvolt = <3300000>;
>   	};
>   
> -	vddio_ao18: regulator-vddio_ao18 {
> +	vddio_ao18: regulator-vddio-ao18 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_AO18";
>   		regulator-min-microvolt = <1800000>;
>   		regulator-max-microvolt = <1800000>;
>   	};
>   
> -	vcc_3v3: regulator-vcc_3v3 {
> +	vcc_3v3: regulator-vcc-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_3V3";
>   		regulator-min-microvolt = <3300000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi
> index 94dafb955301..deb295227189 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi
> @@ -49,21 +49,21 @@ usb_pwr: regulator-usb-pwrs {
>   		enable-active-high;
>   	};
>   
> -	vddio_boot: regulator-vddio_boot {
> +	vddio_boot: regulator-vddio-boot {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_BOOT";
>   		regulator-min-microvolt = <1800000>;
>   		regulator-max-microvolt = <1800000>;
>   	};
>   
> -	vddao_3v3: regulator-vddao_3v3 {
> +	vddao_3v3: regulator-vddao-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_3V3";
>   		regulator-min-microvolt = <3300000>;
>   		regulator-max-microvolt = <3300000>;
>   	};
>   
> -	vddio_ao18: regulator-vddio_ao18 {
> +	vddio_ao18: regulator-vddio-ao18 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_AO18";
>   		regulator-min-microvolt = <1800000>;
> @@ -71,7 +71,7 @@ vddio_ao18: regulator-vddio_ao18 {
>   		regulator-always-on;
>   	};
>   
> -	vcc_3v3: regulator-vcc_3v3 {
> +	vcc_3v3: regulator-vcc-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_3V3";
>   		regulator-min-microvolt = <3300000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dts
> index a29b49f051ae..90ef9c17d80b 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dts
> @@ -42,7 +42,7 @@ cvbs_connector_in: endpoint {
>   		};
>   	};
>   
> -	dc_5v: regulator-dc_5v {
> +	dc_5v: regulator-dc-5v {
>   		compatible = "regulator-fixed";
>   		regulator-name = "DC_5V";
>   		regulator-min-microvolt = <5000000>;
> @@ -89,7 +89,7 @@ vcck: regulator-vcck {
>   		regulator-always-on;
>   	};
>   
> -	vcc_3v3: regulator-vcc_3v3 {
> +	vcc_3v3: regulator-vcc-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_3V3";
>   		regulator-min-microvolt = <3300000>;
> @@ -98,7 +98,7 @@ vcc_3v3: regulator-vcc_3v3 {
>   		regulator-always-on;
>   	};
>   
> -	vddio_ao18: regulator-vddio_ao18 {
> +	vddio_ao18: regulator-vddio-ao18 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_AO18";
>   		regulator-min-microvolt = <1800000>;
> @@ -107,7 +107,7 @@ vddio_ao18: regulator-vddio_ao18 {
>   		regulator-always-on;
>   	};
>   
> -	vddio_boot: regulator-vddio_boot {
> +	vddio_boot: regulator-vddio-boot {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_BOOT";
>   		regulator-min-microvolt = <1800000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
> index c0d6eb55100a..08a4718219b1 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
> @@ -64,28 +64,28 @@ memory@0 {
>   		reg = <0x0 0x0 0x0 0x20000000>;
>   	};
>   
> -	vddio_boot: regulator-vddio_boot {
> +	vddio_boot: regulator-vddio-boot {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_BOOT";
>   		regulator-min-microvolt = <1800000>;
>   		regulator-max-microvolt = <1800000>;
>   	};
>   
> -	vddao_3v3: regulator-vddao_3v3 {
> +	vddao_3v3: regulator-vddao-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_3V3";
>   		regulator-min-microvolt = <3300000>;
>   		regulator-max-microvolt = <3300000>;
>   	};
>   
> -	vddio_ao18: regulator-vddio_ao18 {
> +	vddio_ao18: regulator-vddio-ao18 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_AO18";
>   		regulator-min-microvolt = <1800000>;
>   		regulator-max-microvolt = <1800000>;
>   	};
>   
> -	vcc_3v3: regulator-vcc_3v3 {
> +	vcc_3v3: regulator-vcc-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_3V3";
>   		regulator-min-microvolt = <3300000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-jethome-jethub-j80.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-jethome-jethub-j80.dts
> index a18d6d241a5a..2b94b6e5285e 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-jethome-jethub-j80.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-jethome-jethub-j80.dts
> @@ -37,28 +37,28 @@ chosen {
>   		stdout-path = "serial0:115200n8";
>   	};
>   
> -	vddio_ao18: regulator-vddio_ao18 {
> +	vddio_ao18: regulator-vddio-ao18 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_AO18";
>   		regulator-min-microvolt = <1800000>;
>   		regulator-max-microvolt = <1800000>;
>   	};
>   
> -	vddio_boot: regulator-vddio_boot {
> +	vddio_boot: regulator-vddio-boot {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_BOOT";
>   		regulator-min-microvolt = <1800000>;
>   		regulator-max-microvolt = <1800000>;
>   	};
>   
> -	vddao_3v3: regulator-vddao_3v3 {
> +	vddao_3v3: regulator-vddao-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_3V3";
>   		regulator-min-microvolt = <3300000>;
>   		regulator-max-microvolt = <3300000>;
>   	};
>   
> -	vcc_3v3: regulator-vcc_3v3 {
> +	vcc_3v3: regulator-vcc-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_3V3";
>   		regulator-min-microvolt = <3300000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-hwacom-amazetv.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-hwacom-amazetv.dts
> index c8d74e61dec1..89fe5110f7a2 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-hwacom-amazetv.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-hwacom-amazetv.dts
> @@ -42,21 +42,21 @@ vddio_card: gpio-regulator {
>   			 <3300000 1>;
>   	};
>   
> -	vddio_boot: regulator-vddio_boot {
> +	vddio_boot: regulator-vddio-boot {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_BOOT";
>   		regulator-min-microvolt = <1800000>;
>   		regulator-max-microvolt = <1800000>;
>   	};
>   
> -	vddao_3v3: regulator-vddao_3v3 {
> +	vddao_3v3: regulator-vddao-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_3V3";
>   		regulator-min-microvolt = <3300000>;
>   		regulator-max-microvolt = <3300000>;
>   	};
>   
> -	vcc_3v3: regulator-vcc_3v3 {
> +	vcc_3v3: regulator-vcc-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_3V3";
>   		regulator-min-microvolt = <3300000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc-v2.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc-v2.dts
> index 2825db91e462..63b20860067c 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc-v2.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc-v2.dts
> @@ -67,7 +67,7 @@ memory@0 {
>   		reg = <0x0 0x0 0x0 0x80000000>;
>   	};
>   
> -	ao_5v: regulator-ao_5v {
> +	ao_5v: regulator-ao-5v {
>   		compatible = "regulator-fixed";
>   		regulator-name = "AO_5V";
>   		regulator-min-microvolt = <5000000>;
> @@ -76,7 +76,7 @@ ao_5v: regulator-ao_5v {
>   		regulator-always-on;
>   	};
>   
> -	dc_in: regulator-dc_in {
> +	dc_in: regulator-dc-in {
>   		compatible = "regulator-fixed";
>   		regulator-name = "DC_IN";
>   		regulator-min-microvolt = <5000000>;
> @@ -93,7 +93,7 @@ vcck: regulator-vcck {
>   		regulator-always-on;
>   	};
>   
> -	vcc_card: regulator-vcc_card {
> +	vcc_card: regulator-vcc-card {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_CARD";
>   		regulator-min-microvolt = <3300000>;
> @@ -114,7 +114,7 @@ vcc5v: regulator-vcc5v {
>   		gpio = <&gpio GPIOH_3 GPIO_OPEN_DRAIN>;
>   	};
>   
> -	vddio_ao3v3: regulator-vddio_ao3v3 {
> +	vddio_ao3v3: regulator-vddio-ao3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_AO3V3";
>   		regulator-min-microvolt = <3300000>;
> @@ -139,7 +139,7 @@ vddio_card: regulator-vddio-card {
>   		regulator-settling-time-down-us = <50000>;
>   	};
>   
> -	vddio_ao18: regulator-vddio_ao18 {
> +	vddio_ao18: regulator-vddio-ao18 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_AO18";
>   		regulator-min-microvolt = <1800000>;
> @@ -148,7 +148,7 @@ vddio_ao18: regulator-vddio_ao18 {
>   		regulator-always-on;
>   	};
>   
> -	vcc_1v8: regulator-vcc_1v8 {
> +	vcc_1v8: regulator-vcc-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC 1V8";
>   		regulator-min-microvolt = <1800000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts
> index 27093e6ac9e2..8b26c9661be1 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts
> @@ -93,7 +93,7 @@ hdmi_5v: regulator-hdmi-5v {
>   		regulator-always-on;
>   	};
>   
> -	vcc_3v3: regulator-vcc_3v3 {
> +	vcc_3v3: regulator-vcc-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_3V3";
>   		regulator-min-microvolt = <3300000>;
> @@ -117,7 +117,7 @@ vcc_card: regulator-vcc-card {
>   		regulator-settling-time-down-us = <50000>;
>   	};
>   
> -	vddio_ao18: regulator-vddio_ao18 {
> +	vddio_ao18: regulator-vddio-ao18 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_AO18";
>   		regulator-min-microvolt = <1800000>;
> @@ -125,7 +125,7 @@ vddio_ao18: regulator-vddio_ao18 {
>   	};
>   
>   	/* This is provided by LDOs on the eMMC daugther card */
> -	vddio_boot: regulator-vddio_boot {
> +	vddio_boot: regulator-vddio-boot {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_BOOT";
>   		regulator-min-microvolt = <1800000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-nexbox-a95x.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-nexbox-a95x.dts
> index f1acca5c4434..c79f9f2099bf 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-nexbox-a95x.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-nexbox-a95x.dts
> @@ -42,21 +42,21 @@ vddio_card: gpio-regulator {
>   			 <3300000 1>;
>   	};
>   
> -	vddio_boot: regulator-vddio_boot {
> +	vddio_boot: regulator-vddio-boot {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_BOOT";
>   		regulator-min-microvolt = <1800000>;
>   		regulator-max-microvolt = <1800000>;
>   	};
>   
> -	vddao_3v3: regulator-vddao_3v3 {
> +	vddao_3v3: regulator-vddao-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_3V3";
>   		regulator-min-microvolt = <3300000>;
>   		regulator-max-microvolt = <3300000>;
>   	};
>   
> -	vcc_3v3: regulator-vcc_3v3 {
> +	vcc_3v3: regulator-vcc-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_3V3";
>   		regulator-min-microvolt = <3300000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi
> index a150cc0e18ff..7e7dc87ede2d 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi
> @@ -39,28 +39,28 @@ hdmi_5v: regulator-hdmi-5v {
>   		regulator-always-on;
>   	};
>   
> -	vddio_boot: regulator-vddio_boot {
> +	vddio_boot: regulator-vddio-boot {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_BOOT";
>   		regulator-min-microvolt = <1800000>;
>   		regulator-max-microvolt = <1800000>;
>   	};
>   
> -	vddao_3v3: regulator-vddao_3v3 {
> +	vddao_3v3: regulator-vddao-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_3V3";
>   		regulator-min-microvolt = <3300000>;
>   		regulator-max-microvolt = <3300000>;
>   	};
>   
> -	vddio_ao18: regulator-vddio_ao18 {
> +	vddio_ao18: regulator-vddio-ao18 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_AO18";
>   		regulator-min-microvolt = <1800000>;
>   		regulator-max-microvolt = <1800000>;
>   	};
>   
> -	vcc_3v3: regulator-vcc_3v3 {
> +	vcc_3v3: regulator-vcc-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_3V3";
>   		regulator-min-microvolt = <3300000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
> index 860f307494c5..07e7c3bedea0 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
> @@ -112,28 +112,28 @@ hdmi_5v: regulator-hdmi-5v {
>   		regulator-always-on;
>   	};
>   
> -	vcc_3v3: regulator-vcc_3v3 {
> +	vcc_3v3: regulator-vcc-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_3V3";
>   		regulator-min-microvolt = <3300000>;
>   		regulator-max-microvolt = <3300000>;
>   	};
>   
> -	vddio_ao18: regulator-vddio_ao18 {
> +	vddio_ao18: regulator-vddio-ao18 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_AO18";
>   		regulator-min-microvolt = <1800000>;
>   		regulator-max-microvolt = <1800000>;
>   	};
>   
> -	vddio_boot: regulator-vddio_boot {
> +	vddio_boot: regulator-vddio-boot {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_BOOT";
>   		regulator-min-microvolt = <1800000>;
>   		regulator-max-microvolt = <1800000>;
>   	};
>   
> -	vddao_3v3: regulator-vddao_3v3 {
> +	vddao_3v3: regulator-vddao-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_3V3";
>   		regulator-min-microvolt = <3300000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-s912-libretech-pc.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-s912-libretech-pc.dts
> index 4eda9f634c42..a66f19851ac9 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxm-s912-libretech-pc.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxm-s912-libretech-pc.dts
> @@ -14,7 +14,7 @@ / {
>   		     "amlogic,meson-gxm";
>   	model = "Libre Computer AML-S912-PC";
>   
> -	typec2_vbus: regulator-typec2_vbus {
> +	typec2_vbus: regulator-typec2-vbus {
>   		compatible = "regulator-fixed";
>   		regulator-name = "TYPEC2_VBUS";
>   		regulator-min-microvolt = <5000000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
> index 514a6dd4b124..e78cc9b577a0 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
> @@ -80,7 +80,7 @@ sdio_pwrseq: sdio-pwrseq {
>   		clock-names = "ext_clock";
>   	};
>   
> -	dc_in: regulator-dc_in {
> +	dc_in: regulator-dc-in {
>   		compatible = "regulator-fixed";
>   		regulator-name = "DC_IN";
>   		regulator-min-microvolt = <5000000>;
> @@ -88,7 +88,7 @@ dc_in: regulator-dc_in {
>   		regulator-always-on;
>   	};
>   
> -	vcc_5v: regulator-vcc_5v {
> +	vcc_5v: regulator-vcc-5v {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_5V";
>   		regulator-min-microvolt = <5000000>;
> @@ -99,7 +99,7 @@ vcc_5v: regulator-vcc_5v {
>   		enable-active-high;
>   	};
>   
> -	vcc_1v8: regulator-vcc_1v8 {
> +	vcc_1v8: regulator-vcc-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_1V8";
>   		regulator-min-microvolt = <1800000>;
> @@ -108,7 +108,7 @@ vcc_1v8: regulator-vcc_1v8 {
>   		regulator-always-on;
>   	};
>   
> -	vcc_3v3: regulator-vcc_3v3 {
> +	vcc_3v3: regulator-vcc-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_3V3";
>   		regulator-min-microvolt = <3300000>;
> @@ -118,7 +118,7 @@ vcc_3v3: regulator-vcc_3v3 {
>   		/* FIXME: actually controlled by VDDCPU_B_EN */
>   	};
>   
> -	vddao_1v8: regulator-vddao_1v8 {
> +	vddao_1v8: regulator-vddao-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_AO1V8";
>   		regulator-min-microvolt = <1800000>;
> @@ -127,7 +127,7 @@ vddao_1v8: regulator-vddao_1v8 {
>   		regulator-always-on;
>   	};
>   
> -	emmc_1v8: regulator-emmc_1v8 {
> +	emmc_1v8: regulator-emmc-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "EMMC_AO1V8";
>   		regulator-min-microvolt = <1800000>;
> @@ -136,7 +136,7 @@ emmc_1v8: regulator-emmc_1v8 {
>   		regulator-always-on;
>   	};
>   
> -	vsys_3v3: regulator-vsys_3v3 {
> +	vsys_3v3: regulator-vsys-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VSYS_3V3";
>   		regulator-min-microvolt = <3300000>;
> @@ -145,7 +145,7 @@ vsys_3v3: regulator-vsys_3v3 {
>   		regulator-always-on;
>   	};
>   
> -	usb_pwr: regulator-usb_pwr {
> +	usb_pwr: regulator-usb-pwr {
>   		compatible = "regulator-fixed";
>   		regulator-name = "USB_PWR";
>   		regulator-min-microvolt = <5000000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi b/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
> index 35e8f5bae990..082b72703cdf 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
> @@ -150,7 +150,7 @@ vcc_5v: regulator-vcc-5v {
>   		gpio-open-drain;
>   	};
>   
> -	vddao_3v3: regulator-vddao_3v3 {
> +	vddao_3v3: regulator-vddao-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_3V3";
>   		regulator-min-microvolt = <3300000>;
> @@ -171,7 +171,7 @@ vddcpu_b: regulator-vddcpu-b {
>   		pwm-dutycycle-range = <100 0>;
>   	};
>   
> -	vddio_ao18: regulator-vddio_ao18 {
> +	vddio_ao18: regulator-vddio-ao18 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_AO18";
>   		regulator-min-microvolt = <1800000>;
> @@ -180,7 +180,7 @@ vddio_ao18: regulator-vddio_ao18 {
>   		vin-supply = <&vddao_3v3>;
>   	};
>   
> -	vddio_c: regulator-vddio_c {
> +	vddio_c: regulator-vddio-c {
>   		compatible = "regulator-gpio";
>   		regulator-name = "VDDIO_C";
>   		regulator-min-microvolt = <1800000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-ac2xx.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1-ac2xx.dtsi
> index 46a34731f7e2..d1fa8b8bf795 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-sm1-ac2xx.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1-ac2xx.dtsi
> @@ -54,7 +54,7 @@ memory@0 {
>   		reg = <0x0 0x0 0x0 0x40000000>;
>   	};
>   
> -	ao_5v: regulator-ao_5v {
> +	ao_5v: regulator-ao-5v {
>   		compatible = "regulator-fixed";
>   		regulator-name = "AO_5V";
>   		regulator-min-microvolt = <5000000>;
> @@ -63,7 +63,7 @@ ao_5v: regulator-ao_5v {
>   		regulator-always-on;
>   	};
>   
> -	dc_in: regulator-dc_in {
> +	dc_in: regulator-dc-in {
>   		compatible = "regulator-fixed";
>   		regulator-name = "DC_IN";
>   		regulator-min-microvolt = <5000000>;
> @@ -71,7 +71,7 @@ dc_in: regulator-dc_in {
>   		regulator-always-on;
>   	};
>   
> -	emmc_1v8: regulator-emmc_1v8 {
> +	emmc_1v8: regulator-emmc-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "EMMC_1V8";
>   		regulator-min-microvolt = <1800000>;
> @@ -80,7 +80,7 @@ emmc_1v8: regulator-emmc_1v8 {
>   		regulator-always-on;
>   	};
>   
> -	vddao_3v3: regulator-vddao_3v3 {
> +	vddao_3v3: regulator-vddao-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_3V3";
>   		regulator-min-microvolt = <3300000>;
> @@ -105,7 +105,7 @@ vddcpu: regulator-vddcpu {
>   		regulator-always-on;
>   	};
>   
> -	vddio_ao1v8: regulator-vddio_ao1v8 {
> +	vddio_ao1v8: regulator-vddio-ao1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_AO1V8";
>   		regulator-min-microvolt = <1800000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi.dtsi
> index 62404743e62d..81dce862902a 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi.dtsi
> @@ -82,7 +82,7 @@ memory@0 {
>   		reg = <0x0 0x0 0x0 0x40000000>;
>   	};
>   
> -	emmc_1v8: regulator-emmc_1v8 {
> +	emmc_1v8: regulator-emmc-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "EMMC_1V8";
>   		regulator-min-microvolt = <1800000>;
> @@ -91,7 +91,7 @@ emmc_1v8: regulator-emmc_1v8 {
>   		regulator-always-on;
>   	};
>   
> -	dc_in: regulator-dc_in {
> +	dc_in: regulator-dc-in {
>   		compatible = "regulator-fixed";
>   		regulator-name = "DC_IN";
>   		regulator-min-microvolt = <5000000>;
> @@ -99,7 +99,7 @@ dc_in: regulator-dc_in {
>   		regulator-always-on;
>   	};
>   
> -	vddio_c: regulator-vddio_c {
> +	vddio_c: regulator-vddio-c {
>   		compatible = "regulator-gpio";
>   		regulator-name = "VDDIO_C";
>   		regulator-min-microvolt = <1800000>;
> @@ -116,7 +116,7 @@ vddio_c: regulator-vddio_c {
>   			 <3300000 1>;
>   	};
>   
> -	tflash_vdd: regulator-tflash_vdd {
> +	tflash_vdd: regulator-tflash-vdd {
>   		compatible = "regulator-fixed";
>   		regulator-name = "TFLASH_VDD";
>   		regulator-min-microvolt = <3300000>;
> @@ -127,7 +127,7 @@ tflash_vdd: regulator-tflash_vdd {
>   		regulator-always-on;
>   	};
>   
> -	vddao_1v8: regulator-vddao_1v8 {
> +	vddao_1v8: regulator-vddao-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_1V8";
>   		regulator-min-microvolt = <1800000>;
> @@ -136,7 +136,7 @@ vddao_1v8: regulator-vddao_1v8 {
>   		regulator-always-on;
>   	};
>   
> -	vddao_3v3: regulator-vddao_3v3 {
> +	vddao_3v3: regulator-vddao-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_3V3";
>   		regulator-min-microvolt = <3300000>;
> @@ -165,7 +165,7 @@ vddcpu: regulator-vddcpu {
>   	};
>   
>   	/* USB Hub Power Enable */
> -	vl_pwr_en: regulator-vl_pwr_en {
> +	vl_pwr_en: regulator-vl-pwr-en {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VL_PWR_EN";
>   		regulator-min-microvolt = <5000000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts
> index 846a2d6c20e5..0170139b8d32 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid-hc4.dts
> @@ -43,7 +43,7 @@ led-red {
>   	};
>   
>   	/* Powers the SATA Disk 0 regulator, which is enabled when a disk load is detected */
> -	p12v_0: regulator-p12v_0 {
> +	p12v_0: regulator-p12v-0 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "P12V_0";
>   		regulator-min-microvolt = <12000000>;
> @@ -56,7 +56,7 @@ p12v_0: regulator-p12v_0 {
>   	};
>   
>   	/* Powers the SATA Disk 1 regulator, which is enabled when a disk load is detected */
> -	p12v_1: regulator-p12v_1 {
> +	p12v_1: regulator-p12v-1 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "P12V_1";
>   		regulator-min-microvolt = <12000000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
> index 1db2327bbd13..951eb8e3f0c0 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
> @@ -28,7 +28,7 @@ emmc_pwrseq: emmc-pwrseq {
>   		reset-gpios = <&gpio BOOT_12 GPIO_ACTIVE_LOW>;
>   	};
>   
> -	tflash_vdd: regulator-tflash_vdd {
> +	tflash_vdd: regulator-tflash-vdd {
>   		compatible = "regulator-fixed";
>   
>   		regulator-name = "TFLASH_VDD";
> @@ -40,7 +40,7 @@ tflash_vdd: regulator-tflash_vdd {
>   		regulator-always-on;
>   	};
>   
> -	tf_io: gpio-regulator-tf_io {
> +	tf_io: gpio-regulator-tf-io {
>   		compatible = "regulator-gpio";
>   
>   		regulator-name = "TF_IO";
> @@ -59,7 +59,7 @@ tf_io: gpio-regulator-tf_io {
>   			 <1800000 1>;
>   	};
>   
> -	flash_1v8: regulator-flash_1v8 {
> +	flash_1v8: regulator-flash-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "FLASH_1V8";
>   		regulator-min-microvolt = <1800000>;
> @@ -68,7 +68,7 @@ flash_1v8: regulator-flash_1v8 {
>   		regulator-always-on;
>   	};
>   
> -	main_12v: regulator-main_12v {
> +	main_12v: regulator-main-12v {
>   		compatible = "regulator-fixed";
>   		regulator-name = "12V";
>   		regulator-min-microvolt = <12000000>;
> @@ -76,7 +76,7 @@ main_12v: regulator-main_12v {
>   		regulator-always-on;
>   	};
>   
> -	vcc_5v: regulator-vcc_5v {
> +	vcc_5v: regulator-vcc-5v {
>   		compatible = "regulator-fixed";
>   		regulator-name = "5V";
>   		regulator-min-microvolt = <5000000>;
> @@ -87,7 +87,7 @@ vcc_5v: regulator-vcc_5v {
>   		enable-active-high;
>   	};
>   
> -	vcc_1v8: regulator-vcc_1v8 {
> +	vcc_1v8: regulator-vcc-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_1V8";
>   		regulator-min-microvolt = <1800000>;
> @@ -96,7 +96,7 @@ vcc_1v8: regulator-vcc_1v8 {
>   		regulator-always-on;
>   	};
>   
> -	vcc_3v3: regulator-vcc_3v3 {
> +	vcc_3v3: regulator-vcc-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VCC_3V3";
>   		regulator-min-microvolt = <3300000>;
> @@ -125,7 +125,7 @@ vddcpu: regulator-vddcpu {
>   		regulator-always-on;
>   	};
>   
> -	usb_pwr_en: regulator-usb_pwr_en {
> +	usb_pwr_en: regulator-usb-pwr-en {
>   		compatible = "regulator-fixed";
>   		regulator-name = "USB_PWR_EN";
>   		regulator-min-microvolt = <5000000>;
> @@ -137,7 +137,7 @@ usb_pwr_en: regulator-usb_pwr_en {
>   		enable-active-high;
>   	};
>   
> -	vddao_1v8: regulator-vddao_1v8 {
> +	vddao_1v8: regulator-vddao-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_1V8";
>   		regulator-min-microvolt = <1800000>;
> @@ -146,7 +146,7 @@ vddao_1v8: regulator-vddao_1v8 {
>   		regulator-always-on;
>   	};
>   
> -	vddao_3v3: regulator-vddao_3v3 {
> +	vddao_3v3: regulator-vddao-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_3V3";
>   		regulator-min-microvolt = <3300000>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
> index 109932068dbe..3581e14cbf18 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
> @@ -127,7 +127,7 @@ memory@0 {
>   		reg = <0x0 0x0 0x0 0x40000000>;
>   	};
>   
> -	ao_5v: regulator-ao_5v {
> +	ao_5v: regulator-ao-5v {
>   		compatible = "regulator-fixed";
>   		regulator-name = "AO_5V";
>   		regulator-min-microvolt = <5000000>;
> @@ -136,7 +136,7 @@ ao_5v: regulator-ao_5v {
>   		regulator-always-on;
>   	};
>   
> -	dc_in: regulator-dc_in {
> +	dc_in: regulator-dc-in {
>   		compatible = "regulator-fixed";
>   		regulator-name = "DC_IN";
>   		regulator-min-microvolt = <5000000>;
> @@ -144,7 +144,7 @@ dc_in: regulator-dc_in {
>   		regulator-always-on;
>   	};
>   
> -	emmc_1v8: regulator-emmc_1v8 {
> +	emmc_1v8: regulator-emmc-1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "EMMC_1V8";
>   		regulator-min-microvolt = <1800000>;
> @@ -153,7 +153,7 @@ emmc_1v8: regulator-emmc_1v8 {
>   		regulator-always-on;
>   	};
>   
> -	vddao_3v3: regulator-vddao_3v3 {
> +	vddao_3v3: regulator-vddao-3v3 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_3V3";
>   		regulator-min-microvolt = <3300000>;
> @@ -163,7 +163,7 @@ vddao_3v3: regulator-vddao_3v3 {
>   	};
>   
>   	/* Used by Tuner, RGB Led & IR Emitter LED array */
> -	vddao_3v3_t: regulator-vddao_3v3_t {
> +	vddao_3v3_t: regulator-vddao-3v3-t {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDAO_3V3_T";
>   		regulator-min-microvolt = <3300000>;
> @@ -192,7 +192,7 @@ vddcpu: regulator-vddcpu {
>   		regulator-always-on;
>   	};
>   
> -	vddio_ao1v8: regulator-vddio_ao1v8 {
> +	vddio_ao1v8: regulator-vddio-ao1v8 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_AO1V8";
>   		regulator-min-microvolt = <1800000>;

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

