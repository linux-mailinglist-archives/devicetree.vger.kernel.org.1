Return-Path: <devicetree+bounces-150844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ADBF3A43B12
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 11:16:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F2A13A6078
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 10:12:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A40FE206F25;
	Tue, 25 Feb 2025 10:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="deb8yJ1n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D35562139A6
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 10:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740478335; cv=none; b=RuSgt06vHYaDzc2+LzFxPbIxwgOLAmB6g6UNJifeujpyKWivPvu3rfYbb6l2wJTWpkYC+ha99/7p3QefI1dKUA2NemScrBdWrAvh3OV/js1kK8DJuYr3OLCSO1Wsk8oXnLlqR9/RvO6+ko11rrzmbQl7BGFPhFPkNFfOz9OatUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740478335; c=relaxed/simple;
	bh=jknYPqon03pKQxhtUdgW1/5STA2v9rlofl1w8RizIa8=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=QShF48S7aTRmhmCyihJHsxWAFtxVa9zhoo/hbzfmgYhIpvd9HwD8W2BJMCIDwIfVH5eU3dhDAX++gqHcqSddGTRVS5+heK7h6No3gF5+yWGflrzWEJoGvivy9mSDy2CFJUKznGuKVMWkAiCw7yFqI5SdDDCFc+W5wwQLCsqtcoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=deb8yJ1n; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-38f70170005so3210885f8f.3
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 02:12:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740478332; x=1741083132; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J87ryWliyCl20sPUl5uI4YRMovXLiY9QCxqpI8NH9Gg=;
        b=deb8yJ1nrV2j9DeOO6C9jX+0vecswf3h7oWu65+MHpzMtPiQHUXpSSk+2aXs5RndQP
         XC0lw157fffePG04m+UbnEg/fbHi03K6ZCcem5K3bXuRUQoCFh7XVAiv1/oNQQUc9I+3
         SoI+4jxBbSQQN1Sdxgaq2x41de8iKdgiSX6rXEV7cJWNkdJzFXkJ8dg0uEjMfKPY48oY
         Fru1UU2HLKdM1MsQYiOaRUrWhmez8FPFv5YrR6Yj2d0RUCutLAIs676bBPM2h0AErOWt
         Z9/4VVvpWjL6oRehyjJqhRs0Mc5rdE5oIxaYI6oIEuVldvuWKgG/e0zdcpwYyAG7poZM
         dWIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740478332; x=1741083132;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=J87ryWliyCl20sPUl5uI4YRMovXLiY9QCxqpI8NH9Gg=;
        b=tbhTQN6vDgvDbSeBOOfD/tPrth9Z8ph9XYeK+moZB4gc7xOraU1PA7VBzVMOAuX15R
         NML+BjrTGva3BSph84W/ucaokz84Pz1XW9lNqo+xlkcptojFqUfca1O3PhWv8L5/lJ+5
         tgzw+9Zh3u5wQuph7qci0p30rl87iDOjp4g7v3PRhY48Dw+cI4vQCq4ZGSbPUPa/yS40
         ZG4Jc5CKHzqmi9NABujh4knUgRDxeIG+p4Qv0GFMFMsxklnOM+hMU3dq5ongobQxXIlv
         OMvfqg9EpgqQ/xcJqSjVgGargToRa6Wqe+oGAIYbU43VP5Me8M/lxGa94LLIUcFbNdrH
         QbjA==
X-Forwarded-Encrypted: i=1; AJvYcCVoV1k8Y3yElGvH7Ti8tBZHlwJ6sDNb3W7eP2x3naIWZ7GfQuIaJQzSyD1bkNLquihwbaV1w+TkdUjV@vger.kernel.org
X-Gm-Message-State: AOJu0YzAx9JSYyRUlc84hnnOCknEMumzwR2o8JVN1ZVIT0IJ2JdOstwG
	HMG7albBSG99umgIptC4zeQetvkrN6q4Oew/LrF9U8FJ1Iaa5E5/CrggVeYe1Sw=
X-Gm-Gg: ASbGncvfxLOrGzxkx4iJTTTuOQdh4p8d+QjcKAhgvB8Bljm0oVls+kEa7xL83UPGYOR
	CVcX0opimm6oELi855G6dBYs0OYyA8N5M37BH4awJaN2a02szZtdTzXJlFvy4D1T7Q3CTYSQwlX
	RdwzIfiI0mpKNNLpx3vQv9A+EiRUuHkWuRl7q+B99HC3l6nQ1Qs+B2/xY7F/Lq3oT6oMS9H/nUC
	U1K5UZIjvdBPrPpLtEXN0AGqJFBICGcYzhftNK5Mn4+UdhAqBemfXemMYcarQnef+1qTKPCz4sD
	zUUhPwXVLVGYMz0vMpazddLjD/+nc0wZniV9
X-Google-Smtp-Source: AGHT+IFefAdtPk51kuJgca+3l0hqlaBwIJi7vLtk9BJJqZ29dtHXUUkn4YlJcKZwqu3ntht5bnF7kg==
X-Received: by 2002:a5d:6d8c:0:b0:38f:2224:738e with SMTP id ffacd0b85a97d-38f6e7573ffmr13530472f8f.1.1740478332139;
        Tue, 25 Feb 2025 02:12:12 -0800 (PST)
Received: from [192.168.1.100] ([37.167.173.6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390cd86cc26sm1799396f8f.30.2025.02.25.02.12.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2025 02:12:11 -0800 (PST)
Message-ID: <a1544b83-f5b1-4e9c-a5bf-83e7019d8f3b@linaro.org>
Date: Tue, 25 Feb 2025 11:12:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 0/2] Rockchip W552793DBA-V10 panel support
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Jessica Zhang <quic_jesszhan@quicinc.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Andy Yan <andyshrk@163.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250207-raydium-rm67200-v2-0-1fdc927aae82@kernel.org>
 <psmfw2znti3luu6pjyi5g22bgvylcb5lms22yakfkshnol4v4y@bhzvqjbgzhep>
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
In-Reply-To: <psmfw2znti3luu6pjyi5g22bgvylcb5lms22yakfkshnol4v4y@bhzvqjbgzhep>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 24/02/2025 18:07, Sebastian Reichel wrote:
> Hi,
> 
> On Fri, Feb 07, 2025 at 05:21:46PM +0100, Sebastian Reichel wrote:
>> This has been tested in combination with the series from Heiko Stübner
>> enabling DSI support for the RK3588 [0] (DSI controller support has been
>> merged already, only the PHY support is missing) on the RK3588 EVB1.
>>
>> [0] https://lore.kernel.org/linux-rockchip/20241203164934.1500616-1-heiko@sntech.de/
>>
>> Changes since PATCHv1:
>>   * https://lore.kernel.org/all/20241210164333.121253-1-sebastian.reichel@collabora.com/
>>   * move additionalProperties below required in the DT binding
>>   * collect Reviewed-by from Krzysztof Kozlowski, Andy Yan and Jessica Zhang
>>   * improve Kconfig help text
>>
>> Thanks for having a look.
> 
> I believe this has all necessary Reviewed-by tags. Can somebody
> merge it please? :)

Can you fix the reported issues by Dmitry on patch 2 ?

Thanks,
Neil

> 
> Greetings,
> 
> -- Sebastian


