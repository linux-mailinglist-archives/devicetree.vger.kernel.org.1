Return-Path: <devicetree+bounces-85583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D73EA930A33
	for <lists+devicetree@lfdr.de>; Sun, 14 Jul 2024 15:39:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 113DA281654
	for <lists+devicetree@lfdr.de>; Sun, 14 Jul 2024 13:39:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76E8A132111;
	Sun, 14 Jul 2024 13:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="j5uf584E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02211311B5
	for <devicetree@vger.kernel.org>; Sun, 14 Jul 2024 13:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720964370; cv=none; b=pV2BtNwEtXI8i6GBOOTlqcCBaBxo/b1OL8c37jRqQbGOicx4z9rU8bIEqrTXjRztSl+yMv2Ya777/pBNjp9HhEfwjkT4m2yzZwUHGZ7WGOQMhPX8PYvrnezC8gM0gqB3HqdItaWOdukqpSbCq7fPzM+sVq7KMrp3c8zMabTEEBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720964370; c=relaxed/simple;
	bh=lwKoRXGvsudFiNuEtvPjA0tSBSVB9eqmCa6LqtqdozA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qF242zKSwzi8U+Ejfmz1LW4EWFWWXNwiE5+wFQzmAV3s3rEZ2fqyQ8A+MO+pvIY3EbQlZLySO5bVqocUeht2gafgFh6IaP07/UnKGbIQCN2nHPgm2M951QHzHSSVwrUpfdEAtTxREyZ0oNXNBVxx07KMNj6uP6y+lbE/Xf0OF5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=j5uf584E; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-367ab50a07aso2133889f8f.0
        for <devicetree@vger.kernel.org>; Sun, 14 Jul 2024 06:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1720964367; x=1721569167; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eeRWeo5XLCh2A+T+FF6zNBNjQic7g6CjwX+aj+Vgyc4=;
        b=j5uf584EaAnbaQDj2Kil796Zz1sHrHAtZzQ6u8a34KOJaXlUlKh2LrOLiQ8jOmyV6T
         8Ssut1kRR1OhYxInS/O+CQjJq7h5YLBb2mVW5LSoeyLjmCKoxrRrjAvdxZnNpMMBgw5O
         mOQUbcReoBStEHFT2FZwUIu+Ul9ji6zRAoXbIn9IxD1T+a1yEygZwcU4O2KRnhi0ocHt
         wDKdt4efVPKo4I1FPgN6XUB0rAGa4uFGiSTs1ZBPFHWLhwzkZxTpARL62Clz3WHYzSTV
         alc3dtbMatVaOH/mtwfYor6cw2NZqhKkMneMDvMY+Q1XuJouOna41itbN601z+9eF8I9
         phbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720964367; x=1721569167;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eeRWeo5XLCh2A+T+FF6zNBNjQic7g6CjwX+aj+Vgyc4=;
        b=JaPCTPCEPFVA6Eu+F//YdPYTgMkiwlpP6mqvqaQBjPudHgX/YuXuxVIrU80X4H5CE+
         F/lgCHG2kz33qpQk5jPEjis73v5NB/hrk7MAGKwG7PMqhXhckM2MQ3kKqeIpiGCcAL2P
         4AGw67GlCNT0abqSpgFpbCTKVVowCOOWa/NZVJdC4GTYHdU8dkv+6F4Hyr3oiUhuUUjF
         XCft2+Xej3q7Z5P5m0BEv1VmB0E7y4vuyj/8kudTNaV671odaVG6xPRa4w8K+KmNLmG1
         6BEy2q4l8vcJKUGUpdaMq8J6w9x+YUxQHMcv3BQqDCC/HRKlyptpKwJpJxnKzsePQwn4
         mDnQ==
X-Forwarded-Encrypted: i=1; AJvYcCXfqtojNd3Tw4jeUHOz6NVkrUeMyIS2xidHDV2P5Ho4aFZL37qp1pU9zKlJi44/bLIP12kOni9/9R6sxs6HRkm76n0RCsexP/pe4A==
X-Gm-Message-State: AOJu0YwZ5axK15wajQTqO83jb8u1xR+W5qVqL2kaJrFHLtzXhgDtEXmF
	S0gvrPH0/KJX8e+YY1uhyf6aE1GoppOhJvDuPxQFQ1gEENofbm05pR4iscP3t8E=
X-Google-Smtp-Source: AGHT+IEVGLrWEsPnj95NEpsb3Z45VqnO/5iLS2m+J7kGus8Kl29Z3Yv3Qax48BNRFmUbRhzn9eFBsw==
X-Received: by 2002:adf:f704:0:b0:367:8a87:ada2 with SMTP id ffacd0b85a97d-367cea73311mr10586367f8f.26.1720964367209;
        Sun, 14 Jul 2024 06:39:27 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.171])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3680dafbea9sm3871306f8f.82.2024.07.14.06.39.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Jul 2024 06:39:26 -0700 (PDT)
Message-ID: <0efe571c-a2b6-4686-9442-9f93f8732e4f@tuxon.dev>
Date: Sun, 14 Jul 2024 16:39:25 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 08/27] dt-bindings: clocks: atmel,at91rm9200-pmc
Content-Language: en-US
To: Varshini Rajendran <varshini.rajendran@microchip.com>,
 mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor.dooley@microchip.com>
References: <20240703102011.193343-1-varshini.rajendran@microchip.com>
 <20240703102722.195709-1-varshini.rajendran@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240703102722.195709-1-varshini.rajendran@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Same for this one:

dt-bindings: clocks: at91: add sam9x7 clock controller ->
dt-bindings: clocks: atmel,at91rm9200-pmc: add sam9x7 clock controller

I'll adjust it when applying.

On 03.07.2024 13:27, Varshini Rajendran wrote:
> Add bindings for SAM9X7's pmc.
> 
> Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Other than the title:

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

> ---
> Changes in v5:
> - Changed subject according to suggestion.
> - Alphanumerically sorted entries.
> - Updated Acked-by tag.
> ---
>  .../devicetree/bindings/clock/atmel,at91rm9200-pmc.yaml         | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/clock/atmel,at91rm9200-pmc.yaml b/Documentation/devicetree/bindings/clock/atmel,at91rm9200-pmc.yaml
> index c1bdcd9058ed..c9eb60776b4d 100644
> --- a/Documentation/devicetree/bindings/clock/atmel,at91rm9200-pmc.yaml
> +++ b/Documentation/devicetree/bindings/clock/atmel,at91rm9200-pmc.yaml
> @@ -42,6 +42,7 @@ properties:
>                - atmel,sama5d3-pmc
>                - atmel,sama5d4-pmc
>                - microchip,sam9x60-pmc
> +              - microchip,sam9x7-pmc
>                - microchip,sama7g5-pmc
>            - const: syscon
>  
> @@ -88,6 +89,7 @@ allOf:
>            contains:
>              enum:
>                - microchip,sam9x60-pmc
> +              - microchip,sam9x7-pmc
>                - microchip,sama7g5-pmc
>      then:
>        properties:

