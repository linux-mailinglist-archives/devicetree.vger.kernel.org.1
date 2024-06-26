Return-Path: <devicetree+bounces-80100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 33394917CAE
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 11:40:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 517521C227D4
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 09:40:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4922516C854;
	Wed, 26 Jun 2024 09:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bdawimxG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7978716A94B
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 09:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719394830; cv=none; b=PjamazImC77dvylqIifPCXzP3vCjQTJqmRCsym5eM8ocKfzzDQOs+CuC0RIVHgDIoC/QtDL/LW+Cb0l44Gh5aH9tKpqme5X3s+MrFK91TVIHD/zNVcRnhcSiWuCMXDDAgStH7lgDo2JONm+F3Ff0wqc602WBnK+7QbwpalJUA+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719394830; c=relaxed/simple;
	bh=k82nMA+Wm14VeiZOlk+Jy4YSnv7N4cfsGX9UH8oVLFI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ocouRwgaFtoqg+tCNJ16Z8ccDhDrmHFtFq0UFiANqHA8lQpqBcOcAIlbUcCtMflBhFnXhIANYQk6TeiJ9Vz4CvahYG0vWxIn4f1DbaKdpLlueKdFF6gAGSed6CHUu+cL22M2v34GsUm/MZ9ZyA+UIRmSnEHVHMXJdVfV2jORUZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bdawimxG; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-52cdf2c7454so7371948e87.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 02:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719394826; x=1719999626; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=VJVxa6mZ7QUxnMkLO5J2DpWrOna/tZjUpTwDiT5EA+E=;
        b=bdawimxGRTz74jchktW07Ut97aEqkl02cQXSnkNXZ+X6h7FQ6bK5PCvWnoJ8ZU2pzj
         BURbcM4HMPLv66uFJSPb2L1q1uTiRY8EgVQRMXrrnshq2vM9pfa0iPlsn1NPVhjev4Yy
         QxAwwWTHK7nvdw7/qDviT4NgUe9+wrl6+EXnjzYHpEbzLNCgapwbzvAQ/vnlltM1nPc9
         NHfD4Qzejff1NsxSOL0Uohb4P3aBfSi89Ew0j0XqDE5jKvA29hfbBIL1GqVkbrpZHN2R
         lMgEDXVXYmHDlOYSVvw7ngtIO39DPXO4iOoJlYMzl/vy8ovgSntCzg4PS22tURWE7Hvi
         kIjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719394826; x=1719999626;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VJVxa6mZ7QUxnMkLO5J2DpWrOna/tZjUpTwDiT5EA+E=;
        b=GxZspfA7OUFQ6gwWgEbqoOtsryRJjDn31iMdPv57I4szsh+gFO8fSHfumd2obaXDim
         5e34CO44wIWlWZicbYPm7Vd00lFCZTceK9pCAZTCwMKAP4aMcYf7d03p8PCKXTjeUtR6
         2yl/FDwvR4i5BaAmMC5BEVAHYANJ00JVLg86kMTy2p2MPe5Ir7XgiTCGoPxcsbW1z9Dg
         AVRs/EhGtMaQ5VdHhKlWKD9drw3FvT3y+XE4Fgqa1Kmkp+HoycPLSMfl/Y6pUooKo6B4
         v+KrvvcpzOuMNYn9jCym6FA4JBpUFQmf0lTWpgOeyfG3j5pG0iUGR+U0lJMm71FXnsS2
         5haQ==
X-Forwarded-Encrypted: i=1; AJvYcCVSva96vSOkd7y8txs+pT3wuUWEQBVSKIsIzJ9QNKocYeylEbWa9XLCsgxKLxZBZUjtxUXHoNBO7jgcgyuUiE8O4u9DydiZOMg10w==
X-Gm-Message-State: AOJu0Ywm6uDzj+VCba163CQ+n7tQGScgJxyJUVqOdvHo+W6hyWHxm/ER
	gj9GjM6hY3AmOA43VZx03huqQR9Y5i8HL9qxpLnW7L5OX7h78rZgx66r2057V38=
X-Google-Smtp-Source: AGHT+IF1aRHpvffeoKVxMUqf/Je7OTdeHpQ3LkR+Zr4iM+o7N8X8sT75e+83tdbwwGnVk/wm0A+rDg==
X-Received: by 2002:a05:6512:12d1:b0:52c:dcdc:f186 with SMTP id 2adb3069b0e04-52ce1832c15mr9842293e87.27.1719394823525;
        Wed, 26 Jun 2024 02:40:23 -0700 (PDT)
Received: from [192.168.215.29] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a724474d636sm404109666b.33.2024.06.26.02.40.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jun 2024 02:40:23 -0700 (PDT)
Message-ID: <61070233-5f51-4cac-bf30-816a8bcf58dc@linaro.org>
Date: Wed, 26 Jun 2024 11:40:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: pm8916: add temp-alarm thermal zone
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240625-pm8916-tz-v1-1-a4c1f61e92dd@linaro.org>
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
In-Reply-To: <20240625-pm8916-tz-v1-1-a4c1f61e92dd@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 25.06.2024 10:16 PM, Dmitry Baryshkov wrote:
> Define the themal zones using the temperature values in stage1 for this
> platform so that the spmi-temp-alarm driver becomes active.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/pm8916.dtsi | 31 ++++++++++++++++++++++++++++++-
>  1 file changed, 30 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pm8916.dtsi b/arch/arm64/boot/dts/qcom/pm8916.dtsi
> index 4b2e8fb47d2d..2def48f2d101 100644
> --- a/arch/arm64/boot/dts/qcom/pm8916.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm8916.dtsi

hmm

> @@ -4,8 +4,37 @@
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/spmi/spmi.h>
>  
> -&spmi_bus {
> +/ {
> +	thermal-zones {
> +		pm8150-thermal {

hmm

Konrad

