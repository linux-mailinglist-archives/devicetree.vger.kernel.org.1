Return-Path: <devicetree+bounces-147805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD68A3960A
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 09:51:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B0DEE178BD7
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 08:45:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88CCE2343B5;
	Tue, 18 Feb 2025 08:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Kxu6ddBZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D52223237B
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 08:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739868164; cv=none; b=hXbxeUEin10bcLMCz0XjLx/4t/HDrKdSF7l7Ibv7YBgZV0FWCKdjMtNRjVHL8VNA3gKMeldCJURsLdU6vz41+yFM6Gug8+CLx3forumfwOsD0hgRrZ0ZhrvHQoC590Ha4v11xvHtXrXWbbUiRNEPKZSK/SyZjFDPR9PeZgVcggs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739868164; c=relaxed/simple;
	bh=saVAfgYPKRn89eU0vt0BwT0rMzRndUiMwLipr4oYYbM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jmB+Xi0ANEYeviM35vHsFWSHDYa84eEtrnnbHCJYFxqrc9qjhRhY1w6r5P8k9DJ2wXhwhn120hWsuJ4AB5y/NJcwgNMD/1HccdkRi2wPKwG6u6EfE9DWULO4rxxoaoqMK3V6p70y4B4wEw7wGKX1Xg3JhmyDNRGSWSEfwf8CwW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Kxu6ddBZ; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ab744d5e567so962561266b.1
        for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 00:42:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1739868161; x=1740472961; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+ch9WkK3xb+NyXSKj+cn4pbQshkuRqJJ8wERBuOfV3A=;
        b=Kxu6ddBZuTLNRbIgcDobCy8igSpRIcWQOgsgWM7joxsJ4ye+wEUZfdt5QU0scNdn8M
         PdnGVvz9o8n4eSv8JMCZd+5LW3wsw3uwboeRpcqkwtPeKgClHJcTPdTRiIwxZF5+dKDY
         331M8buQ0b1tWdgQjyaY1vsrE4wDzbfYxQglUdTSZU1+L0tsSU3tHjtwlk1GlDszG8ru
         b6Jkw4DcVQhyJbTjZ/KZHghLJ3WhRDZNVfkXmsWxblbZ1XFSUFUp7z0urPrJzzpj4FXv
         EzhVjFf07sPG6rFrv1AWTdMiiGCFq77I5nCDhicX815LDuPtxxkrsSrCi9p/m754FbS1
         r+gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739868161; x=1740472961;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+ch9WkK3xb+NyXSKj+cn4pbQshkuRqJJ8wERBuOfV3A=;
        b=GTuluM/s0K/TuSY3PdcS95e1R3oTGv49YmRCwekf6HY6zeD/yZYYM0uFiv/UuHxgS0
         7OIx342hR4kr7kth9+L6bY8Vpf7um0T1BscB1S4kggkCXzVcOLn1OG4GwgzRAPSO8iBA
         Dd+U8/9K4Wpbb+mdTnkX1hdsr/zUW7cwZkAugV4s3iHIsKKaCFH/uOqp7ZL54PaCaALz
         9aVGgEEmuAqiXQ3kSgsb0kpl0Sr1x/MX/92POfIqDCuDG6ewRwrRQDCKKwWUa8Til93C
         FOpSyEyPgHg+E3Paqa7ueF0B0spHOJK0spGzdObZxNWCYVssq9g1plb3KLdsZjj1FF3r
         VCGg==
X-Gm-Message-State: AOJu0Yx1Yu65zw1T3UHdddfhJrKNTcYpfxidT8nzrsBFk1AaDYZLg4Yo
	gO9xQi6molxAKFCNsDJJX4mHZG+VP5BqZDYI54fFb4FAjPGLEgv4twlRw9LQ5ew=
X-Gm-Gg: ASbGncvzxhA7RLyGG8Mh+0OixOiGu+Fgkq6ZCX14/wjMKzzUZIFR53W80Y3XVNUHHBT
	vwycO6beZSbGlwU/fvrY03QhNrS1FF64BiJTtupkg8xLsYWVIXuWFI1WBuOM96UQn2DL4BMW4PL
	oH09Pz+vcdbwkGkKnKe5KtYxpR0AM7CRfdepXTONhP9XZBsDVj5cehB/hv2SenREHOS/EUJKQ05
	NBnAjrgS6P2Hgzd8PrA0TAYhS6IJkvkI/U353VgSmPnVwy/uuuGtDnO6Vf9dMpCZPFrJHY/PYVs
	CU9dGyXL1nZAk08ZXuYaF1U=
X-Google-Smtp-Source: AGHT+IGhI03tdLg5oc0plVNCSO2LiVnGx57Sn+cYCVSUBsfb7XkEiF5iSWvlCx7bfmCKQKm3J+y6hw==
X-Received: by 2002:a17:906:308f:b0:ab6:504a:4c03 with SMTP id a640c23a62f3a-abb70c7a410mr933973166b.24.1739868159537;
        Tue, 18 Feb 2025 00:42:39 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.25])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aba5337673dsm1007937966b.89.2025.02.18.00.42.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2025 00:42:39 -0800 (PST)
Message-ID: <a1ebb518-ff69-4dff-a8b4-7c3b716450a5@tuxon.dev>
Date: Tue, 18 Feb 2025 10:42:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/8] dt-bindings: watchdog: sama5d4-wdt: Add sama7d65-wdt
To: Ryan.Wanner@microchip.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, vkoul@kernel.org, wim@linux-watchdog.org,
 linux@roeck-us.net
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-watchdog@vger.kernel.org
References: <cover.1739555984.git.Ryan.Wanner@microchip.com>
 <3c55e634f2993ac5a49e1b8bfceb2333e175d376.1739555984.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <3c55e634f2993ac5a49e1b8bfceb2333e175d376.1739555984.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 14.02.2025 20:08, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Add microchip,sama7d65-wdt compatible string to the dt-binding documentation.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> ---
>  .../devicetree/bindings/watchdog/atmel,sama5d4-wdt.yaml        | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/atmel,sama5d4-wdt.yaml b/Documentation/devicetree/bindings/watchdog/atmel,sama5d4-wdt.yaml
> index cdf87db361837..e9c026194d403 100644
> --- a/Documentation/devicetree/bindings/watchdog/atmel,sama5d4-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/atmel,sama5d4-wdt.yaml
> @@ -23,6 +23,9 @@ properties:
>            - const: microchip,sam9x7-wdt
>            - const: microchip,sam9x60-wdt
>

You could have keep this new line after the items section that you've added.

> +      - items:
> +          - const: microchip,sama7d65-wdt
> +          - const: microchip,sama7g5-wdt

here.

>    reg:
>      maxItems: 1
>  


