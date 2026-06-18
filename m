Return-Path: <devicetree+bounces-313531-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8vnjEtD6M2pmKAYAu9opvQ
	(envelope-from <devicetree+bounces-313531-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 16:04:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED696A0C8E
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 16:03:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=y76c6z5E;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313531-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-313531-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linaro.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 71DD5303AF9C
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 14:02:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6D693FD955;
	Thu, 18 Jun 2026 14:02:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B88C3FD140
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 14:02:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781791368; cv=none; b=pfCu9tYjkx2gO39cTkOMi2LktkOaGMNYIOOjILNu3Xct50nDqNc6U4ex61851Gd8TGZAbz/rKdqWIHw53crgmM8sZnAfQX/mi6+XcrRImCyzzETI1BoBRtWkxX6NTiWomzChaqzq8g3dHvAIf8GVrVpm469rhY9c4Y52tEvPXbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781791368; c=relaxed/simple;
	bh=Zm88aDHqan80xJtYX/bGH6MO8Kts60eFfVrY3vZn1jA=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=Cb0hoyqpBO9z7kV6vJzQZ20C70tI9PSAk044XVElDqHqpzwjpzClvvsSsgKVt3IV1aBV2+sIKKr/9go2+WMyo/ASyvN92CmLmGU8QtcSATadbVw2o/ErbNoir1O+p1cNbq53RFpcyx39pQse0ImNcvDc5KnzWr9tJKLQeeDfVk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=y76c6z5E; arc=none smtp.client-ip=209.85.128.45
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-490c1915793so7910385e9.2
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 07:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1781791364; x=1782396164; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:from:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SxK0imfm+1QkrAHskYa5t0rNBEyGWHeSjGaPl9WwcgU=;
        b=y76c6z5EQ+4zLVHOi5hcfL5bqG3Qemmo2WiZi/qdM2rggCZacayPIkwyOF2jBbZQQb
         uIN11HO5cUz7SbXmErXCPjr0m/30BjSgmseQEyWabzeHu/+qYNj1MWjsg+5PzT6qbpJD
         dZfbty/X87ttman0vv5C8Bw8HFPRmOOzne3QqbVFVwX4g6jiP7team126JWFNbmen7Aa
         irRX5MUmRdWAv0ojcKEWj7/cNtptax0/6Qz/VLbNMi1CZiPkrPzw7T5fvvUZ2apyvNU8
         lb3Wf6ACovUu2myx0G+gCD0xCBE0uOAFk4oI753B4A+RfWyXNUQ684A4bmOMqF1+7nIZ
         Yjdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781791364; x=1782396164;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:from:subject:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SxK0imfm+1QkrAHskYa5t0rNBEyGWHeSjGaPl9WwcgU=;
        b=b9tK9G1DsFQpLA0nUUvn6AMrSz06waotvY8uehuRgRu0jxR1aJnfLRfJhQpuZBnkzI
         XD+hPa67w+PLASE9aodiykG9syP8iVvABQHHQhUKm/Abfvk520XH0t9z/ghJKIllBH9q
         sE3rirgutybwUzJG5BPBZsgMQ8kKFDV3qBYcO03/DBP9FOHZ4pvox2RtF5X/xmwR2Tz/
         FBvhVKNy1ZJPTEJoX61V6BJF+3IrWWCEVBB7ALvURrq2Zx6143vfpHC+LcxmmAiyqrNj
         5Lv+f40mKEDkm9V+pv2tYh5nMJbD8F62uyWPftbh3i15VKuyiXJ2zHPF3GcB43AlIdtM
         RTgA==
X-Forwarded-Encrypted: i=1; AFNElJ8RHjpcrJyN5w/hJNiIeC1+/4yDQ4KyZC5n/NwC2crC9uAmQJnixgIh7Cln9zWIgHS5FdEHhqAixbV3@vger.kernel.org
X-Gm-Message-State: AOJu0YwRL3V5bjc6e/Mogy+9y4+cIG4nGGTziY/Wx4tRSMMHtavnPBxo
	dhnkLFk6v2hlxYQgTKI5g0r8YLhvgQS3ISqn0AHwiLCo5qoWY3dDaMVsgweAI43VrsrQQQ/pxN+
	UchC7hi4=
X-Gm-Gg: AfdE7cmK14R3wUXtheyAkzprYf3TvMAcWzeKJnzOVURiCEsbUQbJrjCUyfn4F0gb4bu
	c1OPuwcb8bY7tORYittO/MUavd7Xo9UTXwnnfGUtz4Umj0f7gSzkONJrO/oanKt8NiNP2fFc+qD
	Ba1u2byKstYs/+/22cBmqMNNmuhf8qcx8PWiW2e/LRfZqD5x354jysiqaok6Sj3hq+Y3S78DDxd
	LShPemWcGjZOaJW/HL/CJjUg3fnwTsCmcWhyyBV0rgoOA+m6SHE3L7s02jJT6o2rsYXfR553ft8
	2j4RsiBUsHw4BgIP46+0XvpqDtCVyeapojniEw4vKRQK+OAeSgmx6tTfvY5kwq+On9EFSHsd05C
	e+JOEUsqm9MCvFrcOyZmVmVruEozVzxoa+g1hjMZfNmgpSK0gEsFvzAT5b6bzv5OPUd4U1bJphh
	ZfXaL4j7uKBnYZyDgckNE7tEd8BQP+Hm5EuCRb6f5WFtmlrVF6h44gocyb7F11qhTSo/z07Oc2h
	ib8
X-Received: by 2002:a05:600c:6b69:b0:490:a1dc:e542 with SMTP id 5b1f17b1804b1-49234100c1fmr92175145e9.6.1781791363260;
        Thu, 18 Jun 2026 07:02:43 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:6e1b:5a5:b2b5:b2c0? ([2a01:e0a:106d:1080:6e1b:5a5:b2b5:b2c0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49230a58becsm240825675e9.7.2026.06.18.07.02.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jun 2026 07:02:42 -0700 (PDT)
Message-ID: <45034b95-bbdf-4dd4-bcb8-5bbc74d86120@linaro.org>
Date: Thu, 18 Jun 2026 16:02:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v8 0/6] arm64: dts: qcom: Support AYN QCS8550
 Devices
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Aaron Kling <webgeek1234@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Xilin Wu <wuxilin123@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
 Teguh Sobirin <teguh@sobir.in>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260503-ayn-qcs8550-v8-0-d733f5e57446@gmail.com>
 <178179131851.245596.10889069443600186081.b4-ty@b4>
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
In-Reply-To: <178179131851.245596.10889069443600186081.b4-ty@b4>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,oss.qualcomm.com,sobir.in];
	TAGGED_FROM(0.00)[bounces-313531-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:webgeek1234@gmail.com,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:wuxilin123@gmail.com,m:krzysztof.kozlowski@oss.qualcomm.com,m:teguh@sobir.in,m:konrad.dybcio@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,linaro.org:dkim,linaro.org:mid,linaro.org:from_mime,gitlab.freedesktop.org:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0ED696A0C8E

On 6/18/26 16:01, Neil Armstrong wrote:
> Hi,
> 
> On Sun, 03 May 2026 16:48:42 -0500, Aaron Kling wrote:
>> This specifically includes:
>> * Odin 2 Mini
>> * Odin 2 Portal
>> * Thor
>>
>> The original Odin 2 dts is not currently included as it has not yet
>> been verified.
>>
>> [...]
> 
> Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)
> 
> [1/6] dt-bindings: vendor-prefixes: Add AYN Technologies
>        https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/fc917a533da47a5d0fd2f3df9052ee6dc5e6adad
> 

Applied it for the panel bindings,

Thanks
Neil

