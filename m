Return-Path: <devicetree+bounces-154436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5CAA50170
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 15:08:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B64A93AA39E
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 14:07:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE4BC24EA91;
	Wed,  5 Mar 2025 14:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qjzluVUz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C796724CEFA
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 14:06:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741183586; cv=none; b=cyg6lgXvk9rQtEmNmnUJpNDZj/Q6VeAa5BcnxkpQvEmKNaqlpohP5zEpxDjno4hI9AbsZUvNTVVurYR6r06PhIisqVCNnDTr6VZ2RoNjyrU6RFkrTX0FHEtCDmsNNl1le16ZgeTCM0gxDsPFwFiBfk0lQst2h2qCJfmaSGDhFVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741183586; c=relaxed/simple;
	bh=DzcsKPwhLdad+i452eKpUALOxdjKLGxoLOmTo5nt9Is=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=LDEpLAQxDgYnhbtI7U1V+NQhlWzCF4+K1tj/+c1Ix81eBhi7m8FLyh8M19LR4mTlqnF0kQMV5AU579Li7Us5FK83fkXUBboAqOKLqiqidB71NBNvI9Bzbr18QIrry16ZxlrQa+dIdTHktnVUpqpBBBwOPoudmAv3e3e90s/M5J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qjzluVUz; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43bccfa7b89so14697775e9.2
        for <devicetree@vger.kernel.org>; Wed, 05 Mar 2025 06:06:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741183583; x=1741788383; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=11RIqpJbRMk0CP7kEnER3o/kKEhmLuNrxSq821K075U=;
        b=qjzluVUz4I/vCqvMyPmgtk1DOtrXeXTsV5wWHbX56kBqQ3a6k42aIe3rF7LQ2mV6MV
         IS0CAUVTBiBu5kiAN1LvUq/WSgitI5V5pnTP9jCozSdrUsIBlyApmQl8v0gtyYL++fmp
         NfKW6L0cIquuzoJFDFhTeZPh8ewEjKuc2zC0WcuUw6d9sSO/5/9rWSS9DlUda4tfcFt9
         EBNY+xUgBDItftR5/858MlA7VJ0ySdqEDQYx1yQn3FqVKGaPFVG3S+b3rsf0UyoUxvAp
         4KOYxBwxLWoirNObZGBO7Q3Ju5+IbTTNLg67nRqVCxeYde8CyutOXy4QMT3vBKPVa3Mf
         y7qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741183583; x=1741788383;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=11RIqpJbRMk0CP7kEnER3o/kKEhmLuNrxSq821K075U=;
        b=ashb+B8nkumbxM3JXgN07RYArUBflyB93WoDs6R9gfbL07dwh0YL/RFafNUUGqLxqf
         zdCatW8oNkzChrUOQoboatS27Y4QWx5OPdeJArY/pnsoceoOTrc8WnNWIM0I7bU0mLbm
         xS2XhakyJbSX//wbnBGwulirgxMxKku7PGMSis9wmHQL4UOUIYpCKs1qLeSygF3QpenG
         N6BTGeB0A3/VdAvbC8FKNfBCz9rQmLUX+CtQSyRPJsFC6HdU7tCAvIkv8agsTtFJK7Pl
         hiiDESKY8aKZSWMCJiMBxXba+jMOVKT5SJnGObO4MPi/z3AFsEZtClwZ2G/Ml6LHAnPK
         /HaA==
X-Forwarded-Encrypted: i=1; AJvYcCVDzMnWkaP/VRY3cA4cB9pDkmnTX4ejEADTyes0baKO9QctrbdWU9zhdZPVh4llWLgUEf+aw062a9WN@vger.kernel.org
X-Gm-Message-State: AOJu0YzzDhqfN/uzjk71HSMwLZV8uFX/nG52PjvyRRKXyy/ZTI2EaSEz
	tX/yVyw7V6/1ki+ZIHVi7nLSb/JAgWFLr/XiXd9P3pACJLlyAVwrB/wEeHLehGk=
X-Gm-Gg: ASbGncvYdpkaGq3pgI2ya8WLgE4tiFq6dK7fzHtYMoT4hWwXz/lLzQZOTXoy/DXeOe1
	xPLq0t5M68hYAeeBCcM0SfOJ3UI8UB+Yd7xEnUTJASs4EuMB88k630Iq0lq0VTSwCMRg+sWyO2k
	LWHpGHWiSVIRZO0VsrR+g2P1ja0NatXObuhl9oGmuuYABXyHhSGkKSQhyiAzMV290TC6e7mq2ve
	vK3D+sQqQTrl7FlQjrjX9TDCwSx2P2OlKijGlZTPi+/PWL7qe3VH6oO2wIZkuUTRWrHiJ0QKFGF
	20qQ9PZbvIYiIX4x2fO6nlG2LIKp9kU4SJwz07B2P187y4MT/u3z7KINaE1S8wVoPjlQJHKJHZ0
	GSk2vf+dV2FbzXx3GYST2rg==
X-Google-Smtp-Source: AGHT+IGw9gdZ+AWcZBF3A5Ecs3XaYdWNI4WSu4gKkjkQYxmSQUUfbmDB8IcIt65GvIVbdvbiREsQiQ==
X-Received: by 2002:a5d:64a6:0:b0:391:c3a:b8ae with SMTP id ffacd0b85a97d-3911f74dac3mr3468091f8f.23.1741183582872;
        Wed, 05 Mar 2025 06:06:22 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:d001:4ab2:d11a:658b? ([2a01:e0a:982:cbb0:d001:4ab2:d11a:658b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39121d7d866sm2079199f8f.39.2025.03.05.06.06.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Mar 2025 06:06:22 -0800 (PST)
Message-ID: <18f9658f-f2ca-4fd9-809c-ec4d198072be@linaro.org>
Date: Wed, 5 Mar 2025 15:06:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v8 0/5] Driver for pre-DCP apple display controller.
To: Alyssa Rosenzweig <alyssa@rosenzweig.io>, Hector Martin
 <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jessica Zhang
 <quic_jesszhan@quicinc.com>, asahi@lists.linux.dev,
 Janne Grunau <j@jannau.net>, Sasha Finkelstein <fnkl.kernel@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alyssa Ross <hi@alyssa.is>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Neal Gompa <neal@gompa.dev>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Nick Chan <towinchenmi@gmail.com>
References: <20250224-adpdrm-v8-0-cccf96710f0f@gmail.com>
 <174118223158.156873.6982508045942987984.b4-ty@rosenzweig.io>
 <Z8hZKW_F-HtzYm-w@blossom>
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
In-Reply-To: <Z8hZKW_F-HtzYm-w@blossom>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 05/03/2025 15:01, Alyssa Rosenzweig wrote:
> Er... I only applied 1, 2, and 5. Patch 3 was already merged, and patch
> 4 is going in via arm soc. I am, new to b4, sorry!

Yeah it's because you applied the whole patchset, and discarded/skipped
patch 3 & 4 afterwards, so b4 gets confused.

Next time specify which patch you want to apply with -P 1,2,5
and b4 with know which patch you applied and generate a good ty patch.

Neil

> 
> Le Wed, Mar 05, 2025 at 08:43:51AM -0500, Alyssa Rosenzweig a écrit :
>>
>> On Mon, 24 Feb 2025 12:02:15 +0100, Sasha Finkelstein wrote:
>>> This patch series adds support for a secondary display controller
>>> present on Apple M1/M2 chips and used to drive the display of the
>>> "touchbar" touch panel present on those.
>>>
>>>
>>
>> Applied, thanks!
>>
>> [1/5] dt-bindings: display: Add Apple pre-DCP display controller
>>        commit: 7a108b930a84e71be71c3370eef6dd96fbb8f618
>> [2/5] drm: adp: Add Apple Display Pipe driver
>>        commit: 332122eba628d537a1b7b96b976079753fd03039
>> [3/5] drm: panel: Add a panel driver for the Summit display
>>        (no commit info)
>> [4/5] arm64: dts: apple: Add touchbar screen nodes
>>        (no commit info)
>> [5/5] MAINTAINERS: Add entries for touchbar display driver
>>        commit: 4d2a877cc0efefa815648f1ed5f5b2b796f55bab
>>
>> Best regards,
>> -- 
>> Alyssa Rosenzweig <alyssa@rosenzweig.io>
>>
>>


