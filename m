Return-Path: <devicetree+bounces-30570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7BB8283B3
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 11:10:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 80B05285A7E
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 10:10:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC04E364A2;
	Tue,  9 Jan 2024 10:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sKTj27SB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D11E036093
	for <devicetree@vger.kernel.org>; Tue,  9 Jan 2024 10:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-50e7af5f618so2931336e87.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jan 2024 02:09:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704794984; x=1705399784; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vrSBay0Xit0RBIWL7ygXxBZNSKXups8cFyOtms9TolI=;
        b=sKTj27SB35IptV5vzoPsRaNo9dx+Qy+tbuqgXkXk3WW9ESk9HZ6NzQuapEBk6X/aym
         mDBZAop+d2sG8rhUjzF8TePmzdKOkVl62IOJGaK7MtzGGRiW3w6a8QZ4OJRTsHTAAPug
         EWeCdOlTma6ks3jU7R6YvMKUlTDOTaiVllJXtDVnRRk/A0NzLjGEb5xxFv6r6BZlbEdT
         KSrnHHiNRVJJBDPiRozWmREVOCDbBfw+C9XAxmgAP3V1/hGduqAv4FR2YvEam55+zs29
         AHYFhAKtp83+mScTps1oOXGB2l78fTdcFioSpVfJn6FKTvr6b3UdI0oSRWV79gFwCgcU
         SVmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704794984; x=1705399784;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vrSBay0Xit0RBIWL7ygXxBZNSKXups8cFyOtms9TolI=;
        b=e9g/xwc11FpRkPx54giWzsztrInUnI1lZauBGgZzYJVVp5q4wAkLVBIlDJlUmYKkJa
         QmFxd/hTviBkwTDiO2bhMzGmWAa0cFFn9ldvNR7bSe9b/a188KemRdGtHNyR28nS7gsj
         6PG1l6Y4GG/KwNCm6trhmeFRtXnVJ2eDzQeBlrz4wPFcCX1A2JMvP1pePcd/SrwtWy9Q
         Nmg3ovCmscnBzVPrcawh6pYy+0ZUPX5RemT4G/bCMchC73Yj/0uY7SUERkijUWSAllsm
         UIT/2yhsUed4L/ook8emZjwhFZywp548jB366D6W3IFWBT176uNrLSAzA0L63hy2lRJu
         AgmQ==
X-Gm-Message-State: AOJu0Yw2iYfkCUmwm9tJfW3pCqo9uujTh2VbulMAu8KplX3lm5gA/CIL
	grc+jztflbAYzL2vPMKbuOSZQYqiVHVmMA==
X-Google-Smtp-Source: AGHT+IGshVVbd90za93mKT7jUyObm7s+VHYZngj6eFDEebwOncx2yihx0l0bIbFxJhGXDhoVN+uSHg==
X-Received: by 2002:a05:6512:398b:b0:50e:69e9:373e with SMTP id j11-20020a056512398b00b0050e69e9373emr2597112lfu.4.1704794983770;
        Tue, 09 Jan 2024 02:09:43 -0800 (PST)
Received: from [172.30.205.119] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id u18-20020a196a12000000b0050e7e409500sm268070lfu.244.2024.01.09.02.09.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jan 2024 02:09:43 -0800 (PST)
Message-ID: <18dc5f88-6590-4e2d-948f-fd77f4713f8b@linaro.org>
Date: Tue, 9 Jan 2024 11:09:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm7225-fairphone-fp4: Add PM6150L
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
 <20240105-fp4-thermals-v1-2-f95875a536b7@fairphone.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240105-fp4-thermals-v1-2-f95875a536b7@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/5/24 15:54, Luca Weiss wrote:
> Configure the thermals for the PA_THERM1, MSM_THERM, PA_THERM0,
> RFC_CAM_THERM, CAM_FLASH_THERM and QUIET_THERM thermistors connected to
> PM6150L.
> 
> Due to hardware constraints we can only register 4 zones with
> pm6150l_adc_tm, the other 2 we can register via generic-adc-thermal.

Ugh.. so the ADC can support more inputs than the ADC_TM that was
designed to ship alongside it can?

And that's why the "generic-adc-thermal"-provided zones need to
be polled?

> 
> The trip points can really only be considered as placeholders, more
> configuration with cooling etc. can be added later.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
[...]

I've read the sentence above, but..
> +		sdm-skin-thermal {
> +			polling-delay-passive = <1000>;
> +			polling-delay = <5000>;
> +			thermal-sensors = <&msm_therm_sensor>;
> +
> +			trips {
> +				active-config0 {
> +					temperature = <125000>;
> +					hysteresis = <1000>;
> +					type = "passive";

I don't fancy burnt fingers for dinner!

Konrad

