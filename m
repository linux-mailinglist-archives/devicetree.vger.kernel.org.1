Return-Path: <devicetree+bounces-3537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 756587AF36A
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 20:58:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 58F6A1C20754
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 18:58:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 949BC47C8F;
	Tue, 26 Sep 2023 18:58:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A95DB107BE
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 18:58:23 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52B3D11F
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 11:58:21 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-5031ccf004cso15430300e87.2
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 11:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695754699; x=1696359499; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=reCvRq/NnxYu9sIfFdvRfqpBWzEbvbSpbbJREhi5taQ=;
        b=h7FSL+w37tFz1irrI6PHPKDCaQY53HoY0+BZE4HBveEYLywkdeNbYI4SaudBaNYdrt
         kA2/32X338js7Qh1EMiMneG4bqy8CsRiR4DMDGENL4ruB+N+t5NiJu4v077YehVaXz5W
         lwdydsfqBf/gZ+YcX+RpZLpiO7ePECHIz98U/MmA0i9k18ZuqKWN872vL+pIc+zP+iRF
         Z5wTjrFDHa7KPeVRP84eLrx9gDkYRtGy8dIXzO5OHIQRtTQPyOi5ENG6R88baiQlHAxe
         +QAC/UV7vyZLmRXNIBNpqjjDPUiJPtVtMITL+rl/9DVZBy8gRMWKBbaing890qSnUqbX
         5QVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695754699; x=1696359499;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=reCvRq/NnxYu9sIfFdvRfqpBWzEbvbSpbbJREhi5taQ=;
        b=C9FtFSdnAcUAZlcBCQxfgb/hmpzYVqCtQ/EhA2UgShX3/z3pIUkTN2+8IcgeYFkLZt
         NiNwrBhFlpBmh/TDqHYB0BgQ++9xwpewV7FG96eEM0TrIg7F2ihV0JLuEmZs1q5Pc8Zb
         lpDaia9pVKyd8Z9LUTSJlWzSVGyesXZ20BmrWAk4BXf9Tqw+fIIjt8tz+D8TBIQatIY2
         Y3VaScZDVHjzKMUUv+pCGXCM9YW70AF6PITLcLNBrN/n4czLHKIygZA/GjyuuccK3pxu
         lDN2EIgW1/zfwBmShSRHtAPgBLQOkqoEuVult9H2V+oM/MrHbqqmg1eXbvvZiqDy4Q8v
         W48Q==
X-Gm-Message-State: AOJu0YzMxecQ2AK+mO+tpIYesPPwJNUT/u4kjWVtkLLVDkVqBBX6FCUm
	qmb0zaLKty8hyWwga9mXfbZkbA==
X-Google-Smtp-Source: AGHT+IHKBhpGjC98lG/MGQPk3CygpoJrNlE1A9f69Glf68/UnUOgwi2c92R3jU1tEEEG5wxBD1j76A==
X-Received: by 2002:a19:671e:0:b0:4fe:49d:6ae2 with SMTP id b30-20020a19671e000000b004fe049d6ae2mr8728803lfc.0.1695754699447;
        Tue, 26 Sep 2023 11:58:19 -0700 (PDT)
Received: from [192.168.33.189] ([178.235.177.23])
        by smtp.gmail.com with ESMTPSA id f15-20020a50ee8f000000b0052a19a75372sm7088795edr.90.2023.09.26.11.58.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Sep 2023 11:58:19 -0700 (PDT)
Message-ID: <cb78cd52-c638-4977-a762-365a6fe5f723@linaro.org>
Date: Tue, 26 Sep 2023 20:58:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/13] arm64: dts: qcom: msm8916-alcatel-idol347: Add
 sound and modem
Content-Language: en-US
To: Stephan Gerhold <stephan@gerhold.net>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vincent Knecht <vincent.knecht@mailoo.org>
References: <20230926-msm8916-modem-v1-0-398eec74bac9@gerhold.net>
 <20230926-msm8916-modem-v1-7-398eec74bac9@gerhold.net>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20230926-msm8916-modem-v1-7-398eec74bac9@gerhold.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 26.09.2023 18:51, Stephan Gerhold wrote:
> From: Vincent Knecht <vincent.knecht@mailoo.org>
> 
> Enable sound and modem for the Alcatel Idol 3 (4.7"). The setup is
> similar to most MSM8916 devices, i.e.:
> 
>  - QDSP6 audio
>  - Microphones via digital/analog codec in MSM8916/PM8916
>  - WWAN Internet via BAM-DMUX
> 
> except:
> 
>  - Stereo NXP TFA9890 codecs for speakers on Quaternary MI2S
>    - These are also used as earpieces at the top/bottom.
>  - Asahi Kasei AK4375 headphone codec on Secondary MI2S
>  -> Primary MI2S is not used for playback
> 
> Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>
> [Stephan: minor cleanup, add consistent commit message]
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---
> There are some trivial conflicts unless
> https://lore.kernel.org/linux-arm-msm/20230921-msm8916-rmem-fixups-v1-3-34d2b6e721cf@gerhold.net/
> is applied first. But given that there are important fixups for the
> dynamic reserved memory changes in that series it should preferably
> get applied before this one anyway.
> ---
>  .../boot/dts/qcom/msm8916-alcatel-idol347.dts      | 164 +++++++++++++++++++++
>  1 file changed, 164 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8916-alcatel-idol347.dts b/arch/arm64/boot/dts/qcom/msm8916-alcatel-idol347.dts
> index fade93c55299..ef5fc9289754 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916-alcatel-idol347.dts
> +++ b/arch/arm64/boot/dts/qcom/msm8916-alcatel-idol347.dts
> @@ -3,6 +3,8 @@
>  /dts-v1/;
>  
>  #include "msm8916-pm8916.dtsi"
> +#include "msm8916-modem-qdsp6.dtsi"
> +
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/leds/common.h>
> @@ -22,6 +24,19 @@ chosen {
>  		stdout-path = "serial0";
>  	};
>  
> +	reserved-memory {
> +		/delete-node/ reserved@86680000;
> +		/delete-node/ rmtfs@86700000;
Deleting with a label reference is strongly preferred to avoid
mistakes.

[...]

>  
> +&q6afedai {
> +	dai@18 {
> +		reg = <SECONDARY_MI2S_RX>;
> +		qcom,sd-lines = <0>;
> +	};
> +	dai@22 {
Missing newline above

[...]

> +
> +&sound_dai_primary {
> +	status = "disabled";
> +};
> +
Hm, gives me an idea to sprinkle a bit more /omit-if-no-ref/ in
patch 3..

Konrad

