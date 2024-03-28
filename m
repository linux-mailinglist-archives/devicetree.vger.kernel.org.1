Return-Path: <devicetree+bounces-52872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5562088A4F6
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 15:44:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 88430C0365C
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 14:34:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 501DD154434;
	Mon, 25 Mar 2024 11:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tSD1Xt0l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D7E014D29E
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 10:42:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711363354; cv=none; b=RwG67ZHggBSr1YOYhpqI4YZzzS5zo9/1uqGOzwcSt1lxhkvn2xh6GORAfy9E3QCJGWkbRdihLs1auxj018Q5v/YX3edEdNJ0bIjkndArtn4wWqFQNLUFuyAY2JfdRLVwzn49vIsffQwPH1bvnjjYMYyyvDK71AQqM4saSWRZCps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711363354; c=relaxed/simple;
	bh=z3CT9yWlox3/aF0VYScP5P5kdTwIOgNkytbsghE1Ofk=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=NtLQ/ZzqqiER+M7uIEMRMO+lAs9DjjDue84LgpN2isnPvJxrcOos8jdtsR4flar5xKUugjFrbokUtzHj9K4PY20PO951ATOswo+IwkAnZy+kFu0gNHdzV0z4VPWn9Zqp5ix30AwshvejclDyE5xTcEgr6OXcANl6O6snPEAHcMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tSD1Xt0l; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-515a97846b5so1162295e87.2
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 03:42:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711363351; x=1711968151; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iOyhJ8rAPLYOCfRnEKGEvdSoCo5896ILr4qRRRARoVc=;
        b=tSD1Xt0l+pPeN7yN5qgM03DilrFnbkGNg0IzCkDrH3nXGC5cToh46U18fRWk4Z4UZF
         8a249k3/0Hn1jBh/25bpM4EWwaMhoBa2QpW/pDfonMgKFRI7MrzW0jzh5t8b3zrky8nt
         REfE2sTSGuJEIC3UF3lY394DcKM20LMA9ldplJCF/X2ZottRoT7r/PflslRyfPVOk6qI
         j/0fKXn5HXrlcLUr1ypQ1DGljbBKfMSAwmg2KrBsuZSgojSnugzp/DUg/sJQN2HGi9s5
         ONzSOaEhzzkC5XmSe4U+vNWulQ0svCZK5iF0+18DvwuukXQDccegSysPdtQi0w1gMrMj
         kg0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711363351; x=1711968151;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iOyhJ8rAPLYOCfRnEKGEvdSoCo5896ILr4qRRRARoVc=;
        b=cMxQs4ss/0+jkxC8AeTp0TulD5kN/in38K+90rT1jh4zyaoSVZAYQUsDihCP1X7K6f
         ghms+i+9XnCuCOhGVCIH7n42eM07ebm25onEB0ihPi4LGSd6E9Ow1HOzMaEP8tcND+ft
         68TQV/K14O1AO8nUrSpaA8ijxrnpnYcDA4iYBuRizCbZq7gKIv9yZFTF+swW8UbkysJ1
         gxKjidyo25xImI/jPF5s/KqT2sWwbLYyCG+v7YdsyC0pL926yzL/UNzpuP3EYjUGh1da
         44D0HaPS5yxosMIrenD0P2XM0pjZ32tjbYUwdnW4J2W5So8Mx8+3ilNQ3LN/oxQtCpve
         pqFg==
X-Forwarded-Encrypted: i=1; AJvYcCVkdubYnprjvWLMIoVDA0IpFbxDhMVzPHfZrKgJYG30t9MiN4X18GX/haxFaLCji5s+Mu3CyTyntpgmKQV6j06ZrWd/UhJsCyPOqg==
X-Gm-Message-State: AOJu0YxOUEjAsdBJLndhERsTYZCLqvbQCQK4dA4z3KQxQyWuyONF59fv
	wHXvE7DvtqTCbmkveZv446oJduUGOqwktALhqIKzD2Cv9oUfGqZFnOeiHtax7jk=
X-Google-Smtp-Source: AGHT+IEkazFjPYmnkVqhUvfoXOqndNVNCbAA3D/6nQdgwXxrCZrD8CKfZeKA1WL1eeJ/mcYqddYPBQ==
X-Received: by 2002:a2e:8ecb:0:b0:2d6:bf39:46d5 with SMTP id e11-20020a2e8ecb000000b002d6bf3946d5mr3938623ljl.31.1711363350503;
        Mon, 25 Mar 2024 03:42:30 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:5176:2c0a:cfc0:1ada? ([2a01:e0a:982:cbb0:5176:2c0a:cfc0:1ada])
        by smtp.gmail.com with ESMTPSA id v6-20020a05600c470600b00414896bb1e0sm3166333wmo.36.2024.03.25.03.42.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Mar 2024 03:42:30 -0700 (PDT)
Message-ID: <e2d0e6cb-5dda-49d0-b14e-5e50e4184ce7@linaro.org>
Date: Mon, 25 Mar 2024 11:42:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [RESEND PATCH] dt-bindings: display: sony,td4353-jdi: allow
 width-mm and height-mm
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor.dooley@microchip.com>
References: <20240325103227.27474-1-krzysztof.kozlowski@linaro.org>
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
In-Reply-To: <20240325103227.27474-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 25/03/2024 11:32, Krzysztof Kozlowski wrote:
> Allow width and height properties from panel-common.yaml, already used
> on some boards:
> 
>    sdm845-sony-xperia-tama-apollo.dtb: panel@0: 'height-mm', 'width-mm' do not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> 
> Rob, could you pick up this one? Was on the list for almost a year.

I'll take it,

Neil

> 
> 
>   .../devicetree/bindings/display/panel/sony,td4353-jdi.yaml      | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/sony,td4353-jdi.yaml b/Documentation/devicetree/bindings/display/panel/sony,td4353-jdi.yaml
> index b6b885b4c22d..07bce556ad40 100644
> --- a/Documentation/devicetree/bindings/display/panel/sony,td4353-jdi.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/sony,td4353-jdi.yaml
> @@ -23,6 +23,8 @@ properties:
>     reg: true
>   
>     backlight: true
> +  width-mm: true
> +  height-mm: true
>   
>     vddio-supply:
>       description: VDDIO 1.8V supply


