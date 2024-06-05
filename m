Return-Path: <devicetree+bounces-72687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A26B98FC893
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 12:03:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B6BAC2855EB
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 10:03:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C6FE18FC6F;
	Wed,  5 Jun 2024 10:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F3SNxnHz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74A336CDAB
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 10:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717581785; cv=none; b=rThFeqTHjEMOeKuPSKLYAxtETqrcdgBkTMx1SE179w8YOQi0Y+qByzEOoKYwEV5ReTQU/uBr1foq8OaWjP2emNgBmjU/tUYaajbt4bnX3ZNEb0J4+TLm++z0dmzBX7v6aFgs2auO37O929QDwDkbOCvUwlPcURzgbIzL0Ws9DVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717581785; c=relaxed/simple;
	bh=3dDpTVbhCm308/c71as1RHJxmdY65DTo9O22Qzh6udc=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=txywWH5TuzjybDQFmShohQjOSMc1CdolfFc4/UiPIlLiL5kkBXivJqEvgPEcnaUkcCRv7N2QdsaZZPvPXklVcd/ebaOWRXDxEb3st5G96xhg/lHaeEpiDXg/DvurV3Rv9eEimc5FPXCsB3lvwRQaFZpcAbMCndUDP/SXxQXBZhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F3SNxnHz; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-35dc7d0387cso6895332f8f.1
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 03:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717581782; x=1718186582; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OXWabIB/FOHsZFz4UrPUJcmSheKq3iz/zxxFc47g9nM=;
        b=F3SNxnHz170lmDEGkVKuJQ4cR6yIg0QzXSYL9W1JFU0x45I/EF4Hs71/8/dA48+il8
         5CIIY7NBeIKYqmvemxxqlQSUCukcQ0D+zJNL/RyD/C85PLiLpmEtU4GnSMmaQ9AObyzi
         Ms9KGtXYq2Ba2rbVCro2tb+lo31xZngoW6ch/4stumeBaPYkqmeWlBx8Agr4Kt55tJiE
         hl3hI7P167fKeWaKuIAETxr+o3DWYLRtSlHkXZSVV4yW2uVP5dPJBgVo4teJAgGjHsoH
         sdh4txHSBarf6rO23LLrDO8U1885llwvJzWOJVc5FX63gptbi+oFWsxH77erX5HwCMfS
         TPzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717581782; x=1718186582;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OXWabIB/FOHsZFz4UrPUJcmSheKq3iz/zxxFc47g9nM=;
        b=dRe9Ij8BpFbbqU6dHwH6pFMwBGMr8cpffvVUSPP7BxzKssu3fMkfjd9Qf9OkRxPK4D
         FNAJsRtynJPVAfuD6n3ldszHk6VQjSbWboYUSWSohy/hNjHKn4txPsJ7iERd+cZisSQL
         zTMDX83btCsr28J9IPJV8elQLAH6jQ4/MNQlDwCkRj94RmGGJXtq7v/2xBaUE2BZtBAS
         6ViF/AlZIfV20thLuM1LIhgqvfnkUpo2zfNMk1wjQPBhELr2C0VSMtTu+/eI1c/eTfaf
         rpF3WvlSlZvVLet9oXEZeqLpflHRXRitpAYGsX8PhvvdpyXVkp5kgXtCsqdUTtvvy09o
         kxpA==
X-Forwarded-Encrypted: i=1; AJvYcCWX3ON8Haq7KJ+zv8vNVlVZZeM1SOrhUTIbgOEWdwyJHhtyWSMU/ByDKNUHAXPJuzwWLVykIp2h9VSTAz/IGlUVMyW0Ps1kKDMigw==
X-Gm-Message-State: AOJu0YxrBoTouWQ4Kcpi74bBay4vBtc6WJMffI2+ZFsqDc8Qac6OJXDs
	aC7XFu64MlNx/k0Ki/JdDbwCBPowkFsRRbpBRtSAE3LxkavWU5aj0ZcA71/giVI=
X-Google-Smtp-Source: AGHT+IGtZQZ3/qNpQsmaSHuByn54XvWNAOr9Ii40f2Pi9PuJB4m5TEBP2BbHKGEJH5ZqXFVyC/Pqzw==
X-Received: by 2002:a5d:5f46:0:b0:354:de28:9eb3 with SMTP id ffacd0b85a97d-35eeb7d0f57mr1171323f8f.0.1717581781675;
        Wed, 05 Jun 2024 03:03:01 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:c7ce:7756:462d:a8bd? ([2a01:e0a:982:cbb0:c7ce:7756:462d:a8bd])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35dd04c0d3csm14048750f8f.19.2024.06.05.03.03.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jun 2024 03:03:00 -0700 (PDT)
Message-ID: <c51b1d72-7dc7-4012-b479-1ebecb25dd6b@linaro.org>
Date: Wed, 5 Jun 2024 12:03:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 0/3] Power: A4: add power domain driver
To: Ulf Hansson <ulf.hansson@linaro.org>, xianwei.zhao@amlogic.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20240529-a4_secpowerdomain-v2-0-47502fc0eaf3@amlogic.com>
 <CAPDyKFo-V4aNKWQn2r61_Q5d9R2Lhj8d5Ri_b-zW7VMsVBHARw@mail.gmail.com>
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
In-Reply-To: <CAPDyKFo-V4aNKWQn2r61_Q5d9R2Lhj8d5Ri_b-zW7VMsVBHARw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/06/2024 11:57, Ulf Hansson wrote:
> On Wed, 29 May 2024 at 05:10, Xianwei Zhao via B4 Relay
> <devnull+xianwei.zhao.amlogic.com@kernel.org> wrote:
>>
>> Add power controller driver support for Amlogic A4 SoC.
>>
>> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
>> ---
>> Changes in v2:
>> - dts: Move power-controller node to be a child of secure-monitor.
>> - dts: Include power head file.
>> - Link to v1: https://lore.kernel.org/r/20240528-a4_secpowerdomain-v1-0-2a9d7df9b128@amlogic.com
>>
>> ---
>> Xianwei Zhao (3):
>>        dt-bindings: power: add Amlogic A4 power domains
>>        pmdomain: amlogic: Add support for A4 power domains controller
>>        arm64: dts: amlogic: a4: add power domain controller node
>>
>>   .../bindings/power/amlogic,meson-sec-pwrc.yaml     |  1 +
>>   arch/arm64/boot/dts/amlogic/amlogic-a4.dtsi        | 10 ++++++++
>>   drivers/pmdomain/amlogic/meson-secure-pwrc.c       | 28 ++++++++++++++++++++++
>>   include/dt-bindings/power/amlogic,a4-pwrc.h        | 21 ++++++++++++++++
>>   4 files changed, 60 insertions(+)
>> ---
> 
> Patch 1 and 2 applied for next, thanks!
> 
> Note that the DT patch (patch1) is also available on the immutable dt branch.

Thanks, I'll merge it in my arm64-dt branch !

Neil

> 
> Kind regards
> Uffe


