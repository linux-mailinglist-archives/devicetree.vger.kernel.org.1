Return-Path: <devicetree+bounces-256724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 61ED6D3A259
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 10:04:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6149C300C145
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 09:04:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9D2B35293E;
	Mon, 19 Jan 2026 09:04:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BBVeTbfP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204C5339844
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 09:04:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768813458; cv=none; b=ccBCPZ5pK3/j+j/oupRf+NbiNWA0zR9JA5vX8ZcpGS3P1X43PxU2HUjCa2uXXhEjGWGZywu9sJvpjmRG5+eTJgdZOVK7N6tWnpOI1XtQtp40Eyj8olNN0T5FBiWEnZRPniFcCn/R0voBB4AKjotQxA5BOKq64gX172SFgXAoEs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768813458; c=relaxed/simple;
	bh=ogx8e//R00oCtydRVAgXMDZGFuI60OSZBzuQ2Mem9C4=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=UyHizeSZRzV1K5XF4a1x5LSeoEJ3MaomoYHQwFgTZNEHz8B3RiCH7emwtDRb6hvKWVYM1qnlyOoJDy0CHSPnnO86JzZXLKcZxazkkPB9DPr0+7oNy4MIeKP/xjVUzay+V1NJr17WCDtXiJqXJW5v3+EuCCOxHOKj9YEVtllqNZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BBVeTbfP; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47f5c2283b6so25888195e9.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 01:04:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768813455; x=1769418255; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jpBoFpPJWze1XjHnD2RjmJmPMWanDN2B4sDltQKPLag=;
        b=BBVeTbfP8aB++eKpWASapi47rVHYO4cXJRHKF4bas530YgQHY8nb9KRu1sqOhDedRm
         Pyt4qnn9RxO+f9Qvul2X5CDE1RiPJc8pqnchcUhTTabX7YuR3iPuY6EnY/6QYLCKUMtO
         jHiZYxBQLJjaPrLgyM2SU1n95uZK6Z1SJbwArmf+MTxkg8LpcX76f9Hoyk1pWcagcTeX
         Jo1COR7yiKJP9S3LRkxg16n8imV2QNZhrG2swuQhz2YRqwbrOcK0MOfnupUUQYO4328r
         oHCF6JToShUsB379MZE83eIV9um0W49EJDzrCuIU6clL8OCpgmTovyylJ7Q5aPStcmh6
         6tPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768813455; x=1769418255;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jpBoFpPJWze1XjHnD2RjmJmPMWanDN2B4sDltQKPLag=;
        b=G6NpIfdMk3ccDTKlHWgFnnCZwlDNVB/azn/Es+qlDimSTr7J8FqLR1NGSmYyQpe8hU
         4VAhkkREQWDccuBBx9pMzqy3ndItVA8m+f0xAlOu9P5WEXp/jtuYbms5OL5npFow+kV9
         GIwO8S8CL5z6QNAA3OAglNlltiXSviBFGawSPhpCSve9zGVo68PuTCJQaWijHJdumgC8
         61rZCZ6LhHzVS8A9cCbbNgLR2Yaugab6Bc7+Kb4RdeIHIBcn8YLyRFs4HwtJ6DJst/+t
         MmOqrTeoWzoJ2NYRXwBhsRzQzbNCBRZ5JFwD0X2WZxBy0nsrfS5HdpXE4LH5aOn0wwiT
         83UA==
X-Gm-Message-State: AOJu0YyvVEJcZks07hW3R7ZwgRfCXcnxLUy1epvt31cp7GQcKS6BDFYi
	euVmQmeoAC9ONj74nVI52Dejkv24uxxgIJ75uaSFRazuEVYb4nRoh+D6kIdFt2GfkuE=
X-Gm-Gg: AY/fxX611iK4ZuE//kuUvmhqS4SpRahM0CP/Y8EQvHPuzy/imTlZUMIBlBFI0xmhNI/
	q0OgGUIeRlLkxH5PpE2GB0spDZgKOYlKIanU8r6FUI84b8cISOSipnFrO5azCR6aDK1DXGaKajz
	GcKqS+Ic6Bdb8+VAqHv47ZtudOUmvaVaXNC0XlPQARC2/OkzPLy1viFQJIVXWLRpv1xz5sIYJz9
	Q9kMHqxXhcgCXL68SCNNPZWLf6+BgFQ/uOSRxWKnYGtHpvFjrOBunSsy2L/f6XSf1DheVGwUmlH
	f9lEJwdZBgtG3MXU2OtdUrKW/pRA3xQLkyvNmWDLERu7RWHUwKoi3tVVJGI3tTflMos3qMER2ip
	Nbnx3ctkgsVcPAoBej9YqxfQaHNLozJAAC87IaRbqoVKrcsXUffkFiWzo77SmGtkSOs5nPyUnYt
	GcsY0SdU7ujPI6un9H2Lik+KFrTxaisoQnEjCR91sdKB8M2HrFCF6rW5d5HnmosZ0=
X-Received: by 2002:a05:600c:138d:b0:475:e067:f23d with SMTP id 5b1f17b1804b1-4801e3432fbmr121695545e9.25.1768813455316;
        Mon, 19 Jan 2026 01:04:15 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:a458:3e86:7822:1c2c? ([2a01:e0a:3d9:2080:a458:3e86:7822:1c2c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801e8d77besm186692035e9.14.2026.01.19.01.04.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 01:04:14 -0800 (PST)
Message-ID: <bde806a2-5c8e-48f9-aded-2a9d811b5627@linaro.org>
Date: Mon, 19 Jan 2026 10:04:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 0/2] NPU and i2c3 + FUSB302 addition for Radxa Zero 2
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Ricardo Pardini <ricardo@pardini.net>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260114-arm64-dts-amlogic-radxa-zero2-additions-v1-0-8b5cdf328fde@pardini.net>
 <176846437964.1204537.11505642254935473121.b4-ty@linaro.org>
 <bf433ef2-0705-4a21-b84b-321d9f68d805@kernel.org>
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
In-Reply-To: <bf433ef2-0705-4a21-b84b-321d9f68d805@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/16/26 17:56, Krzysztof Kozlowski wrote:
> On 15/01/2026 09:06, Neil Armstrong wrote:
>> Hi,
>>
>> On Wed, 14 Jan 2026 23:48:35 +0100, Ricardo Pardini wrote:
>>> This series adds a few things missing from the Radxa Zero 2:
>>>
>>> 1) NPU (etnaviv), just enable the node, similar to what was done for VIM3
>>> 2) i2c3 (also exposed on the 40-pin header) and the FUSB302 at 0x22
>>>
>>>
>>
>> Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.20/arm64-dt)
>>
>> [1/2] arm64: dts: amlogic: Enable the npu node on Radxa Zero 2
>>        https://git.kernel.org/amlogic/c/29deec49146162d06b17739c627d062191e03814
>> [2/2] arm64: dts: amlogic: add the type-c controller on Radxa Zero 2
>>        https://git.kernel.org/amlogic/c/8f5aa8d444d1d200715c36a8f072054a49bfb410
> 
> 
> You went quite fast, but this has warnings. See also Rob's bot response.

I dropped the patch almost immediately

> 
> Best regards,
> Krzysztof


