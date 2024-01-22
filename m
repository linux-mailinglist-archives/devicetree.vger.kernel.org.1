Return-Path: <devicetree+bounces-33934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9797A83749A
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 21:52:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 45BA4285406
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 20:52:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DCF947A47;
	Mon, 22 Jan 2024 20:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TylESYXc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFBD481A2
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 20:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705956736; cv=none; b=lBHwqpF6iJL+SV7VyWcMx0pIWUHvv2evEtiF4YTSM0dTU/JbYyZnU/d9130DKq6zPkVGYm9WWSwcZ0SMFw6/namA0ui9QeKloPdvLSTN+wGXkCWZUMpXDL+hVOFeFeQn3WJgdrGlk9t1aS/OgUicLMMA0QR3ThRtBFM8OUEdqOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705956736; c=relaxed/simple;
	bh=0NNt2kh++PivBuSInt33gb5IO1kUgM0lDgzPBYNT4VQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=h5JanShog4Ju4j2yMtaquYFltyA2qjWvi7XY8v7tfw7r6sbe+Ohtt9DvgkMgi3dTRymHbpGg/ZYQvdVRXDjpSQxpZw+2BFF9c4UpWoV+NblrKvo5VH+LM7RTKDmqByvIWRD7m6BMZ6q4ZVygeHuDBcPuTAffTSUmUP+//sHXS98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TylESYXc; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-337d6d7fbd5so2689519f8f.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 12:52:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705956732; x=1706561532; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LLpVIbfL3jS2RDwaMp5J2M72JeDQu5AitrT2Un9osZw=;
        b=TylESYXcYVtGimYlbJZLZ5hKvUSTwDlw/2vjw3y+0eL4W9Dbqi0cgJKQPLooKc3jls
         UrKWkkYdygMGdgIPK0CsY+wmWPihWy+U8aABbVS29weHAp5STzVeUYyITgiqIC9Rg6Xy
         zKrfrt9IQysdL+O/oKZmM3LLNAEk55E288MwNlAkkSLvsby8d2DrSRshU0C2yRGBqNot
         xsnLgY884g9zaVDYcPUhRADh0fXpj55b6nx5y2jUx4PS1LJiO4cmMdV/fFzPxZNTGyWZ
         tkxXEUWxwlb8amcpUiw7s3hdp/x1KEwR+OXx3wTbcVpxH09xJtu8iKOHbT6OWbK9XlAW
         qOLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705956732; x=1706561532;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LLpVIbfL3jS2RDwaMp5J2M72JeDQu5AitrT2Un9osZw=;
        b=K1uk1oUoJKIilH1qTHpiAqGTQpuCxq37BBrewNxsmnHcv2KWue/Easxwhfz5K2pRht
         tI7eYxoDEvDTnXBXcX7BSCa3QNTpB8Xzia62uuYX4jGQbEOnXj3XpLnd43aMPDjHDUQt
         87xpoZBrWEeqzOsg9FpjIpCdRTq0Zy9vSYpho712hNtT6v4xFBbdiBcM8Kb3mzrqcTpZ
         zDMxoiNEZ9+go4JsHfQHVWUjbApZF+H1hRlNohFEcJLKDyS+wiY2y2z0nnxgeQg3tF9m
         AqlgyOtdINiGKS1yJAUGp10MeWKUfinM04LuKKgrW+MB/KHovK7ZbxZyno+4BCkXEuGk
         7k3g==
X-Gm-Message-State: AOJu0YzE17S1cRWAQcS4tH3f1jRE2FEVbEQTqeQ1kBcbxCrYHo1qOhPU
	6h1+uyX116U3+Fd2nhMaci2VYZRQZExps8WJWdBDthyyI1CgjlTL5SazhNlriRw=
X-Google-Smtp-Source: AGHT+IGjlxS8LdXj01eroDCU1lix/NGPOxpO6X1wfpctzNIBrpkb0Bgzf2XKA+ZCXnKAqqvKceoiow==
X-Received: by 2002:a05:600c:3151:b0:40e:4ab3:d06e with SMTP id h17-20020a05600c315100b0040e4ab3d06emr2624682wmo.22.1705956732290;
        Mon, 22 Jan 2024 12:52:12 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id r17-20020a05600c459100b0040e88fbe051sm20349768wmo.48.2024.01.22.12.52.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jan 2024 12:52:11 -0800 (PST)
Message-ID: <c2963862-9d22-438a-8357-eccf14fead7d@linaro.org>
Date: Mon, 22 Jan 2024 21:52:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Add the rk3588 thermal zones
Content-Language: en-US
To: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <szucst@iit.uni-miskolc.hu>,
 Christopher Obbard <chris.obbard@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>, John Clark <inindev@gmail.com>,
 Dragan Simic <dsimic@manjaro.org>, Chris Morgan <macromorgan@hotmail.com>,
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Alexey Charkov <alchark@gmail.com>
References: <20240122203502.3311520-1-linkmauve@linkmauve.fr>
 <20240122203502.3311520-2-linkmauve@linkmauve.fr>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20240122203502.3311520-2-linkmauve@linkmauve.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


Hi Emmanuel,

please sync up with Alexey Charkov (added in Cc) who is doing a similar 
configuration [1] which was reviewed.

Thanks
   -- Daniel

[1] 
https://lore.kernel.org/all/CABjd4YyL1ZwNOJrWPwZtc7=e4h18a9tQOnuKP6soy=iTHv-WEA@mail.gmail.com/

On 22/01/2024 21:34, Emmanuel Gil Peyrot wrote:
> The driver got added back in 45d7b3867a5cabb97fc31f16122cda8540c3a30c,
> but the dts never got updated, so here it is!
> 
> I’ve added it to the rk3588s because that’s where most of the
> definitions are, but I’ve only tested on a rk3588 so maybe there are
> subtle changes.
> 
> The rk3588 TRM also documents slightly different values (in part 1
> section 14.5.3) than the driver, but I’ve left the values alone since I
> have no way to determine which one is (more) correct.
> 
> Only the CPU is properly mapped, as neither the GPU nor the NPU have
> been added to the dts for now, I’ve left some TODOs there.
> 
> All of the thermal zones report almost the same value on my rock-5b
> board, I’m not sure if this is due to a programming error or if this is
> to be expected.  For instance, after running for a while, all of the
> zones report 44384 m℃, despite having used neither the GPU nor the NPU.
> 
> Additionally, the alert and crit temperatures have been arbitrarily
> chosen based on other dts files, not based on any knowledge of the
> thermal behaviours of this specific SoC.
> 
> Signed-off-by: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
> ---
>   arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 181 ++++++++++++++++++++++
>   1 file changed, 181 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> index 36b1b7acfe6a..c7a2078960b7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -10,6 +10,7 @@
>   #include <dt-bindings/reset/rockchip,rk3588-cru.h>
>   #include <dt-bindings/phy/phy.h>
>   #include <dt-bindings/ata/ahci.h>
> +#include <dt-bindings/thermal/thermal.h>
>   
>   / {
>   	compatible = "rockchip,rk3588";
> @@ -436,6 +437,186 @@ scmi_shmem: sram@0 {
>   		};
>   	};
>   
> +	thermal_zones: thermal-zones {
> +		soc-thermal {
> +			polling-delay-passive = <250>; /* milliseconds */
> +			polling-delay = <1000>; /* milliseconds */
> +			thermal-sensors = <&tsadc 0>;
> +
> +			trips {
> +				soc_alert: trip-alert {
> +					temperature = <80000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +				soc_crit: trip-crit {
> +					temperature = <100000>;
> +					hysteresis = <2000>;
> +					type = "critical";
> +				};
> +			};
> +			cooling-maps {
> +				map0 {
> +					trip = <&soc_alert>;
> +					cooling-device = <&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +					                 <&cpu_b1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +					                 <&cpu_b2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +					                 <&cpu_b3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +					                 <&cpu_l0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +					                 <&cpu_l1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +					                 <&cpu_l2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +					                 <&cpu_l3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +			};
> +		};
> +
> +		cluster1-thermal {
> +			polling-delay-passive = <250>; /* milliseconds */
> +			polling-delay = <1000>; /* milliseconds */
> +			thermal-sensors = <&tsadc 1>;
> +
> +			trips {
> +				cluster1_alert: trip-alert {
> +					temperature = <80000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +				cluster1_crit: trip-crit {
> +					temperature = <100000>;
> +					hysteresis = <2000>;
> +					type = "critical";
> +				};
> +			};
> +			cooling-maps {
> +				map0 {
> +					trip = <&cluster1_alert>;
> +					cooling-device = <&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +					                 <&cpu_b1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +			};
> +		};
> +
> +		cluster2-thermal {
> +			polling-delay-passive = <250>; /* milliseconds */
> +			polling-delay = <1000>; /* milliseconds */
> +			thermal-sensors = <&tsadc 2>;
> +
> +			trips {
> +				cluster2_alert: trip-alert {
> +					temperature = <80000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +				cluster2_crit: trip-crit {
> +					temperature = <100000>;
> +					hysteresis = <2000>;
> +					type = "critical";
> +				};
> +			};
> +			cooling-maps {
> +				map0 {
> +					trip = <&cluster2_alert>;
> +					cooling-device = <&cpu_b2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +					                 <&cpu_b3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +			};
> +		};
> +
> +		cluster0-thermal {
> +			polling-delay-passive = <250>; /* milliseconds */
> +			polling-delay = <1000>; /* milliseconds */
> +			thermal-sensors = <&tsadc 3>;
> +
> +			trips {
> +				cluster0_alert: trip-alert {
> +					temperature = <80000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +				cluster0_crit: trip-crit {
> +					temperature = <100000>;
> +					hysteresis = <2000>;
> +					type = "critical";
> +				};
> +			};
> +			cooling-maps {
> +				map0 {
> +					trip = <&cluster0_alert>;
> +					cooling-device = <&cpu_l0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +					                 <&cpu_l1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +					                 <&cpu_l2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +					                 <&cpu_l3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +			};
> +		};
> +
> +		center-thermal {
> +			polling-delay-passive = <250>; /* milliseconds */
> +			polling-delay = <1000>; /* milliseconds */
> +			thermal-sensors = <&tsadc 4>;
> +
> +			trips {
> +				center_alert: trip-alert {
> +					temperature = <80000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +				center_crit: trip-crit {
> +					temperature = <100000>;
> +					hysteresis = <2000>;
> +					type = "critical";
> +				};
> +			};
> +			cooling-maps {
> +				/* TODO: what exactly is "center"? */
> +			};
> +		};
> +
> +		gpu-thermal {
> +			polling-delay-passive = <250>; /* milliseconds */
> +			polling-delay = <1000>; /* milliseconds */
> +			thermal-sensors = <&tsadc 5>;
> +
> +			trips {
> +				gpu_alert: trip-alert {
> +					temperature = <80000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +				gpu_crit: trip-crit {
> +					temperature = <100000>;
> +					hysteresis = <2000>;
> +					type = "critical";
> +				};
> +			};
> +			cooling-maps {
> +				/* TODO: Add the GPU here once it is supported. */
> +			};
> +		};
> +
> +		npu-thermal {
> +			polling-delay-passive = <250>; /* milliseconds */
> +			polling-delay = <1000>; /* milliseconds */
> +			thermal-sensors = <&tsadc 6>;
> +
> +			trips {
> +				npu_alert: trip-alert {
> +					temperature = <80000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +				npu_crit: trip-crit {
> +					temperature = <100000>;
> +					hysteresis = <2000>;
> +					type = "critical";
> +				};
> +			};
> +			cooling-maps {
> +				/* TODO: Add the NPU here once it is supported. */
> +			};
> +		};
> +	};
> +
>   	usb_host0_ehci: usb@fc800000 {
>   		compatible = "rockchip,rk3588-ehci", "generic-ehci";
>   		reg = <0x0 0xfc800000 0x0 0x40000>;

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


