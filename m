Return-Path: <devicetree+bounces-42592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B06857D70
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 14:14:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1EF22B215EE
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 13:14:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 359EA129A6A;
	Fri, 16 Feb 2024 13:14:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IQFERp+8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BAFC129A68
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 13:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708089267; cv=none; b=JzoobNd+mEtjP2M1+guLHcCAAqXw436iDzr0Bgk3Wd3hS9ORPsbcGWXkknPBYHSGMyJZCzgKFb00ixQIobvEbeSUrmNf9A6k7WA/Z+pdxJYRG9i5AfEUgzjXnFYtG3tymvDCbFWciVlawkv8bVv667Ak6DsZdroiRRUJ1lxrcq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708089267; c=relaxed/simple;
	bh=WCFV0eSzOLt6nbhwEFQzXSyzChaGD//MIFoBbZtPqRI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VNVPDnsC/GxIawlG3hC26O3KG5s49bVS6wgAfhqmFcJW8h55F6zc+X+GfYIKFK0S0L9QOD7ztQQUbtLFzGvsGG42OTiFGi6qPTuhiVFcxRpOjd011FVupXflgj6rH0t/ksLLvNS2MOsXyEkM/dXhe4EB7T2fYXJ+BkgZg/WbOjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IQFERp+8; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a34c5ca2537so248253166b.0
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 05:14:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708089262; x=1708694062; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j22lIKEVAgMLyOGkczWpjtPNmMRzlqW2cemi+GZEHgI=;
        b=IQFERp+8tCFO80sdxbrsdwdQXo/dJk/Wzw+2atXROhyhYVZGpayPiNQWf4QO1nw+Kf
         sKpyOzNJruv+tDHvahIoA6VilVPJ/cytV1mQnMYYtHt78GDM80uo7LpgVUETu5AWxde1
         7QnGE18zYJh9v0y/h+jB6N2Rt4+LV/zWIFLPZajx9/91SqGkSHhyqZNaq10p4X6H5mmy
         /+5unn8nRaBEw7+qxExYiGugNApVnacawxM/PyabiPsZhuLsJO+GGHwlPhyLzXcW8ns7
         O71XFt2o/PzoIrtpEaz4kCRnt/EgUdqZTaD+CijqWNZckLmtR7DDvPetBk2fN0ksoaOR
         aSHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708089262; x=1708694062;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j22lIKEVAgMLyOGkczWpjtPNmMRzlqW2cemi+GZEHgI=;
        b=XNB0QrwmhygjM0vwQDPwtGRklxiLgRrHyh7WIX2HuL5TbuU4J8QK3eUFxI3ROFIR+n
         sViq8Z4k9v6Pw5zXmiIJIBhVaRUmhy/uNPsoAF0kEhTFlo1/qcFvcAI/JsNMCWgxRTQW
         dGGUAu/2k3Y4HfpKxJeG47m98XufZYUIO5CG0DPnEjf3RRkJBtdo5GluNgLNs7rYAjuR
         qBwZDWOn4gFECyW/9UuhCwjQ7WYwnXauorZRpBii2pX4R3dkBa3fJSzTLPpLI/uXmr9d
         vzazEsATkhON4X5z7l67rz0OjTJK+SHm/opmhrzZw7QY080MCSHxbpRjjPtbXj6DAizt
         SyIg==
X-Forwarded-Encrypted: i=1; AJvYcCXrkxsuIpxWq8TpDtBXOWrw9JU9DKcgvmKsN89/KFUu9DGfKmbn45k3T85iOBOVRHBqMRJ1C9Jgnp14+jrwlPAgKMRoetZLEVLohw==
X-Gm-Message-State: AOJu0Yx3RFV3wt8IWjXKALrUSFjCTFm1dHBDbbvtgXqbzJGG3mn+8m6q
	3P5gsjUiM6N7glE/5btSTPoEDlI73q9hTnJrPDeYzzD2sjzSdc5Y2ihMS55Pj6M=
X-Google-Smtp-Source: AGHT+IFh7dyug9qbNy3LjbZgxEiOzZPj3putNdmsYOprTY724BkprjjYvlxuyOeTlcP3ZzoNXZe+og==
X-Received: by 2002:a17:906:79d8:b0:a3d:1df3:9d35 with SMTP id m24-20020a17090679d800b00a3d1df39d35mr3091712ejo.23.1708089262643;
        Fri, 16 Feb 2024 05:14:22 -0800 (PST)
Received: from [192.168.192.135] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id i26-20020a170906251a00b00a3ce36ce4f9sm1534655ejb.83.2024.02.16.05.14.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Feb 2024 05:14:22 -0800 (PST)
Message-ID: <928f2d8d-d079-4f82-85db-741646268094@linaro.org>
Date: Fri, 16 Feb 2024 14:14:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: clk: qcom: drop the SC7180 Modem
 subsystem clock controller
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, Sibi Sankar <quic_sibis@quicinc.com>
References: <20240216-drop-sc7180-mss-v1-0-0a8dc8d71c0c@linaro.org>
 <20240216-drop-sc7180-mss-v1-2-0a8dc8d71c0c@linaro.org>
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
In-Reply-To: <20240216-drop-sc7180-mss-v1-2-0a8dc8d71c0c@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 16.02.2024 12:14, Dmitry Baryshkov wrote:
> This clock controller has never been used in the DT files merged to the
> kernel. According to Sibi, it only worked on the pre-production devices.
> For the production devices this functionality has been moved to the
> firmware.
> 
> Drop the bindings now after dropping the driver itself.
> 
> Cc: Sibi Sankar <quic_sibis@quicinc.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

I'd say it's fine to keep the bindings (for hw)

Konrad

