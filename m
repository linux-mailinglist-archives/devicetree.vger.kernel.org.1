Return-Path: <devicetree+bounces-197993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DE784B0B7F0
	for <lists+devicetree@lfdr.de>; Sun, 20 Jul 2025 21:30:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B3AF71896DDB
	for <lists+devicetree@lfdr.de>; Sun, 20 Jul 2025 19:30:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C06AE2236FD;
	Sun, 20 Jul 2025 19:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XQxvSgoj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1921B22172C
	for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 19:30:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753039821; cv=none; b=XMnWC1m1zSHykp0jBJnbzy19DKEpuZOzfIUxt5Nq8lRrtEuazgPeWgbk5R4HF3IoPCbDcGn1phiD4UobMgmEyTkYo7Qdxdic+v1eW+qjBecHj9pcm3KWc2n60SyLLoLo+r86oFdXEBgLcPP362zrTjuvIa6KcLUyY/9UaMN3PzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753039821; c=relaxed/simple;
	bh=ghqmh3TE//hyt6GyPI3uOU0dAX4yL2Qg3jl94n9vAgM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gMy1TnZW37WB36T95//O0sDcBXsS3ZqrDaef7O0X8zsEUpnfHnFKbS//3m3AcliPu1IZ0hNezotQ9KkVuheQY4/c4LDOz9qvRm02uwtkIovnDd9Nb1EIQS/UZhgcuIR6uc8LemkZiSVc6VJH9+0lwzvBOY62wlEhpJGoz6PTzbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XQxvSgoj; arc=none smtp.client-ip=209.85.161.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-615d75ee53dso114144eaf.0
        for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 12:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1753039817; x=1753644617; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mgCpQGFdNKfFxGlOj3n44UsvhM4SmScTq7fqsGjnsnI=;
        b=XQxvSgojdrlJ21QWdBTOuapCEdefjUdjFVmdcooUGxYYoVvl+jd5P1/Gh9cUw1F76A
         T0VgutCbLTiCFHY9EXtJA6Qfyz8MIZ+uJGf8OyMVFhz25wWATipL3LFwww4WLersOdIL
         k6PhbyusX6enIWkJnngy9c6lJATV+Nz656vrWDrJQKe6FICsMtZ+F+T04HNqIoMCmGvv
         yTkH4q//MrXAZhl1fxHo/g+Rl9xuHVqUfx4E1kP8qN9iukC21kg0+bHt2zBIsdSnB3uh
         yI9qEmE9AII3rSaeukC/mot907rJA6jM47MvwTmwh14pZW7GcMt5sfHS/03R3UpzI7lx
         FgOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753039817; x=1753644617;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mgCpQGFdNKfFxGlOj3n44UsvhM4SmScTq7fqsGjnsnI=;
        b=ejBKucJzrGpRkXyxWgABNUJw8pRDH7HxXaftOqqz3DxzUS6t7QtL61rW4Q9LKhuBw9
         JfjG9waYc7aswqX9/unquSk2T7+Y9wM48K9k82Iey/hAg8KmI3w5bFWrQDF9Wm+gEh0T
         fsO7+3767+/Jzx5PbAbCVcZ/5iN9F/Y9nhSxqj95AvtRXFtX2tx/y6PlcB2o1KPRBoek
         Rq4XN6K13kkL7Ax1ZNaA8T1A2sYUB+RXN50DLL/rjDDYmnZe01VUy6Zpz9rh/J9cSCyy
         C45kUkTlqvJo2ZOZyiUFQjxTj5ZyLrlcJZNW5mN+G8oy3OTWdKi3lXMcRCnLOwQjPKvP
         2Vdg==
X-Forwarded-Encrypted: i=1; AJvYcCVhWvjIYaDwGoyHG5Lo9VTnN8vX9ZB5Xas8BN4wXmYbwccracq9FYeKISuuR4tvdam9h3+JBWW3DfCQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyaKHpzWSCU9PaVM7IDQf0I+T0BhYlTMx5fndb94gq+K+y2lB8R
	2E49jUTVDQ4O8k2WtaDex01vm+Xo+lRemFbsnjeU6odz8W06ZefCAUl7EjeFKpvpvfU=
X-Gm-Gg: ASbGncsz1YP22oxpB0zNahZImVNuWo3ZsIO4gWsfbs9NBji56nmJOwtVHbXJ+YDBkQu
	Q40FKqsZTZ0XJ3+HuhBroM1cdGxyBSQ0LG9Ip9ZA3r/NHtAAjWe95XvZF7OuGo45GPpnTMh7Erp
	fLh2dBRsrzMXs51m/ipfVVnYR8oCUSUxa30/AlTdpbK1JKxNpCwRnENb3CSQ9oOH4ITzE/3iNX+
	Nb1dvzlqEJOjQ+NNX6wDtlxxJvH6DR+dsHrUSdtPMwt/ISJkheOixmPAuxWRDgTmOEUEDOjk4k+
	c4Cpi5mz+AsuzTB/yd7Av1puzJPzi79UR3rf163hPSDceLIu44tBoKeFEcXnCakmRJFVltsJiOf
	6RsQ5/CYFN5XPnKP0GvFwvQEnA4tsTGNYsuCrufiZsUCmNrWGah36SM3KxfZhieURuiIKilen/O
	Y=
X-Google-Smtp-Source: AGHT+IHYlwxJWcEbEzE218c+xTVkYKK8Z8wtqJxL+cWGCmY4FshNpm6DDdkY0i7NRft8/tk1CqodKQ==
X-Received: by 2002:a05:6830:2aac:b0:727:423c:95d5 with SMTP id 46e09a7af769-73e66114315mr14839191a34.3.1753039816972;
        Sun, 20 Jul 2025 12:30:16 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:6b9c:951d:3d17:9e9d? ([2600:8803:e7e4:1d00:6b9c:951d:3d17:9e9d])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-73e83be07c4sm2291733a34.61.2025.07.20.12.30.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Jul 2025 12:30:16 -0700 (PDT)
Message-ID: <84ad0f66-311e-4560-870d-851852c6f902@baylibre.com>
Date: Sun, 20 Jul 2025 14:30:15 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re:
To: ">" <sanjaysuthar661996@gmail.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Cc: ribalda@kernel.org, jic23@kernel.org, nuno.sa@analog.com,
 andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, neil.armstrong@linaro.org,
 khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com
References: <CADU64hCr7mshqfBRE2Wp8zf4BHBdJoLLH=VJt2MrHeR+zHOV4w@mail.gmail.com>
 <20250720182627.39384-1-sanjaysuthar661996@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250720182627.39384-1-sanjaysuthar661996@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 7/20/25 1:26 PM, > wrote:
> Changes in v2:
> - Fixed commit message grammar
> - Fixed subject line style as per DT convention
> - Added missing reviewers/maintainers in CC
> 

By placing this before the headers, our email clients think this
message doesn't have a subject. It should go after the ---.

> From 5c00524cbb47e30ee04223fe9502af2eb003ddf1 Mon Sep 17 00:00:00 2001
> From: sanjay suthar <sanjaysuthar661996@gmail.com>
> Date: Sun, 20 Jul 2025 01:11:00 +0530
> Subject: [PATCH v2] dt-bindings: cleanup: fix duplicated 'is is' in YAML docs
> 
> Fix minor grammatical issues by removing duplicated "is" in two devicetree
> binding documents:
> 
> - net/amlogic,meson-dwmac.yaml
> - iio/dac/ti,dac7612.yaml
> 
> Signed-off-by: sanjay suthar <sanjaysuthar661996@gmail.com>
> ---

This is where the changelog belongs.

>  Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml      | 2 +-
>  Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml b/Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml
> index 20dd1370660d..624c640be4c8 100644
> --- a/Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml
> +++ b/Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml
> @@ -9,7 +9,7 @@ title: Texas Instruments DAC7612 family of DACs
>  description:
>    The DAC7612 is a dual, 12-bit digital-to-analog converter (DAC) with
>    guaranteed 12-bit monotonicity performance over the industrial temperature
> -  range. Is is programmable through an SPI interface.
> +  range. It is programmable through an SPI interface.
>  
>  maintainers:
>    - Ricardo Ribalda Delgado <ricardo@ribalda.com>
> diff --git a/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml b/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
> index 0cd78d71768c..5c91716d1f21 100644
> --- a/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
> @@ -149,7 +149,7 @@ properties:
>        - description:
>            The first register range should be the one of the DWMAC controller
>        - description:
> -          The second range is is for the Amlogic specific configuration
> +          The second range is for the Amlogic specific configuration
>            (for example the PRG_ETHERNET register range on Meson8b and newer)
>  
>    interrupts:

I would be tempted to split this into two patches. It's a bit odd to have
a single patch touching two unrelated bindings.

