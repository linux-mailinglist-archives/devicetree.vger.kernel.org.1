Return-Path: <devicetree+bounces-151092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C6BA4462C
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 17:35:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F63816FBEC
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 16:33:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B6A91946DA;
	Tue, 25 Feb 2025 16:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="AGPOuvXK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77FA2192B75
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 16:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740501193; cv=none; b=iwB6xeHiULsjImYp9A+eICIV8gjhAslNHP1KMMDREKJaag7CoXm3WK9HA1xw0mVDt/wMzrhLMEamPHsG1tIRRbhHAKGCWKNMw+1FuGWKRjG8pC22R9yIh3m1BvsFZ0GcWfDeeZCQyWCfxMdncOTkc1pTNDoJ9Txa2XARzW2ceUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740501193; c=relaxed/simple;
	bh=hGWSqIgg/rBZbqcfD2ICgQjcgKFhcZPXUXCI6ZsG+70=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sH72WBNZkvbcgKWWuoH4bSGfYAwD5J4n9sPeSC5npTCorKQf3yK9z6+zGDm7t+/h17QQGu3dbyVjUsDG/fEUq/OW/Kf+JXuFpIqAtP4di5lvLjMrMenKHbMuxCJTzYa3VHjy8/TtcE7qKlgqsstQtUWNRwuzKTlr56E5+B2mmeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=AGPOuvXK; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4394a823036so55763685e9.0
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 08:33:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1740501190; x=1741105990; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ESHe5tOObnpKqqZ922yCUdfxuhB0YSTVuyOcdcMSVyA=;
        b=AGPOuvXKLC+9ws0AMGpZq8o/5jISLMMuUYac2tZx/ig+Mu3vvseZnOJ1S2G55vG56F
         5cto8FvQJskn28Mgefi6F44w1SBFzmQ5Dxk/rrfPLsOwf23ZPvt3E7NSr/1WqskkStlV
         xHN5p92E66aRGC6rfxWrEIFDbq9BfB6NmRN/4VJPSQqK0vWAhoJrVZyesrg+Ey0Ftwlj
         MJbmXYpyaD2tz3YVdoqPJ7VKt8XFHLMjT3GkDQxvDRtxEUCyI57a+AqeiglpJKJr+p7K
         p5TtJOG/tg96tUsa7z9ZL9M3No8YBCCTG+PuD1s1tc/QgG5+afhFp0sSasIzlxdoXeRs
         yuZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740501190; x=1741105990;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ESHe5tOObnpKqqZ922yCUdfxuhB0YSTVuyOcdcMSVyA=;
        b=N6AAlRdzniBJ5tQYZE7k0IMRQmXia050DJu3bxtbQGrygUYcAsxXz7+vkiSaTE5Nfj
         QKHrThYu1vwpYZj5VJs5jlJ4CUzZ1bfqmHnTPIUmTigOQ9Pl2wayQtVQNvJTE2IOJkt5
         PFlwOM2PFbBrQJ3F76ucWnsDfK/5YARqbc1pyDwpCZecoM1LAWTQD1v2sKZPSMcOQZNC
         ok66tjHsJeqxrpM9YK1kScg2JuWNjhlrWiaf6EgCjzv9K8bbBAmp/JuX0YZoKPoSP7Ft
         J/P1JK324dHcukwz1+v+GgOPCfhX7cu7BqlApbYJmHcegj34HBwybGSg00HlFvXbfWF/
         I28g==
X-Gm-Message-State: AOJu0Yw8h/dIGwEYd9QOne5+IGLA+DFWW6t23Tyy8DBpCan/TnkkKRbb
	RKrQmNSdgFejA+mV4TUTkITF7feFLLGZLDF6CqI+FXHXCoTGD4VX8ZraDepaOGA=
X-Gm-Gg: ASbGncvw/Vh/fwoIm9uolIKHR4M8/YV4ckg4HeL7z8dNKxDfhkMDJpQdDrTQKNKIYR3
	F1/gMG9Iaq11akrjwIbjRh5B9nSzS1G209P4Bh9adyGDbun4wHd0DpyisEUm89QZiZFpsYOolMy
	hr7npto/Vp+flCVKRVNbK9G9l1oC1aQSAT3dZsBYiEsaOA7G0KWyNuwk4MnVoNo7PzEvSiLC+3B
	dv09NMEvkSqqNN+Xw7MIkUKsTyFHujzDk9uYubAiTBjLoRrWQAFpDaV35AxBXxIRgdhT2Dc9ysa
	/icuKZzDg2ZX5nIgdqcjhL/bHkHJVC+wKg==
X-Google-Smtp-Source: AGHT+IH8putBj58H1Qc2/Pc5IYBftrUEfWyIiIH/BzccCEeS7d12VbdeMMF1dKqYrd30iJtTHLg91Q==
X-Received: by 2002:a05:600c:350a:b0:439:9b82:d6b2 with SMTP id 5b1f17b1804b1-439aeb34f86mr181448335e9.16.1740501189564;
        Tue, 25 Feb 2025 08:33:09 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.25])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ab153a7bcsm31838645e9.13.2025.02.25.08.33.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2025 08:33:09 -0800 (PST)
Message-ID: <09eafe54-c262-4db4-b11d-0644a1f90a14@tuxon.dev>
Date: Tue, 25 Feb 2025 18:33:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/8] Add System Components for Microchip SAMA7D65 SoC
To: Ryan.Wanner@microchip.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, vkoul@kernel.org, wim@linux-watchdog.org,
 linux@roeck-us.net
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-watchdog@vger.kernel.org
References: <cover.1739555984.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <cover.1739555984.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 14.02.2025 20:08, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Ryan Wanner (8):
>   dt-bindings: atmel-sysreg: Add SAMA7D65 Chip ID
>   ARM: at91: Add Support in SoC driver for SAMA7D65

Applied to at91-soc, thanks!

>   ARM: dts: microchip: sama7d65: Add chipID for sama7d65
>   ARM: dts: microchip: sama7d65: Add DMAs to sama7d65 SoC
>   ARM: dts: microchip: sama7d65: Enable DMAs

Applied to at91-dt, thanks!


