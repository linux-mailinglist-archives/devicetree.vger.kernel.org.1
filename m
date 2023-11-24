Return-Path: <devicetree+bounces-18498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF807F6F08
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 09:59:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C6CB281733
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 08:59:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5112965C;
	Fri, 24 Nov 2023 08:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FhScqQV6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88DAD12B
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 00:59:11 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40b399f0b6fso4098735e9.2
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 00:59:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700816350; x=1701421150; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yNqJMxRTGvnEbCK0XZ3LOOul2fJNuzup45SG/m7ppc4=;
        b=FhScqQV6V8ANJN7CHqtnrGctl7NA1sGHSV0qSKDkShX5Tt/vnCwQ2+/zYqGQD78y3w
         2HlZktI7hsoXfi2eE69bgkhrMvVcQHFhwB/FYvOFo9wrzvdnPDEyWkQG5rBRJCWhKdNl
         j6TAegmP2ejYMiqZ4KZgikTYJi3ujJgEXEb+wusUYqm0FAiho52PFttDZ1jtRKpfzT8Z
         1NeMWvbg+s0oPwLX6F2zqh33dV3fpWprUICgRkHj6Ni9tvL2MPdnD3c0JAf+j0z+8oFj
         pvN/vGNdZALcnp3XpV25EmNFbIpUts+rAzRnOUaz5vGV7MW88HQWIiw/nSxeG++zBfoo
         c18w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700816350; x=1701421150;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yNqJMxRTGvnEbCK0XZ3LOOul2fJNuzup45SG/m7ppc4=;
        b=r2t0+ynblgXFiUcAocwdv/8QHV/I6oKQXkRJY4vI1+z0YelJe0a1272+GOiaBzOwhp
         ItcoW3FJEsuAGwDqZnkGYwuQAf2mmbigKdrWvzbB/Pc39X+wwMC6lYphYC8h1PsftiGn
         YdmXdSUzi4+ctlsd9XnDgcgkYusvOiQd0/lNEzxBzz+EN3SKZDU2EJ4+3S7k2BrUyt/Z
         2wIE02vNvVyzh5jHRKEuUoBXexIC1pFwASRWyyqbazS06kEngdIkJRgPHAx4XTsD9TE2
         2NIV2O6zP8heY8TLr4rGx5e0xTb6V7qN/lLjooymuNVmush7E+BHVAylL0Q3PVaKAdvc
         xlfg==
X-Gm-Message-State: AOJu0YzEcfUdBSFluP1OPXsFT6CCkXOfEQSGMKS59LZBe1xOXjtxMP6E
	6NhWuqlNYBL46ToJicZzqY8Xlw==
X-Google-Smtp-Source: AGHT+IE+WGAbjdqPchseLbjHCBwIhcJmv857+lYNTnlyvxkbsuzTKkLV2SWWD+wTZfwtER2TEv0sAw==
X-Received: by 2002:a5d:51c5:0:b0:332:ca67:b6a1 with SMTP id n5-20020a5d51c5000000b00332ca67b6a1mr1459067wrv.0.1700816349954;
        Fri, 24 Nov 2023 00:59:09 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:4611:6dae:b5a3:b6a4? ([2a01:e0a:982:cbb0:4611:6dae:b5a3:b6a4])
        by smtp.gmail.com with ESMTPSA id a4-20020adfeec4000000b003196b1bb528sm3749226wrp.64.2023.11.24.00.59.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Nov 2023 00:59:09 -0800 (PST)
Message-ID: <525f213c-6a4a-48fb-b29f-55fd49ec3c25@linaro.org>
Date: Fri, 24 Nov 2023 09:59:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v4 2/2] drm/bridge: imx: add driver for HDMI TX Parallel
 Video Interface
Content-Language: en-US, fr
To: Lucas Stach <l.stach@pengutronix.de>, Fabio Estevam <festevam@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Liu Ying <victor.liu@nxp.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 patchwork-lst@pengutronix.de, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
References: <20230928125536.1782715-1-l.stach@pengutronix.de>
 <20230928125536.1782715-2-l.stach@pengutronix.de>
 <CAOMZO5CYX8ihTQ87zi3maARWzz+PmLKYBBJGVn69Xig2nAwqug@mail.gmail.com>
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
In-Reply-To: <CAOMZO5CYX8ihTQ87zi3maARWzz+PmLKYBBJGVn69Xig2nAwqug@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 23/11/2023 18:34, Fabio Estevam wrote:
> Hi Lucas,
> 
> On Thu, Sep 28, 2023 at 9:56 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>>
>> This IP block is found in the HDMI subsystem of the i.MX8MP SoC. It has a
>> full timing generator and can switch between different video sources. On
>> the i.MX8MP however the only supported source is the LCDIF. The block
>> just needs to be powered up and told about the polarity of the video
>> sync signals to act in bypass mode.
>>
>> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
>> Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com> (v2)
>> Tested-by: Marek Vasut <marex@denx.de> (v1)
>> Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com> (v2)
>> Tested-by: Richard Leitner <richard.leitner@skidata.com> (v2)
>> Tested-by: Frieder Schrempf <frieder.schrempf@kontron.de> (v2)
>> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com> (v3)
> 
> Tested-by: Fabio Estevam <festevam@gmail.com>
> 
> Could someone apply this series, please?

I can, but it seems there's some fixes needed in the bindings.

Lucas, do you plan to send a v5 with the fixes ?

Neil

