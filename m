Return-Path: <devicetree+bounces-41194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D82852B87
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 09:44:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5ACE3B23287
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 08:44:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EADD41AAD7;
	Tue, 13 Feb 2024 08:44:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HsdrKnPd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DD01AAD0
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 08:44:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707813878; cv=none; b=tfaMOtOSJmr7itlop6LAYQkhPU9cPY2qxnfKOuqZ7F7cGu2m8Z5kANQTKmgtmnVrdHbl2X2YovW4jnbDZlcw3NDaa6vCOpKBw6vGFqMB8T3QggSt5VntPDtAsZ6GB+IDWhXVG9RbO0Z3XihT2l9dFvB865HDbdnfMtVU+r41iRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707813878; c=relaxed/simple;
	bh=6jUyUHp896h1ici1zR1mweJhhQrjymvdmz/rvwqz7HA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=IC8a3Nz6qu5MD0Z6X4d7BsPF/cymJoONTn2PMrKnw33AAF0I8pNn9r50L6nAfmTk2W6gdLA+rl54i1QseHTJgbqKIpo8EOqBlRk7CMcmh7/8xDbz6fo9qRTyzGwWwEvYAzkboaNKReANaFzFOdbSZ3u69jaduP1ctjbpnw3yN08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HsdrKnPd; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-33b1d7f736bso451196f8f.3
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 00:44:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707813875; x=1708418675; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rMCxHZt+OW+R7teelRvBTuyGlS2wgoQLLpCjKszsBeY=;
        b=HsdrKnPdJVy8AQ5kLOm+KhtAsbMw1vCFDiSPEwSYrIgDviM/V7XVRyNCVZ/Q/vKvPE
         38+AySz+ZGW9GcALSl9cezN7679GUNqLKi8y4MJ1hhgDdZ3ZFSracs72zfwgb0LxIoU+
         Ca7CkBCMs9pl5HkmaDJG9RzlZ0fMmBnypPz0DDhJKUKWm8PVBpUoeTKWLkgWhVFkrP4U
         aSRuQwNYjQgq8ul/2zcRIM8jRKy0tr2xjz4AbfPzynW8xJRBO70ERXvGa3hX5Uzk1agl
         Bm6YnQRLFaTULDGXdFWlx5zUUmuBkdYprVCbptFHOSfJPvoMtTEfV9/c7Y8dhEm60Nig
         XCiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707813875; x=1708418675;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rMCxHZt+OW+R7teelRvBTuyGlS2wgoQLLpCjKszsBeY=;
        b=D8Rj/aSVyL8w9kpVaL1f/IU/xlls7KcKx1g83lzIlbLZTdfOoiOiW8JlAXwqArtI2D
         qI8RZQinX+bJpebbbv68a9W82bi2OBnwH69P9JmVrc806v6ZMnXuWkwI86dY5SyUuInY
         vHTM0mWCcSyztG8pjPXjDO7mwE9muDJzcoAPKt2czvrTZKHQ9M20PB5uDasTmkDuK0A7
         /Jw7MhpbZQMlRksZ/tHG5S1WvWlEAfvgrWrUuwnLVUm+9h+MZyIw9HxPDB1aPW9iICFT
         oX1NBNeuief2HtAJGWVDzZ2OKDGflYLvCnhqg9WQ9cdZfKLmEKCslqf49FgzdQmY2gZr
         u5yg==
X-Forwarded-Encrypted: i=1; AJvYcCUG2wfUl/gXaSSPckWqI60xAGyjba7jpH0j9LkuV2HMyq6jK0AE+JiSWcc8oo+t15o5NSkArZOaMFpdAgVWCwAxiROMvukJ45muVg==
X-Gm-Message-State: AOJu0Yyc3L+5DvoF7kU+3cqE21zTNj8lhO247SvBJDHe1mp8XUTc4sSc
	WRBUZPbX3uGBKwY1d7KRrjwNJEf3yp3MWk2J8ZvtgR4q10BaBm7VPB+rnbR/gyY=
X-Google-Smtp-Source: AGHT+IEmlWnzKJ+yxoUoGbwMK1UjDJK+Qf1UAbW+JpoFoXwJN9oBbQp+3Aq/Uh3IlEtzIf/tZlzqgQ==
X-Received: by 2002:a5d:60d0:0:b0:33b:8260:ecbf with SMTP id x16-20020a5d60d0000000b0033b8260ecbfmr3523747wrt.14.1707813875446;
        Tue, 13 Feb 2024 00:44:35 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVnzpUCkVtT4CZJSNIhrw6763LItTjdEaTSyWVPrBlNAzul/X8PhQG52V5MCSDiEt0jZR4Md7O1gNRakXOBih7GqsLBGJf1Z9T5+sAk0iZptH7PCDNuYMErRECM+NCS/i4s5udwEtf+HPAlLa2HmuBFXkOG26bhh78CeOdBmO9nma8k8WReHT5xvUb25Q59/FOmdvK4YGRjHt3smY/Fezet6RJpRmCw1Q+bfzIPhmCFH9+fxc46dI9kzS1T/TTCtQ3m8wA9bWVWPOUAWt+8xkeT4rhe29NBpEITeNbp3HOKMS9RqCb9tTSwKmadEFc11z9aXi0SDeZfJHNgcQ==
Received: from ?IPV6:2a01:e0a:982:cbb0:6dfb:5e62:c51f:304b? ([2a01:e0a:982:cbb0:6dfb:5e62:c51f:304b])
        by smtp.gmail.com with ESMTPSA id n16-20020a5d67d0000000b0033af26545c8sm8899462wrw.50.2024.02.13.00.44.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 00:44:35 -0800 (PST)
Message-ID: <fb26c6cc-53d8-40c3-9248-d41f7598e2e8@linaro.org>
Date: Tue, 13 Feb 2024 09:44:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 0/4] Add support for Freebox fbx8am boards
Content-Language: en-US, fr
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Marc Gonzalez <mgonzalez@freebox.fr>, AML
 <linux-amlogic@lists.infradead.org>, DT <devicetree@vger.kernel.org>
Cc: Kevin Hilman <khilman@baylibre.com>, Jerome Brunet
 <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <77edaf7e-aeb5-4fc0-8b69-85dcddfd5a58@freebox.fr>
 <64f65168-c7b0-4365-8d0a-e57b47797d95@linaro.org>
 <6274df9e-bda6-44b8-aa7e-e4bba5c7c96a@linaro.org>
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
In-Reply-To: <6274df9e-bda6-44b8-aa7e-e4bba5c7c96a@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 13/02/2024 09:41, Krzysztof Kozlowski wrote:
> On 13/02/2024 09:38, Neil Armstrong wrote:
>> Hi Marc,
>>
>> On 12/02/2024 18:47, Marc Gonzalez wrote:
>>> Add support for Freebox fbx8am boards
>>>
>>> Marc Gonzalez (4):
>>>     dt-bindings: vendor-prefixes: add freebox
>>>     dt-bindings: arm: amlogic: add fbx8am binding
>>>     arm64: dts: amlogic: add fbx8am board
>>>     arm64: dts: amlogic: add fbx8am DT overlays
>>>
>>>    Documentation/devicetree/bindings/arm/amlogic.yaml         |   1 +
>>>    Documentation/devicetree/bindings/vendor-prefixes.yaml     |   2 +
>>
>> This change doesn't apply on top of either v6.8-rc1 or linux-next, could you rebase on v6.8-rc1 ?
> 
> Please don't apply, I have doubts bindings were ever tested.

I need the patches to apply to be able to check them!

Neil

> 
> Best regards,
> Krzysztof
> 


