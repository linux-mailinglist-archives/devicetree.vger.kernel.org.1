Return-Path: <devicetree+bounces-3533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6FA7AF355
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 20:54:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id A33A81C203B2
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 18:54:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C950147C72;
	Tue, 26 Sep 2023 18:54:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0E226E28
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 18:54:35 +0000 (UTC)
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0932511F
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 11:54:33 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-50444e756deso11445071e87.0
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 11:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695754471; x=1696359271; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8gQnbSFZtzmEFmiDkyR9oRkKnZaeQRz7XAC2B5NMUWw=;
        b=rn2mWGwLUnrdY4GgF8lOnUe2tVkL8OmX1io/umA8vx5nubcBKP9RH40eSu9AnMzEL7
         vr6mIK+t1anSYf378OjQpPGyyqZ5poudUmQWnmAYN5nT+WT275Ud25au37iikizL64gO
         Rz17/1hf2HgX1+5B9tM2CJdp59L8EC5bHMJxBybWU0byib8SP6Lzy40E5ZF6p9YKPAhQ
         ZA4MfYgxWi8R1R5PQmUPlCtuMagcvLaQbpHebkdjNASSZ9dtV+Ttiy7RZJeb3BLegaf0
         W/et52Uv/qV+ffkDzhRaCNFCaIUpEHXv/YJR4qvEk6OFy0/EJ/ZvTXq1LCQ5qoIRzORb
         eT5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695754471; x=1696359271;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8gQnbSFZtzmEFmiDkyR9oRkKnZaeQRz7XAC2B5NMUWw=;
        b=GhEARovlWxXmWkLOFHeM1esSPnmlYWiuq050kiNDj1QC5bustZOwOODIKf1YpYseSy
         fd84hrWqP4ZK7KDGAa2gUfBWsEvDpcnCSpV/jw/n5VOLSjXNeeEL8PFVmFhaia4fS5CU
         F68rhk4Kah2IiKDiUiVvVSaISV5ICJ5L4RSeJJpt+pUzZ4RB0JM2nfxm14j7Bzu2rBGL
         AvUbUKiqIpohpToUMuHq/FAeJBPe8Wm9qWA/IGo6TNqUKxi+9mRGsVK9KwDzTqfrKswr
         GdndgDMIHstppdLxqxcbDX/ADzov6b9lEbsQeAb5FGy5diQwwr4TxgGChZt/3sk4Wf2W
         mJAA==
X-Gm-Message-State: AOJu0YztvoZjjNqz8i9HskBrPYERDI/PBvygVVV+IUs9uC5Rge3sHxbM
	K5cw/tUQPXKxB6VF/CLu8ceFEQ==
X-Google-Smtp-Source: AGHT+IE5Qc4gGyVdOepdESFyp3jn/od8ANoFp10Oc3ukn24PRxkGTRnFtONelL8dA/bKHYT7HB9HIQ==
X-Received: by 2002:a05:6512:1287:b0:503:95b:db02 with SMTP id u7-20020a056512128700b00503095bdb02mr11290246lfs.18.1695754471250;
        Tue, 26 Sep 2023 11:54:31 -0700 (PDT)
Received: from [192.168.33.189] (178235177023.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.23])
        by smtp.gmail.com with ESMTPSA id c6-20020ac244a6000000b00504230986fbsm2271509lfm.52.2023.09.26.11.54.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Sep 2023 11:54:30 -0700 (PDT)
Message-ID: <2c9eda54-a90e-483a-abc2-865d82854b80@linaro.org>
Date: Tue, 26 Sep 2023 20:54:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/13] arm64: dts: qcom: msm8916-samsung-a2015: Add sound
 and modem
Content-Language: en-US
To: Stephan Gerhold <stephan@gerhold.net>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 "Lin, Meng-Bo" <linmengbo0689@protonmail.com>
References: <20230926-msm8916-modem-v1-0-398eec74bac9@gerhold.net>
 <20230926-msm8916-modem-v1-4-398eec74bac9@gerhold.net>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 xsFNBF9ALYUBEADWAhxdTBWrwAgDQQzc1O/bJ5O7b6cXYxwbBd9xKP7MICh5YA0DcCjJSOum
 BB/OmIWU6X+LZW6P88ZmHe+KeyABLMP5s1tJNK1j4ntT7mECcWZDzafPWF4F6m4WJOG27kTJ
 HGWdmtO+RvadOVi6CoUDqALsmfS3MUG5Pj2Ne9+0jRg4hEnB92AyF9rW2G3qisFcwPgvatt7
 TXD5E38mLyOPOUyXNj9XpDbt1hNwKQfiidmPh5e7VNAWRnW1iCMMoKqzM1Anzq7e5Afyeifz
 zRcQPLaqrPjnKqZGL2BKQSZDh6NkI5ZLRhhHQf61fkWcUpTp1oDC6jWVfT7hwRVIQLrrNj9G
 MpPzrlN4YuAqKeIer1FMt8cq64ifgTzxHzXsMcUdclzq2LTk2RXaPl6Jg/IXWqUClJHbamSk
 t1bfif3SnmhA6TiNvEpDKPiT3IDs42THU6ygslrBxyROQPWLI9IL1y8S6RtEh8H+NZQWZNzm
 UQ3imZirlPjxZtvz1BtnnBWS06e7x/UEAguj7VHCuymVgpl2Za17d1jj81YN5Rp5L9GXxkV1
 aUEwONM3eCI3qcYm5JNc5X+JthZOWsbIPSC1Rhxz3JmWIwP1udr5E3oNRe9u2LIEq+wH/toH
 kpPDhTeMkvt4KfE5m5ercid9+ZXAqoaYLUL4HCEw+HW0DXcKDwARAQABzShLb25yYWQgRHli
 Y2lvIDxrb25yYWQuZHliY2lvQGxpbmFyby5vcmc+wsGOBBMBCAA4FiEEU24if9oCL2zdAAQV
 R4cBcg5dfFgFAmQ5bqwCGwMFCwkIBwIGFQoJCAsCBBYCAwECHgECF4AACgkQR4cBcg5dfFjO
 BQ//YQV6fkbqQCceYebGg6TiisWCy8LG77zV7DB0VMIWJv7Km7Sz0QQrHQVzhEr3trNenZrf
 yy+o2tQOF2biICzbLM8oyQPY8B///KJTWI2khoB8IJSJq3kNG68NjPg2vkP6CMltC/X3ohAo
 xL2UgwN5vj74QnlNneOjc0vGbtA7zURNhTz5P/YuTudCqcAbxJkbqZM4WymjQhe0XgwHLkiH
 5LHSZ31MRKp/+4Kqs4DTXMctc7vFhtUdmatAExDKw8oEz5NbskKbW+qHjW1XUcUIrxRr667V
 GWH6MkVceT9ZBrtLoSzMLYaQXvi3sSAup0qiJiBYszc/VOu3RbIpNLRcXN3KYuxdQAptacTE
 mA+5+4Y4DfC3rUSun+hWLDeac9z9jjHm5rE998OqZnOU9aztbd6zQG5VL6EKgsVXAZD4D3RP
 x1NaAjdA3MD06eyvbOWiA5NSzIcC8UIQvgx09xm7dThCuQYJR4Yxjd+9JPJHI6apzNZpDGvQ
 BBZzvwxV6L1CojUEpnilmMG1ZOTstktWpNzw3G2Gis0XihDUef0MWVsQYJAl0wfiv/0By+XK
 mm2zRR+l/dnzxnlbgJ5pO0imC2w0TVxLkAp0eo0LHw619finad2u6UPQAkZ4oj++iIGrJkt5
 Lkn2XgB+IW8ESflz6nDY3b5KQRF8Z6XLP0+IEdLOOARkOW7yEgorBgEEAZdVAQUBAQdAwmUx
 xrbSCx2ksDxz7rFFGX1KmTkdRtcgC6F3NfuNYkYDAQgHwsF2BBgBCAAgFiEEU24if9oCL2zd
 AAQVR4cBcg5dfFgFAmQ5bvICGwwACgkQR4cBcg5dfFju1Q//Xta1ShwL0MLSC1KL1lXGXeRM
 8arzfyiB5wJ9tb9U/nZvhhdfilEDLe0jKJY0RJErbdRHsalwQCrtq/1ewQpMpsRxXzAjgfRN
 jc4tgxRWmI+aVTzSRpywNahzZBT695hMz81cVZJoZzaV0KaMTlSnBkrviPz1nIGHYCHJxF9r
 cIu0GSIyUjZ/7xslxdvjpLth16H27JCWDzDqIQMtg61063gNyEyWgt1qRSaK14JIH/DoYRfn
 jfFQSC8bffFjat7BQGFz4ZpRavkMUFuDirn5Tf28oc5ebe2cIHp4/kajTx/7JOxWZ80U70mA
 cBgEeYSrYYnX+UJsSxpzLc/0sT1eRJDEhI4XIQM4ClIzpsCIN5HnVF76UQXh3a9zpwh3dk8i
 bhN/URmCOTH+LHNJYN/MxY8wuukq877DWB7k86pBs5IDLAXmW8v3gIDWyIcgYqb2v8QO2Mqx
 YMqL7UZxVLul4/JbllsQB8F/fNI8AfttmAQL9cwo6C8yDTXKdho920W4WUR9k8NT/OBqWSyk
 bGqMHex48FVZhexNPYOd58EY9/7mL5u0sJmo+jTeb4JBgIbFPJCFyng4HwbniWgQJZ1WqaUC
 nas9J77uICis2WH7N8Bs9jy0wQYezNzqS+FxoNXmDQg2jetX8en4bO2Di7Pmx0jXA4TOb9TM
 izWDgYvmBE8=
In-Reply-To: <20230926-msm8916-modem-v1-4-398eec74bac9@gerhold.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 26.09.2023 18:51, Stephan Gerhold wrote:
> Enable sound and modem for the Samsung A2015 based devices (A3, A5, E5,
> E7, Grand Max). The setup is similar to most MSM8916 devices, i.e.:
> 
>  - QDSP6 audio
>  - Earpiece/headphones/microphones via digital/analog codec in
>    MSM8916/PM8916
>  - WWAN Internet via BAM-DMUX
> 
> except:
> 
>  - NXP TFA9895 codec for speaker on Quaternary MI2S
>  - Samsung-specific audio jack detection (not supported yet)
> 
> [Lin: Add e2015 and grandmax]
> Co-developed-by: "Lin, Meng-Bo" <linmengbo0689@protonmail.com>
> Signed-off-by: "Lin, Meng-Bo" <linmengbo0689@protonmail.com>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---
>  .../dts/qcom/msm8916-samsung-a2015-common.dtsi     | 55 ++++++++++++++++++++++
>  .../dts/qcom/msm8916-samsung-e2015-common.dtsi     |  4 ++
>  .../boot/dts/qcom/msm8916-samsung-grandmax.dts     |  4 ++
>  3 files changed, 63 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8916-samsung-a2015-common.dtsi b/arch/arm64/boot/dts/qcom/msm8916-samsung-a2015-common.dtsi
> index 0b29132b74e1..f71b18d89bf9 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916-samsung-a2015-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8916-samsung-a2015-common.dtsi
> @@ -1,10 +1,13 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  
>  #include "msm8916-pm8916.dtsi"
> +#include "msm8916-modem-qdsp6.dtsi"
> +
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> +#include <dt-bindings/sound/apq8016-lpass.h>
>  
>  / {
>  	aliases {
> @@ -196,6 +199,18 @@ vibrator: vibrator {
>  	};
>  };
>  
> +&blsp_i2c1 {
> +	status = "okay";
> +
> +	speaker_codec: audio-codec@34 {
> +		compatible = "nxp,tfa9895";
> +		reg = <0x34>;
> +		vddd-supply = <&pm8916_l5>;
> +		sound-name-prefix = "Speaker";
> +		#sound-dai-cells = <0>;
> +	};
> +};
> +
>  &blsp_i2c2 {
>  	status = "okay";
>  
> @@ -243,6 +258,13 @@ &gpu {
>  	status = "okay";
>  };
>  
> +&lpass {
> +	dai-link@3 {
> +		reg = <MI2S_QUATERNARY>;
> +		qcom,playback-sd-lines = <1>;
> +	};
> +};
Is that not status = reserved?

Konrad

