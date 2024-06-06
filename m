Return-Path: <devicetree+bounces-73099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A24AC8FE055
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 09:59:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0E8E2B23EE2
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 07:59:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBA7013C673;
	Thu,  6 Jun 2024 07:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e7LrNNN5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF94F13BC3B
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 07:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717660747; cv=none; b=g+oQnfljxrCnc7VmJD9iN+elb4aZG/BHJM5LkPdEeERg8z+JhVhCoTGZBru5n/XUC272GQMUlq3CMvHMJOfMRl+Mioaq+BxqOAYyYwL9CFxewvSoXkV4B7jyQL8HEtDRyaJt0vSbK3mBT65/WZ9naYEeWtKP0bPoQTHQ1wP1CkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717660747; c=relaxed/simple;
	bh=M4YbMnyA7wPbzKBrsOBsBA0mojZytlGPqCREAmq0jgY=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=qRcScXUV45C6RCrBFSCnpjxtPwRXzgz9a3NdupdnlxzmFTPPwVbLqLHhtKGJ0Nvt1t04gUpTSwF/kE0o+k1TMFnVAeBK7CdL0TedAK3nPRaEMK+3rtOJTV0pUeYXAs/zmK+3yvmgs/yFfm5qDmJfUv6INuu/LGnamxs8FLfWv28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e7LrNNN5; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52b938587a4so740451e87.1
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 00:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717660743; x=1718265543; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gnS+4Nw3mmnCgHlcq3mDgyzxrHoTkQuygatDQQZy8y8=;
        b=e7LrNNN5FqvAHQAQ4eO7wMXPNkBO66H/Ox1bvKiyMO2Usa4QjQn4/iPnWNy0Zpb1/N
         zNr7pJ8S5KNxGKW/ysgZgOOt5q92nkeuE2XTbh0fLfIq2q9Z+kVt08HK56GJDmTC1FGw
         ZOx+R+FirwnzaUD1eyQkxg9sqc82Sqh9ftmUAyLK58KCDUJOHF/nsj5ETYDS46ELAAnP
         tId5Yt6qgEhdbgwwMqBEj9JJrHWsi27NGxZLJdt0eq+zZMKmfk8/Nak1C5XaRS1uY6IH
         x5QxiiJFlj5In0lAx0rgOCR83VZl0Mu8cANIAtAcE4fm72K19ZA+Hb+0hFYhLDR2Jq+h
         dbFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717660743; x=1718265543;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gnS+4Nw3mmnCgHlcq3mDgyzxrHoTkQuygatDQQZy8y8=;
        b=cSOnDN0FaT2wrXeUoX3Ua1HJLi56Pqjg17Doyl/YPZni0xiFHbpgU681Rxw+a+ifco
         W9IPo6Qt7r1PW9dg7y8QEdzLVMAgwjEV3abfVH4dVTBqgIPXI1mmWxuKlVzCvdoUvXTm
         axbhn4BtSj6M/tWNyzikKJWpNt3IoMpGbKaQuKFBSjWA0R3DhsGzRZpLFPmMeLGzwUwS
         rKa6yptj17PNZ2pzj5I4NEMnQsOqBbVHpa0CAVFPyCu8UyFJ7O2tkDDNfULoQgPBy46s
         kTaOq0VLdd4gGjR4poSa4WqAkeHYoDSu+ep4U0LZiR3JXtczsEgYWVv8LWh4uBSFVWI8
         YWZg==
X-Forwarded-Encrypted: i=1; AJvYcCUzT/5UW9kdNttINJKdvt6gNOa3Fjfw40v/hsjDKzBetaf62DrmygU2gQQ2YXbmrG+Q1tN3xHzV4X3mFv8e6m2CXsepgfhu0YlfNw==
X-Gm-Message-State: AOJu0YxKiJEeXLfZB1XzI4Dg/aysiZBIs1kaOu+4jdwwEJ+m2YOFwVTw
	tT1Schk8e56Bs/OaQRA0XEHp206s1fYOp0P2Jq1b78GpwIyNZzjImFRySNML9mg=
X-Google-Smtp-Source: AGHT+IHYwQVGy5dggvj+xREw0PMv6gW7XtD9G6UpJEyN+UKn9U1OFTscrpuHK+PvsB0Onhm5ujkKAA==
X-Received: by 2002:a05:6512:114a:b0:52b:9f37:3ec2 with SMTP id 2adb3069b0e04-52bab4c93e5mr2874304e87.11.1717660742962;
        Thu, 06 Jun 2024 00:59:02 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:22fd:4ae6:287f:17f2? ([2a01:e0a:982:cbb0:22fd:4ae6:287f:17f2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4215810242fsm45618635e9.12.2024.06.06.00.59.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jun 2024 00:59:02 -0700 (PDT)
Message-ID: <92f96ac7-d36b-4c3c-862e-90e939c367a4@linaro.org>
Date: Thu, 6 Jun 2024 09:59:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] ASoC: dt-binding: convert amlogic,g12a-tohdmitx to
 dt-schema
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Jerome Brunet <jbrunet@baylibre.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: alsa-devel@alsa-project.org, linux-sound@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240605-topic-amlogic-upstream-bindings-convert-g12a-tohdmitx-v1-1-b851c195e241@linaro.org>
 <05454339-9f83-4101-ac55-0dc7b5a8d45e@kernel.org>
 <4d9d7cff-1a00-459d-8ccf-d30ec2cdcaad@kernel.org>
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
In-Reply-To: <4d9d7cff-1a00-459d-8ccf-d30ec2cdcaad@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/06/2024 09:45, Krzysztof Kozlowski wrote:
> On 06/06/2024 09:45, Krzysztof Kozlowski wrote:
>> On 05/06/2024 18:23, Neil Armstrong wrote:
>>> Convert text bindings to dt-schema format for the Amlogic TX HDMI
>>> control glue.
>>>
>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>
>> subject: dt-bindings (missing 's')
>>
>>> ---
>>>   .../bindings/sound/amlogic,g12a-tohdmitx.txt       | 58 ----------------------
>>>   .../bindings/sound/amlogic,g12a-tohdmitx.yaml      | 56 +++++++++++++++++++++
>>>   2 files changed, 56 insertions(+), 58 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/sound/amlogic,g12a-tohdmitx.txt b/Documentation/devicetree/bindings/sound/amlogic,g12a-tohdmitx.txt
>>> deleted file mode 100644
>>> index 4e8cd7eb7cec..000000000000
>>> --- a/Documentation/devicetree/bindings/sound/amlogic,g12a-tohdmitx.txt
>>> +++ /dev/null
>>> @@ -1,58 +0,0 @@
>>> -* Amlogic HDMI Tx control glue
>>> -
>>
>>> +
>>> +title: Amlogic G12a HDMI TX Control Glue
>>> +
>>> +maintainers:
>>> +  - Jerome Brunet <jbrunet@baylibre.com>
>>> +
>>> +allOf:
>>> +  - $ref: dai-common.yaml#
>>> +
>>> +properties:
>>> +  $nodename:
>>> +    pattern: "^audio-controller@.*"
>>> +
>>> +  "#sound-dai-cells":
>>> +    const: 1
>>> +
>>> +  compatible:
>>> +    oneOf:
>>> +      - items:
>>> +          - const: amlogic,g12a-tohdmitx
>>> +      - items:
>>> +          - enum:
>>> +              - amlogic,sm1-tohdmitx
>>> +          - const: amlogic,g12a-tohdmitx
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  resets:
>>> +    maxItems: 1
>>> +
>>> +  sound-name-prefix: true
>>
>> Drop
>>
>>> +
>>> +required:
>>> +  - "#sound-dai-cells"
>>> +  - compatible
>>> +  - reg
>>> +  - resets
>>
>> Please keep the same order as in "properties:" block.
>>
>>> +
>>> +additionalProperties: false
>>
>> and here instead:
>> unevaluatedProperties: false
>>
> 
> and with above changes:
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Ack,

Thanks,
Neil

> 
> Best regards,
> Krzysztof
> 


