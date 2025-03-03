Return-Path: <devicetree+bounces-153453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2882AA4C910
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 18:18:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A3C8518871D3
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 17:13:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D542262D2E;
	Mon,  3 Mar 2025 16:54:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q+fiwHUZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86B4D262D12
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 16:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741020861; cv=none; b=BXvKLYhoCzwrUi3G9FNl0ZSGzRwk71zz9CzIa8TfCZDfuDMPmEhG2+fdJQehT3gnuFnyo8sCr3lxt7GtFm6lDMYvKJsQpVnU7vMg+Y+S2WqzeXNQy/ali4ApeY/jqb4zhKBaqBA6NzlE0Uy8U9Avqz9qqsDyIFWma7kI+FAJ9sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741020861; c=relaxed/simple;
	bh=TqG4inTbI58GeXNn2jdYJcdrz/yN7Nwl/LBiE3hddGg=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Ol2NKU/4fnNN2mfVken+41HKL9yHyv4vU+zMWctkG1bNUMj1ETa6leqRmAkPKrnWMVXmdMBYz905x9VvTEprhCQfYBBRWKX/VDgWTH3BqaN+7MTU4FutePoeBhv4yj4KNxs1IUEh5WYq3x1h+4ulUA3BWu2O/So+AYZjij7EyzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q+fiwHUZ; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-390effd3e85so3364627f8f.0
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 08:54:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741020858; x=1741625658; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GxWgkFt79rQrjB13JnAOXFuAB8VTulqV3Xpey4gNzq4=;
        b=Q+fiwHUZAx0dU0sF9xcKppDFltPuH3a1pyG2I1eo7wG6YGlxeNPNLodssMn+FKBIgA
         B76GTEtUGsSdKZrldx0+dXSt6rjfFf9yyq4aK4rYwwOhE2e/vCeXFDykDUOqMx7W1nGc
         dQfAuj8vnWRia8EU39JgVedK1hbLFGeZOF9mynoOKK7sDoUjBL6+dfep2F+Ljug8DGx0
         AV46BPivQ2tIeg/5dHHoKkGa/AX6K+/bXou9SQURBKqNCXw7cGJ+OHIlHaioRWeRpER6
         w75iLpgt9+xRzeVORi//jl1b6gEmXhQ/ay9uSxll/ASBXifMP2VdNqHuaKTg4WTwzhub
         /G/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741020858; x=1741625658;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GxWgkFt79rQrjB13JnAOXFuAB8VTulqV3Xpey4gNzq4=;
        b=EYcKCM6bySHIAG4l2DQly3AGc+DvO1CSQFKR+DZbL0y64e02J65ucf6xbEymSER1qk
         V/SFTj8p0nueB0oKKPOFv0Cal5EIHN3iZyUub+3qCjjsnOEwEbohcMUS93bX+8PquoDD
         9cuY/dvczKSY8TmCQBq+/8Zr2Bn5KPEdBpUN+VCs9LUXV+NcGyLVj5+bJYEQRphCFrh+
         VKzAT9LBg5fdBt68P8rHJxyrpJxwQqSqpfYHT+02KCFvkyfY9WkDl1N8u0ML+TTnlmXs
         zzgEkjjS+HmO+jrK56eM3zB/wbyTJnV5cMgfV+mL3dvoYsPal+kFAAuosiS0qhW9A+DQ
         fg0A==
X-Forwarded-Encrypted: i=1; AJvYcCWxcIaxVqh6mVvgZImDVotXSEqCaDPWaxZdMUnnNAjLHVfhlrDv+e9/bZWVDw5TNmcXvrTJLDGiL1jE@vger.kernel.org
X-Gm-Message-State: AOJu0YzTWF13PX5JXbAFuekBYisJQ0CIiNMidYeSK3IvxCMf0PrFGXTk
	NZAqNzT9RSivD9RWPkX2RRgVUi39E50YZb/D7eoEJynnsGHyBqruqcT2JHD8eWk=
X-Gm-Gg: ASbGncsIjDPOSTG7cTr/SGUb4nDbE093Pqbh7glGtABBsepl6UDCnrlJu/VsYSockZQ
	o9ZrZeOiJoIBMrwCysdHf64u7rjaCGABaVkMPzhRTD9LZe18EDhMAzJ3WbZoetDiV501NKAP+Eg
	EjdR2yZ9LOs+X4+seURjgWP9E2bYKSttd9nGIte5lYnphUXfwvAzRMoP9CANadWXCPysKyEStW/
	f5/KtLvmUBECwp84BjzCui9YYkzQlS9OE999VKI4COm8t1QYV0iKTpqyA5bMVDOQuhN9Bb6QLe9
	yzEu0HdfPZxc9eFun16sNsG2JMpomcVsJF/ak7ajXO8aIcDNhmEikM2qkLTSwsa5+JHIdtM9uys
	ag1jtVrED+o3NKHfKHa2Xdg==
X-Google-Smtp-Source: AGHT+IEHzgntCiIyFIejt+velJ1DKYJeY/DP/PmofPesUSGSnk34CcJB8gGDJCJeXZwhol/qtJoMiQ==
X-Received: by 2002:a05:6000:1789:b0:391:13d6:c9f0 with SMTP id ffacd0b85a97d-39113d6cc41mr1329180f8f.47.1741020857759;
        Mon, 03 Mar 2025 08:54:17 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:1c49:dea2:d749:5015? ([2a01:e0a:982:cbb0:1c49:dea2:d749:5015])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e47a6a5esm15251582f8f.35.2025.03.03.08.54.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Mar 2025 08:54:17 -0800 (PST)
Message-ID: <1058b59c-af0c-45ba-87ac-e3e243883f3e@linaro.org>
Date: Mon, 3 Mar 2025 17:54:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 1/4] dt-bindings: media: qcom,sm8550-iris: document SM8650
 IRIS accelerator
To: Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250225-topic-sm8x50-iris-v10-v1-0-128ef05d9665@linaro.org>
 <20250225-topic-sm8x50-iris-v10-v1-1-128ef05d9665@linaro.org>
 <9799775e-f754-f717-538a-cfea3dbc794b@quicinc.com>
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
In-Reply-To: <9799775e-f754-f717-538a-cfea3dbc794b@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 28/02/2025 13:21, Dikshita Agarwal wrote:
> 
> 
> On 2/25/2025 2:35 PM, Neil Armstrong wrote:
>> Document the IRIS video decoder and encoder accelerator found in the
>> SM8650 platform, it requires 2 more reset lines in addition to the
>> properties required for the SM8550 platform.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   .../bindings/media/qcom,sm8550-iris.yaml           | 33 ++++++++++++++++++----
>>   1 file changed, 28 insertions(+), 5 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml b/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
>> index e424ea84c211f473a799481fd5463a16580187ed..536cf458dcb08141e5a1ec8c3df964196e599a57 100644
>> --- a/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
>> +++ b/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
>> @@ -14,12 +14,11 @@ description:
>>     The iris video processing unit is a video encode and decode accelerator
>>     present on Qualcomm platforms.
>>   
>> -allOf:
>> -  - $ref: qcom,venus-common.yaml#
>> -
>>   properties:
>>     compatible:
>> -    const: qcom,sm8550-iris
>> +    enum:
>> +      - qcom,sm8550-iris
>> +      - qcom,sm8650-iris
>>   
>>     power-domains:
>>       maxItems: 4
>> @@ -49,11 +48,15 @@ properties:
>>         - const: video-mem
>>   
>>     resets:
>> -    maxItems: 1
>> +    minItems: 1
>> +    maxItems: 3
>>   
>>     reset-names:
>> +    minItems: 1
>>       items:
>>         - const: bus
>> +      - const: xo
>> +      - const: core
>>   
>>     iommus:
>>       maxItems: 2
>> @@ -75,6 +78,26 @@ required:
>>     - iommus
>>     - dma-coherent
>>   
>> +allOf:
>> +  - $ref: qcom,venus-common.yaml#
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          enum:
>> +            - qcom,sm8650-iris
>> +    then:
>> +      properties:
>> +        resets:
>> +          minItems: 3
>> +        reset-names:
>> +          minItems: 3
>> +    else:
>> +      properties:
>> +        resets:
>> +          maxItems: 1
>> +        reset-names:
>> +          maxItems: 1
>> +
>>   unevaluatedProperties: false
>>   
>>   examples:
>>
> Since we are using same binding for SM8550 and SM8650, I think, it would be
> good to rename this file to qcom,iris-commom.yaml

The usage is to name the file based on the first compatible introduce,
and split/rename when adding new very different HW, here the difference
is minimal so it's ok to keep the current name.

Neil

> 
> Thanks,
> Dikshita


