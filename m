Return-Path: <devicetree+bounces-53713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B950188D35D
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 01:24:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D2B0D1C2BEA3
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 00:24:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1C864C9B;
	Wed, 27 Mar 2024 00:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="boooKJOi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECB1EAD7
	for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 00:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711499083; cv=none; b=PYigmGxljiAgLmJwrAuUt6NWuWzL06pfm6gUGx9Trq2VSGAjdMBvaOMD00jWk+I++XKcj0NHwartdAtdx/6u3toNMBCGyOVdFePCknFjLVQbsHKk19DENRwxuaJ9iZqDs9MuJ7GBkQosovyx7abAcwcSpzqWyLpCkGrMz8XB9ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711499083; c=relaxed/simple;
	bh=AKB0SgDyiA+k8yW1npLEEnbRai1MmPLE+B5tTxhZUIc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jKPk6D36lOsBlIjsfZPMoLRZzZWL3x9Vf2raYAsD8Eiw7pyXrZLggtUje9CITELrci1X5v8nkMehdeO/+Beir3JB1TJrx8gqW4kqvgefJFOfOBM8yXFvkhqb6H5I0WG2RqtNQ27WCJ/bDN+EhI3RHMO2pNr3F4QeywHuHkubFtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=boooKJOi; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a46ea03c2a5so65356666b.1
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 17:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711499080; x=1712103880; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=G/HCmN9lPCdp2MoNj/SPyQLmSaUATz4v1T2S+06LwPM=;
        b=boooKJOiHwou0kJRltsgriTKLAibuEl5VwtmLK8pdZBlBEwNMIHS8zG/g5AU2RjD46
         tfHl2nqumCUdaMnuoX35++T08lCjNBRb1r1XC8hvINhxv1RojCF+CDb5FcrCK9Iu2JGp
         HsbqEb1ZFbQFX0lWxDfIgKgwU7HvvcrODn8cQk7Sk/61xZ3QxoHGvUeHIuFORxVpePAl
         bRaQkdTEC2XoriMO2sqVohaiVnhU+TQFilRQqjHhVU7oC1uW00P4pFIpNQXh2Q6OOG8h
         1oL84vf+Z8vyOm+ccqYF+lgzaCNjEUR2OZcZZ5tvdQWvzMIgsIxt1x9mvElVic2vK8zK
         dlvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711499080; x=1712103880;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G/HCmN9lPCdp2MoNj/SPyQLmSaUATz4v1T2S+06LwPM=;
        b=hGkNVttnCUdb2TGyiShsFw6bOxumOYhE55tF4ED6tE6gGV1yGqZBCPnqBM82wRJriR
         JsvMoOLzyIDOAT38rZqGDQoQUArNEJ5ifOFKRNTlHM+nljSdlyiZK82nhpQ/cYFQnNsm
         o5IrIts2qvPsfRE/pqzWrIJGUKnBxjhmRadHAWxRxh4qQm9gi3JTlubhx2kuqO1yCHb3
         uGH96l206wm5NqupaLNuo1Wdv+bPSMeXcTf46FJLpgROFDxFdu7XzXdn23fip7SEjDQ8
         B1DKSOkEs4QV2q69IjXVOlmOc0hXoQOTqbnc/eLez91xr0c5SSd5Iai8QB7ePGj6yx3k
         eYDg==
X-Forwarded-Encrypted: i=1; AJvYcCXuWOirNN/5HexF1wemanm4LhUlvfm0TOjwvwvFojHTEPVKhwCmBlMAAexuAHnAERH0pf3wR9oQJHAkNGAenuRJRWGfES21yrgpRQ==
X-Gm-Message-State: AOJu0YwPZgU8ItYHHssaZ9T7Ve0/lTygmWFA7lKzZVYqNZhr+h4WWSws
	cL2Y2Ca+HGC4hrqTyL45o94MN4jObMDv48BGjdzZjxBRLdGwk62KoGn1p4/mWwY=
X-Google-Smtp-Source: AGHT+IEP4P3WPB+IB5nDNolthKuBoUUTjLE7geGyhhkXnccZnqDTNIjrCFi5GcTg17FqGSzz69pZGg==
X-Received: by 2002:a17:906:3e0c:b0:a44:e5ed:3d5d with SMTP id k12-20020a1709063e0c00b00a44e5ed3d5dmr2398843eji.9.1711499080417;
        Tue, 26 Mar 2024 17:24:40 -0700 (PDT)
Received: from [192.168.92.47] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id x15-20020a1709060a4f00b00a455519bcb3sm4781222ejf.55.2024.03.26.17.24.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Mar 2024 17:24:39 -0700 (PDT)
Message-ID: <3e15fd38-13d1-4b99-aaf0-f422b2dbab59@linaro.org>
Date: Wed, 27 Mar 2024 01:24:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] arm64: dts: qcom: sm8650: add GPU nodes
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240318-topic-sm8650-gpu-v4-0-206eb0d31694@linaro.org>
 <20240318-topic-sm8650-gpu-v4-1-206eb0d31694@linaro.org>
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
In-Reply-To: <20240318-topic-sm8650-gpu-v4-1-206eb0d31694@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18.03.2024 11:09 AM, Neil Armstrong wrote:
> Add GPU nodes for the SM8650 platform.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

