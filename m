Return-Path: <devicetree+bounces-241142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id DA321C7A3CC
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:43:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3A648384041
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 14:35:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A87B634E742;
	Fri, 21 Nov 2025 14:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="MX7BK1nW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A817C349B18
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763735444; cv=none; b=c4A2xL7jEyTLiCgGVbwGYYCUcikdXWKTXSqEmXLiHd6WO5rooqASBPX+ewA7FS+voDJ6gYC11B6JyPdh2jse1XM27DKgvUW/5EEeyJGaLfMYVKe3CLYua5v+pC/2voylQCiyMu06YA6MJSNbPIh0hQT+5lwgBAUsHCClIfPAySw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763735444; c=relaxed/simple;
	bh=KXQOWIjK56bpiQC+8J+0nqxmrVQzLpGeJybi73VWBAM=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=gConP7pFbF86yAOObnch95LuqUcuRU8ti2pSampdzfqjw4QzdEOP400+0xhS/5QKEpajGcAMGjpereRq4EtNMmDtWwJX4+3uv+DjiIIgmwSNJ0Ht4siV/1besQjuVzhvnBEAJoaKYYFdSzKw78eFCpQgkjjVS9xZ728vKjO768c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=MX7BK1nW; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-7c52fa75cd3so1520401a34.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 06:30:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1763735442; x=1764340242; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aKieSb8r0n8ixRGiogCunXYcI3uEu9x/VZT0iJ07YnQ=;
        b=MX7BK1nWcWYDU7qI8bZf8qEpKb8eQGkN3zv6pL8Yr6dQHhHzk5Wj4Dg4ENsmSCKXK3
         FvkmXuiC6RK1DRzE3iw8AMoA7F9wmbg+hDLRl+GvwoRz0iwI0JggQ92ZhHnA+9G5Q5wk
         FrfjRzwvXh8uQRykCsAtjDBYoKjNyK37G1YGLNjmnM5zVEkktvnMoDGNNDEgCUHK5Sg0
         s6FoWQgk/iBivsKPHQmLzHvDrMZxV5BUoTgO78+8pk3hWAJFn7DbrbTJjDv8uGdzmm3V
         0R1PaXq6GA79sYN9AI64fCwt56irJygMDyXrljtzx6QAQH9nTqpXSBOMSWJYH0Nb/Gca
         sT+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763735442; x=1764340242;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aKieSb8r0n8ixRGiogCunXYcI3uEu9x/VZT0iJ07YnQ=;
        b=n0nkbpRSF+JfXzwiAa/971olcsjeT2QsEfZ2XsKFH8852QNMvnONWyBAj+mapy4J3o
         oMiYGduoNA0rnKcHmxVqjtlfbRMx98vYbteEXjS5KEev3ZC1nOYR02Lbs94En0UflQtg
         5iv1f03j4pwcCpP0Drq6OBsPHhCmt+csXT0U21TclN6JuKHfTGohFB4Ko2on7bHxAlxM
         Tzl6YKviyizxxgBq4CVEmBdzq21syFIxAb3R1oF58ouq2cbi4AC8mZ+zqv0x4D53WbM5
         pRirAfNO4Wj+AYpb9LhHDwcb8eJH9fBPjoXCEjU1XX/dS6cFOkMy/1po5ueoRNxeyMyY
         lwgQ==
X-Forwarded-Encrypted: i=1; AJvYcCXLBlCDvSG3bQQPEf/OsgHxIPGqGklbGoWwXyfVM/AE1IxB+GCYkTqr1nLOsBNINLt2LNN4LXIGqQXi@vger.kernel.org
X-Gm-Message-State: AOJu0YyWStr9FZKj7wtEoegjezNmKVP/Lpyi9a+PViKtmCyCuIxQzatG
	15xFA8gwiZ01ObVJecJlsMX/oMpP/i7+xgQF9I9bnVb1qNoN50DM298C6DLd9OLxRiFdjnWQN02
	dtUdC
X-Gm-Gg: ASbGncvuFZ5WrzBZqWKE4StfGTOkHgW3A1RoZ/RPqGvT/QZy2uRSZ1W4No1e+r0gGex
	670h44PBLzzDXA9oqDtM/cw1qMWgaPWMhGVPPg9ajLYoP7rk8qOZJFCQv6huhgCiK8WmfXUVjf6
	gEfXIgKiN1R10AujRGl9E1shNEqbdLuk3zITMG6zJ1BGQefjBeGVVW8wHWY9CTgg1u0+thPbKT6
	uEPxCoXlomLROcT+gf7i7/eMmpuAEhUQYTxEbpt3n3UQHM5Ews9y+fXLdMIE/z3JweQHlzSuHxx
	JmYUopNThoEsR5DWz/+vfsU3/fG/u3+FfmatgzKJR1r2EE0nmqKqLlBHvtdhO2CepbEdHC8SSaO
	9Zt9unzz+gr5FRFJbxod7r2SIOCHdPkqVPOJsV/l84dqMdrW5Pq2/QGuprP+/hYiIAIP0Zqai1V
	UUNjOJ6bvqfJc7h1vuopKleXWY92jzcYPovWr+J5krVObRZd7LOWhSds3j6Q==
X-Google-Smtp-Source: AGHT+IEqhG1OZuaWnUfCuXYFeEh7s/xKmhR139iET5Mfw4k9VE0RqojiptfYG09T43K9N69S1YlGZw==
X-Received: by 2002:a05:6830:919:b0:7c7:61f1:6fd3 with SMTP id 46e09a7af769-7c798c751eamr1221512a34.9.1763735441620;
        Fri, 21 Nov 2025 06:30:41 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:d761:af7:26f5:f16e? ([2600:8803:e7e4:500:d761:af7:26f5:f16e])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c78d428f28sm2293281a34.30.2025.11.21.06.30.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 06:30:41 -0800 (PST)
Message-ID: <f81e216a-7af0-4779-afb5-3a82f4711cd5@baylibre.com>
Date: Fri, 21 Nov 2025 08:30:40 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] mux: gpio: add support for ADG1712 quad SPST switch
To: Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Srinivas Kandagatla <srini@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org
References: <20251121115750.20119-1-antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20251121115750.20119-1-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/21/25 5:57 AM, Antoniu Miclaus wrote:
> This series adds support for the Analog Devices ADG1712 quad single-pole/
> single-throw (SPST) switch to the existing GPIO multiplexer driver.
> 
> The ADG1712 contains four independent switches, each controlled by a
> dedicated GPIO pin. Unlike traditional multiplexers that use GPIOs as
> binary-encoded selectors, the ADG1712 treats each GPIO as a direct switch
> controller.
> 
> However, the existing gpio-mux driver architecture handles this perfectly
> by treating the mux state (0-15) as representing all possible combinations
> of the four independent switches. The existing mux_gpio_set() function uses
> gpiod_multi_set_value_cansleep() which treats the state as a bitmap,
> setting each GPIO according to the corresponding bit position.
> 
> For example:
> - State 0 (0000): All switches OFF
> - State 5 (0101): SW1=ON, SW2=OFF, SW3=ON, SW4=OFF
> - State 15 (1111): All switches ON
> 
> This approach allows the ADG1712 to leverage the existing mux framework
> for switch control while reusing all existing gpio-mux infrastructure
> without any code changes beyond adding the compatible string.
> 

This doesn't sound like a mux at all. It sounds like a solid state
relay.

So it probably doesn't need bindings or a driver. You can just use
the gpio that controls it directly since the output will always
follow the gpio state. (And if the 65 ns delay is an issue, there
is "gpio-delay".)

Using a gpiod array gives the same convenience of being able to
use a value 0-15 to control the state of all 4 at the same time if
needed.


