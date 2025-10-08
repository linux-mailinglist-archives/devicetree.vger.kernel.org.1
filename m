Return-Path: <devicetree+bounces-224608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C32BC635D
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 19:53:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 38F2B3AEC44
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 17:53:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6C112C08AD;
	Wed,  8 Oct 2025 17:53:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PzqEJE4Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078F4221271
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 17:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759946004; cv=none; b=AJcOGorwMnuwyNtc4Je7OxSw5J3xaKHKwkdT00TjeGYKcL6Sn1uxs9y5bv03AizZNb4dVxJjU+5WNiIU8NwcsRIEGDEgJB762IfW/tJId6Pr7DIJiiP3313n2AzfkogPhzkN3hn+oWzgZXgrVxKrZp7IEQBh2OINHR4CIkVo25I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759946004; c=relaxed/simple;
	bh=7uenfxZbhN2COy+Pu0VQPMBd+KOfPBPVzZt14HH5Onk=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=fcqOIiaSOf5ro0H7UrLZitO+5S1mi192s7jKFt2TAzi6fwZjLCeW01G4AWEir/pPRGjh7z0sK7Q1ZRSuVLjKCH9DzA37HMNSy2vNyYCoUjuLWT0jjpfYvE2qPj60sX3+vRt5XPzZqhMFq6mqapK49rq4k8gZnyKROBE0HLsUF+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PzqEJE4Z; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3f2cf786abeso164995f8f.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 10:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759945997; x=1760550797; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=px+f0JQb/+e/m0dW9U+ZUXUOOFQQcWWAn8xrqf+sMwY=;
        b=PzqEJE4ZYLc++5lVPFnpvm2jliGjgA3SnTIn9Ih7NQsQUHb7klAmTCr768vAezJ8kR
         dd6gy4E5phJ0b1O9aCoo7gDFAkcGnqi/7A6aGiE3t4FSGjAA72WPuehqvItlH0Lgjs+A
         tTKb1fe0F456nRV+OT6yf+dATEhx1HtzU5FnR9c5Qx8Z2DtwYA3x179nPNqF7DNaryEM
         8D9JZC3r+PMKzC6PQ+QF87qfaYyejpVB+psILHgfXQgtfJDvuqr+st5Y5dmHlEWlwgG+
         0MmXOtrt+0P2fAItmrvsJUK3SnwWbkNmf7HaldFDpLNq/5Nv6jQt4DJRdagmOtdKYWKx
         RFuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759945997; x=1760550797;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=px+f0JQb/+e/m0dW9U+ZUXUOOFQQcWWAn8xrqf+sMwY=;
        b=NSKyKtlUyoArV83mVbI+h2dMgJULLQM5b3hRbJfXmjX96nFHs3Bq4BBcTmKKw40bsE
         dM7pI+mZkCCUZFT8duy2XVvG6KCcPuAhBmvDRbGsSELTDP1yXR6h3ai/URDho7kQNSu9
         BlDKLelyDvmMlyL0649/8fex09Ljk7riut+S5rW1JmaklDjNcaG2Xbs/IxHgAMHVNfMu
         vSmzp+rebMkxb7Yg+wuiMoHCsXFD3/Q46SEqa0lV9w05Js/eM33nvGwhhYWIipL90VcR
         pj5/gKlZYNcXim6G/m3L5d8FcTaxCI6BV+B+kT8ALwNXCIdlVXN9TdiX2T6ZffEqCjEQ
         j1UQ==
X-Forwarded-Encrypted: i=1; AJvYcCVTnsPyOjyRjFATHAou4o3908ESBoNxsgdzpCC68MSrbWDHwYBRJzEZLKKcR2O3cRSrYflU8+7lbvGN@vger.kernel.org
X-Gm-Message-State: AOJu0Yzf5reLswjkv1RVIY/72nYJH5uAD9mHME2UBrcwDnWslNGeO3vT
	FUeBq4dIzwBCX6o9Ag979Cqk254HkHCgOiYcJAAoUZ+7A3VW9MbHzmFaW7LBrjakOTE=
X-Gm-Gg: ASbGnctYlcmbmV3is93HZ12hHmYjl+2Krmw+s6Jv1V6nwLpRfA0FOHV7P5Rrcf6DGsj
	G9Ve9M6bpJrNlOt2a+V2vTySwp+A1R6SLBOQuVDHmyzhX7P7O537XBSSRyuVlNErgwE3EMVZcGM
	tKBfFj8THv08hZPc1Mirovg7QArHr1sZEKh++EFbu3ZDrmpfyV3UHDcZhrnJ4x1rZlPkvtv9PtN
	+3tmd8DIAwdMHHY2+lEc03qz1RgkZwkItNKoJX0+Cono+paE4j5y5Bm+Dgxvd5TB9i2WcMIGh7V
	JHyM6yhy6Mkx21TnHB70m9bFaatx9/rq9AR4GHm61C1u5AZ0rsBOjnFLkIFxRS9+/uRx3MiUrju
	bfjHzpiCJ5JOyrA5NQcoBrp5e2bUG17T47vtBTekJ+kDlDELDERiq6HuilSAl9GKJTz9kirBjbB
	Pe+gphfh3gBOm/LCHh5ls=
X-Google-Smtp-Source: AGHT+IHJw/r+nePLX03c3KX2qjVH82litB6OC27IzmUfEItja6F4LxTNp01tzn33pfo26Wfsoc01KQ==
X-Received: by 2002:a05:6000:2905:b0:3d1:8d1e:8e9 with SMTP id ffacd0b85a97d-4266e8d8ce2mr2825869f8f.32.1759945997240;
        Wed, 08 Oct 2025 10:53:17 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:b264:afbc:dee:3d? ([2a01:e0a:3d9:2080:b264:afbc:dee:3d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46faf1118aasm9465955e9.5.2025.10.08.10.53.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 10:53:16 -0700 (PDT)
Message-ID: <ac2188dc-d524-41ae-b9d2-f0f5ff9861f0@linaro.org>
Date: Wed, 8 Oct 2025 19:53:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH RFC 2/6] ASoC: dt-bindings: qcom,sm8250: Add clocks
 properties for I2S
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Srinivas Kandagatla <srini@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251006-topic-sm8x50-next-hdk-i2s-v1-0-184b15a87e0a@linaro.org>
 <20251006-topic-sm8x50-next-hdk-i2s-v1-2-184b15a87e0a@linaro.org>
 <6d9af57f-9174-405b-9131-145fd6d63a5f@oss.qualcomm.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <6d9af57f-9174-405b-9131-145fd6d63a5f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/7/25 12:21, Konrad Dybcio wrote:
> On 10/6/25 8:37 PM, Neil Armstrong wrote:
>> In order to describe the block and master clock of each I2S bus, add
>> the first 5 I2S busses clock entries.
>>
>> The names (primary, secondary, tertiarty, quaternary, quinary) uses
>> the LPASS clock naming which were used for a long time on Qualcomm
>> LPASS firmware interfaces.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
> 
> There's also a senary (6th) I2S bus instance, which there is no reason
> not to describe

Will add

Neil

> 
>>   .../devicetree/bindings/sound/qcom,sm8250.yaml         | 18 ++++++++++++++++++
>>   1 file changed, 18 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
>> index 8ac91625dce5ccba5c5f31748c36296b12fac1a6..fd0d7a7ddc7b363a66e1e7bd72c7290666efb511 100644
>> --- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
>> +++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
>> @@ -64,6 +64,24 @@ properties:
>>       $ref: /schemas/types.yaml#/definitions/string
>>       description: User visible long sound card name
>>   
>> +  clocks:
>> +    minItems: 2
>> +    maxItems: 10
>> +
>> +  clock-names:
>> +    minItems: 2
>> +    items:
>> +      - const: primary-mi2s    # Primary I2S Bit Clock
>> +      - const: primary-mclk    # Primary I2S Master Clock
>> +      - const: secondary-mi2s  # Secondary I2S Bit Clock
>> +      - const: secondary-mclk  # Secondary I2S Master Clock
>> +      - const: tertiary-mi2s   # Tertiary I2S Bit Clock
>> +      - const: tertiary-mclk   # Tertiary I2S Master Clock
>> +      - const: quaternary-mi2s # Quaternary I2S Bit Clock
>> +      - const: quaternary-mclk # Quaternary I2S Master Clock
>> +      - const: quinary-mi2s    # Quinary I2S Bit Clock
>> +      - const: quinary-mclk    # Quinary I2S Master Clock
> 
> I think a single top-level comment saying "mclk" is the master
> clock and the other one is a bit clock would suffice
> 
> Konrad


