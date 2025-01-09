Return-Path: <devicetree+bounces-136956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C16A070FF
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 10:10:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5D2E57A1A4C
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 09:09:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB0A021507E;
	Thu,  9 Jan 2025 09:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="oj5sSXdF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF95215071
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 09:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736413794; cv=none; b=N3lXgzW/wBanCpMSiD9/D4KBJm/6NMOARkWRQmoX56GwdETUyV6375J2d0nii5fLwpAFecNS9EHzrh5T23rpSBRGOx7RaHtIk4TK7YMaYbZ8tgg/QgumNq0C0X1awV+yIzTk9Ss0Znn98bYTkfo2e1c9XZz+BqVPH0pSPJ9gmyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736413794; c=relaxed/simple;
	bh=QfTgaoKC6k5LZg8mj2xJfLsTnj4oGukAD029k6OgTLw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FQm1KuM0KFOgQaeoLS+BjwNAZ4p2MTuPjxJR3ErUpbNPOpDi0sEeq+IhltnBl3/gdkbsziCKVfGKBx0FIIMhGfd3xbGWlhb8dYTa1LKT/Zw9DRv+JTysD9z8psNpkKKuXjyjDaQG6Fl+WKVYVW9GbAttziJ+6B6YPOd8Nrun8I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=oj5sSXdF; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-385e06af753so310524f8f.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 01:09:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1736413791; x=1737018591; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eDrWR7h2raxJC/jFcGE7XFAhit/WhKwllzn4v6e25aw=;
        b=oj5sSXdFHoL2tb7GWncbFmSriWZwpkWSzRXxuM3cpKiFFDqo4mko3QzDJasppHiiP9
         rICD/WGXVk4e/gmNIlP5LzuWnW4oebvQeTYyTsSXjSm4rHnyuWyLl67usPE0syfeIxmI
         W9iIos95jWnmCMuYEmlpa7C/8FSeUFSQx7lmve7jDVqMKiAkzvC10eolsuXjucpsO+Iy
         4tQ4d1CwglC0AC5KiFFNBUTBCN1TFd0n+4CdYMQGs6P4c3QBoHI4WRCPk/zaSegVo2yF
         XDt7RkUHXWleJ4OH+r58smEIwSc8p6+QIfLKkqJ2whdSh3+GydBkqmVviWr7vJ+TS89P
         8cvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736413791; x=1737018591;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eDrWR7h2raxJC/jFcGE7XFAhit/WhKwllzn4v6e25aw=;
        b=UirxgTpP9qp3lV06gBirWV8yWHV9ytNneihFaaDcy6t2gw1qqd5IJ/4D6iY3SZ5YXn
         NsDIvluVpt7cCbQ1w4jgzVgmh5I2krmsr8cgbLdsnf/s453RKTqSzDXf/WKix7iCkdyh
         L/hFynXB+2vcS7cIR4tLjez/hLWd6nIi5iblWxcL6Aj7qJWFfDe6h2z0rECv+X1uNmys
         NrI1C4WzcoadrC7APDtL8toCP5V4yzqNNRnaHp51Mhbc2leQWCZrLNHdMU7h02KNzNdl
         pdAldOC3NNiJvQxlBo/bC5KPHLquWixPHhFQxsW+wLoND3c7g3HWZt+Xn94jyrFRecOZ
         ijfQ==
X-Forwarded-Encrypted: i=1; AJvYcCXgcqj/6UMtMcGrBc0QDILwvkqDO7DDbGi11aFZ9sSN31G+BOY1CHr9fbKU5xgX5AQBteh76BI4ymvJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwOwJb+6PJGyafCJSuZxPp4A5V3w/wXYpDSZ9J1KA2qaYKxht0S
	v20/cotwemwpOdf3aWxCnLNcNry3ZECp2jed4FEbrEIHVuj0VWMiz+ligiWmMl8=
X-Gm-Gg: ASbGnctchfjUWjKnyC9baWTLa7mh7nC5S3xHJPIamlU/rO3BgbH4TO1SZda/hqzII1I
	kQbRz2kmkKe8pmBXSjiLJqbu7C89kVJ1M8EUxhqI1JJkM+S0lxPXLOO5QUffIpta6l1KCjJxAe+
	kBLGGHAraM9spVe4K1Bl3gcOZ0TQBpEblKIXXEPsfFOZF2rhv1JUHww+IL4GS9sSgH05aLY19g8
	+dtKZSCwANj/g8U1giFdVPdIJkFSv59vH00nppy2nrS2vrESQo+wZnzeKt6Nv6VwQ==
X-Google-Smtp-Source: AGHT+IGRJU00RisG9i0trOMKvJFYFliD2nOh14yfkZLJb8Z2MdvVwSvtyYD5ZhP9DVJTYxjtT/tgUQ==
X-Received: by 2002:a05:6000:2cf:b0:385:e961:6589 with SMTP id ffacd0b85a97d-38a87303d73mr5153466f8f.20.1736413790761;
        Thu, 09 Jan 2025 01:09:50 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.102])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e37d447sm1227370f8f.4.2025.01.09.01.09.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 01:09:50 -0800 (PST)
Message-ID: <36471228-4383-4b01-bbe2-0ec490617f6c@tuxon.dev>
Date: Thu, 9 Jan 2025 11:09:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/5] dt-bindings: pinctrl: at91-pio4: add
 microchip,sama7d65-pinctrl
To: Ryan.Wanner@microchip.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, mturquette@baylibre.com, sboyd@kernel.org,
 arnd@arndb.de
Cc: dharma.b@microchip.com, mihai.sain@microchip.com,
 romain.sioen@microchip.com, varshini.rajendran@microchip.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-serial@vger.kernel.org
References: <20250107160850.120537-1-Ryan.Wanner@microchip.com>
 <20250107160850.120537-4-Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250107160850.120537-4-Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Ryan,

On 07.01.2025 18:07, Ryan.Wanner@microchip.com wrote:
> From: Dharma Balasubiramani <dharma.b@microchip.com>
> 
> Add pinctrl bindings for microchip sama7d65 SoC.
> 
> Signed-off-by: Dharma Balasubiramani <dharma.b@microchip.com>
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  .../devicetree/bindings/pinctrl/atmel,at91-pio4-pinctrl.txt    | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/atmel,at91-pio4-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/atmel,at91-pio4-pinctrl.txt
> index 774c3c269c40..4b9f3373503d 100644
> --- a/Documentation/devicetree/bindings/pinctrl/atmel,at91-pio4-pinctrl.txt
> +++ b/Documentation/devicetree/bindings/pinctrl/atmel,at91-pio4-pinctrl.txt
> @@ -6,7 +6,8 @@ configure it.
>  Required properties:
>  - compatible:
>  	"atmel,sama5d2-pinctrl"
> -	"microchip,sama7g5-pinctrl"
> +	 "microchip,sama7d65-pinctrl", "microchip,sama7g5-pinctrl"

Looks like you have one space in front of the line

> +	 "microchip,sama7g5-pinctrl"

Same here. And this change should not be needed.

>  - reg: base address and length of the PIO controller.
>  - interrupts: interrupt outputs from the controller, one for each bank.
>  - interrupt-controller: mark the device node as an interrupt controller.


