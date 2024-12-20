Return-Path: <devicetree+bounces-132903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6858E9F88E9
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 01:18:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2013A18819AB
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 00:18:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78C93ECC;
	Fri, 20 Dec 2024 00:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I9+0xJf6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 997AA5672
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 00:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734653911; cv=none; b=aXVyNQDXXGkhqeZOnHOEIehxYcbPu11oWyLM/Gn8rxpvrXB7TCKBAEYt9LrhbqspADBbY4eSQxJ0Y6Wu0f7pjs27xlJGicvIC4jdEPxXU7ts0/AvBmKVHFy4HS7ZHozXH+rhCKkSCpD9Koww658DX1NXs7FrdqRLF0R1xPxw5qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734653911; c=relaxed/simple;
	bh=Whct3IJnftP1WeEUDibunvLAv8LV1YEtnKIDnprdO9M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c6+KmqWpsnANqKT/Zf9+m8uN6Rszygpx0M9NndPxpT+YM8VHAdyT86ZwH7q0ZkQF09c/4XR8Tx2Y82crI5uJP7PTSpzX7G3GU+hsVSpCMa0GZ11QInWIuZbEummFbm6dem7UlIuW+VMvIeSBSywQr0MiaVjGFA4ZTzMwRmAnmNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I9+0xJf6; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-53ff1f7caaeso1345086e87.0
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 16:18:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734653908; x=1735258708; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JdEM25avAV3Wk0/A8V/RskskKqNdHIG3q8iPcW7Zhuw=;
        b=I9+0xJf6pJq8UfwtIe/blm+9hlYjjR4x2KAE1KoXmijiKz+6LzdgaToZ59p/kRU6f9
         atjGd7xlpxlG6XWx6UlyPPLXKC9sUScP6TnksFeG5pBwX8GxKMnXHyjEPa9BIgcNiwpm
         4MUIluGB/WZ7ZId5X+IsaVTjELbXdr8edVqz++mkDynpe8rXxtxEZDMyD9Uyvh55j51N
         vmrqYg1KyUZw69B1kGdQse5Xfp5fE0j1ATkriJbaY8ugI+mWpH2eTS593ruBnHjVsKiO
         qq2LolfH6zxaGSmEejEPP+dWA2G0/xCxZsSa7R5FndUcl878ZgPwyxFJV8n0ad5tsY+e
         j7OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734653908; x=1735258708;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JdEM25avAV3Wk0/A8V/RskskKqNdHIG3q8iPcW7Zhuw=;
        b=C/jtQFaVJHFE7CPVxlcgk+Osw0AnJF1ZmNm3y9jY3oV/VEp+1VTpFY0JQeWerAJVUy
         e/eVF4GxHmKlA2Z3S+nzQXcs0pj12AZcz+PxJcDO6WrL2i4YOikQQSxtHoxzPAaaj/hg
         0yrNRwIJsczzpm8BwLVI+egcggHdtCbb0SkDCOhYcq68Vi74iPIkC68eJ35aFE4U1jCO
         mSuKmHsC5R9m/ELdo/WdR3G7LQqMhkJEB/AjY4u3pukRrMko7XsgD6KPLUX0Z1fuoSnI
         22+trpvAKAhZ5JUv40gmOZj8WNnIxpJFREImsJ8eoPeyqCwfxpPclwXocymQTOIyc5PK
         Pxjw==
X-Forwarded-Encrypted: i=1; AJvYcCU5MRfkCM2GE7M30vQqF9fBGAXMUCFUwH975jg/6Yd0p9AnfcsRze9aaHWOv2xDiO4m30l/dFqRbATy@vger.kernel.org
X-Gm-Message-State: AOJu0YxOWPap8K3MmzE9r4oXFraZTUeC1HYqHsQuUrPBLKiYQqZ4XBEQ
	KAEbAx4/hwHDkvhNlnzoWM01b9WTVEejGL9X8thZbSUDiwAP0C7aCouSVko0IpY=
X-Gm-Gg: ASbGncstJJpEQkty7u8hZIe83pWSxLKK3Cpiv3SBAnHxU99NAE9KietiUuChiWkgv08
	D107SkO7XZJGz+8riFfMSwVkaWiRlPbHhjRAvKseL4lmOgaSfhpCioNBuC+PRiHPxvbxMkp2TfX
	06E6RQ3jRnAmqlRlUmaXCx6Kz4sgO8a2+OK2iLS7WRAv2lNWGkSDpeMSHP048/GP2RWqlGZIVhX
	N/JmhHEtgHhudT574a/LR4qSuo0xAh1wXpkF/9eBaIk9F6HC44WkPZtX2uHFyGslO5MbyupIIzE
	TPS6w5j5oSoa9k+lM2EtVA9TFQ+XjumgcoCG
X-Google-Smtp-Source: AGHT+IHaBhOQ2F/tQJgKM89Gv/3h/pUJDiIxhbwnt6itHhtFdLYkVHk0tzYt/YbigfNxUGxwQcqftw==
X-Received: by 2002:a05:6512:3d16:b0:540:1b2d:8ee1 with SMTP id 2adb3069b0e04-54229522508mr159038e87.11.1734653907712;
        Thu, 19 Dec 2024 16:18:27 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542238135basm315388e87.130.2024.12.19.16.18.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 16:18:26 -0800 (PST)
Date: Fri, 20 Dec 2024 02:18:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 10/15] dt-bindings: display: rockchip: analogix-dp:
 Add support to get panel from the DP AUX bus
Message-ID: <bjkcue3dfgaf5i66cqbiczifo7r3xngupghklxgevwqpwfeeix@i2jfd477igri>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-11-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241219080604.1423600-11-damon.ding@rock-chips.com>

On Thu, Dec 19, 2024 at 04:05:59PM +0800, Damon Ding wrote:
> According to Documentation/devicetree/bindings/display/dp-aux-bus.yaml,
> it is a good way to get panel through the DP AUX bus.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../bindings/display/rockchip/rockchip,analogix-dp.yaml        | 3 +++
>  1 file changed, 3 insertions(+)

Business before pleasure.^W^W^W Bindings before the driver.

> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> index 4f84e8849876..c45d92a2d901 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> @@ -49,6 +49,9 @@ properties:
>      description:
>        This SoC makes use of GRF regs.
>  
> +  aux-bus:
> +    $ref: /schemas/display/dp-aux-bus.yaml#
> +
>  required:
>    - compatible
>    - clocks
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

