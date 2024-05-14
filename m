Return-Path: <devicetree+bounces-66831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 140908C4DDE
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 10:44:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 77809B21D17
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 08:44:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4090D1CFBE;
	Tue, 14 May 2024 08:44:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eO2KmSpN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77D2B1CD15
	for <devicetree@vger.kernel.org>; Tue, 14 May 2024 08:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715676271; cv=none; b=irTVVd0PJWywK1h2cxXKFs/+8bHjjM+JYcvcwqzCPjua5F6xa1IN8f5L+3zVDgKfrvMpTXYt9nhbi166scRQ6NMEpygdUkaonNpP5MhlDFi0GUM1Yxj3LECmG41FnTqwKilxL8bQg7kzZSQ9nVTpkkRrKq/f82s7nG+FPFJ9cJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715676271; c=relaxed/simple;
	bh=dmzXyDIeuB2e+3JR4N6SMijN/7bZsd6blBt6W268QCw=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=VbRrTKkXDg457PxDqAblrl3yxWpqQb1DwjN1kLYyo8WJzsaOLptC4UD+LHTNpFpy5kykSMHdGI5lrCfFwXuyqZvismlndkR0Ew9B30s77pvR/4sxs6qgvgd/xpgj/35GjMztyIwdg0YTwck6CpGfIuFRRqqBsmi8YJkLuK3EaP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eO2KmSpN; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a59a609dd3fso907504966b.0
        for <devicetree@vger.kernel.org>; Tue, 14 May 2024 01:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715676268; x=1716281068; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R8VqkRij0WMpHYa35VasMXQrv2YaZLsJLDLUP+EZyj0=;
        b=eO2KmSpNhSyXdDFpJGYOwwaa80+iMAqFuv+Zk3BBaWcxvfJFIxH3yrN9EQZb/5XPlX
         RmAdlzSSYFtkgbQjIACW3Od0KmgXSBdKfF+I2oLVuTuR6fyO8YJ2uw/rDVMAjAMnFVV1
         xc6+ZsJLAAPwLOTk7vwapfYmbUzWQgeiLMYV0XPYIslbB93jhPEd9PduWHh62UtrWJLj
         It9CB+HpVlE0QCJGvXk59oT8F73kutEeXIhMX03yZrTT5S+bJp4dcFgDjahgBZ+lits6
         B/efg971DzqM9JsnzXiz+agJ1FkQxAqEtnvAgL6ad0C+4FZe0AYbitbSuaqpCXc7KRQw
         8WCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715676268; x=1716281068;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=R8VqkRij0WMpHYa35VasMXQrv2YaZLsJLDLUP+EZyj0=;
        b=RU4UEGuxmDetSZI6XCTI9ybtzMEHR2JddybC3QpYCAoSaPfmz1vOCCcbqf/yQViwMT
         LqHpVARJuwcFWsaAS0e1rgQOy4poQbZ+5tG6gwynWgS71x1FZQ9AEIFuC8Try31SGVwL
         lcIalCgLV2NWH6aSpiIuLCslxu8HaWgSSt3Ya0bPjN7QnxTPPF9BKvOVMnZtY0ZpJ7Cb
         rr1PTEZGyoveIE/FhQ4Pdwhau4Z5Oh0UylIyhWAfPywnAwICTHY/H8pzedXzlpxCuTrB
         AkBA/zMQOGOQZgZ7BJ/XzyXJZwgc0e9jKKC/EzsV/+w5AkLgo2pbrZJBVfxmIyRK3VIj
         UWHw==
X-Forwarded-Encrypted: i=1; AJvYcCWEzPXLXADcIwP7hsaIfZ5OtJW7kSwjCwwBZmM5pq/m8r7CW6fJLpCIVw+IiMZ45rBSd1w+zoPkNIo+9dlHncGI9wyAN6Va5E0BoA==
X-Gm-Message-State: AOJu0YwQOelaZk2lXDmiyPEYs8O1ygBVwylkD4O/Nl4tPuHLOB4exS0I
	A9DVciRbfc7MDCMY/RM39Cc4Mk1G00clRoSMgVIsyg/HaTEL3SwIy8PBabV4pjg=
X-Google-Smtp-Source: AGHT+IE8nJilU29Fw1fFlxNnytzQcgglRReBkYoprBZaNxRl5+KclDd7dkoKUAr+c9rnQqQAzlKHmQ==
X-Received: by 2002:a17:906:19d0:b0:a59:fb06:5d35 with SMTP id a640c23a62f3a-a5a1156665fmr1158823466b.8.1715676267705;
        Tue, 14 May 2024 01:44:27 -0700 (PDT)
Received: from [10.91.0.73] ([149.14.240.163])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a17891f87sm690254566b.65.2024.05.14.01.44.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 May 2024 01:44:27 -0700 (PDT)
Message-ID: <a1108f14-9a1b-414a-97c5-0bc43457d635@linaro.org>
Date: Tue, 14 May 2024 10:44:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 0/3] dt-bindings: display: panel: constrain 'reg'
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Rob Herring <robh@kernel.org>
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
In-Reply-To: <CAA8EJppkJ9rukeUZ=1kAL3Y0WVhN5QFXnNU3tjv4yuXMjc++7w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 13/05/2024 18:41, Dmitry Baryshkov wrote:
> On Mon, 13 May 2024 at 16:17, Rob Herring <robh@kernel.org> wrote:
>>
>> On Thu, May 09, 2024 at 11:42:50AM +0200, Krzysztof Kozlowski wrote:
>>> Hi,
>>>
>>> Cleanups for display panel bindings.
>>>
>>> Rob, maybe you could take entire set if it applies? I based it on
>>> linux-next, so letl me know if I need to rebase on your for-next.
>>
>> Applied. These 2 don't exist in my tree:
> 
> It's most likely fine, but was there an ack from drm-misc maintainers?
> 
>> Documentation/devicetree/bindings/display/panel/lg,sw43408.yaml
>> Documentation/devicetree/bindings/display/panel/raydium,rm69380.yaml
> 
> Because those were added to drm-misc during the last cycle. So ideally
> the patch should have gone through drm-misc.
> 

Exact there's a conflict on today's next, Rob can you drop them so I can apply them via drm-misc ?

Thanks,
Neil

