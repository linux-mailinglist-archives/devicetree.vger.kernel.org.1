Return-Path: <devicetree+bounces-145678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC1AA320C8
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 09:19:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BAA063A622B
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 08:18:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D858204F8E;
	Wed, 12 Feb 2025 08:19:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="MzZw8gbu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC8371E9B3B
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 08:18:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739348341; cv=none; b=b4BXgjfO5Gi0V4AAcPKInwtbL6Xy8/AZfrd6ULSQjsBYzY1vORfUeydomy2DCoYHvRdug1uDaXQmi7x4yZuGE+Gh2dymxEQj9hXmgzMdC97QCAeIeddai/MWyajns8EDktjk69eASvMeRp6sMreebLmBl1h1vnHPn2z4M1F1UXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739348341; c=relaxed/simple;
	bh=YarSXhMi3MICiWyZ0jRRnUYvv8XeVcnEvxnut2kZOyY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uNzPZfuFRQRo0COsmqfy0K2+liytVg5KqczC3I4uHIzYXStkgKoqDJFzLw+eiUdN1rST87C6hnpU8b4s26H2Ceu8ZvL3vhlZRm0ILcH6lxNCY5sCmQSmFwjZ7BA1i7u2kt6RGRbHpTO74pFCxLczJ6N9VACAHUaCdvTd4GUb8XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=MzZw8gbu; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-aaecf50578eso1277172066b.2
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 00:18:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1739348337; x=1739953137; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1Ca3jOifU6KLMuLCZFV+VlIgaFdG1oVjtxMx89qkKmE=;
        b=MzZw8gbuqLVeL2UHvA5aKLgbE0gIYWGSISDZP8MAJ791yo/wtGJ7+ZTmRXtvZvv/1I
         k9RPd3JtvMfno2uQv1Rn+TaeyJYifJQTkYPu3XPdEdN0ZPTumzW3t7sMioUELOYsPSia
         drXfL8NnWsXSPezSKJ+hOfTZFHkANRAPcHxGxej8nia1kbkBxBlYA+3QrjMnu26tHrQF
         zq1r1B3xazjK86GtNihSzPuatJhGbrq0IMiauK8LrqNxOkYr8O3AbXrGODzwBeMRoZ1l
         DbPqI43fvhDFEs9DmaZdb2eg/SwiKKlZPMWU2ZyFsfN99XsWNqiq/b1i9Rx65RqlH4C+
         h9FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739348337; x=1739953137;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1Ca3jOifU6KLMuLCZFV+VlIgaFdG1oVjtxMx89qkKmE=;
        b=Wa/49hz17LuGD3cVpUsJ9rPDNYQ7UQnQpIQvVloZ+x4OkKlHy3JHsV7D+RYDPx5GZs
         OFqDK5LeQT/i1AvfsXtyUCqPcbj1rqQZdXlf149To6oi0/75CJPb4H4/wPvr84rbqRhI
         9tPpzZKHrnKOXT7Nr2J1Rsg25Z9hYLqCIneAIKtBnKmw6dEBecsbfZCHowHcG6UlR5nl
         28Nw3GES78KXheBP+Z6qPauheUAHcZy9j440EbMAbIpmA92yD48ip3lwC6rwfl4iue5T
         ie9OOGOCQtt1egAyLup3ptqO8OhIy/V8S0Nk+vwY4DmHL+kZZDEk/RlzI5qDMwFUq5z2
         j1Jg==
X-Forwarded-Encrypted: i=1; AJvYcCWWVKpOU2T4HsMQyGvEKaS5HfPL3QCel0pwaz/RWMcamhD/EHjVb9toROivoNnIi3WZe/KLyuCAlA+s@vger.kernel.org
X-Gm-Message-State: AOJu0YwUm9YsQRXHOq5Mce49MljEj3e9z19jttTC8m0WLkzo1QO8TnG4
	ZrO7dl1a5qEgQdYCyOKiQmkYRD7g/kHChuKHrvoDfU6SAGaKvXyFAh8k31UZiZo=
X-Gm-Gg: ASbGnctdlO7NbhcemaNCMlhRCkZeZRPi683CZUhiCCRXHAB3eDHFZ855rZEhJJM0yBD
	s4j4kV+SNlbte9lTxg/TMmFDM7OSwJci2/8G/Eg7m1n59WTCVp85WN3drRVn3+YHDGCap3Nt6VD
	A2K4gwcdbo7swrlKOh79qmh/ExZhQ2Vt8wxj6kuWzr9mWbs03u0CQUnoK18hnetwmtv0ITOHT0c
	AMsTqYoHOKV894ZtooV+8EJQsHogxCTDK98Dd/FobxJFiVrf+akP9oObzubTMyf50GTrF69qvyS
	ws3S8Tit2uyo9ExoVub7RJ3n
X-Google-Smtp-Source: AGHT+IHBLSlZ+tK9sv24mLWsqTARUiAJ4W3lRBwdQFx31Cj8hrychh4XqU6wPO/Gzkojw3c5V7eTFA==
X-Received: by 2002:a17:906:6a0b:b0:ab6:b9a6:a9e6 with SMTP id a640c23a62f3a-ab7f34a11a2mr161055766b.46.1739348337071;
        Wed, 12 Feb 2025 00:18:57 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.173])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5de5e15c76bsm8231120a12.42.2025.02.12.00.18.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2025 00:18:56 -0800 (PST)
Message-ID: <b697f8d5-79ca-4d51-b5ac-9dd51713c0ea@tuxon.dev>
Date: Wed, 12 Feb 2025 10:18:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/15] dt-bindings: rtc: at91rm9200: add
 microchip,sama7d65-rtc
To: Ryan.Wanner@microchip.com, lee@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, sre@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 p.zabel@pengutronix.de
Cc: linux@armlinux.org.uk, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
References: <cover.1739221064.git.Ryan.Wanner@microchip.com>
 <a0338f3d05ed43eeaf2121dd22a9f0dbf25f2fc0.1739221064.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <a0338f3d05ed43eeaf2121dd22a9f0dbf25f2fc0.1739221064.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10.02.2025 23:13, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Add SAMA7D65 RTC compatible to DT bindings documentation.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> ---
>  .../devicetree/bindings/rtc/atmel,at91rm9200-rtc.yaml          | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.yaml b/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.yaml
> index c8bb2eef442dd..0c878331170b4 100644
> --- a/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.yaml
> +++ b/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.yaml
> @@ -25,6 +25,9 @@ properties:
>        - items:
>            - const: microchip,sam9x7-rtc
>            - const: microchip,sam9x60-rtc
> +      - items:
> +          - const: microchip,sama7d65-rtc
> +          - const: microchip,sam9x60-rtc

Can't these be merged like below?

- items:
    - enum:
        - microchip,sam9x7-rtc
        - microchip,sama7d65-rtc
    - const: microchip,sam9x60-rtc


>  
>    reg:
>      maxItems: 1


