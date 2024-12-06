Return-Path: <devicetree+bounces-128081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0014E9E766D
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 17:52:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C94A41613E2
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 16:52:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79A831F3D5A;
	Fri,  6 Dec 2024 16:52:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NHRLEhqV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63BCF1F3D26
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 16:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733503952; cv=none; b=q7ugyY81in/XQ7VYGIKrlqVrkumHgOof7jNL7lsfwRbgRqGLOxuXR/kLRym9WAfpnhOKIlLnlh8/2TDjOdPdwqPtZl9/w2UpNZyGHp7ELXc4QzlCVXmAw+z6rVGCwLE3VB3swk84IbgJvUVBMnjYx/E/cR/vF+r2n6299F4TwRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733503952; c=relaxed/simple;
	bh=yAMOCTtfKBR1xvtHZ4w6iznMAdaN+k7exqvp0pmIalo=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=g5bxm96/HJDGVVgPSjYi93kwxYyH8vomT7Wwqvo66bau0nhIexZk35WAGpxj8tyTn4AH7KXduj0wQofoJpc4OdDr9IkWThw5/D0Rg4E8gupsK+3LuYelhUBF6NcbaapdRzKemCoDBIv1ebI+o9tW0ZOPnb+xtlfOPRDsAS3ogjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NHRLEhqV; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-385e35912f1so1702340f8f.3
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 08:52:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733503948; x=1734108748; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j7Sv1Jqh7zTBlqjDNN9a9K2cVpY6bSy1WoOPhoFdZ/8=;
        b=NHRLEhqV/GleakPPyHVf9cIh4e7hzGRpnWxs4aFZDS3Sflcz3IiztMuTJ3ga/EcYe6
         IzSeQi6PY1mDaWmhlynSih/DJFeHSs90z2BBkSMX/qejmZTjJyzAHg6GUn9G3aGYb4YL
         vpuqXrGtrHd8nlNY7umKJbYqYwYaD1lVnpXmiU0ZyyjFj84Iao63UBF8UEhlxneqC0Gj
         slIMauEMQigKQAm9zsfufqsK3MN4EeG+RacOaYGGUf3rqneV3smpjgaC4rJFATEy3W1a
         OAuSChhS0q5Ys6GjFCpMb7jSnvBC43jDl/MGeAd8+09zZRThtsxEzR/6oOta/sp9tzky
         WjZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733503948; x=1734108748;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=j7Sv1Jqh7zTBlqjDNN9a9K2cVpY6bSy1WoOPhoFdZ/8=;
        b=D6UWW2FsOyywjL3aWqfF2waZEDYGmqb0+AuPilSXrE3CAW8Lku0+GIDxMOMoXShvkP
         l7YmDGrzdAsbVP5aDsFVvEMpOeDOpviRLmMw7OLFUTuvCksm7sjpWno/UtuwbI7/6F2I
         p/5gqgmd7vF3dKdemXga/DQ5wBhfBlTEyRpreiTjA8lS2OYPYoH1ZbPRFfa9VLyQOzk1
         vbiJYBTuME3dupCrdxrqoufvn96J4dP5PEiiJ7JK6075LlMVu6/kLzIN0fEAmPjhwF4V
         ymSju3i2AtMIlMagEx29NgeZxg83/s2Jnqu1SUa2E58nGzpyUKpaFhu2luiB2tG3T3GX
         B44A==
X-Forwarded-Encrypted: i=1; AJvYcCUWMSBF162QExZXFQAXE95TJ32kvDMSeo340ez7F9uyvxzVSPh8HCQfbQDEgegWhmw14nNSg6dP99fu@vger.kernel.org
X-Gm-Message-State: AOJu0YziUq78pQrRMZC6YQHzCwWduCByFUp5CpguJk09IiKv7SWAzRYW
	lsFVCVrRKJT52eMBBKS9RhtIBw/Yp216SVCENDNbJmquEgCZSCVMhFULqHnmN6E=
X-Gm-Gg: ASbGnct8zstrGaFhZ7y2hB2ovdoR3pP9/1kOvVxn2fgcthoS82wHlKM6m7znLU57efl
	xFzWWIYMOfUHRkwrSQ4Nf8ZtGl6lnxLQWcsTYuWxkjfKlThmEVeZacoYv+u+HLUVWq9+hfm9UvT
	dxAtFSHvyRutdZYmyBbTg6EDDAoXv4iK3TRgw0Z28631mtx2OquIQvAdFxE0M00I1nsXUQpPUJM
	DytRM4YEp5hBJE3PoR4nzeXKbFMbje1IMVNbtki7FmWjFVQJXNR1Y/kNBBWfrXJBcciGaHhXRzI
	nxcVyrILOmwCfqmvwPtALPwMQBI=
X-Google-Smtp-Source: AGHT+IEpuAggsOGIXI1rgUeufB8yjqIupvc0/m5rTrqrHMzgUTcX0K6GB4Q4IP3Kcz7SjdDzKA290g==
X-Received: by 2002:a5d:64c5:0:b0:385:fabf:13ca with SMTP id ffacd0b85a97d-3862b37b4fdmr3001664f8f.32.1733503947355;
        Fri, 06 Dec 2024 08:52:27 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:bf3a:f04c:5b99:c889? ([2a01:e0a:982:cbb0:bf3a:f04c:5b99:c889])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3862f0e6ea2sm1208631f8f.79.2024.12.06.08.52.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2024 08:52:26 -0800 (PST)
Message-ID: <b74d6b83-1d8a-4b08-b328-d4da11eaddaf@linaro.org>
Date: Fri, 6 Dec 2024 17:52:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2] dt-bindings: input: convert dlg,da7280.txt to
 dt-schema
To: Conor Dooley <conor@kernel.org>
Cc: Support Opensource <support.opensource@diasemi.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Roy Im <roy.im.opensource@diasemi.com>,
 linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241206-topic-misc-da7280-convert-v2-1-1c3539f75604@linaro.org>
 <20241206-charity-recital-f833c55756e6@spud>
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
In-Reply-To: <20241206-charity-recital-f833c55756e6@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/12/2024 17:51, Conor Dooley wrote:
> On Fri, Dec 06, 2024 at 10:59:52AM +0100, Neil Armstrong wrote:
>> Convert the Dialog Semiconductor DA7280 Low Power High-Definition
>> Haptic Driver bindings to dt-schema.
>>
>> Due to the implementation and usage in DT the array must be
>> an uint32 array.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>> Changes in v2:
>> - Switched to flag instead of boolean
>> - Switched the array to unit32_t, because this is how it was defined in the txt, DT and driver
>> - Link to v1: https://lore.kernel.org/r/20241204-topic-misc-da7280-convert-v1-1-0f89971beca9@linaro.org
> 
> - made more properties required

Oops again, yes you're right

Thanks,
Neil

> 
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>


