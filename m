Return-Path: <devicetree+bounces-68126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C857E8CAE70
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 14:39:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0B2A3B20FA7
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 12:39:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC71576026;
	Tue, 21 May 2024 12:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D4UzqKeA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D835528E7
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 12:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716295165; cv=none; b=FHWlE7gcSFnZav4TPOB26BKsrN2uE2eGdYo87sGPTQxg/HYkC5mMk7I+gYPB9NUej0QbLCmHJwhAhxXjeE5tjWKoQc0nUDpK9W3DlbUy3Nwr6+mjVVEKI7rvmpcGQy6ZVzb4gUjwL6tFtK49+ffyVwvefISTRiA4NyCK/VhS2ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716295165; c=relaxed/simple;
	bh=raatoFsoie5L/3oGPDieVNZshZ5LngciSa6K5hLBLkk=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=oxh2CkIQ1ydAvgT2qI+JuVZi+c1Lfujv16TKsqVe9yLdv5ALp7X3B2uJ4FFYrgnNcJADAjA0gH0azpbDOvNnyokSmmTQxggdPqfe/MZ/gcW5QilioE62HcJdO1kmQeAaaU0Mr8whPRFzsb5wX/ixu0RXNsU/XQZv/yukbRRutAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D4UzqKeA; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a59c5c9c6aeso826702966b.2
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 05:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716295162; x=1716899962; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rFHfSKWBFX4oULUBSbLjfPQh2Pl5/BKyXUIZgUEiiGU=;
        b=D4UzqKeAcLBf8223YEniQ3qT9WsjSNnxFTJW/LPfZ0nQv+qs3nhfG3z0QNd0HJJ9zd
         D2Ohjn6OMZdbrmhzhokFaaYvmUeb562GehFH/B4GgdJyFpCJMCCmbooOiZr6gpNJbIHY
         LQ80BkfXxyNj00AVvQUUtPh68/MHfOpdCgZjznEyMGkstGF2ZTLweW/YDr8jP3u1/2jS
         jV4LmOwS8I98reitmR60w5gkE4y7j8knowvPwxr0/8yIh8FdfB3FVNOOIXjP236sCnAj
         Bsg1vxA2LlgsI8c70BqJiYzmuFPQAUSf6fOZzwyRpJZqighKeRq+RwOvJSdxheqm2ZZI
         VdEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716295162; x=1716899962;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rFHfSKWBFX4oULUBSbLjfPQh2Pl5/BKyXUIZgUEiiGU=;
        b=MhObdUM8zofZlpejibgOLH8B1Ce839dmsMLayIBh+jDD73Mk2nTyNRhAvrnm4b7kOz
         XQgNvehBLLyZdAJyLR+xozKRw3ssiw2uuMekL6ZjVA/K6NtRF/Ix1CyUQQEp8BxGPCh8
         n5ZFr3fwiCjfPOp7AzLXBTbGNcd23BoVvwKhG7oW5wo5YXNm5Tcp4o1E1rArfYnNoyEH
         kLY9wORIYVx0XJZ2Cc1rUcYZmQdbBOzMAwe5Y6KijQhD9sDZXK0KmF7wAKzGBwmGwIXG
         kwQLut8OEDFw/lCNas3W9l3T0XywU9r4113q2xhN+3NcXZM5cMT0hNR4RBewEJY0q3dl
         omDg==
X-Gm-Message-State: AOJu0YxbzMmERJ3OBWyEPWmZe74N6+YQtQZsSvY5QX6uBqv2ygWOfNoK
	UiC5s5d92fJffzrRGjSYMj4wqYWQySF7W1KpYk0hzYjlzyPghDDCpi7UaLTUxcknnPxJeUAvgZ2
	y
X-Google-Smtp-Source: AGHT+IEvltkz4if2mxEen2lTr2KhIpEOYd6K4dZEz4QIB3jeYLnsT4m4Ugjdm0c34cbMTb/+slMGSg==
X-Received: by 2002:a17:907:7da3:b0:a58:e3d9:e2d6 with SMTP id a640c23a62f3a-a5a2d672f76mr2711555566b.56.1716295161772;
        Tue, 21 May 2024 05:39:21 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:adf9:e5d:4c15:f725? ([2a01:e0a:982:cbb0:adf9:e5d:4c15:f725])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a179c7ecesm1603819566b.112.2024.05.21.05.39.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 May 2024 05:39:21 -0700 (PDT)
Message-ID: <af573ea4-5bfa-4a21-84aa-31fd7c486732@linaro.org>
Date: Tue, 21 May 2024 14:39:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] dt-bindings: display: synopsys,dw-hdmi: Mark ddc-i2c-bus
 as deprecated
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Marek Vasut <marex@denx.de>
Cc: devicetree@vger.kernel.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Jonas Karlman <jonas@kwiboo.se>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Liu Ying <victor.liu@nxp.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Mark Yao <markyao0591@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Robert Foss <rfoss@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 dri-devel@lists.freedesktop.org, imx@lists.linux.dev,
 kernel@dh-electronics.com, linux-arm-kernel@lists.infradead.org
References: <20240521104057.10485-1-marex@denx.de>
 <20240521122955.GH16345@pendragon.ideasonboard.com>
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
In-Reply-To: <20240521122955.GH16345@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 21/05/2024 14:29, Laurent Pinchart wrote:
> Hi Marek,
> 
> Thank you for the patch.
> 
> On Tue, May 21, 2024 at 12:40:47PM +0200, Marek Vasut wrote:
>> The ddc-i2c-bus property should be placed in connector node,
>> mark the HDMI TX side property as deprecated.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> ---
>> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
>> Cc: Conor Dooley <conor+dt@kernel.org>
>> Cc: Daniel Vetter <daniel@ffwll.ch>
>> Cc: David Airlie <airlied@gmail.com>
>> Cc: Fabio Estevam <festevam@gmail.com>
>> Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
>> Cc: Jonas Karlman <jonas@kwiboo.se>
>> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
>> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
>> Cc: Liu Ying <victor.liu@nxp.com>
>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> Cc: Mark Yao <markyao0591@gmail.com>
>> Cc: Maxime Ripard <mripard@kernel.org>
>> Cc: Neil Armstrong <neil.armstrong@linaro.org>
>> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
>> Cc: Philipp Zabel <p.zabel@pengutronix.de>
>> Cc: Rob Herring <robh@kernel.org>
>> Cc: Robert Foss <rfoss@kernel.org>
>> Cc: Sascha Hauer <s.hauer@pengutronix.de>
>> Cc: Shawn Guo <shawnguo@kernel.org>
>> Cc: Thomas Zimmermann <tzimmermann@suse.de>
>> Cc: devicetree@vger.kernel.org
>> Cc: dri-devel@lists.freedesktop.org
>> Cc: imx@lists.linux.dev
>> Cc: kernel@dh-electronics.com
>> Cc: linux-arm-kernel@lists.infradead.org
>> ---
>>   .../devicetree/bindings/display/bridge/synopsys,dw-hdmi.yaml     | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/bridge/synopsys,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/bridge/synopsys,dw-hdmi.yaml
>> index 828709a8ded26..d09a0bee54247 100644
>> --- a/Documentation/devicetree/bindings/display/bridge/synopsys,dw-hdmi.yaml
>> +++ b/Documentation/devicetree/bindings/display/bridge/synopsys,dw-hdmi.yaml
>> @@ -47,6 +47,7 @@ properties:
>>   
>>     ddc-i2c-bus:
>>       $ref: /schemas/types.yaml#/definitions/phandle
>> +    deprecated: true
>>       description:
>>         The HDMI DDC bus can be connected to either a system I2C master or the
>>         functionally-reduced I2C master contained in the DWC HDMI. When connected
> 
> How about adding an additional sentence here to explain what should be
> used instead ?
> 
>         to a system I2C master this property contains a phandle to that I2C
>         master controller.
> +
> +      This property is deprecated, the system I2C master controller should
> +      be referenced through the ddc-i2c-bus property of the HDMI connector
> +      node.
> 
> Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>

With the additional sentence:
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

> 


