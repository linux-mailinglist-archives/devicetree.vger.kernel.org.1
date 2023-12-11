Return-Path: <devicetree+bounces-23839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B0580C7AD
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 12:08:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9D4161F21294
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 11:08:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D568347B0;
	Mon, 11 Dec 2023 11:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Aq0bQaLh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A100C8
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 03:08:36 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-40c256ffdbcso45429965e9.2
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 03:08:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702292915; x=1702897715; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p/RqXxfpj+JRqX9l19TDqZ+cjowYfkXBepIWo3cd1zw=;
        b=Aq0bQaLhEdnLInqp7awZqQQXpkWyxU69qxe7F49garzBXpv0EZU394HK9FK6sZgDni
         nMd56Ct2pWPmQYGV9fI9VO1OE63TQ3+c8YgFFVIQZYbWgQsi9VA/SiWpjfdXkvmh6nxd
         +KeaFEGf2FApkVQMTqz+FRWRRvKXhZEjK6GyuK1aAVp9yc+DQo0G0Jn43czB9+sl13Fy
         BOoVsbV4aaaUPExjiu7FfwZlxfa7qLv45HglpzntHVdB6N12XDmKvWVIVEYG3ZvT1YsG
         RgsncITsHMwoFGBabks+HXgu4spVx5gaNUX8Q76k6lbPcgznI4xclztJjt3wW9fj9y6y
         REbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702292915; x=1702897715;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=p/RqXxfpj+JRqX9l19TDqZ+cjowYfkXBepIWo3cd1zw=;
        b=ROjAwOWN7ujUJ+oE6Ezp1xV3amYB1AFIJ9TTIZbhi7eWejdobbYJd3OH2ltWn+suTQ
         gFRv5bgnTbWP61jrq/ivhySK54UKWR+eX6EHgg+rS4TKU9bktLYRhZpTqNsJt/UrZ9QG
         jzmGLLlV35JQGIjXD0ggWT52mOUA24z9aphtdN8CLIiZniBJbFmVJRYkXPHVJcevSGIr
         QvYZlmjnTaMHbztMa9yePj3YVUauLE6Zaw7iNrf1NxvmJiL3KF+x2If9zf7PzlF5MxLH
         fjSby2pJqb7UnefuhcERgyjJJtQ1AYdH/dCbbrrPUjHF6hyD2fOvKHihjUwEfe8VxDWv
         A7iA==
X-Gm-Message-State: AOJu0YxSmpi+NV/DSeJySuIVZUOc/LYOpv3y8SXwyJhy9D/YpEYkRlIu
	z+cKXnX+KOeQ2s2rYTkTvZfDJg==
X-Google-Smtp-Source: AGHT+IEAVqD2pf0lIXHv9RUG24iG1TBtw72baJaE34DMMMFURDxTmpCN0F/Nfq6dzs2YGWB8K4YoLQ==
X-Received: by 2002:a05:600c:204c:b0:40c:2788:28f3 with SMTP id p12-20020a05600c204c00b0040c278828f3mr2094151wmg.79.1702292914759;
        Mon, 11 Dec 2023 03:08:34 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:302e:e0c2:d42c:cb23? ([2a01:e0a:982:cbb0:302e:e0c2:d42c:cb23])
        by smtp.gmail.com with ESMTPSA id t11-20020a05600c450b00b0040c495b1c90sm2263608wmo.11.2023.12.11.03.08.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Dec 2023 03:08:34 -0800 (PST)
Message-ID: <5c85ff3c-3576-4415-a8f1-07d786201dc7@linaro.org>
Date: Mon, 11 Dec 2023 12:08:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/2] arm64: dts: amlogic: minor whitespace cleanup around
 '='
Content-Language: en-US, fr
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tero Kristo <kristo@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20231124094739.58163-1-krzysztof.kozlowski@linaro.org>
 <20231124094739.58163-2-krzysztof.kozlowski@linaro.org>
 <4150bf8e-a48d-4d16-902f-a95f6489c6f5@linaro.org>
 <449d675f-e98c-4924-ab81-14a139081a97@linaro.org>
 <e4a163c0-5f4f-4c0e-a597-1ee06a84f3cc@linaro.org>
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
In-Reply-To: <e4a163c0-5f4f-4c0e-a597-1ee06a84f3cc@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/12/2023 11:38, Krzysztof Kozlowski wrote:
> On 11/12/2023 10:10, Neil Armstrong wrote:
>> Hi,
>>
>> On 24/11/2023 10:49, Krzysztof Kozlowski wrote:
>>> On 24/11/2023 10:47, Krzysztof Kozlowski wrote:
>>>> The DTS code coding style expects exactly one space before and after '='
>>>> sign.
>>>>
>>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>> ---
>>>
>>> Please ignore, that's duplicated of my previous send.
>>
>> I don't see a previous send, so I'm confused.
>> I can apply this patch if you're ok.
> 
> This was the original submission, which you applied (Thank you):
> https://lore.kernel.org/all/20231124094700.58071-1-krzysztof.kozlowski@linaro.org/
> 
> Both patches here can be ignored (applied through different series).

Ah ok, right!

> 
> Best regards,
> Krzysztof
> 


