Return-Path: <devicetree+bounces-39299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B502784C15F
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 01:34:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 21C9BB24E5D
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 00:34:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0296647;
	Wed,  7 Feb 2024 00:34:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J6ZVpuuH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A788C10
	for <devicetree@vger.kernel.org>; Wed,  7 Feb 2024 00:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707266048; cv=none; b=mlQr5w0XOspdWP3KgUWXkJB53aUUYCqu+i2Vek89Rkx72YzHVBQGrFBXHc2TLGnM+snDDwpya67uvs0lYP6+rY6qqimP5EUM18jqueoq3OY25DU6Zax4aI5fPF752CP2dIvnQ8rb+ajNZI82eXQwz+OpIlkZTBpvxHbR9GD/Ins=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707266048; c=relaxed/simple;
	bh=hWjx7OvWm/8QXPKMAgLMqWzK+L5kNmBXQ8UEWbRWCxE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BOUQS4r4hTLNpW/n86S+1p44kAlDKGcr32CfECt5Q2LMItIjatmAGp46Omwp5xA8bSTkS0uej0WZaLJ5OtUuWWnDB6OT4p1DfBo8inQ35MbAoDaHk/B1lLRBhvug/SPbF+cxrGFaSXMAjjv6xaKS4yVvhnjP9M/1ON1KHHhU8WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J6ZVpuuH; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a3850ce741bso7838366b.3
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 16:34:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707266045; x=1707870845; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=zoIssldsl7RLEgJkqY30g/hBXmKLlPeWIP+wgIMPoQI=;
        b=J6ZVpuuHAwSAtCP8IG8GiGauDhzdBYW+QqjrReZQ/hUk66vpuySImBpZaFg8o0koN5
         et8zj1RKnQZLtsBoWf4xPriU2UM+OIoqQKN57PtAKUYzZ3WJWxdgexoizQJJq8rp7zlU
         V/3iPGJbGZgCPMIi77qJ2QT9bzeBQ3dxNNxSBvS4olhrbfVD9NoupDYULDNod1xWgZ+o
         Pd/p28XY3j8kSF20lOVrgrqELudpqZE7i0XJpoF68KbpLADL8Cms1pf4vy/46cdHQezL
         z5AwGsUtmU5Ewj0EtjwA5uoVeRgQdhCUaGj71G10G4FPle/do3lF0E1pKJAJYmXAF02C
         15pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707266045; x=1707870845;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zoIssldsl7RLEgJkqY30g/hBXmKLlPeWIP+wgIMPoQI=;
        b=V+fP65HPBsfLQAYJonjLg4E03EQt34LUqhnRixp7it+VY8COHJJyq5XAkVeu3i5tff
         ovoPJeQ8x+cXwQU20Kopuf8JfHFeSztjyckIrzjLOtxiKzFNKfBqSBksWrwG/6BMOQUa
         b7ON9EbFXde5zsbFn3N6mQck15XWF/fuEE7yCTH0I5K2E5X7hsSC0IRQWh0dIg2587Z8
         GjC0kk838JSbTwc9D87dcpQ7n99aD/zS5S7Xjx7QOOtre0j4PktUOYxCvXpu+H/Mts/x
         BkdVsENJLevu9M1kdCpJ9kWXaY6A8hyBRPGZEWNZ/XzLG0KHWPvV+LXmgmQo1/+ydKDA
         s0ng==
X-Gm-Message-State: AOJu0Yzb80sayQUA0K/yP5NmP7owswm5COuro56B+7ZGDhiTvXbUjEgQ
	TU4ELk9QCGlJYfIg5Xib9r0MlQwjVhpCSWBFFHi891wYFi5L+5F+yZWEM+lgPkE=
X-Google-Smtp-Source: AGHT+IHjfdlyOsAVkZ53m+il6/prtIWLZi42Mfos6SyR2gwQniU+Zl7F/BdyBPq8g3UbHOX6+HH5Vg==
X-Received: by 2002:a17:906:6892:b0:a38:786b:f37d with SMTP id n18-20020a170906689200b00a38786bf37dmr59966ejr.50.1707266045292;
        Tue, 06 Feb 2024 16:34:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXgraZ9N9TqzbgI6UnQmnuFgTpiBmWAauBuDSl8P4EIhrPto7JAIFSUKl2UKxe/6QbaaTA62HI5k1KuFU/ETfNg1UMCnP9MVDP57QbqyoLkndKafwp/9yaR5jvEP2eMLQvx0IhiBETiTRH3+bFPEQwEuM0rmLMS96kAtnzBpjQj7m5ss76qA0zA/DhNTZo7vae695F8KudGYte5XvyrbmrJflhf+cyEk4ENcMeclaJwChyGsHTrnlo+w7PQToK3YYX7gMl6NHwp3yC5fT/7eZp5UqwNeptVgwSBqn1+VSacE0jEfc8i8Iz3i4MgZnsAKv9OJJsJDA==
Received: from [192.168.192.207] (037008245233.garwolin.vectranet.pl. [37.8.245.233])
        by smtp.gmail.com with ESMTPSA id u25-20020a1709060b1900b00a370a76d3a0sm118812ejg.123.2024.02.06.16.34.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Feb 2024 16:34:04 -0800 (PST)
Message-ID: <d0535e0f-ecdd-4258-a389-de9be31d0b6d@linaro.org>
Date: Wed, 7 Feb 2024 01:34:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: sc8280xp: Introduce additional tsens
 instances
To: Bjorn Andersson <quic_bjorande@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>,
 Johan Hovold <johan+linaro@kernel.org>
References: <20240206-sc8280xp-tsens2_3-v3-1-4577b3b38ea8@quicinc.com>
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
In-Reply-To: <20240206-sc8280xp-tsens2_3-v3-1-4577b3b38ea8@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 7.02.2024 00:51, Bjorn Andersson wrote:
> The SC8280XP contains two additional tsens instances, providing among
> other things thermal measurements for the GPU.
> 
> Add these and a GPU thermal-zone.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---

[...]

>  
> +		gpu-thermal {
> +			polling-delay-passive = <0>;
> +			polling-delay = <0>;
> +
> +			thermal-sensors = <&tsens2 2>;
> +
> +			trips {
> +				cpu-crit {

I assume you'll fix that up when applying!

Konrad

