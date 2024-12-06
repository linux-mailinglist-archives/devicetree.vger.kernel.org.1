Return-Path: <devicetree+bounces-127866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E31C9E68B3
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 09:24:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8DF3D1885F33
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 08:24:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFEE81DEFFE;
	Fri,  6 Dec 2024 08:24:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nnU0ggwa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA1A1DE8AC
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 08:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733473480; cv=none; b=qIT0SwtwCYoZj/2HBkDoFDaUz1UxTWrzZI5fAFVUkyKIE9Cvi90QQG8x/wsBL59Gedpvm4RPNTMQa146opVnBU6Kxja4bzb4iy+xC36UE/xhZ1zgnUSZU3ODteoMKDgTUCwZB3Wd/4lJvdXiuQPpB6v1b+IkzdnEm2EADyXOAOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733473480; c=relaxed/simple;
	bh=0DfccTl8+muE9NKRW7eUwTCbAfH4V8f9Equkc8P+Omc=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=tW6ffQ/fChe3fI9xkuMVYl8DZfgcUwDbqGZOjmsHFW0LLPfUZRFBKym4U0YisNo5+QGDyUj4qSvhj9RIaOrNYDMfnsvIbnQYXcBLo9/BL8GWG773qi/9ZaOzD9Yb80nkha9TThcoPCvIrf3IOU5CEl6X60AMmeoH0oN/3AxawX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nnU0ggwa; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-434a736518eso19804295e9.1
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 00:24:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733473477; x=1734078277; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3qKpnQEPCYEg1K2kdUeTts4GQ1nxeAB2oRRpHpctvpQ=;
        b=nnU0ggwaUiz+ewJ1ImopObRPdFA/2226PNs6Y5atzt2EOlS00f+7UUAmPuWKvYA8mN
         NSHYKmcfhXZFPdVuK8URgoZQLvHpH75CYBG0q6TTu/zrg9DFf2F1M7fxPt+67ZQTeqjw
         BV2HKzR4TtBRMxDyoq+9fQh/csgIGAOce+ptb3mFvNzvZrQ/rnO5vdd0TxLhiquL4lMb
         +pMSilTd8Im1xtm8V3I5GBp5FDLs/LozFV0CiLnYEgVn9LTR1JDIBVAPzqgvz3XzMvoM
         wUgKaoxTGt9U1HSgoqrlWBBUCKn7+dP2f/ARD+vugOuNkpICo307/8GicRxTdsaJnBqB
         TB2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733473477; x=1734078277;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3qKpnQEPCYEg1K2kdUeTts4GQ1nxeAB2oRRpHpctvpQ=;
        b=Z59FeZfrYYXd1tvBpbwEc4EZE+A7PifzVJb6rcyQPV0IeDFXNH0+Oh1GPArjsMvJdr
         euZnWshf5qeuz1yBrRh2BBnIAYSGm3ycCSvD6K8m3pjlNn1vMsOs2+CrjVH16sFi7fdm
         31g0dxloWLiaD64EA14iJQ1PHlEfxQ5vrczK8fksVsoB5UGY5yMlKgCEn3kGmNxn4Pmk
         qYOmkHDd5Elogz0Jl8iEAYfQLCY5/ijlpLTFB94Gx5nrfwjU92JjbhpA3V54FX4+fGsy
         5yqvUR+F8Mot8Yebn/xZb+Ni5yoezLHHzl51UsuewuWUGsGOhnbklUNEC2wJs3sLbvQB
         1l3A==
X-Forwarded-Encrypted: i=1; AJvYcCULfndheX8EenQN/ZuUY9r42FWg5JOuzempE+F2BeUOawnl7qREIYNbDpq6A2JDj2TU5HhcyAFgdk1j@vger.kernel.org
X-Gm-Message-State: AOJu0YwRyzqzknV3OEWAbAGvTPKbWf6jRvz47wNKZDGKe1+5sP3665Ua
	XgMJKU7pxjjFj/lahWNtJO5ArhtjZcQdhbMDZZasb4b9xTu6PRAAOrn4oYDhU6s=
X-Gm-Gg: ASbGncsxVUXebnCZEZOc4I+xmVTdnP5pVMFX9fKzCcFzj/bHDXzNH5itqj/9wB/r5yq
	7PBuHtQ2bYoxrBcm8blGL3t7heycFkgdHdU17E0uqYi7vvExMu7E6i5BDiy+/5xvdk/xmfK3MYb
	HlujIBnvGPm9k56avnK3logFgMVsEsVbyoWH1UF6YYtsNZ5YQNWIqta6y0sIkpaA5EM2xs+PaoR
	xmVQr+HDZH62wyAOPFnZwVRvvNSiIEiUT5BJ1XA8S+ppTQhAGApOyOArmVFXZRL9QOPtCrlu9N4
	gTFSCbTiAFDGIh8tBhalvbZ75WI=
X-Google-Smtp-Source: AGHT+IGoVfHhH1X8yNIx34c7jm06JgC6wOFXWJHE8vrzAkTfBDx2e+2GtimjAR+VU4ZfqtL6fc4L3A==
X-Received: by 2002:a05:600c:3aca:b0:434:9ec0:9e4e with SMTP id 5b1f17b1804b1-434ddee2a6bmr20329645e9.30.1733473477411;
        Fri, 06 Dec 2024 00:24:37 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:94d0:55af:a150:5d08? ([2a01:e0a:982:cbb0:94d0:55af:a150:5d08])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434da1133cesm51065155e9.34.2024.12.06.00.24.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2024 00:24:36 -0800 (PST)
Message-ID: <5d1ba835-354b-48d3-83fa-a3e70992e57e@linaro.org>
Date: Fri, 6 Dec 2024 09:24:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] dt-bindings: input: convert dlg,da7280.txt to dt-schema
To: Conor Dooley <conor@kernel.org>
Cc: Support Opensource <support.opensource@diasemi.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Roy Im <roy.im.opensource@diasemi.com>,
 linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241204-topic-misc-da7280-convert-v1-1-0f89971beca9@linaro.org>
 <20241204-duplicity-throwing-42a3faca5199@spud>
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
In-Reply-To: <20241204-duplicity-throwing-42a3faca5199@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Conor,

On 04/12/2024 18:55, Conor Dooley wrote:
> On Wed, Dec 04, 2024 at 11:54:35AM +0100, Neil Armstrong wrote:
> 
>> +  dlg,bemf-sens-enable:
>> +    type: boolean
>> +    description:
>> +      Enable for internal loop computations
>> +
>> +  dlg,freq-track-enable:
>> +    type: boolean
>> +    description:
>> +      Enable for resonant frequency tracking
>> +
>> +  dlg,acc-enable:
>> +    type: boolean
>> +    description:
>> +      Enable for active acceleration
>> +
>> +  dlg,rapid-stop-enable:
>> +    type: boolean
>> +    description:
>> +      Enable for rapid stop
>> +
>> +  dlg,amp-pid-enable:
>> +    type: boolean
> 
> Shouldn't these ones be "flag"?

Yes, I'll switch to it

> 
>> +    description:
>> +      Enable for the amplitude PID
>> +
>> +  dlg,mem-array:
>> +    $ref: /schemas/types.yaml#/definitions/uint8-array
>> +    minItems: 100
>> +    description:
>> +      Customized waveform memory (patterns) data downloaded to the device during initialization
>> +
>> +required:
>> +  - compatible
> 
> Is this right? The text binding has: compatible, reg, interrupt-parent,
> and a handful of vendor properties required. I don't see a mention for
> the drop in the commit message.

Damn I focused on all the other parts and forgot about the required...

Thanks,
Will fix this in v2.

Neil

> 
> Cheers,
> Conor.
> 
> 


