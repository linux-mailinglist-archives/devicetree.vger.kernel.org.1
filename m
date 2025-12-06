Return-Path: <devicetree+bounces-244929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EEBCACAA4C0
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 12:03:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 058A93059372
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 11:03:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F57D2D8DA8;
	Sat,  6 Dec 2025 11:03:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="NDDX4j07"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5C90286405
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 11:03:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765019009; cv=none; b=h6pDl4hKTnrdaybe+90KPqo8qlvCNC1amT9NcZoVnbmeD48UlrCfyh4sOZ2feN+/v3iZFKdiAIGK/RftjLKfXthJB2iqrP51RUWKKELHJst1G3rD7HCA8IXHjjwFmAOj1VU4LmI4VmyfC8Up9vsSsnWMJYDEjDKg30+5ZYIjXGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765019009; c=relaxed/simple;
	bh=dngnq7GvsuPBUPStq0NEuAg+8blwIjJfv9zdV4gfuNs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Bomh+8CvZx5GD0HWfdkAOwaLwgLfxHMKpplV2BmQ/jOjMgtO6w+4c19PgiJCWyli3WRClGtO9g/AtgJv5Q2pl2PHDrWOtMjAr3cxJn+Gt8slmghAGlJJfrscZJLWw5MdH9Rz8ftKyL0qScj5L4mW2SK+sbnB5UvjAHwdMT0esi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=NDDX4j07; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47118259fd8so25856575e9.3
        for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 03:03:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1765019006; x=1765623806; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Di4nXMnpEeOTLfF6SZ5MHjacrS6rmAmqyqAmm0YeIzo=;
        b=NDDX4j07C6QGiw1g4GNI8cPJ0LXAIIl4j75LWve9dN1Qr+ocDtbTnzMi8IA/JY7Q0Y
         O3KOYueAFOX4EKOO8g0bymnCIXTQrQ4uz0u4/kjwZH1tSWJf5oSMGacGj9kkqTaSu1Cn
         QsJb2jL9VS0d9WIpWOPS7Wm4h8XHtSYJSZv2zF56BCuTSfrekZrrNNVhIZU9B3GN0p3N
         kiIDRlAovgIxbcNOLhTtd8L3AU/CkzpFz5vcZjq/mm8fsPNnPyfhNXIbAcel67TdIT7B
         S/+X0/kubDfpx+fiQPIugBmEMtau6lRO/x4MTCbyfTJgca+cLa55icOY67U72YDYdyU3
         zVAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765019006; x=1765623806;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Di4nXMnpEeOTLfF6SZ5MHjacrS6rmAmqyqAmm0YeIzo=;
        b=iA3dl9w+XCX1r7Rhusl2wkI+WGY3d2/ZmAotr7cd2xBAf1uB0voE5Z1R3ZSZERMKON
         oqrco6M+N/F8q3FvztXfOSeWA38I7GHc/hf+pzG/qBaEcv+twPIgIE6psPfjmc3+i9Lg
         mClP5hV8WVfVD+x27Excnl5DWr1Nut4698vFEabfgMQvmoy+9pSugUZKTaDDkomQKMOF
         AipF+c0PqmENNyggMI9lPlllkWZ9oenfBQI6ZePtTN0TkVlBVMbedM2tGVwCtkrWq97E
         5EjGPwcXZ1kH0nHpA/5Q79SQUiY1ex7x6vqk6FaKE9IcWn6VsxwTXDzuPEKXjyzAQkyA
         CuzQ==
X-Forwarded-Encrypted: i=1; AJvYcCXnEAD0IdBcaOW1yOekXwDHM0PIzV899paaNSt1msfDQq7rA3FtSKWFdfKHUI9zDvW59KfVwAN3H13p@vger.kernel.org
X-Gm-Message-State: AOJu0YwobS78ltzg9la5D8MCRrIsNY5CABwpcL0OmWD2AMiWSoOqrFax
	EA7n5sACMV1fv4lSoXxInYitK/DyvuErOYfkvacvyk1kDRdrbMHddTsj9eXpwOMh1hg=
X-Gm-Gg: ASbGncvbvrSWz8RiQwKBeA4CyUsGBlZO0cgxnl9KLamBY+9MaLIQVFYz/fWQqDfq8d1
	+4bRGEx6FbPQRVolQtO/b1BKmUVX5dGeBJJz236PmrABEirUtCoz+R7LOpBwnZnD4lrR2+gWh1/
	o3EpJDCu5vR/hOONr6V+ZPD/RxFJshrhuGFbFnELU86bSzP6LR3jOigu9QhTQax1HHFFJyrgSFC
	mON935G/CQJ7NVg1uk9Qe0NKEeAnG19N+KZhWHb5noVbKLEsQFIIFCqa7tuQ1fjHxQ9kGialdPS
	QPbMdyk0ZMtXGTpdSDM87+/VK+NeKk1G6cMgE+5CQlP+60eLfONCBXuY3MQ3xAmUbOmcdHDKrd7
	WB/i1PM16dbxbUqsSlSXoY20NU8gCifkzZs83H4Y2VBXu0PMOuEwu5qgYpQkeW9HU0tEXBjZN8R
	Q2fmiS2enwfUDYcobtYlw=
X-Google-Smtp-Source: AGHT+IGlK+iCvO82Fk/1C7qwDEFEQa4UjUl1pzdRaRhsSUr9urYgL5wdrtLcash8bZJTncBMl0oYaw==
X-Received: by 2002:a05:600c:1c9e:b0:477:7b30:a6fc with SMTP id 5b1f17b1804b1-47939e4d0camr28235395e9.30.1765019005989;
        Sat, 06 Dec 2025 03:03:25 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d22249esm14170448f8f.25.2025.12.06.03.03.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Dec 2025 03:03:25 -0800 (PST)
Message-ID: <51908ef6-f777-4a20-acef-538d9e715790@tuxon.dev>
Date: Sat, 6 Dec 2025 13:03:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: lan966x: Fix the access to the PHYs for pcb8290
To: Horatiu Vultur <horatiu.vultur@microchip.com>,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251119134750.394655-1-horatiu.vultur@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20251119134750.394655-1-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 11/19/25 15:47, Horatiu Vultur wrote:
> The problem is that the MDIO controller can't detect any of the PHYs.
> The reason is that the lan966x is not pulling high the GPIO 53 that is
> connected to the PHYs reset GPIO. Without doing this the PHYs are kept
> in reset. The mdio controller framework has the possiblity to control a

s/possiblity/possibility

I can adjust it while applying

> GPIO to release the reset of the PHYs. So take advantage of this and set
> line to be high before accessing the PHYs.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

> ---
>  arch/arm/boot/dts/microchip/lan966x-pcb8290.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/lan966x-pcb8290.dts b/arch/arm/boot/dts/microchip/lan966x-pcb8290.dts
> index 3b7577e48b467..50bd29572f3ed 100644
> --- a/arch/arm/boot/dts/microchip/lan966x-pcb8290.dts
> +++ b/arch/arm/boot/dts/microchip/lan966x-pcb8290.dts
> @@ -54,6 +54,7 @@ udc_pins: ucd-pins {
>  &mdio0 {
>  	pinctrl-0 = <&miim_a_pins>;
>  	pinctrl-names = "default";
> +	reset-gpios = <&gpio 53 GPIO_ACTIVE_LOW>;
>  	status = "okay";
>  
>  	ext_phy0: ethernet-phy@7 {


