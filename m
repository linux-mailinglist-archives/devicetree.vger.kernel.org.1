Return-Path: <devicetree+bounces-75834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D4F908D8E
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 16:36:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8A8011F23BC8
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 14:36:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D33F0DDA5;
	Fri, 14 Jun 2024 14:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Yu788xU+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCAC218E0E
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 14:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718375806; cv=none; b=Pfd7Ux+LCDIk205ppnF8+fQ2QoIWRET/7+UASBESlAAD706AUARnVOvtRgXayRsrS7cDFlvwMu24pUHHwsmYFypdNT4YsgASB8t22AevkCJ9PceaUUmq7E9Kfoxq7iWpkc+SsHMO4Zom2/v3yLOlNwLGTAdw9drl3wtnwob7Hug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718375806; c=relaxed/simple;
	bh=i+2swah0zZgVXbkTe0iYaiZCqnlKaxQhq77fv0zxHYg=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=D1Uad/7L2lHPl3wOFqf+9XrH/xtpGm9q79Eqdqzvn5/uCrI2XuOaxaoAlgqpoPRy5nETmKUDzytIZ9uICAVg4a5YNR5J9HHEKuy/WA2aEBGfn8hBllf8np/coMuVas7HiKSMTUaixjsq9Ge8qR2kYwH7sm9YvBM4wT7yVtu3reE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Yu788xU+; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-42198492353so18356995e9.1
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 07:36:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718375803; x=1718980603; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9pjHA27KSDFDPJxgz/w9YGYzEfUAZs5JLmVszAQFE64=;
        b=Yu788xU+ImZuRg0jMvRS4JRm6usITv3JKkwnjZ5/JZwrhyfXTlSooPlDtKiiDRZl4d
         4KSioArFHhraoEP1ZEnw4T5jieEjU6jA5btwyCA4B5rRz/WXLRw1t9uhyLTPtss+3hoi
         B3V25qbYdetozLPf0YbENEhu98Y51ypCCKSfmGbrEJQIfdVX99Ljzb/v8C3XKNQBadFK
         ranqmJpYAuQyXjCyzYaImLWuaqGAFrmxO++pXYMLxw7bQAgped/IGD4snFdt6+sRF+g6
         o72jNL2A/TvN6DGh5uqsopF3W2Ml1PrIY1bGHYt2G83duYjdjsN31eVqR8LtOfzY6Sp6
         p+uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718375803; x=1718980603;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9pjHA27KSDFDPJxgz/w9YGYzEfUAZs5JLmVszAQFE64=;
        b=YGjC7sKtNGMOqhho5aXKDKTN+duoJBkCU4EC7C3cYplfX4rWApZHme381E22tqCAra
         i9/tTgsp524lHBggvP0ecKtPQlxB5R8DZY+/RSyM1CdWgn2XLvA/czdesxIliOQiSZqW
         /23LJ0/rT+mmsKTCexwVlF0B+1E2IjYEzB9VoVwdd3GVSknggieVHvfSihMKadumRT+1
         ES2MNCkTNQEPW8AhFGHWvsB1uxPr30eEG2DoqWLEdZW6b3+NAE7VySgcQz73Bamo43IS
         MzETP6ORcNtFoCEfoyPK8TYpkuABb+SrrcJdcZlxjjob2BXH4bco1dGjJ0z3DElKimmO
         Vzxw==
X-Forwarded-Encrypted: i=1; AJvYcCVfdKhZCmIBGnYBwLTJuxzyZAcmn+1C1tY22vKtJcC9Lt6F/5u/kQAq9F+dhwsUhYBMUSa+MavoR+NNreOx5BCnmPZVyqjZ9wz6Og==
X-Gm-Message-State: AOJu0YxX3Gb8ZaXov/WO7icnVdTKGm++iviStJB4eHx2bns2I5jRo1u7
	ftVzwEfEnBwLVBU7ZZpUbgFPwp+HWS1r3if850zPaK00zvjiA4WmM+AKL0+PTIY=
X-Google-Smtp-Source: AGHT+IEzMKgUi8Y9YIfJCmkgzt1+FWf2beN5X++98O6QozELkl3Svx/Pv/K8danURzS2F0IaAL6yBw==
X-Received: by 2002:a05:600c:1f92:b0:421:7407:d778 with SMTP id 5b1f17b1804b1-423048272eamr23600425e9.14.1718375803117;
        Fri, 14 Jun 2024 07:36:43 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:261a:269e:a3a8:a2cc? ([2a01:e0a:982:cbb0:261a:269e:a3a8:a2cc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42285574e33sm44341635e9.1.2024.06.14.07.36.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jun 2024 07:36:42 -0700 (PDT)
Message-ID: <966d2474-57ea-4eca-baac-4b448c76fbf4@linaro.org>
Date: Fri, 14 Jun 2024 16:36:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 02/22] dt-bindings: thermal: amlogic: reference
 thermal-sensor schema
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Guillaume La Roque <glaroque@baylibre.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Anson Huang <Anson.Huang@nxp.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Amit Kucheria <amitk@kernel.org>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Heiko Stuebner <heiko@sntech.de>, Biju Das <biju.das.jz@bp.renesas.com>,
 Orson Zhai <orsonzhai@gmail.com>, Baolin Wang
 <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Pascal Paillet <p.paillet@foss.st.com>, Keerthy <j-keerthy@ti.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 zhanghongchen <zhanghongchen@loongson.cn>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-sunxi@lists.linux.dev, imx@lists.linux.dev,
 linux-tegra@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 linux-rpi-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20240614-dt-bindings-thermal-allof-v1-0-30b25a6ae24e@linaro.org>
 <20240614-dt-bindings-thermal-allof-v1-2-30b25a6ae24e@linaro.org>
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
In-Reply-To: <20240614-dt-bindings-thermal-allof-v1-2-30b25a6ae24e@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/06/2024 11:46, Krzysztof Kozlowski wrote:
> Device is a thermal sensor and all in-tree DTS provide
> '#thermal-sensor-cells', so reference the thermal-sensor.yaml to
> simplify it, bring the common definition of '#thermal-sensor-cells'
> property and require it.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml b/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
> index 01fccdfc4178..e52fc40e215d 100644
> --- a/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
> +++ b/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
> @@ -11,6 +11,8 @@ maintainers:
>   
>   description: Binding for Amlogic Thermal
>   
> +$ref: thermal-sensor.yaml#
> +
>   properties:
>     compatible:
>       oneOf:
> @@ -44,7 +46,7 @@ required:
>     - clocks
>     - amlogic,ao-secure
>   
> -additionalProperties: false
> +unevaluatedProperties: false
>   
>   examples:
>     - |
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

