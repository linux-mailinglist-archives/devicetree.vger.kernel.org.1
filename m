Return-Path: <devicetree+bounces-85036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B7592E9E1
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 15:50:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4471B1F23E9A
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 13:50:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9227716130D;
	Thu, 11 Jul 2024 13:49:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UrONOB9X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F1C81607A8
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 13:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720705787; cv=none; b=EHayPFRT5RLVU15Q/JhIqyOeyHZmuC/4limfCGCZATU3GY1Y2Pf6wnjmmHeI+918yuSPdFt3Drb34/mjklrpbvZmrRUGzqg4yaueOHhG7Dn8bjPOEgOn4pcYDLejJ6kxIb0Rq2/W3j4hDnxTvYxnLf1cHc/x3lXMFGbr4oHaMX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720705787; c=relaxed/simple;
	bh=79K5RvD5IB3o9mofuT2vT2hegIrucvFX0OKam3V6pJk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O+gTnuFiBaeKxGSJf6+eyuff0gLdbzcBCyGDsl4C7MAuWcpbMTWQfU5qdKN4Ldcfiw+4zUhzQSlEv9nGt6QY1i9Y0LgAnK2yi81VIKc8fO8cwUR0spwFAN0p0e7+qiHCWSpiU1HdEP0ZKiZ5pV/sGUdnRyAXI+7LdWVoXleasoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UrONOB9X; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-58b447c5112so1245050a12.3
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 06:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720705783; x=1721310583; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Jht1ossHcfC6SBXpPEySR0HVenV9ReWoiNiZQcr06jg=;
        b=UrONOB9X6RrVYM7RUSBlxNWoV26J7MXTWAJArrmI/wLmVpaag/L91H/e7fjGs5HC0n
         XPdi/a2O/7zZ6XJt0rUAloRA2s5SRRJLImMyBiZi/XKswchyCtmJ06DsxGUnUrQZapCS
         JglTKUak2LyRNZN8WyIk4OcmFCsMPOwdzjcpTU/JCoLZO20BBhFNn9wDj0jbM5k/PoBS
         J4LEfnZLCi1sO/sbTE/s2hrJgvhx0e4Um8og83NI7w9bxrivm5fnuSBzwLwvHj/xEyGL
         ql1c2bDUYBTV47MOsFomvYg9oWOy0i8dXZq3ErOjQatGc+trBHOxTo8bpPrehjcQVPpJ
         Vt7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720705783; x=1721310583;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jht1ossHcfC6SBXpPEySR0HVenV9ReWoiNiZQcr06jg=;
        b=aBDHqhDb9sIAqcOz+6Ky3ViVjbUKmuD6NnaIsh85XPn5YFi1D0AaC1KKiRJ2cHa0Oz
         Q9v2dQnZm0U1lt38PvisPCUbcApfKSilOS1DRN6zlxywNy9U+blabj3zz009coWm0Wn+
         d0R5sIHcDGQ++Qnn2ydyLwv+zXIfwOg4v4MVRnARvoNAnr7eKuAkDAi34goJ/oKJCuCw
         kDWg75tQWJnwkiPmBEMmk5zxA+WH4ETgK2J/18YWndDBCayMPCFxMmXGEGCvbnzbu9gk
         q5ddvIMPYHYM+cja8qYoIBCAwjixoV7aGSb5n/9fIaVKGyfH78i7zK8Ye8R5jPF27DyW
         1/BA==
X-Forwarded-Encrypted: i=1; AJvYcCUFfMgDgVKUIuwZdK+nuLJ+NJsOe9NW3NyT8QHkH2Sq0L22AEISHWtktNbVqhm7uO7vqzjneN83anL+Zr3DF00sdZ34A7MwCIFxLA==
X-Gm-Message-State: AOJu0YxApHwP4wSlmwzO/nRp+5bbdwk85MkwCbJnSZ2hWYP0QupKdn72
	aqWXAGTYWJeO+PDKvCzVBiiApRorSNKJfPymiG0TzYGmEvRCqp91yv11JsGxLrU6Mm4m21duAYx
	c
X-Google-Smtp-Source: AGHT+IFZSfQX5oRfhZPETXG+pYSZL0uF4d4lvoVQ2JrD0NeHIgASPF+evjiL5YQsPHKu+xzpUPIMEQ==
X-Received: by 2002:a05:6402:2707:b0:57c:6234:e95b with SMTP id 4fb4d7f45d1cf-594ba98fafdmr6851324a12.5.1720705782855;
        Thu, 11 Jul 2024 06:49:42 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-594bbe2cc6asm3443557a12.24.2024.07.11.06.49.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jul 2024 06:49:42 -0700 (PDT)
Message-ID: <1b87b280-07da-4257-b3a8-771166086cd3@linaro.org>
Date: Thu, 11 Jul 2024 15:49:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] ARM: dts: qcom: asus,nexus7-flo: remove duplicate
 pinctrl handle in i2c nodes
To: Rayyan Ansari <rayyan.ansari@linaro.org>, linux-arm-msm@vger.kernel.org
Cc: Bjorn Andersson <andersson@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh@kernel.org>
References: <20240711110545.31641-2-rayyan.ansari@linaro.org>
 <20240711110545.31641-4-rayyan.ansari@linaro.org>
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
In-Reply-To: <20240711110545.31641-4-rayyan.ansari@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11.07.2024 1:01 PM, Rayyan Ansari wrote:
> Remove duplicate handle to i2c pins in the device tree, as they are
> already set in qcom-apq8064.dtsi.
> 
> Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
> ---

The difference here is that the SoC DTSI also has sleep mode

but I suppose that's only a gain

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

