Return-Path: <devicetree+bounces-213287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 805DCB4504F
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 09:52:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BA2D13B1A6E
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 07:52:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8AEA2EDD7A;
	Fri,  5 Sep 2025 07:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="My8EBo2Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D632E92D2
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 07:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757058724; cv=none; b=T8vTZH+eGAlPts27aDGDHrVGyWN4CorLpRzWYd0hmFLbYw/jpSj1RWJao6GYtMnim5eHtFZq/SzqelYdd8AeykVd9OO2f+seVXKkyOOTwGqUzSQeBEAzzDLeoEKqKGCvONI77M7teS1nxs5uM7J228dw4zG7rd9sza+w0O45eLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757058724; c=relaxed/simple;
	bh=CQTjoj2wDBHsmJlZ9culuqFawL04TkeYQljnebcEgUs=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=LNZpNh+44nk/09ZixIPWEWXT6qzqPQDl0nd+4FfygM5OEXS5g00FA0bu/yTvO+eZF87EYHC+qZkVBb1m8/gwIs0I+f2jD0Kx0yxXsHAXImuWPlECJ23sVoUn4TNkjNeNPFYG2yc6VxKcr6U0oQM+/ipTeK+u5lH/jFt784ySJg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=My8EBo2Y; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-afcb7322da8so372869066b.0
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 00:52:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757058721; x=1757663521; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j4E83VLTbZuo4TED6hhJNmBQMvXhzoltxNMk8h1UZoM=;
        b=My8EBo2YR9wyD+cjTlQLejN5yW9QhUJIItqCBCSmkhQzlog9tJ2XjaBvr94cJKtfj9
         dTYk7NlEDzGBlp3ZXLdjggtvDVKl/3OCjf2SMHUrpCrmOekBghubc9Q/SK+Rb2H362gP
         TqPspFO1weGGeeUW0RTr66km5kAchvMlpcmqD+kqqCx95T/R0Fb8Zvbnsn7hnPhc+/1p
         E2LiY1VEAcG5tW4oh0mprpLf702cB0BD01dQ/sDtAt0DCcKbETTaTcEOtz8UT+XP3Tq4
         ZGY3ndf017b6+sA7+hDT0hUIx6Ra/r5oSg7Z9Gje561G09SglL03+DOJMb+JUCTusMhY
         DaiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757058721; x=1757663521;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=j4E83VLTbZuo4TED6hhJNmBQMvXhzoltxNMk8h1UZoM=;
        b=l/2mXQfXDPeI5/LpA+nfDEpAfrkwdh2U0xjrftFxTDJcwyg9Uklxxyagk0wgEEKbmo
         1kLxMvtfXJVGoge1qsI9k0vwiCxjZg248qo87PS9YnWuqm6Oe60oXnX6+hRr/8xLi3JE
         pkXgUJWTYN2Cw2l8/8gQ4IT0Crq6zpSkEyWjtRFjN/NRSY/kKnN6+vi+Y7uShrpqbAEy
         yhnnD9StRgpNa59irtxHpO0TNSi10/83XM7fr4uhnYCv+d/zFz6yOH5jUsn48n/ptkwq
         D2OQPt9Wyl7q7otoxrne7gdWJIZKwwUtEFoAwWY7+tpgR/UK4P1FGq1Hkk9wFXhIp75J
         CpkA==
X-Forwarded-Encrypted: i=1; AJvYcCWgN4Qz0U++l2SAaXmF+i/mnA46oYK77op/fYuhMFR0uhmZorB5rfuw3yE9J6o7xUSiViCW1b/k66Xc@vger.kernel.org
X-Gm-Message-State: AOJu0YySVnHGJ6ZLI4pDhEZE3fUEpKZloF7hlxN8ulEx/mS1OpWSbkDL
	2g6qMNT84KqHLqJJwJFUN1URz2rliMETpGaGH66/mDiSJhyg/e659yCsrKzquThlM+A=
X-Gm-Gg: ASbGncsi5YQ5V39zBGiFWB6rV2EyYBCbWOByvOZm8KlGE05ov68Ou38ZR2Ao2De7yv5
	Hg6m+fAmWzYtumF2lR/w0KxDb/ZlUw2VmLkIXCfaSIRw411u0j+X9rcDZhJINaZ44evMem6GA+i
	XFwTrkBK9I8S5sOBi0kIG11VxlzayWOoxRQvu6fnArJg/E5pRGGRTecVjYmBy+UqnTpcrAo6kZ1
	Qn8XYrNStKJWeieiERrhyFwEpVTS6O4DL37tfW8r6HuCtQbAbpkcBWxdlsoV8QhZqgZGt4Qzg9v
	VZm1Avg2tGeG2jXxFFyrTCsEdAnzNkMYfFTV+Z6skSVdBPjjhI5erVRMl1mWliSuNo04YSTRZO8
	LQuc1BX/eYca8YUJx5B8cIIdQLu5ivMkPVrniakJoWizr
X-Google-Smtp-Source: AGHT+IHsHBWDnFjesrZD6VYm2HqLWgZJEdj/4+1B9i/v95Owxo2vQm0P5+OMAD6AEwvVb81pp3XbuA==
X-Received: by 2002:a17:907:7fa0:b0:b04:3a9c:33ac with SMTP id a640c23a62f3a-b043a9c3bb5mr1567058366b.50.1757058721357;
        Fri, 05 Sep 2025 00:52:01 -0700 (PDT)
Received: from [192.168.7.190] ([212.114.21.58])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b047b61cf00sm383193466b.15.2025.09.05.00.52.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Sep 2025 00:52:01 -0700 (PDT)
Message-ID: <d7553808-7713-4ee2-8a4d-10102c01e297@linaro.org>
Date: Fri, 5 Sep 2025 09:52:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: ili9881c: Document 5" Raspberry Pi
 720x1280
To: Marek Vasut <marek.vasut+renesas@mailbox.org>,
 dri-devel@lists.freedesktop.org
Cc: Conor Dooley <conor+dt@kernel.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 David Airlie <airlied@gmail.com>,
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
 Simona Vetter <simona@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>,
 devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
References: <20250904205743.186177-1-marek.vasut+renesas@mailbox.org>
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
In-Reply-To: <20250904205743.186177-1-marek.vasut+renesas@mailbox.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/09/2025 22:56, Marek Vasut wrote:
> Document the 5" Raspberry Pi 720x1280 DSI panel based on ili9881.
> 
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
> ---
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Simona Vetter <simona@ffwll.ch>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-renesas-soc@vger.kernel.org
> ---
> V2: No change
> ---
>   .../devicetree/bindings/display/panel/ilitek,ili9881c.yaml       | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
> index cf0aa996e072d..34a612705e8c4 100644
> --- a/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
> @@ -20,6 +20,7 @@ properties:
>             - bananapi,lhr050h41
>             - bestar,bsd1218-a101kl68
>             - feixin,k101-im2byl02
> +          - raspberrypi,dsi-5inch
>             - raspberrypi,dsi-7inch
>             - startek,kd050hdfia020
>             - tdo,tl050hdv35

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

