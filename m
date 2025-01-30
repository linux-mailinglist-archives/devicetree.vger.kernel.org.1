Return-Path: <devicetree+bounces-141940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9E5A23378
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 18:54:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 89B031883232
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 17:54:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70B6F1F03DC;
	Thu, 30 Jan 2025 17:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SDNoEJt7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6D791EB9E1
	for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 17:54:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738259644; cv=none; b=ZsB1y5zt61k0+OVXowtK0wgE/Uwmw7P2COxK7igUlmfoj5PR4XBwtSnorGGnQfNY1kfuob43w++Jv6eZhSwOxk98GU1iEJfF5ov9WdX0kLkPMS0uwcGOVX60Fgb0gGs+Hdq2sgP8FglAVdBWmSz+cKcEkV+USPSH1EPxTyeX0Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738259644; c=relaxed/simple;
	bh=WUw+cg2C7p4c6woyhzeIifv4ld0H2t+UcA3JTslN+0Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LKhMhAOy0nUFwSuJUmlOerJgdrMieWFvnbBiV8++uG+vOVpDK3yEUrlwKmFNMFrFUKVbg7ol8/HJraVDMLtV8tsBcTiRumZCQlJGmqOgHy4/27mowtsPerGYNlHUC6Yuigl9Pgt37yy7QWZ943eWXbwe1jANgICfoxk6+PaEd9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SDNoEJt7; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3862b40a6e0so766431f8f.0
        for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 09:54:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738259640; x=1738864440; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z8JJUa/aNAV/P70L0oa1PWI0esDvQnXBP48aD2W+hbQ=;
        b=SDNoEJt7SGYkbHVNdjvckU8rtSPLBWRK1Di315zd5pcyoUWrZBRVKknXL0hHQEmAah
         gPQKNRm+BQmaDaOH/DQd/vNh+vq2kT+5QnvfxZkcF5Iw+fnWH+6gckIY/9QXVqQveMbS
         qU94ss1EcYjTdTmTj34HuVKYFUeWnXk9shEGjYKNSH3iC5ANjJwVjiXyyCBAcrd0nhK4
         Anf1df7Ip2ZJXvjnA6TcGiBC8KWxSOB1gzT8w8CXtDJrxFaaGbZ2G00gdQ2HMKg46X8N
         0t/ZBexechWA0P3jhzHe+w2pvbtUbm8G3l2f8vHv2fyT7kyPq2ZaSrJR4tfH8Hg7e+N8
         txFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738259640; x=1738864440;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z8JJUa/aNAV/P70L0oa1PWI0esDvQnXBP48aD2W+hbQ=;
        b=T3UXCjGyBDgVXVQLY/wuW7EkmLSba9v+eaG+5hFGuJzoUcmCAzMBPBvXj/Op9xFKAU
         tgVlDHSDmzEVonq6AsmKWPnqWnMX1lcYx/JzEkKmtad3tg6sUuSwDviqCHvbRgax6dl+
         p/A1t5z/12+EvLUFJEllRPIvK14W5+XnP/XDD48n63b33q+9S0+Bp5+fco5JK78K83PU
         56VZbCaUsbn9iM6B9SW46LXNKyoPgkSD9r2noa0OK4/aPPVmXGrQzd/D06Hbot85FPW2
         bXqOZXjLFXA2NtnfYXYBx8PNSgkMgY1bXm2s3YXScKCKKFfsQPe4oSIhHrP5mA1wV4y2
         78MA==
X-Forwarded-Encrypted: i=1; AJvYcCWvhqdN9hp8ezSbK2jbksNtCADn5spcT4UtTJmKCmWTcQkVd8BIzSCXHu6LrSDUcFSzPZOAePmDX6b3@vger.kernel.org
X-Gm-Message-State: AOJu0YwTCpc5+gR7dJcv1qc+P5B1q42Z4AHtpHW4c6PXYUOhBPjimTTC
	LryiMkTn39iewP+hOzj0nxaiLJ2QVRRpE6NcEPhnM/zwscIPrkmohy0d33lj50M=
X-Gm-Gg: ASbGncs2z0R1PyvBYfmkmPxlLYAKr8oL1ufE7XrLT10hB4VwUZSQTepB3Qursv09tiS
	/y6Wx2jN0P3ptBkLNdtCOZS1hCvYkwTWf0H9CBr8YbCrkos/NHijfnTeqHiHVVyw49/DRwn5Hzo
	JLri5xxKZrnPVGrflkOtY1hmRnxW40pMqC+9CyWwpNw8lNeVPSSetBTs4bUvdmCDpfGpgM5g+06
	H8JoXWM/BpgG2SMbfCheWLO0aU8NxHoClrAofJHaNKUPBNghffKbyrz9NdJ/wh+ztvoL3kE8Yk+
	+EPT1jvWbRaVpUnAmlFfGYeXcehZFIgYyxV4ge41O38ILpeaUNxroXA=
X-Google-Smtp-Source: AGHT+IE96tMjtmz3u9v3Eic5ID5HrbnpMbVJNYNsrTeZ4kPIWPh0vN3o9LQirB4Tqm2SD1jL2Q6Ung==
X-Received: by 2002:a05:6000:186d:b0:38c:617c:ee22 with SMTP id ffacd0b85a97d-38c617cf0c1mr173456f8f.54.1738259638478;
        Thu, 30 Jan 2025 09:53:58 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-438dcc2f17dsm65847425e9.23.2025.01.30.09.53.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jan 2025 09:53:58 -0800 (PST)
Message-ID: <034707dd-e6b1-4a39-860b-b972fa438645@linaro.org>
Date: Thu, 30 Jan 2025 18:53:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] arm64: dts: renesas: r9a08g045: Add TSU node
To: Claudiu <claudiu.beznea@tuxon.dev>, rafael@kernel.org,
 rui.zhang@intel.com, lukasz.luba@arm.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, geert+renesas@glider.be,
 magnus.damm@gmail.com, mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de, ulf.hansson@linaro.org
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 Biju Das <biju.das.jz@bp.renesas.com>
References: <20250103163805.1775705-1-claudiu.beznea.uj@bp.renesas.com>
 <20250103163805.1775705-6-claudiu.beznea.uj@bp.renesas.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20250103163805.1775705-6-claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 03/01/2025 17:38, Claudiu wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Add TSU node along with thermal zones and keep it enabled in the SoC DTSI.
> The temperature reported by the TSU can only be read through channel 8 of
> the ADC. Therefore, enable the ADC by default.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
>   arch/arm64/boot/dts/renesas/r9a08g045.dtsi    | 43 ++++++++++++++++++-
>   .../boot/dts/renesas/rzg3s-smarc-som.dtsi     |  4 --
>   2 files changed, 42 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
> index a9b98db9ef95..fd74138198a8 100644
> --- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
> @@ -205,7 +205,6 @@ adc: adc@10058000 {
>   			#address-cells = <1>;
>   			#size-cells = <0>;
>   			#io-channel-cells = <1>;
> -			status = "disabled";
>   
>   			channel@0 {
>   				reg = <0>;
> @@ -244,6 +243,17 @@ channel@8 {
>   			};
>   		};
>   
> +		tsu: thermal@10059000 {
> +			compatible = "renesas,r9a08g045-tsu";
> +			reg = <0 0x10059000 0 0x1000>;
> +			clocks = <&cpg CPG_MOD R9A08G045_TSU_PCLK>;
> +			resets = <&cpg R9A08G045_TSU_PRESETN>;
> +			power-domains = <&cpg>;
> +			#thermal-sensor-cells = <0>;
> +			io-channels = <&adc 8>;
> +			io-channel-names = "tsu";
> +		};
> +
>   		vbattb: clock-controller@1005c000 {
>   			compatible = "renesas,r9a08g045-vbattb";
>   			reg = <0 0x1005c000 0 0x1000>;
> @@ -690,6 +700,37 @@ timer {
>   				  "hyp-virt";
>   	};
>   
> +	thermal-zones {
> +		cpu_thermal: cpu-thermal {
> +			polling-delay-passive = <250>;
> +			polling-delay = <1000>;
> +			thermal-sensors = <&tsu>;
> +			sustainable-power = <423>;
> +
> +			cooling-maps {
> +				map0 {
> +					trip = <&target>;
> +					cooling-device = <&cpu0 0 2>;
> +					contribution = <1024>;
> +				};
> +			};
> +
> +			trips {
> +				sensor_crit: sensor-crit {
> +					temperature = <125000>;
> +					hysteresis = <1000>;
> +					type = "critical";
> +				};
> +
> +				target: trip-point {
> +					temperature = <100000>;
> +					hysteresis = <1000>;
> +					type = "passive";
> +				};

1. As you specified the sustainable power, the power allocator would be 
used. However, it needs an intermediate passive trip point before 
reaching the mitigation because the governor has to collect data ahead 
of the passive mitigation trip point in order to feed the PID loop. This 
trip point is not bound to any cooling device

2. The mitigation temperature is set to 100°C. The MTBF decay factor of 
the semi-conductor will be increased by more the 100x times during the 
thermal episodes stress thus reducing its lifespan considerably if it 
hits this temperature often (but I doubt with a single Cortex-A55).

3. It would make sense to add a 'hot' trip point so the user space can 
take an action to reduce the thermal pressure before reaching the 
critical temperature

4. IIUC, the CPU does not do voltage scaling but only frequency scaling, 
right ? If it is the case, then it is even more true that the mitigation 
trip point should be reduced because the frequency scaling only may not 
suffice to provide a cooling effect


> +			};
> +		};
> +	};
> +
>   	vbattb_xtal: vbattb-xtal {
>   		compatible = "fixed-clock";
>   		#clock-cells = <0>;
> diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
> index ef12c1c462a7..041d256d7b79 100644
> --- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
> +++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
> @@ -102,10 +102,6 @@ x3_clk: x3-clock {
>   	};
>   };
>   
> -&adc {
> -	status = "okay";
> -};
> -
>   #if SW_CONFIG3 == SW_ON
>   &eth0 {
>   	pinctrl-0 = <&eth0_pins>;


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

