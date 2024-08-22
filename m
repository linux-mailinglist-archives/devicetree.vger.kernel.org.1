Return-Path: <devicetree+bounces-95742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4764295B018
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 10:23:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C998F1F218E0
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 08:23:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54EAB17084F;
	Thu, 22 Aug 2024 08:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H718hXfk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A3601802E
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 08:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724315023; cv=none; b=MBwiZPBytudVpidbaopQJ2yjoc/C+hEI690Hs6NeuvqBoVySyKpfEDMWvfRO37vGL16oohBKgKEKQKBpHGGtHqkgNUdAvjJXB8ZrbnkW/wRSdLRbeUVUXVLliO0qdsr4mQvepBrQoU0rWx0LaizK3vYvBKiWpwG49In4K4yJvNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724315023; c=relaxed/simple;
	bh=9dfFOXfvFI91sf4FG5hRFH8m4hgSQtFFAAVqsz4cyeU=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=mVcGoftQql3jkLiiwRmlHufciETnkrKsVaPFEWZdPSZKr6FuJEo3nI2vW+3uCMwRCcwB80rc4z5or+RcGwfW1Rz7Ax9fSIP0JHGIlJ6C/2uS9ZcigsexEcr4+YayjgLqrUd8N/W0UX9O3s5u/308SV1e/+zXedF6jPoLyvOyNkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H718hXfk; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3718b5e9c4fso211111f8f.0
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 01:23:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724315020; x=1724919820; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hm8vzd887oqGFzqEf2cTeZxCy6SkvbO/ScnKSE37Sz0=;
        b=H718hXfkxCoBDQfKL+byFrpuwqGZ/Zdn4ZETEmtyks/yVS5q+Eb1+uTyqpD/cy1wn3
         y+jp0XLVH63xNgNvIfxARpUFg1F4Xi2coHTc/kWEnzAgG34b5a1JjTB5/zWuka8AHvJx
         MwmlMj5YG9Q4UEmEcZ7uNAcY/hZYxlbq6K6aVg13WrWJrGvVV8jHtORMv9oDlrR34XpY
         LSMW3Ql9BRbYFOV/ZYHZmabQqJY750IRfejIIffFkoQQjOVPW8kBcUGDHhMeetOj5iPr
         648S1T28TFv4WHMjeUpCooSRvjohgGyyhY5WhQKDKNOSo0zIQxRWqhjb30G7T3doibNR
         3PCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724315020; x=1724919820;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hm8vzd887oqGFzqEf2cTeZxCy6SkvbO/ScnKSE37Sz0=;
        b=OO03hxXBgq0CaGJ8RsBbj60ZEh6zsar0kQ3CCBVVsC3dfKMNj5z3bR/I9m3GrS+HFN
         8oUf1+87lLbApOjpmg+sKpE0rIrlyXyJi30S4nEUOQVt5r0scAYdn5aCekNDMoKi35HA
         U5elKJvHhVO+iN7U11W8BGw4WqCwUzDtLhBI3iV3jteBdaRZWr/rG/udEVqaCv7IQV64
         t7cLYjtslk/amO4eH/5eLMGCYkMvUYDZY1xN+f83SM23eISjRVkvAjsib+S6njNiDVSa
         +UR+p6HDMKD9yARKw1M/Qecc+G5fARvKDUzV7Sy167ORjaRyMqr5PnhjfXZ/dHwUMQsw
         +gHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXAGi67dlW44qe+SZc9xWL4m2VR/qLZ4ReZXkYMxFhwWyNet18jYHqgpaFwD0PnDqUALF0G0Omcc0N6@vger.kernel.org
X-Gm-Message-State: AOJu0YzAHa5K7eVHm4+sI9qzADO4Y1W4pgZOxd7PqFcRiLx9FPl1x8XM
	HEt3bKR+UPD/FIxRY/b2mm5euRXsoIJ5WZMra3KxN6drm5x827Ef24xxR16LCFg=
X-Google-Smtp-Source: AGHT+IGfMkFqr8dd4SFMyP7YuztiueUF/9X0hfxHnIitOQYxglVZkOJ1xKPs6TAabZG06kZjnigDoQ==
X-Received: by 2002:adf:fd51:0:b0:371:6fc7:d9d9 with SMTP id ffacd0b85a97d-372fd599635mr3318592f8f.23.1724315019168;
        Thu, 22 Aug 2024 01:23:39 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:f06:7793:d95e:24b? ([2a01:e0a:982:cbb0:f06:7793:d95e:24b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3730815b7e3sm1061406f8f.53.2024.08.22.01.23.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Aug 2024 01:23:38 -0700 (PDT)
Message-ID: <eacafb4c-ace9-429a-9359-1e2e602e5d7e@linaro.org>
Date: Thu, 22 Aug 2024 10:23:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: amlogic: add support for Radxa
 ZERO 2 Pro
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org,
 linux-amlogic@lists.infradead.org
References: <20240712215111.687478-1-naoki@radxa.com>
 <172416784208.3050902.355272849812987526.b4-ty@linaro.org>
 <0D8F14444C69EB08+cfb9ef39-4243-4dd6-859f-98ca34e00e98@radxa.com>
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
In-Reply-To: <0D8F14444C69EB08+cfb9ef39-4243-4dd6-859f-98ca34e00e98@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 22/08/2024 05:11, FUKAUMI Naoki wrote:
> Hi,
> 
> I'm sorry, could you drop these patches from amlogic/linux.git?
> 
> I changed my mind that adding new dts just for renaming product is wrong.

Ack, will drop the patches.

Neil

> 
> Best regards,
> 
> -- 
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
> 
> On 8/21/24 00:30, Neil Armstrong wrote:
>> Hi,
>>
>> On Sat, 13 Jul 2024 06:51:10 +0900, FUKAUMI Naoki wrote:
>>> Radxa ZERO 2 Pro is a ultra tiny high performance SBC[1] using the
>>> Amlogic A311D chip.
>>>
>>> [1] https://radxa.com/products/zeros/zero2pro
>>>
>>>
>>
>> Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.12/arm64-dt)
>>
>> [1/2] dt-bindings: arm: amlogic: add support for Radxa ZERO 2 Pro
>>        https://git.kernel.org/amlogic/c/8f97ee0c9f5c6fc250847d7492875a6d7152ba68
>> [2/2] arm64: dts: amlogic: add support for Radxa ZERO 2 Pro
>>        https://git.kernel.org/amlogic/c/69591796c5d585816a306134f6d565cf19da575e
>>
>> These changes has been applied on the intermediate git tree [1].
>>
>> The v6.12/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
>> for inclusion in their intermediate git branches in order to be sent to Linus during
>> the next merge window, or sooner if it's a set of fixes.
>>
>> In the cases of fixes, those will be merged in the current release candidate
>> kernel and as soon they appear on the Linux master branch they will be
>> backported to the previous Stable and Long-Stable kernels [2].
>>
>> The intermediate git branches are merged daily in the linux-next tree [3],
>> people are encouraged testing these pre-release kernels and report issues on the
>> relevant mailing-lists.
>>
>> If problems are discovered on those changes, please submit a signed-off-by revert
>> patch followed by a corrective changeset.
>>
>> [1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
>> [2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
>> [3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>>


