Return-Path: <devicetree+bounces-43322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 34527859F40
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 10:08:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 666121C2199E
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 09:08:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25C3022EFD;
	Mon, 19 Feb 2024 09:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FvAhyrCs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581A222618
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 09:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708333680; cv=none; b=KbKezMT7ulYEnqxWlP0Orz/8v4SOPwWrVNINu+yLWPKt63wrkh+tiF6BrJ8Krc+6xCGEdavngP4reWnKEOWiB2vaNR6hZ/uRNkb2AC/Mrkvhu00HdyFSXxqz5umJpSvX5uRMhizPi3RCwwFUG0ltJjLS8iYRVPwULvOasXiIz5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708333680; c=relaxed/simple;
	bh=MN/d9m6NvVZz3qrx5VrV7+e/Rv+lGx/upvSq3FIXKr8=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=e0fdZiWL4VvSpjkBND8ia0xJi/DCWKeZXVShvOz1i7YlPbcXhG5jVLQ9EVZwTC4eNhnGHIHPoiTrJ8IWezPLEC5NktAUbOulM5Ue2ZIa5gcKh69Zp9VoSZLSgkKZVUIEGX+FsZUfs/gD8RXHvNEcszqbphsoxILpVZCxvfVNGYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FvAhyrCs; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4125ea5d913so10304235e9.2
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 01:07:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708333677; x=1708938477; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LjE8Ckzgumm8AZzjDZn5dzYN55ahrIvajl4vX0vSh44=;
        b=FvAhyrCsu4YD5IaECl+n0iOrUtI5+rG1R6SY8tfFwkFjSOkWGRR0P7OyBS7FdA80eF
         cCxFpfwlsS9xecshLEDq8CNgiu2ueNlqd8X2RHiIAXwmJtLYXaO/I6MBcge95f3DLmo9
         20R8eFA1tIBmXo0k5sVIc1IR+YpwU2VVS08cYrTiQJBayNvfyiSHrC19h7oeznzGXD/I
         o9jbgQDFleHZEOt02dqN8rOJeIs6XQONo7XPCMbQjAFGiEdOZPbWPD6J35pN6S2ep/AD
         /MOCgEPHijYPvzW4jwFeRkS9LEyB1KtwHiyjIQxKu0+72ufxYnE9oL2h7aIXjKyJYq2I
         xfkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708333677; x=1708938477;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LjE8Ckzgumm8AZzjDZn5dzYN55ahrIvajl4vX0vSh44=;
        b=uImDh7cm1MwPWfZW8R2PGd9XkxSfsScbMcKKwApoX66Z1NmvJCMFQlM2V5kyOwVnTl
         ZgyAUBynDg4nvD9RX9mNkUYDhUt78pxP9ZDc1/hXTSTdgNDgvS23FvapbHThErkp377R
         uhY93FqGAWnCnAfczPKopgyG7ZOEOMhLID5nKQ2mVrh4fC/GGDNTWlaUBmx19Aqj6XyA
         ++FmRvQegGna0XcOa9kM74ewy0RmtfrMGaN/AQavEkeoJ8/UBPoUBEumB5MF/ojxIcy6
         gk1oJhIF7phW9ypDOBPIBfYn9u/W5B1EiX2oVHgfDVO8l/i6U3OPKbx0miPQUWcJ+y7y
         bRbw==
X-Forwarded-Encrypted: i=1; AJvYcCXDx4hJNAABOB3oFgyVt0d4DsNJkvRvG5S94TGsI4xsu6rek1JiecycY/4Uau+MGbLD3bA7nuBlr4aqXAgaEuOk8zwwyYhh/S5T8A==
X-Gm-Message-State: AOJu0Yx+kA4ab8PtifdFwL7RmqbOsyPErTGloFV2QQ/TiMS4c2zgpmVu
	bmEckFClVxBHw3u+5g4VihPSK7G8fbKTbFhWkVaIANNvw2PwqaSKHHt7eC+oSkk8NByyUUw3npe
	Y61gm1g==
X-Google-Smtp-Source: AGHT+IGprtNRt9sGT/S0OHSwNQRPmRHg6Lr6oEhUZx0+ye2ltVVzao6rnEUESmmyQhMXlSu4kZmUXQ==
X-Received: by 2002:a05:600c:4fc4:b0:411:d822:d81b with SMTP id o4-20020a05600c4fc400b00411d822d81bmr9408955wmq.2.1708333676688;
        Mon, 19 Feb 2024 01:07:56 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:9470:c6e0:c87a:fa9f? ([2a01:e0a:982:cbb0:9470:c6e0:c87a:fa9f])
        by smtp.gmail.com with ESMTPSA id n24-20020a7bcbd8000000b004120c134b40sm10598727wmi.22.2024.02.19.01.07.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Feb 2024 01:07:56 -0800 (PST)
Message-ID: <3f08ae93-0bfb-4378-9b38-6ed1256353e7@linaro.org>
Date: Mon, 19 Feb 2024 10:07:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 0/4] Add support for Freebox fbx8am boards
Content-Language: en-US, fr
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 AML <linux-amlogic@lists.infradead.org>, DT <devicetree@vger.kernel.org>,
 Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Kevin Hilman <khilman@baylibre.com>, Jerome Brunet
 <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <77edaf7e-aeb5-4fc0-8b69-85dcddfd5a58@freebox.fr>
 <170833286959.1749763.5981999865888937241.b4-ty@linaro.org>
 <80806260-ac19-4801-ba05-d4257aca8df0@linaro.org>
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
In-Reply-To: <80806260-ac19-4801-ba05-d4257aca8df0@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 19/02/2024 10:05, Krzysztof Kozlowski wrote:
> On 19/02/2024 09:54, Neil Armstrong wrote:
>> Hi,
>>
>> On Mon, 12 Feb 2024 18:47:33 +0100, Marc Gonzalez wrote:
>>> Add support for Freebox fbx8am boards
>>>
>>> Marc Gonzalez (4):
>>>     dt-bindings: vendor-prefixes: add freebox
>>>     dt-bindings: arm: amlogic: add fbx8am binding
>>>     arm64: dts: amlogic: add fbx8am board
>>>     arm64: dts: amlogic: add fbx8am DT overlays
>>>
>>> [...]
>>
>> Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.9/arm64-dt)
>>
>> [1/4] dt-bindings: vendor-prefixes: add freebox
>>        https://git.kernel.org/amlogic/c/fedeacff9611917231d710382e7ccb518cd440a6
>> [2/4] dt-bindings: arm: amlogic: add fbx8am binding
>>        https://git.kernel.org/amlogic/c/beee431b3257334e450999ebe77636bb18ca87e7
>> [3/4] arm64: dts: amlogic: add fbx8am board
>>        https://git.kernel.org/amlogic/c/acbe5b6b0fb74197ebff06a62abcfec9858c23ae
>> [4/4] arm64: dts: amlogic: add fbx8am DT overlays
>>        https://git.kernel.org/amlogic/c/13636d5502204e671398470962babbfb46bc2721
> 
> Confusing... this was not applied actually, because it was not correct,
> and instead you applied v3. It took me some time to spot this...

I know, b4 ty does strange things sometimes, it sometimes also selects the previous version

Yes I applied v3

Neil

> 
> Best regards,
> Krzysztof
> 


