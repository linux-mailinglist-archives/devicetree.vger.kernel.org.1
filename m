Return-Path: <devicetree+bounces-238824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 96509C5E615
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 17:59:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5FE42500848
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 16:34:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23F3933507B;
	Fri, 14 Nov 2025 16:34:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="bvUthont"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3429255F2C
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 16:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763138045; cv=none; b=CDDgsSVGLXkl7GHhGWDixkQPrKkO4fpFI4thUzXoPAdczMXyrGFb2ohfew1MIhIrZDH+OAhfynUgdtZ2HayJ5al94ZZpYpVScpwVXpsN8K6f9LySxNvyFm//dvDb/El8q2f2DeuUJ8CDVPUA4HFQFtC0CFBPbJ8BEg2N6j5QLdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763138045; c=relaxed/simple;
	bh=oxh3YhoYIEaRIxjaDBRpdM9oBRVhQNhueXgTg63TZzY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ox9ru9qbwLYxk218uIJJTwJAqT4Ve4wBp2pedaij2fPW4RAMP3lUcL5YXy950E8PacqBjm+kqjJCg8NhWz9wsgzhGrjlAIzMjydHKrcKuOXKnKiEDf6C8hko5gJO/VGSzlJ6/0qhcjTtXULO9SCxYb70+iKbGnw6kPnYaefzf3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=bvUthont; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-45065392f28so890622b6e.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 08:34:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1763138041; x=1763742841; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y0zENIizSbsPE8jKfF4DXIWFz//T1Rw3ce5Z4/4op8w=;
        b=bvUthontk/JYSiBLXXA1j7sRVpmrEHfrAzKzpN6lOsUoSUCxLZXH1z94YpnuNiw4Vv
         WYflolEfpgp2cSTBWSs7Lszcd5HKtYowglJEFOlobzeGa6yc7aMuMjuw1M6N2wb/+Ebv
         9IFh+Gj37jpdYIdeJNV1HL/4kIAAztICTwvpdE8LNTwUl22UlIsrYURVDtkjcsH8nmJ/
         NH4wTaKliD92wZe+2p8mHWMcD3mfAd/Rve9DDPLBq1DxEyXI9n0pn+1GbjLIxBc+09sS
         VO4kt/5cAKjTkX9xyOAg+FWImBBQvyP47CJLGIzdP0Us5U4lBKAi8OU+9dQIvxiXIv+g
         703A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763138041; x=1763742841;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y0zENIizSbsPE8jKfF4DXIWFz//T1Rw3ce5Z4/4op8w=;
        b=SLxxGSrj4sURYyuPy5vexINlSD5l9UDm8jei9ve05T5/LfJO1StzuessdgU+5iB57o
         P3EF3cZ3vHbFnhnD55v5GorPQW7GPsuqdw1LJEPSPMPSVX12Kk/NxxfMSUcce7Z/y+I4
         yTOa348ytfhJ+vR/6b/9zxIEtPwL9I11ngYbkpoOSi3ueiSw4cpVwBv+p6bip3X+iM1Y
         /4FZMO5XJThQWX5ZucxLaRNaoG4t/lz43V9hCs3ctn+76YUxVUd/jWJMX7kFkSO4vj8R
         e0xxAA95Wf/L/t5JqGTBRsskRJ5CexJkl3OUB+yToTK7ZlpyEsimrv6ni/pS0axQUbIc
         wxHA==
X-Forwarded-Encrypted: i=1; AJvYcCXunodGCNVzVNmbYXpZEUdlig7KE3xK5Dvd2H2f4YKsM911jYuDekR0okVYkgH9waCSwm/P6chLKEkX@vger.kernel.org
X-Gm-Message-State: AOJu0YyF7nsUhHOgnRwyYqaU9HkzZTN8wJy7SYinrz2KJx6ulVaYVqZI
	lx7T8h9Qq0N5NUAqpFtuwPfqTWHU7PLzFDTJA7Nl8WfEpAmZt8S5URErw4IsJVOfq1JAkTLR0+K
	BQfBV
X-Gm-Gg: ASbGncvbsZ0VKMMJeq16evrvSNdprC/kobDpXf5JXPToh9xj3b53JrbavCdty7Bbra7
	1uOoN9vj975n0ZoPVqUeSLQOaX93ZS5JDvHQs8byFbS8Tke07FByuYJ8wM4JRzQ71yOdDZdISdC
	LA13GmEwcKOErSC9QxWkIRBcm3UcGJGlTHf5p1WImo0/eZ55ZZqyvbkG4FH9sTc1I4tqKUN6O8H
	434JXv4Q1k0KMiueVJaFhWSGFGCYT6TtTrjcbvMSfJ+RAn9jZB9StBoz+gOIkititTI01znntxN
	Y3xLuyDjzUXietxDPZVLgi3twWDab5XPS/EyX7zet57SSFhUPilKsAtBi5on1xxAuUA7vFKVreM
	ynoYk9RtjL+HMhtbxmUe8fWM4tJiW+v7tze42Qj3kfRuENLa3KNoVPohR97S4x84hKZzHf2L1IJ
	tDlSo5vyWAL8yRT76VvaBAKe3PgLj9SM35AszR88NxR8fryTM=
X-Google-Smtp-Source: AGHT+IGmhIqEMavL0YX2nY1Vq2fABZht6YbPouUJM/5kcUFllpX0N/1OqFLI/iyV9QuRieoYVcXbrQ==
X-Received: by 2002:a05:6808:d49:b0:44f:f612:43e9 with SMTP id 5614622812f47-450974b27c5mr1664553b6e.44.1763138040803;
        Fri, 14 Nov 2025 08:34:00 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:8a43:8337:f820:b43? ([2600:8803:e7e4:500:8a43:8337:f820:b43])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-65724cfa332sm2157866eaf.7.2025.11.14.08.33.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Nov 2025 08:34:00 -0800 (PST)
Message-ID: <ce727652-c00b-4779-97ea-0b9e4fc3477d@baylibre.com>
Date: Fri, 14 Nov 2025 10:33:59 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] bindings: iio: adc: Add bindings for TI ADS131M0x
 ADCs
To: Oleksij Rempel <o.rempel@pengutronix.de>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, kernel@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, Andy Shevchenko <andy@kernel.org>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>
References: <20251114092000.4058978-1-o.rempel@pengutronix.de>
 <20251114092000.4058978-2-o.rempel@pengutronix.de>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20251114092000.4058978-2-o.rempel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/14/25 3:19 AM, Oleksij Rempel wrote:
> Add device tree bindings documentation for the Texas Instruments
> ADS131M0x analog-to-digital converters. This family includes the ADS131M02,
> ADS131M03, ADS131M04, ADS131M06, and ADS131M08 variants.
> 
> These variants differ primarily in the number of supported channels
> (2, 3, 4, 6, and 8, respectively), which requires separate compatible
> strings to validate the channel nodes.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> changes v3:
> - Make channel@ regex patterns consistent
> changes v2:
> - Rename file to ti,ads131m02.yaml and update $id.
> - Add supplies (avdd, dvdd, refin), interrupts, reset-gpios, and clock-names.
> - Make avdd-supply, dvdd-supply, and clock-names required.
> - Tighten channel validation logic for each device variant.
> - Simplify channel description and reorder datasheet list.
> - Update commit message to clarify device difference
> ---


...

> +  - if:
> +      # 32-pin devices: M06, M08
> +      # These support both XTAL/CLKIN and optional REFIN.
> +      properties:
> +        compatible:
> +          enum:
> +            - ti,ads131m06
> +            - ti,ads131m08
> +    then:
> +      properties:
> +        clock-names:
> +          description:
> +            Indicates if a crystal oscillator (XTAL) or CMOS signal is connected
> +            (CLKIN).
> +          enum: [xtal, clkin]


Usually, we want all possible properties declared at the top level and then
only limit them by the conditional statements.

This makes it easier to see what all of the possibilities are. At first I
thought clock-names had not been added.


> +        refin-supply:
> +          description: Optional external reference supply (REFIN).

refin-supply should be at the top level as well.

> +      required:
> +        - clock-names
> +

