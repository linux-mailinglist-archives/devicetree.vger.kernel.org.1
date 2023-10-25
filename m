Return-Path: <devicetree+bounces-11800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6937D6A63
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 13:51:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6CFCE1C20C88
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 11:51:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC73F11732;
	Wed, 25 Oct 2023 11:51:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jn/WF9Zj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387971118
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 11:51:19 +0000 (UTC)
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B208512F
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 04:51:17 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2c5039d4e88so85793841fa.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 04:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698234676; x=1698839476; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7Hsw0zm9eM5S+gWA6OmnIYoXsxBr0jnQpH2YM2gJKUI=;
        b=jn/WF9ZjSk0PxjD0njkzzHJnl9cIKCVnCQTqxxbplIkDJjkFBbe2qboL2E2PkQsrnP
         eCqYEjz3fvFkduU8692+vqQvyBNWpJAyRt8d/qFp7Mkff76X1V3vPCc7XIBVb52skyDJ
         wMhsudkbGRes88l90i5NmIK5QrECwKCrpuLZtGhEuP+PjDeyQ9NoMTDBPeB4N5lycFTL
         3oB9e9rNNDysjvSifMzNcJClHGLW2A4fI7ZaNL4DLFXGh+VB73qkuFFZ8qW8APipxZ8h
         2cySGzfKS//HGQdsFT9+8jPuEkZPxETo17EN4FMWiqz/KtoiDnLpDIlc/keR/NCEgoGF
         TJaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698234676; x=1698839476;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7Hsw0zm9eM5S+gWA6OmnIYoXsxBr0jnQpH2YM2gJKUI=;
        b=VTpVHWTn6LDVGJLaZYKEGnEp/8yWm4rrQ/AI0D61MK5RS3ezx1RRoaueFVTVGeDIhC
         LkuZUUShQ124pH1yyShxkuPM/UZg9rGiZ9dN/yWI5X+sK9hBzM8dhNtqtOGhVGHHqHPU
         mrnyOfQbke4mXhiENyGfG8XPWOzWzDnqOgI4HhIdmyJnstoSd0lAnxZcAo8n1Ts+7Ena
         KzdHqbpjnWiIlwznD7RZ3cV6/s4cKT9+pJgbjO7PzfTqGEX+Gol9BNhdT98ZeLK3y9nL
         HdF2uKaWnD8tJrr/UH2aPE7/lqJfVfAKwrkjqdgu3C5IG2nWDSYA4VABphMwRjkZL+L7
         G6Cg==
X-Gm-Message-State: AOJu0YzUCJuqu7cmdI+nNQjie3MBMuU5vqe3Iy86OyKfYgyBTBWaANAx
	tZLOXpuOZ2V2Gor8U8DwsMA8uw==
X-Google-Smtp-Source: AGHT+IHCNDC0+lPgS0jDJT3V4VlFbVtoiB+J4+5XT6STl1Pzc0zFjElf6UzhnnKU98eGFSk/iuorBw==
X-Received: by 2002:a2e:b896:0:b0:2c5:488c:aedf with SMTP id r22-20020a2eb896000000b002c5488caedfmr11637843ljp.37.1698234675797;
        Wed, 25 Oct 2023 04:51:15 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:4b03:ec74:6374:5430? ([2a01:e0a:982:cbb0:4b03:ec74:6374:5430])
        by smtp.gmail.com with ESMTPSA id u1-20020a05600c210100b004068de50c64sm14201938wml.46.2023.10.25.04.51.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 04:51:15 -0700 (PDT)
Message-ID: <85f7eb5c-29ed-417a-a741-a3e7fe773d4b@linaro.org>
Date: Wed, 25 Oct 2023 13:51:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH RFC 3/8] arm64: dts: qcom: pm8550ve: make PMK8550VE SID
 configurable
Content-Language: en-US, fr
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231025-topic-sm8650-upstream-dt-v1-0-a821712af62f@linaro.org>
 <20231025-topic-sm8650-upstream-dt-v1-3-a821712af62f@linaro.org>
 <6cedd9fe-ae5b-4173-9a77-ef4d7813a071@linaro.org>
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
Organization: Linaro Developer Services
In-Reply-To: <6cedd9fe-ae5b-4173-9a77-ef4d7813a071@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/10/2023 11:17, Krzysztof Kozlowski wrote:
> On 25/10/2023 09:47, Neil Armstrong wrote:
>> The pm8550ve can be found with a different SID on SM8650 platforms,
>> make it configurable.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/pm8550ve.dtsi | 11 ++++++++---
>>   1 file changed, 8 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/pm8550ve.dtsi b/arch/arm64/boot/dts/qcom/pm8550ve.dtsi
>> index c47646a467be..fbd8a386cef2 100644
>> --- a/arch/arm64/boot/dts/qcom/pm8550ve.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/pm8550ve.dtsi
>> @@ -6,6 +6,11 @@
>>   #include <dt-bindings/interrupt-controller/irq.h>
>>   #include <dt-bindings/spmi/spmi.h>
>>   
>> +/* (Sadly) this PMIC can be configured to be at different SIDs */
>> +#ifndef PMK8550VE_SID
>> +	#define PMK8550VE_SID 5
>> +#endif
> 
> My statement is still the same - NAK, for defines depending on ifndef. I
> believe outcome of our last discussion - including meeting in Amsterdam
> - was only to have defines in the board without any ifndef/ifdef.

As suggested by Dmitry, I'll add a define in all DT using the pm8550ve,
so this would remove any #ifndef.

Neil

> 
> Best regards,
> Krzysztof
> 


