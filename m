Return-Path: <devicetree+bounces-73544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D69FD8FFF47
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 11:23:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6E471287077
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 09:23:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E176A15B57D;
	Fri,  7 Jun 2024 09:23:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q70QGk70"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1760A15B96E
	for <devicetree@vger.kernel.org>; Fri,  7 Jun 2024 09:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717752180; cv=none; b=Yt6DK28EZUb8dueE/WVYH+lEM+f/DhL07pDPWmWLetU61dcYL6lxAAgAtBhJ4Qk+aLAxVQHl3KnqNWuWyDLP1o70SVzz54qF+YS8hHTMHa6a0Kxro/wVXCofn6j2hKUGCI2aYz2MkZaUl2R8D6v2DgWhnG+mYbDmmF2TjwiI1JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717752180; c=relaxed/simple;
	bh=YwoUri3ktWMFoZow1yFuIzi/afm7rRFS1XgwQ1LDl9U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZPyUKZzGpEKjbrlysPk4QH74RCTp2JshNgsBOIeQ3a0NjTZbQgur4XAPSFmC3Ws2HbLTvMNt2mTnRfvQCmB1ty2r5lUNA0MEnSo7Bidjgk6DfBt/5Vkgv1Hyizj6fbwERgTX/kCPKtmw2jhGvyLagUDVgai9f9eLhmEMhkyV3Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=q70QGk70; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-35e4be5bd7fso1647832f8f.1
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2024 02:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717752177; x=1718356977; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:reply-to
         :autocrypt:from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u0T4B4BXzv7yNTZXWNQwkT6ayKsObAY6eNGwzmrTqAk=;
        b=q70QGk70GVQHAU2c7EGhfjPd2EFcMJUqqGLi7o+6ToU4BWJ8NeNrAh9QZkq3qZGlZr
         Uj25mXQjBN+srKogIwoo1y2v0AH5fpm2DWgmclsjN42NRF4IYSWTu8/+z7NFalsdbRbD
         hpaMWycqGxqTWvMM3PgUP8/A0ZsjgXQDNPIIHal1eV/9yjHdtMS4qGCH1durAj8X7ubw
         eXxHx3W/ApMWqE7+P3Y/UvWqNH08xzu/gpj4xsrY9z8p4g+Q5wFgvt2ATiI1gyRfMEwP
         N+jrmWRYyF5FAjukZ6cliguRxsYoIek5AhGXPUb9YGhhHdRLGnkY0UAnc1ugFlYXplQc
         K9CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717752177; x=1718356977;
        h=content-transfer-encoding:in-reply-to:organization:reply-to
         :autocrypt:from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=u0T4B4BXzv7yNTZXWNQwkT6ayKsObAY6eNGwzmrTqAk=;
        b=uKgB4wBbmt1uiXw68B8IfUR5n5k8fm7QfnhGHTkfiUe95FYC8BEto3nso1ytSYmWMD
         2s0Vid5RgF8n/QtROJyKg39aZEw695eVfuS1zaQhv1kyXGxSmQDinzxjcyLsi9EHtAap
         CrqIP7kE7ojvpK74JdwkPR3TBQrXNv+WqzhLNxJ72pLxg4WP1n6R/qWeayG3zROvVJx+
         BaSxmGarYNFN/AHWa0TZLg8tC4RJF1LINSaylIlk+35t16180w/y30/IM931pW4uqqUr
         fDre6DjIVG7G/2+Ms4zzeYAvTdWLCZSIoxIOQgq95z4sIqIgmcFJQVPcjRQXvleFUQwn
         NQhg==
X-Forwarded-Encrypted: i=1; AJvYcCXa0/8exOH1rRBwlJ8PQe10eAEXfoUcp2Kq8VBplQVKnxgj9HXgDV2jC0eYN7s5WVKVzkPXa1WAB9T3wjoxplhrieKTE8I63Ugskg==
X-Gm-Message-State: AOJu0Yym8/gGc5oF173QNuPowcmKQCD3yLJWP1e1r1PkiqsQqkaOQi1Z
	J5VlYy57WKlgh3n1tSYrNYL8kIB+D9BdZx7mt9m2SjxXg/nowbH8h/0dtiQkTO0=
X-Google-Smtp-Source: AGHT+IHI/SRbC76tGKuWAIzzK3sqU7ca676FAKWmmkTRFEoO4cno8PeQyR6PowYlGkQDamtVdfzs9g==
X-Received: by 2002:a5d:6c65:0:b0:354:b7f0:b09d with SMTP id ffacd0b85a97d-35efed2b454mr1715011f8f.2.1717752177192;
        Fri, 07 Jun 2024 02:22:57 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:7e4b:b0d3:6a34:6404? ([2a01:e0a:982:cbb0:7e4b:b0d3:6a34:6404])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35ef5fd1d7asm3585930f8f.116.2024.06.07.02.22.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Jun 2024 02:22:56 -0700 (PDT)
Message-ID: <3b46ff8b-3095-4170-ab94-3410cf841383@linaro.org>
Date: Fri, 7 Jun 2024 11:22:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] ASoC: dt-bindings: linux,spdif: Convert
 spdif-reciever.txt to dtschema
To: Animesh Agarwal <animeshagarwal28@gmail.com>
Cc: Daniel Baluta <daniel.baluta@nxp.com>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-sound@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240606041212.78428-1-animeshagarwal28@gmail.com>
Content-Language: en-US, fr
From: Neil Armstrong <neil.armstrong@linaro.org>
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
Reply-To: neil.armstrong@linaro.org
Organization: Linaro
In-Reply-To: <20240606041212.78428-1-animeshagarwal28@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/06/2024 06:12, Animesh Agarwal wrote:
> Convert the dummy SPDIF receiver bindings to DT schema.
> 
> Signed-off-by: Animesh Agarwal <animeshagarwal28@gmail.com>
> Cc: Daniel Baluta <daniel.baluta@nxp.com>
> 
> ---
> Changes	in v2:
> - Add linux,spdif-dir compatible in existing linux,spdif-dit.yaml
> instead of creating new yaml file specifically for dummy SPDIF receiver.
> - Change file name to support both transmitter and receiver bindings.
> ---
>   .../sound/{linux,spdif-dit.yaml => linux,spdif.yaml}   |  8 +++++---
>   .../devicetree/bindings/sound/spdif-receiver.txt       | 10 ----------
>   2 files changed, 5 insertions(+), 13 deletions(-)
>   rename Documentation/devicetree/bindings/sound/{linux,spdif-dit.yaml => linux,spdif.yaml} (75%)
>   delete mode 100644 Documentation/devicetree/bindings/sound/spdif-receiver.txt
> 
> diff --git a/Documentation/devicetree/bindings/sound/linux,spdif-dit.yaml b/Documentation/devicetree/bindings/sound/linux,spdif.yaml
> similarity index 75%
> rename from Documentation/devicetree/bindings/sound/linux,spdif-dit.yaml
> rename to Documentation/devicetree/bindings/sound/linux,spdif.yaml
> index fe5f0756af2f..0f4893e11ec4 100644
> --- a/Documentation/devicetree/bindings/sound/linux,spdif-dit.yaml
> +++ b/Documentation/devicetree/bindings/sound/linux,spdif.yaml
> @@ -1,10 +1,10 @@
>   # SPDX-License-Identifier: GPL-2.0
>   %YAML 1.2
>   ---
> -$id: http://devicetree.org/schemas/sound/linux,spdif-dit.yaml#
> +$id: http://devicetree.org/schemas/sound/linux,spdif.yaml#
>   $schema: http://devicetree.org/meta-schemas/core.yaml#
>   
> -title: Dummy SPDIF Transmitter
> +title: Dummy SPDIF Transmitter/Receiver
>   
>   maintainers:
>     - Mark Brown <broonie@kernel.org>
> @@ -14,7 +14,9 @@ allOf:
>   
>   properties:
>     compatible:
> -    const: linux,spdif-dit
> +    enum:
> +      - linux,spdif-dit
> +      - linux,spdif-dir
>   
>     "#sound-dai-cells":
>       const: 0
> diff --git a/Documentation/devicetree/bindings/sound/spdif-receiver.txt b/Documentation/devicetree/bindings/sound/spdif-receiver.txt
> deleted file mode 100644
> index 80f807bf8a1d..000000000000
> --- a/Documentation/devicetree/bindings/sound/spdif-receiver.txt
> +++ /dev/null
> @@ -1,10 +0,0 @@
> -Device-Tree bindings for dummy spdif receiver
> -
> -Required properties:
> -	- compatible: should be "linux,spdif-dir".
> -
> -Example node:
> -
> -	codec: spdif-receiver {
> -		compatible = "linux,spdif-dir";
> -	};

Acked-by: Neil Armstrong <neil.armstrong@linaro.org>

