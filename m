Return-Path: <devicetree+bounces-23739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CED80C32C
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 09:29:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B309280C35
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 08:29:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4E0020DC3;
	Mon, 11 Dec 2023 08:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yGnChNhc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D7DAFD
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 00:29:13 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-33349b3f99aso3877157f8f.0
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 00:29:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702283352; x=1702888152; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=57/VOzNu8F2/0qLXZbcvHEFmn/prRltMcU/7DHK3nVM=;
        b=yGnChNhcKXHhXw4BTZyNSaym9+lXEy3P2lrWMTKd4YgdN4UG5hrw/XJAIh7zu67Wx/
         gHWvcN5V8OUpKp3oE+jwBRtSwPOoMmBstKBA+uA7SwvQAwxSDFvsX8ajjruIHuGO2Zbx
         bD8vO/OaAVeE88ZhZyE+VV2fwCn7I/GUI/RTyheNPC9Il7325RI3wUoefqRRjmTH8Ep0
         rZi4l5m+h81ksOrSZqiB+AAM32CqGM7wraIsEdKXgDxhD2s1pHFZzAwNCXLFVfSncCgP
         mhALxSv/SERaz7Gd6oMwDY1/v7uD8PlfsdiF1Rllwdbrx1NMwMF3sn64TWFjniWXxIE8
         1KPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702283352; x=1702888152;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=57/VOzNu8F2/0qLXZbcvHEFmn/prRltMcU/7DHK3nVM=;
        b=e3QPl8Mv462rGo49fnL3wa/YGuvKPErMdBFJ4FJkUjewS+xV+hw34nGJFzIMneNz9y
         pDbllLVTdyVTmSn+GXyOS48tVUWdxb6NgXM7QO80Bx0D4tjYDZ3QdF10pxLtWhLNGKTf
         ixzq0oE7TGYVbjZGVWMnaXjIvTv1SrrHIuay5eKmahxqPWdKvf5+dM2vb/SVUgAMQpg8
         fBCW5YdGaAUIQM0dsZ1b5PVZYzGxMkPm7oIuB8IwGhYo4aUA7itgqfwS+KBrxi/XslAF
         vmy3rJsEDAch04jWI9NynYSpGcucospXUAEfNuHO9quOOIVmCSsOz6c/wTTPOZVFRSXb
         BLDg==
X-Gm-Message-State: AOJu0YwaGkfzQn0JMhGzUYE3RJGkS7sgUACs2J5D0Wpu/C2ltksBoyQC
	QVbOQ2SYH3qtpM4+bPFnbPT3IokpeZcncfxP+ROdTK/S
X-Google-Smtp-Source: AGHT+IESEqotVbyAesHNg81cnbo30l/OhqcenAXy7uWmlpUy4PEUJz+2YGP4kumKJKBiH26brfRpPg==
X-Received: by 2002:a5d:46c2:0:b0:333:46a5:6d16 with SMTP id g2-20020a5d46c2000000b0033346a56d16mr1834610wrs.108.1702283351816;
        Mon, 11 Dec 2023 00:29:11 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:302e:e0c2:d42c:cb23? ([2a01:e0a:982:cbb0:302e:e0c2:d42c:cb23])
        by smtp.gmail.com with ESMTPSA id g13-20020a056000118d00b003333d46a9e8sm7955435wrx.56.2023.12.11.00.29.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Dec 2023 00:29:11 -0800 (PST)
Message-ID: <6f461d84-3c4c-4249-86a1-bc5149c97baf@linaro.org>
Date: Mon, 11 Dec 2023 09:29:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 1/3] drm/panel: st7701: Fix AVCL calculation
Content-Language: en-US, fr
To: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org, linus.walleij@linaro.org, marex@denx.de,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
 quic_jesszhan@quicinc.com, jagan@amarulasolutions.com,
 Chris Morgan <macromorgan@hotmail.com>
References: <20231208154847.130615-1-macroalpha82@gmail.com>
 <20231208154847.130615-2-macroalpha82@gmail.com>
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
In-Reply-To: <20231208154847.130615-2-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/12/2023 16:48, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The AVCL register, according to the datasheet, comes in increments
> of -0.2v between -4.4v (represented by 0x0) to -5.0v (represented
> by 0x3). The current calculation is done by adding the defined
> AVCL value in mV to -4400 and then dividing by 200 to get the register
> value. Unfortunately if I subtract -4400 from -4400 I get -8800, which
> divided by 200 gives me -44. If I instead subtract -4400 from -4400
> I get 0, which divided by 200 gives me 0. Based on the datasheet this
> is the expected register value.
> 
> Fixes: 83b7a8e7e88e ("drm/panel/panel-sitronix-st7701: Parametrize voltage and timing")
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>   drivers/gpu/drm/panel/panel-sitronix-st7701.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7701.c b/drivers/gpu/drm/panel/panel-sitronix-st7701.c
> index 0459965e1b4f..036ac403ed21 100644
> --- a/drivers/gpu/drm/panel/panel-sitronix-st7701.c
> +++ b/drivers/gpu/drm/panel/panel-sitronix-st7701.c
> @@ -288,7 +288,7 @@ static void st7701_init_sequence(struct st7701 *st7701)
>   		   FIELD_PREP(DSI_CMD2_BK1_PWRCTRL2_AVDD_MASK,
>   			      DIV_ROUND_CLOSEST(desc->avdd_mv - 6200, 200)) |
>   		   FIELD_PREP(DSI_CMD2_BK1_PWRCTRL2_AVCL_MASK,
> -			      DIV_ROUND_CLOSEST(-4400 + desc->avcl_mv, 200)));
> +			      DIV_ROUND_CLOSEST(-4400 - desc->avcl_mv, 200)));
>   
>   	/* T2D = 0.2us * T2D[3:0] */
>   	ST7701_DSI(st7701, DSI_CMD2_BK1_SPD1,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

