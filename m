Return-Path: <devicetree+bounces-69028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E05F8CE7D6
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 17:26:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D88EC2817B6
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 15:25:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B79512DD99;
	Fri, 24 May 2024 15:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GRvW17fn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AD5212DD98
	for <devicetree@vger.kernel.org>; Fri, 24 May 2024 15:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716564349; cv=none; b=t9LRrde083J4a+4oPgZyaOVj8meozVDCq4kM0RlCiN1F3VnNK1p+ntfNhjJe4FWqadAV3P2uOpBugJBxL4MuBceM1kizBlzOKpw2vIHYE7ej5Y5en3hfeP4iqwxhqrZLuM/R6DnS5QDL8ueo1SB17eW3MPmgda7m8fHQA3hf6IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716564349; c=relaxed/simple;
	bh=dCfE2mO2db3Mb+je7PgRw9860i8PO5Nl91mUvokMht4=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=JVsaYT6792q36BJbUSSctsLDz6MAY4otagHDuuqRZnBJUTbXSkADl3opXrFI19/gqHL+SunNIH5T+CLnwnYUsd/oK9GzrZNvMlcxuDfTQFusdH5dW19MlriLgfD02MnrhXgVHtfG+ck9D8Tqczp2lzu+VgS5TBCR7++5hOiHU54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GRvW17fn; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a6269ad71b6so122379166b.2
        for <devicetree@vger.kernel.org>; Fri, 24 May 2024 08:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716564345; x=1717169145; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=KjfjSF7iwtHqICI51fupiNlyN40Eihbk3Xf4fE1wZHY=;
        b=GRvW17fnhUTLa6VJQBrsi/cJC3TdE9X5op3NCe03tyeJmRQIOxm4g/ndGVRRRGkVus
         AKUg1uPBnEOfhLDQlRSuR4ttnc51K2+6BVy4+SPaU1cROdOXA/oROH3fvVMF06xiBBdQ
         UvHVPnSkwGH343JUBHBP/q3YM7+slxYKOdI/eU1lUfmslE0hnk5WWOtk/bCOaqXUm46X
         zsN2DjprMdnV4Patc6UT7CvqRzogpuR38G9byr8YAMsJrrWFmehNhCPaLpkiC5hDkKbL
         T1gcCRCosL0nqECV1vq8iSKZYp78E12yuab0vOiMd+Co0ITCd65xc6AR8hZF3v8TY0Mh
         9iJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716564345; x=1717169145;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KjfjSF7iwtHqICI51fupiNlyN40Eihbk3Xf4fE1wZHY=;
        b=YldKy1ETHt3UYkfhbT4WPhLMhttxfENoYp/eB0lXtPCwc+8Sxy3cX/QwGFwr3wjaKP
         AqRkVu0O3o01DX2EpGQ1+dWuDyrkOqY2FmOj3kPoa/fkwoqrXM1DMOi0QsAdlq1Ye3PS
         WSW2i+6v0EfaobhsUZI/4MfcY7irN+et5Y89JZOLZatX9KLVAvbaDq1/qMTgjt23Wcng
         VD9EPrtmu3J8vi9BokvgtxYr6FlUPUcuDALEDrG0yUfcwpchQ6cuzVU8OiH3NG1hF9Iu
         5YEb3d9hYNKQA3I8oelJcjq4VzD0V9gOx1HDV+bZfEAv8gEG6wjtJlmfkllRO/5p8H+2
         RALA==
X-Forwarded-Encrypted: i=1; AJvYcCVZo00XlIyYwCRzV+UD4REtrd2keBM4DoPvIgRJSYFHrfwbu7mXnaSiFuLCzVxbehQtjsrC7uOGdJxCmg380y+/YP/f1cFH9/amvA==
X-Gm-Message-State: AOJu0YzV62yvHd8/0M4yjBpEY5Hw5h9T5KPOl448TBYpItNi6QqzBBHy
	d0UNLVrczPrskcvWdZs68e5EjVWyMcjRI51IkRmlOXRD+hwaHX3Ce6f5M6XUHk4=
X-Google-Smtp-Source: AGHT+IHCxWErCOzM8G+bCQBVQKdp/ld1XXclebrtW/q3mM/0N7axQWnM/OgpWiUbuZtF/jSim6S/8w==
X-Received: by 2002:a17:907:3a14:b0:a5d:cff:25bd with SMTP id a640c23a62f3a-a62641b2e3cmr149585666b.4.1716564344743;
        Fri, 24 May 2024 08:25:44 -0700 (PDT)
Received: from [192.168.128.139] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a626c93b4cfsm144364966b.69.2024.05.24.08.25.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 May 2024 08:25:44 -0700 (PDT)
Message-ID: <6646c969-528b-476a-acca-0f1e361cf66f@linaro.org>
Date: Fri, 24 May 2024 17:25:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] soc: qcom: socinfo: Add SDM670 SoC ID table entry
To: Richard Acayan <mailingradian@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240524012023.318965-5-mailingradian@gmail.com>
 <20240524012023.318965-7-mailingradian@gmail.com>
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
In-Reply-To: <20240524012023.318965-7-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24.05.2024 3:20 AM, Richard Acayan wrote:
> There is support for SDM670 already, but not recognized by the socinfo
> driver. Add the table entry so SDM670 can be found in sysfs.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

