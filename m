Return-Path: <devicetree+bounces-8605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BB77C913C
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 01:13:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6AC381C20445
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 23:13:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7C2C2C85A;
	Fri, 13 Oct 2023 23:13:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="prXNXxrl"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637DA28697
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 23:13:36 +0000 (UTC)
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC37FC0
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 16:13:33 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-50435a9f800so3336676e87.2
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 16:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697238812; x=1697843612; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OjdlyeP+tUZpGPJVvoQ6uVyAvLdwDdzr6rSJ+TTmEaM=;
        b=prXNXxrlJtgmjrwcXp953ZszfYnKQxJmltegBCuRxdPk/o0PmmVIwTpbEYtd/E49I2
         5UOKEkXPfx9tYAs6ak1y87RVKRJ1qEXP5do5cfj0i4g75c7CuHO8OLHk9evIll8VviL1
         1/cVOOArST/puCa1Mf+0yBuDKGAxWzVGXak/hNLMDjZ9NdHCXk/1e6IVZuRfzY8BQW9w
         CM33bUT/GMOWRE1suA61IuMScZJFb2Nfpvu+UXA/ci6pUaQPt8qsLR1gCJaqyuhmOIMT
         9Rzf3RpFCmIOemjOzMKBoNDGjdiylrLDRDM5euIxP3hnt30vElXO8QiDKHUPtHuFuLI8
         sTKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697238812; x=1697843612;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OjdlyeP+tUZpGPJVvoQ6uVyAvLdwDdzr6rSJ+TTmEaM=;
        b=ECFwyA3S8yR8EvoHBbfXJMlEqumBfsxHDfAODzcH1gWx/I0wdBRyrNhUBlux6g3RSe
         1CFK/9Teydr4lLUjar+DaeNNdLzS91ZqY0qrt1s0vjQD40LznpbTnxAK3IXhlUCZV9bw
         0mx3UOSOs1VflROqE2ScIKyclgsklACOHvDQHlV7JzVkDxXT/lYus+sPct2hKhEHH8aF
         IslUnOEmSaByI+JsUIXJg13kvbekxSZqyke79vfRDjuA8Amb8insWsrSlF7NjC4ctcez
         OlZpFGcz77G8EBhZbY0VS22nXYnv6EgEkFJKcSaZKVe9jBgADRNhdRWeZ3gS2RMCwr9i
         kNnQ==
X-Gm-Message-State: AOJu0YzaD4lDuz4VFYP2AEzROZM09F7xe1s3dZ8e4PpnRvmCvvqaEFM6
	qeZ7qZjcOdFTfHi3dX98qZoa8A==
X-Google-Smtp-Source: AGHT+IG+1u/Gyc5mY1nzfYdzpFrgx1R5i2vWat40BYSCFhJKS40jsgZI8VENFkur0qpscTHcSRPQQg==
X-Received: by 2002:a19:f015:0:b0:4fb:9168:1fce with SMTP id p21-20020a19f015000000b004fb91681fcemr21779934lfc.59.1697238812075;
        Fri, 13 Oct 2023 16:13:32 -0700 (PDT)
Received: from [192.168.4.141] (178235177169.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.169])
        by smtp.gmail.com with ESMTPSA id r1-20020ac24d01000000b005042ae2baf8sm3553655lfi.258.2023.10.13.16.13.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Oct 2023 16:13:31 -0700 (PDT)
Message-ID: <34da335e-cbcd-4dc2-8a86-f31369db1fcd@linaro.org>
Date: Sat, 14 Oct 2023 01:13:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: qcm6490-fairphone-fp5: Add PM7325
 thermals
Content-Language: en-US
To: Luca Weiss <luca.weiss@fairphone.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org
References: <20231013-fp5-thermals-v1-0-f14df01922e6@fairphone.com>
 <20231013-fp5-thermals-v1-4-f14df01922e6@fairphone.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20231013-fp5-thermals-v1-4-f14df01922e6@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 13.10.2023 10:09, Luca Weiss wrote:
> Configure the thermals for the QUIET_THERM, CAM_FLASH_THERM, MSM_THERM
> and RFC_CAM_THERM thermistors connected to PM7325.
> 
> With this PMIC the software communication to the ADC is going through
> PMK7325 (= PMK8350).
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

>  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 117 +++++++++++++++++++++
>  1 file changed, 117 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> index 2c01f799a6b2..d0b1e4e507ff 100644
> --- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> @@ -9,6 +9,7 @@
>  #define PM7250B_SID 8
>  #define PM7250B_SID1 9
>  
> +#include <dt-bindings/iio/qcom,spmi-adc7-pm7325.h>
>  #include <dt-bindings/iio/qcom,spmi-adc7-pmk8350.h>
>  #include <dt-bindings/leds/common.h>
>  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> @@ -137,6 +138,20 @@ afvdd_2p8: regulator-afvdd-2p8 {
>  	};
>  
>  	thermal-zones {
> +		camera-thermal {
> +			polling-delay-passive = <0>;
> +			polling-delay = <0>;
> +			thermal-sensors = <&pmk8350_adc_tm 2>;
> +
> +			trips {
> +				active-config0 {
> +					temperature = <125000>;
are

> +		rear-cam-thermal {

> +					temperature = <125000>;
you

> +		sdm-skin-thermal {

> +					temperature = <125000>;
sure

about these temps?

Konrad

