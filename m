Return-Path: <devicetree+bounces-80104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD29917CC1
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 11:43:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A9D18B20D13
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 09:43:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7242816CD12;
	Wed, 26 Jun 2024 09:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TemdjDsY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B32971758C
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 09:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719394989; cv=none; b=jZBiyCI+I7ixWQwJrVAIjbcbWQtWpYMUW9ns/ca1nDdk9WmPUPz52UQ+j0sUHIZSZuXXrwSVKpFXwp63UEqqAnRYJ2pdLhr12T4vWHKCArGmqT26PtDIhUplBVUPBMw5+Aej6MtKLeyo/XQu4ISevYfeEMYfh73K0POk3C1BVsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719394989; c=relaxed/simple;
	bh=BlKfH+vrU8Pux9jP26OWc2Gyc1RCZ3lo0zpfQ5oh7Ac=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wrc7wpO9vNGvPvBgtFoAUTWClncb2uuuKIB5R7Qt0+CtxdjvZtRXknE/WW2hJhzBvwBH7M1nPgKm0j0yU3H9Y89aDhq8i+acUzGfVVTItVx6S8zxn2phU+NPmthypsY7FflqHB+vrVmUSpYiKGDP4AP0sNkdadK4lbRH4y3y5as=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TemdjDsY; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a724b3a32d2so435507666b.2
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 02:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719394986; x=1719999786; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=7s25Tjur1MU+GWcEu6f+b4kWk9Txv0iU449I0NPNoh4=;
        b=TemdjDsY2JgfgMS3TH2Kf0M/hSEez9SWmWoM/MBtmYI2o8tqBqFlYHGeDN3bHna89T
         KwC9lmdxH6IQexCE0jEqA0/ZLngV4g5eXbvFMlZ9ugv21tjmRb4sduv7nuoaAWBGt0O+
         +XVXmwdaPcqt/5163mKndT2mCXsZN30g4NAc/GvqTxD723kNSSR/k5SKYQGQfCuq/1Z6
         Xx6lc3z9R3LfU7OzAB7rrhGPIi9fCcz8xYtuo+HDL0PcwBhNXhkXTYF5GjmiUuRoq7GF
         KecHM8zW8TB1g7yxg0vjKnbFiQvDFNEjreHr0VqPyf1w6swRCMcdK+qeSoEl0O/8JTG6
         C1hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719394986; x=1719999786;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7s25Tjur1MU+GWcEu6f+b4kWk9Txv0iU449I0NPNoh4=;
        b=ZXXlNXbZ4Qn290+TIUGlHLzwThZm8Kh46bKlEe48Fmo1JQ0ZXRD64Hk1P014GwrCsV
         Gs8xkRYDkpsRWAMlMZLCgUQ8StZ9KMIM0SQBLE/obPkqKnc5W2PZfbDZejy10UweRy4E
         vNUIBP6PONO6nPGed0eZ1sYCuVVCYxGzmOyuls8GjW60ESZzjw8XW8sSzxiWwciCoB+N
         FZZ15whmujrTIct0BQO7ewi6yaCzL1UfRefEXcPaYC07JXHhMa/xRl3nn5ET/T9ceGIX
         d3XQoYgnOt6g8SsNuvQeoyrVvKGdbs/cVTEtqv8HscO00uVODBjj6+amsOTlYYK4qSkS
         d5gw==
X-Forwarded-Encrypted: i=1; AJvYcCUm15U/5Y/ee2UwudT3mIXtQal7aBdtrrwdH3P2s9/gsTPO5i0l5rESDs7/KcMO+lCqtDzcWZiAq47t5zRjfYunJBLtQc4a0XCdZQ==
X-Gm-Message-State: AOJu0Yx278wa+T95zYFcHPnSOteugCn0ooc+4/WiD02pYO9E2j+eD2B9
	RE7cphkJaL4q1Yv1W5EkyS+5HvqoZ+3H6P4bBRafmTGa43OWpKVR2DaeX/yREhQ=
X-Google-Smtp-Source: AGHT+IGx44GCzf7FRnQYQrdptBiki25+mA7GV5KyI2rrwtqbLxOEvbJJE0b+ORKlUBpxkyMOGNadIQ==
X-Received: by 2002:a17:906:ca0e:b0:a72:415f:cb0e with SMTP id a640c23a62f3a-a7245c7006dmr525448166b.69.1719394985742;
        Wed, 26 Jun 2024 02:43:05 -0700 (PDT)
Received: from [192.168.215.29] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7250712ca5sm327833166b.100.2024.06.26.02.43.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jun 2024 02:43:05 -0700 (PDT)
Message-ID: <3cf24449-8795-436b-923e-a3d6913fc327@linaro.org>
Date: Wed, 26 Jun 2024 11:43:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/7] arm64: dts: qcom: add OnePlus 8T (kebab)
To: Caleb Connolly <caleb@postmarketos.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>, Henrik Rydberg <rydberg@bitmath.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-input@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht,
 Frieder Hannenheim <frieder.hannenheim@proton.me>
References: <20240624-oneplus8-v1-0-388eecf2dff7@postmarketos.org>
 <20240624-oneplus8-v1-7-388eecf2dff7@postmarketos.org>
Content-Language: en-US
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
In-Reply-To: <20240624-oneplus8-v1-7-388eecf2dff7@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24.06.2024 3:30 AM, Caleb Connolly wrote:
> Initial support for USB, UFS, touchscreen, panel, wifi, and bluetooth.
> 
> Co-developed-by: Frieder Hannenheim <frieder.hannenheim@proton.me>
> Signed-off-by: Frieder Hannenheim <frieder.hannenheim@proton.me>
> Signed-off-by: Caleb Connolly <caleb@postmarketos.org>
> ---

[...]

> +&adsp {
> +	status = "okay";
> +	firmware-name = "qcom/sm8250/OnePlus/adsp.mbn";
> +};

Status last pls

[...]

> +&gmu {
> +	status = "okay";
> +};

already enabled (or should be)

[...]

> +/* LS-I2C1 */
> +&i2c15 {
> +	status = "okay";
> +
> +	// fcs,fsa4480 @ 42

Just describe it ;)

[...]


> +		/* FIXME: There is a bug somewhere in the display stack and it isn't

/*
 * FIXME:
> +		 * possible to get the panel to a working state after toggling reset.
> +		 * At best it just shows one or more vertical red lines. So for now
> +		 * let's skip the reset GPIO.
> +		 */
> +		// reset-gpios = <&tlmm 75 GPIO_ACTIVE_LOW>;

/* */

[...]

> +&ufs_mem_hc {
> +	status = "okay";
> +
> +	vcc-supply = <&vreg_l17a_3p0>;
> +	vcc-max-microamp = <800000>;
> +	vccq-supply = <&vreg_l6a_1p2>;
> +	vccq-max-microamp = <800000>;
> +	vccq2-supply = <&vreg_s4a_1p8>;
> +	vccq2-max-microamp = <800000>;

allow set mode + allowed modes

Konrad

