Return-Path: <devicetree+bounces-31115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6D182A066
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 19:48:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3C2951C225D6
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 18:48:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39FA44D58A;
	Wed, 10 Jan 2024 18:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Yy37O5/a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 849234CE05
	for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 18:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-50ea9daac4cso4609578e87.3
        for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 10:48:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704912521; x=1705517321; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B6mb0czv63qlEAoF67252Cwq/CzM41U890/VQajpAFQ=;
        b=Yy37O5/aBNKJLMK/i1JsDBJ7DbBSu+pDKXoTfY/l/69BCaYLh5/pLf7aI+kLRp7Cnt
         PAaTZUfVEXzUwRjjkpGwA/r8bbkDMQQBeqQeG7UZo3cwVeRl/Pmh8aMhvzF9N4JU2sUZ
         sCakASOhrt6+/fQS8/sVf/svnBYcMYNI2wcghlDR8XLm6S1cDSB25vVtYKmNbphs1Cpp
         Un2aG9HOkk4dzPUMdKHkKqQOf/1zln9rocRUmShO1mVMeIKv6Xfix2jg5r0zJAFeCxfl
         6Mv/1ARIQiZbaF4e1nLKGYgXOb4O0JMtth563sx7ffM8J87u/Ta0lT3MNIeV8I8alVP8
         EP6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704912521; x=1705517321;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B6mb0czv63qlEAoF67252Cwq/CzM41U890/VQajpAFQ=;
        b=Hl0fp9nYhLEWDPu94EAdA8C7/TQ6rZ2jUIEw4u+0psQSEh/XOUw6Uk4tWu0g8AX0Hg
         OhkcO5LRqvCqTIlJG2T3ZqOJ/wKGXEcTaq/V++P3VWbNDjM+aWx88E2t2P20nVfGlwgT
         JGeOJ9Ffd2XM/iVCv6hQO68HboRWqqwhQ15xhpJ+Gg1BAvRJvrubf2cj6px46Ba0Iavy
         u7MSVa+umbaDIkb+dxerC3NpV+LRyB+NW+s1OaOVAfrsAqcb14cFNyoNqoOPQS5iUKLr
         9Vxu6VfhmYUeNHncPA5VZ54JeGDtWbjTy9qCBujQTuHdIHwlXTyNvmEc3PRtsc062P40
         6cIA==
X-Gm-Message-State: AOJu0Ywz+bkn9FJGrA/9vKFm3T5nihiu8ofb6jJvOyv6BF3tvb9BiwKu
	pqWTIbNyTzkIg6x+hQq1u8fEckU1RRJ4rQ==
X-Google-Smtp-Source: AGHT+IESqPBfudA5/PiNvgIQQzsX/Vby8wgWwcNRloulQWEzGGWD7r25drolBQukqQG3hrkuXIvglQ==
X-Received: by 2002:a05:6512:110d:b0:50e:7bf5:5424 with SMTP id l13-20020a056512110d00b0050e7bf55424mr793665lfg.47.1704912521468;
        Wed, 10 Jan 2024 10:48:41 -0800 (PST)
Received: from [172.30.205.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id f13-20020a05651232cd00b0050e137ef4adsm732212lfg.155.2024.01.10.10.48.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jan 2024 10:48:41 -0800 (PST)
Message-ID: <f44c45d8-92fd-44de-a730-4fc3a3df3afe@linaro.org>
Date: Wed, 10 Jan 2024 19:48:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm7225-fairphone-fp4: Add PMK8003
 thermals
Content-Language: en-US
To: Luca Weiss <luca.weiss@fairphone.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240105-fp4-thermals-v1-0-f95875a536b7@fairphone.com>
 <20240105-fp4-thermals-v1-1-f95875a536b7@fairphone.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240105-fp4-thermals-v1-1-f95875a536b7@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/5/24 15:54, Luca Weiss wrote:
> Configure the thermals for the XO_THERM thermistor connected to the
> PMK8003 (which is called PMK8350 in software).
> 
> The ADC configuration for PMK8350_ADC7_AMUX_THM1_100K_PU has already
> been added in the past.
> 
> The trip points can really only be considered as placeholders, more
> configuration with cooling etc. can be added later.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>   arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 25 +++++++++++++++++++++++
>   1 file changed, 25 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
> index ade619805519..b7ccfe4011bb 100644
> --- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
> +++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
> @@ -112,6 +112,20 @@ active-config0 {
>   				};
>   			};
>   		};
> +
> +		xo-thermal {
> +			polling-delay-passive = <0>;
> +			polling-delay = <0>;
> +			thermal-sensors = <&pmk8350_adc_tm 0>;
> +
> +			trips {
> +				active-config0 {
> +					temperature = <125000>;
> +					hysteresis = <1000>;
> +					type = "passive";
> +				};
> +			};
> +		};
>   	};
>   };
>   
> @@ -490,6 +504,17 @@ conn-therm@1 {
>   	};
>   };
>   
> +&pmk8350_adc_tm {
> +	status = "okay";
> +
> +	xo-therm@0 {
> +		reg = <0>;
> +		io-channels = <&pmk8350_vadc PMK8350_ADC7_AMUX_THM1_100K_PU>;
> +		qcom,ratiometric;
> +		qcom,hw-settle-time-us = <200>;

My ocd would rather see the boolean property at the end

anyway

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

