Return-Path: <devicetree+bounces-67168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5CA8C6D85
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 23:10:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AD9E11F2215C
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 21:10:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AA6815B0E7;
	Wed, 15 May 2024 21:09:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MmHuMgqk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C3F51581E2
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 21:09:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715807398; cv=none; b=mXp+8vawXsHToNInbLJzO1MAxB7zy8xIPNemgWDZeB0IItTFHlqmEyO+NP0Rxi6STsPFLbL2X4GZLr3K0y3nYE0lY6uRvZR3P+xSG0Kg9pcrOrgjUtm2TsSo1aVq1ISymPdZ5xlvkZJFL1+1woRXlBXuiA5cGZspcvnH0z6EjJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715807398; c=relaxed/simple;
	bh=QeCkhsVzBXgB+e5G7OpKpg/7Vgn73TlAg31O+zqgwAY=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=jMO5gYcQ+ykvo9Pz2LSUc/XHnKNC7x3565Z6SEA5g6tm+TvepWsFHw6N0kBMJ8qWtRUNhaXvxzpuHaGGLemwBjCfugEm3zBr/936kHtc5VFlSwgwUbUKOj7jHlWUv7nidQaEMAzIHgGPfMyVIfP4qvFUkkfdJ7rdqC1QWcAOK3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MmHuMgqk; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-41fd5dc03easo46156605e9.1
        for <devicetree@vger.kernel.org>; Wed, 15 May 2024 14:09:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715807395; x=1716412195; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3SnmjCK7izQwl6ASZrNS2yJUXoDimlZk3ChzYsJJLIQ=;
        b=MmHuMgqkzn9oECjkr1lKmK2nYYUME5m7fje9eCgk/xS+dtlHMEozNdOXaNSZDaI2uF
         XemiFinnMuOXHrln23re018HHa2W9RjXLUHw0Eo9c9rB0p9E98OSo9ohmuCdqUrueGSC
         dhzePPYBqVojG6Hmw+vs141hlLX073G2fwBOMz4GFA9o8KrymNNWEyIzb9+otC1x2HK5
         2XSRJBsyUmIppukJhVCghYL4Up3Zov7UgsVa2Sm+OTYeC/Z79af9xUKlcw7gDJNXxDkt
         pm1VQPzG2U0EfdwWmeuD0Hs66F1uLn7U1/sZ4FPiJSXyNX0pp3Ipzh+otnilZB/SBWtD
         dTDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715807395; x=1716412195;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3SnmjCK7izQwl6ASZrNS2yJUXoDimlZk3ChzYsJJLIQ=;
        b=HYup+nvh7EE48zIHr5IcJZOMLss43KsofoP8MtiXvTv9yVhwgVd+YcZK0ek0JZTfGN
         4W9jMQ5bqhLCjndDu2jHKUzyNeb6aj22RrXDfjh0Ytp6rHwPJHbyvoDiIdrlBvZ6KSxB
         HRqZ6LFcFF/G+MaLHHbwdAfCSzvbSukzAHHy1PCB1dR33/fdE6pmSpCqlbYENsxBs68M
         0d9wWqVzRigLs+ihkpySIhMQ5mJhNpD+UWL0PQEktBszAZwWiLcC/fv40HNG2zrbFNWD
         pU2IOsoRUAk2htbDa89jpx4u0/53ZB6EB/aCPBqEzaaUfyMPx01s59nFZtKuOGsyTn0r
         czcg==
X-Forwarded-Encrypted: i=1; AJvYcCVV7Nb9XjLL0CbC+e2LM1VQJRClLLHekK3ZbfuVwF7iOM/D9Hbz81B/NTMviMzg+Ozq0DE5rH/eXxTEh9afR+Rxq6RFW0I847kYlg==
X-Gm-Message-State: AOJu0YznDu/bccEtbSZEIu2SLN+N6mK4sBv9DyjFUPZTxKAUZhD6mCtp
	NFdiJg/rJj9ToIeax4wNJeWOhhYpnLlmMcO+mA4ywbDR6AeaD7Cw6P0+h1zbPiE=
X-Google-Smtp-Source: AGHT+IH7D5pE7KpmkjyzHmFjDR+WnvIc64hJiz/d322p06M6DRxUrMx0ZmDryvZmW0Cq5TBG1J7j3Q==
X-Received: by 2002:a05:600c:3548:b0:419:f3f9:8ee3 with SMTP id 5b1f17b1804b1-41fea93a80amr144473985e9.5.1715807394622;
        Wed, 15 May 2024 14:09:54 -0700 (PDT)
Received: from [10.1.2.176] ([149.14.240.163])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fccce24c0sm246328965e9.17.2024.05.15.14.09.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 May 2024 14:09:54 -0700 (PDT)
Message-ID: <4960c10d-e538-4907-a443-b4cba5e0a723@linaro.org>
Date: Wed, 15 May 2024 23:09:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 0/3] dt-bindings: display: panel: constrain 'reg'
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Konrad Dybcio <konradybcio@gmail.com>,
 Del Regno <angelogioacchino.delregno@somainline.org>,
 Heiko Stuebner <heiko@sntech.de>, Luca Weiss <luca.weiss@fairphone.com>,
 Shawn Guo <shawn.guo@linaro.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240509-dt-bindings-dsi-panel-reg-v1-0-8b2443705be0@linaro.org>
 <20240513131711.GA2419451-robh@kernel.org>
 <CAA8EJppkJ9rukeUZ=1kAL3Y0WVhN5QFXnNU3tjv4yuXMjc++7w@mail.gmail.com>
 <a1108f14-9a1b-414a-97c5-0bc43457d635@linaro.org>
 <778500c9-83bc-47b7-bf1d-28de44084776@kernel.org>
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
In-Reply-To: <778500c9-83bc-47b7-bf1d-28de44084776@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/05/2024 11:07, Krzysztof Kozlowski wrote:
> On 14/05/2024 10:44, Neil Armstrong wrote:
>> On 13/05/2024 18:41, Dmitry Baryshkov wrote:
>>> On Mon, 13 May 2024 at 16:17, Rob Herring <robh@kernel.org> wrote:
>>>>
>>>> On Thu, May 09, 2024 at 11:42:50AM +0200, Krzysztof Kozlowski wrote:
>>>>> Hi,
>>>>>
>>>>> Cleanups for display panel bindings.
>>>>>
>>>>> Rob, maybe you could take entire set if it applies? I based it on
>>>>> linux-next, so letl me know if I need to rebase on your for-next.
>>>>
>>>> Applied. These 2 don't exist in my tree:
>>>
>>> It's most likely fine, but was there an ack from drm-misc maintainers?
>>>
>>>> Documentation/devicetree/bindings/display/panel/lg,sw43408.yaml
>>>> Documentation/devicetree/bindings/display/panel/raydium,rm69380.yaml
>>>
>>> Because those were added to drm-misc during the last cycle. So ideally
>>> the patch should have gone through drm-misc.
>>>
>>
>> Exact there's a conflict on today's next, Rob can you drop them so I can apply them via drm-misc ?
> 
> It's almost the first time I see bindings picked up via drm-misc. Is
> this an exception or rather new trend (which would be awesome as this is
> what we prefer usually)?

I usually pick up bindings along drivers like other subsystems, and when reviewed I
take independent bindings fixes aswell when rob doesn't pick them before.

Neil

> 
> Best regards,
> Krzysztof
> 


