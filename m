Return-Path: <devicetree+bounces-137373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 116AAA08CAC
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 10:47:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D4E08162E21
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 09:47:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 998B420B7F9;
	Fri, 10 Jan 2025 09:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BrFn6hxy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DE020B812
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 09:44:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736502257; cv=none; b=BKdCHKtjgm6EwlyynwLCKa4VbccVmoYYM8qD6/Usr3JGc/ol7mrRckrwUMyjdMToL5i6f5OYso3OIXqcUjgJ9PgsNoy4oZAhlTvKZ/w9UWKS+/4V2HpX7VeoA/wjXNxY0bAJBAECN+J6QOx8WJW01LOsdZAJeuyP51h8Gb8NZDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736502257; c=relaxed/simple;
	bh=VK1PDMoAC7rTFOLfb/x378eRNEay/b3TsU0SXAT+ry8=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=PRIMxMMA99Pdi1FYoQhCk3HEHJeMa+THMlpxXPySKyKiEpn0zhiccQ4nD+NdYIME4lIRQTGE3Nd35dUomfpD4ofWNXeh3d7lePNGMfW3JI4s6H0hrowOUNudLM6ep+bQhP0DYEkCnaPhxr8sACwVhBB9FznZiyXPJzwdd4v98uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BrFn6hxy; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3863703258fso1899211f8f.1
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 01:44:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736502254; x=1737107054; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ufz3XtWARX6FZk6lg3wAgAdnFvATiLwF5jnmYQrY9Ik=;
        b=BrFn6hxyH2zfeGgiHfFier39FAowyicCQMG1HCPu7CCBe8BZl6EFhLhEihttr/+494
         r5+lZsJnSLl+I7uqNXRqxJnE/qHHzx2iIP9crQ15SloohBYwPVicVo9XKFE4GLRAK6IE
         ZrxIllfmzz4bbEwk0oyMJPdZXkMNqw1N5KEJAaVCXbuh2eHo4o8lvzPIn3vpE7j1LfGu
         SUy5AU2W7etEoKVPIOSuuE2JLTeY6oz2IGihm7IZAELzRP06Ilr7aoiyMrniyD30CXvC
         5sPpiDAAz37tSJAPTcIj04/G614WHw7jmkENtqhClhdPArq6Xftb86Nu+Zsj+P/N+py6
         A5Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736502254; x=1737107054;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Ufz3XtWARX6FZk6lg3wAgAdnFvATiLwF5jnmYQrY9Ik=;
        b=OHViWVSo+ZehE2X55D7l5Gfvg400yO17CSVCSlIyGOEZqD1Bfb3GJmU3NGhv4H9lGa
         FAG867doKKHFMRPJ5rw0BJOWoDlyiJZ+81wQoDoQGa9cLKfeInK6zvNlPBzml8xcm4ic
         WqEVZ6qk9Ry8twcsPgC3j73cwifV4TXxNHy/WKOKaPRSzb0w2RbnM3/C7LhFWD3IoMRO
         1jDuFHYANdGHzzyEbWSpoJu4jEwNis/PKcbnKLlWixH+Zl36Xob6OR1DJGW+odQ1sb08
         QVlNGAVaBDsGXOMgG0PCVK5oFMPgux2IWTcbzIe3lP4XRFxri1AO1av0QYncamXkgZVX
         Wwgw==
X-Forwarded-Encrypted: i=1; AJvYcCUmfVC+H8WMSCSbwFOj5RUWHPrwWWzLM1KBq3jdy9wlEx78QpwhWJFGObsIU74mDBRkf3Nv7h49gJT5@vger.kernel.org
X-Gm-Message-State: AOJu0Yx97FrA5/H97mjWz34goRaC8CVTioY9nhelF+JQRk5vNEcpRxMN
	LACDnRY01c3F4P++k/LzYu6nRDxCG7+2rM6kMbUUKBPjJghBrrmQ6tcQFVla1Cw=
X-Gm-Gg: ASbGnctMsZjRgbeuEvoGOAHK+1bhji+5ZsUjUSr49y8DaruQcTaAOpy3SCNb/LS7Xf6
	HiyV+HuPL9Ds0F/at1l9AC+s+ngh3ijvbHwCnisUf73vIIGlhnBX/qdQvKjUBRjlOY7BxFCk5pK
	Ktbk1P/XQgy2FKX6U+Oc4F9VRes8K5m9tvh+b0czb3BoSoPzTOANy5P9tUyZClSLBfMcQpN5v7v
	aXuc14m4edz6TA1qDQ6F6lxGCWfTQNSksSirX0B8hSM48UvX4lagHWyij5tNJO4vpFtvAv+Z+wQ
	GC06xh4HAlYH2CQ1HMtBeb68d+WG75Rx1A==
X-Google-Smtp-Source: AGHT+IGaKOzAJrJwxaaNHX70BlAoW4/vaex7QuF2dhKrgRFoaRw7P2wU55Opybov80BrpNHMR3zkeA==
X-Received: by 2002:a5d:588e:0:b0:386:4332:cc99 with SMTP id ffacd0b85a97d-38a8b0d61c6mr5854791f8f.17.1736502253763;
        Fri, 10 Jan 2025 01:44:13 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:bf4e:5758:59ef:deb8? ([2a01:e0a:982:cbb0:bf4e:5758:59ef:deb8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436dd14dfcasm88786565e9.1.2025.01.10.01.44.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jan 2025 01:44:13 -0800 (PST)
Message-ID: <99747e37-1288-4d70-a678-0a73bb4c3b3f@linaro.org>
Date: Fri, 10 Jan 2025 10:44:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] arm64: dts: qcom: add missing cache node for cpu1
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250109-topic-sm8650-cpu1-missing-cache-v1-1-0e85148a48a8@linaro.org>
 <549d15ae-34db-497c-89d7-c9b9c18d8681@oss.qualcomm.com>
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
In-Reply-To: <549d15ae-34db-497c-89d7-c9b9c18d8681@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/01/2025 19:30, Konrad Dybcio wrote:
> On 9.01.2025 4:24 PM, Neil Armstrong wrote:
>> Add the missing l2-cache node for the cpu1
>>
>> Fixes: 20eb2057b3e4 ("arm64: dts: qcom: sm8650: change labels to lower-case")
>> Fixes: d2350377997f ("arm64: dts: qcom: add initial SM8650 dtsi")
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
> 
> subject: missing `sm8650:`

Damn

> 
>>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 7 +++++++
>>   1 file changed, 7 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
>> index 86684cb9a9325618ddb74458621cf4bbdc1cc0d1..832f3a2c400e8348847bc24b27397e2a0dc08db8 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
>> @@ -119,6 +119,13 @@ cpu1: cpu@100 {
>>   			qcom,freq-domain = <&cpufreq_hw 0>;
>>   
>>   			#cooling-cells = <2>;
>> +
>> +			l2_100: l2-cache {
>> +				compatible = "cache";
>> +				cache-level = <2>;
>> +				cache-unified;
>> +				next-level-cache = <&l3_0>;
>> +			};
>>   		};
> 
> You likely wanted to hook up this new node to CPU1 as well.
> 
> Reading some Arm docs [1], it seems like with A520 specifically, both shared
> and unique cache slices are permitted, depending on whether they're
> implemented as single- or dual-core complexes (not to be confused with
> multi-threading)
> 
> [2] suggests CA720s always have their own cache pools
> 
> In 8650's case, the slowest cluster has a shared L2 cache, whereas cores 2-7
> have their own pools, so this patch is incorrect.

Damn you're right, so the cpu1 cache should be linked to the cpu0 cache somehow

Thanks,
Neil

> 
> Konrad
> 
> [1] https://developer.arm.com/documentation/102517/0004/The-Cortex-A520--core/Cortex-A520--core-configuration-options
> [2] https://developer.arm.com/documentation/102530/0001/L2-memory-system


