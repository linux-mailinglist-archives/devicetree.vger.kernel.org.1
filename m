Return-Path: <devicetree+bounces-84145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A5892B2C7
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 10:57:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5019F1C2231C
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 08:57:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B6D9154444;
	Tue,  9 Jul 2024 08:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jrNtYGbz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 866AB28DB3
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 08:56:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720515393; cv=none; b=o+ew3y9w0fo5zZiXzk3iYEe2KnR7A895eelWRItUr53pDFWg6fnnONKkWfIEaijI3/vDSZ3wWFGd+0U3nsTTBgwFQCkOeoTOiSLyhpkMmbXBNlgatqmpmceliQoY3hZgJ4dV1c8s8V00VmuFz9h2EUobcWDRr01TvBkqVvp+o7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720515393; c=relaxed/simple;
	bh=Bcs7KFQ2XQNPC2wlTEwcZr+sL6K50cn95rtVb4uYrdI=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=bvZ6/NGvS1Iy9NvlXoo9I7oQKHTqrg3TSl75ZmIhqCXXfpA4AeKF/n1w8UmiEXf21diIFrsM6X0kbaeH/lpdfQo69bKFnvkyaIZ4ASQ/G1/vP6LvTsU0xV+Imhf/6ScO16pSewwEjdAcBT00EW33P/FCyK74dG4S8OG4exRyEtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jrNtYGbz; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-42573d3f7e4so33276725e9.0
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 01:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720515390; x=1721120190; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C0hwahxZYKkAntY7nSZhqG+PeUc3tvGbnLo4YASIKqo=;
        b=jrNtYGbzJT6QIUaIDBK5n42lwuLZ4BoPr8eQsMaBbvxyxIoFRs04+ah5jByeXi48Cz
         lrWBDD1JEzmhtROKttRUz1CrYwHwyzhbQmP1AhrR0geZY6S99HHNS9HELsRJ7yDY8CSM
         GpglBTyX4deKdDjZqUrFFAfER4kM8sydqYg/hCJn7qHLvk1No6JudZUCIBdboXwkOSDh
         uyyjt3d/1ykf3ziQ4AOgCsjacbOiETElnH63ajRuAh/MHYZC6MrmkTJ04we0n+TFf57y
         YLgrE6DNRcqxka8D+RN9izY0hjYbp6Fm4CFcoNlm1Ileg/cv2fBefyTJ+/a+AkxfRtj9
         +Zfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720515390; x=1721120190;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=C0hwahxZYKkAntY7nSZhqG+PeUc3tvGbnLo4YASIKqo=;
        b=nfglpx+NQ860DRT3c9mBqIKWvlEthGhaPIP0hZUJ57LKwAaN1F3jWCjKWXKnAJpoQm
         Ot/59jSpPSDIRWyvSFS/8iPnOapNHqzB+ytjUsDertrKRFywmGhiMBfwH7MCc1nManub
         HTfuSxxRkyTNaC+F6sfwZYeUEs/GjCC8pdqDGQBU/zqDY70puCy1Z+uyCacdsox+xz5S
         Bp2/HPf2zOM8Hz1QPBNnmtP4lDjyLyq9X43VOkpfrnp9xd2ScON/3BV6IJQwGbDXGnam
         4lBFR7nVJok5iTlLJ8YFCcRVliXEfqmfCWfbvCODb8cBJkZFqmub0vdImysTzucNk4zg
         czkA==
X-Forwarded-Encrypted: i=1; AJvYcCWZJv0l/HtXSP0+wQq1U12I8vVsRKipykaP/ARFwBsROAHM58wrNMJ0lDGozqJp7DAcnajjBK4pBM2dQsHs5BBQ7ef8I+gPztcRQQ==
X-Gm-Message-State: AOJu0YyiVR2OaxnKSIGIFzRaS1js21HdScVVo6aqgNrTHlQJ09TUPetz
	B3HGTqFsc/k3a1kUZMEIna8YA+O5ahPXNW2Jk/OoqWwlpfkQTbKe+LqxpFdBftI=
X-Google-Smtp-Source: AGHT+IH+pSsQ/NA5FKSgzU02yMR4D2uNJf3bG9wR4AQ+eCXp72iV5l7kkMPsoZ7PmUl6dTp0rbwmDA==
X-Received: by 2002:a05:600c:63c4:b0:426:5e8e:410a with SMTP id 5b1f17b1804b1-426707e31aemr13323275e9.24.1720515389760;
        Tue, 09 Jul 2024 01:56:29 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:cad:2140:b12a:8461:5e2a:dfe? ([2a01:e0a:cad:2140:b12a:8461:5e2a:dfe])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367cde89164sm1953775f8f.63.2024.07.09.01.56.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jul 2024 01:56:29 -0700 (PDT)
Message-ID: <64603a87-bc31-47c4-847c-69c5efcd23cc@linaro.org>
Date: Tue, 9 Jul 2024 10:56:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 0/4] amlogic SoC's power-domains fixes
To: George Stark <gnstark@salutedevices.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, khilman@baylibre.com,
 jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
 hkallweit1@gmail.com, broonie@kernel.org, glaroque@baylibre.com,
 rafael@kernel.org, daniel.lezcano@linaro.org, rui.zhang@intel.com,
 lukasz.luba@arm.com, b.galvani@gmail.com, mmkurbanov@sberdevices.ru
Cc: linux-i2c@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@salutedevices.com
References: <20240708194808.1819185-1-gnstark@salutedevices.com>
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
In-Reply-To: <20240708194808.1819185-1-gnstark@salutedevices.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 08/07/2024 21:48, George Stark wrote:
> Here's some fixes to the bindings and device tree related to Amlogic A1 SoC.
> The SoC provides dedicated power domain for for almost all periphery.
> 
> George Stark (4):
>    dt-bindings: spi: amlogic,a1-spifc: make power-domains required
>    dt-bindings: i2c: amlogic,meson6-i2c: add optional power-domains
>    dt-bindings: thermal: amlogic,thermal: add power-domains
>    arm64: dts: meson: a1: bind power domain to temperature sensor
> 
>   .../bindings/i2c/amlogic,meson6-i2c.yaml           |  3 +++
>   .../devicetree/bindings/spi/amlogic,a1-spifc.yaml  |  4 ++++
>   .../bindings/thermal/amlogic,thermal.yaml          | 14 ++++++++++++++
>   arch/arm64/boot/dts/amlogic/meson-a1.dtsi          |  1 +
>   4 files changed, 22 insertions(+)
> 
> --
> 2.25.1
> 

You can drop patch 1 & drop required on patch 3, and it will be good to go.

Thanks,
Neil

