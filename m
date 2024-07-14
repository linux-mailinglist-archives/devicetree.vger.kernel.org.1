Return-Path: <devicetree+bounces-85585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFEE930A3E
	for <lists+devicetree@lfdr.de>; Sun, 14 Jul 2024 15:41:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4427A280E14
	for <lists+devicetree@lfdr.de>; Sun, 14 Jul 2024 13:41:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3118132139;
	Sun, 14 Jul 2024 13:41:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="NlLP0Fui"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6EF5132106
	for <devicetree@vger.kernel.org>; Sun, 14 Jul 2024 13:41:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720964468; cv=none; b=JmuvIio6anepd/A8qMnvr+t1DEi+Nw6VcI9m9qS+ef4j5Egioa8xuvBiYCU6jQXpUxyB9GKyZ13m5ezVclOqFfgCFF6Sg9cKUuHjHfK+slsXtqDaeECt8nrrkpnSjlE2wGwHqPXesedVBSx+fud2psLLlg/qA69t4H+421i0H7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720964468; c=relaxed/simple;
	bh=T4f3W6vNWXcJSkQ144def9JBi0ohKOi2uSxAAwNLzmY=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=NIuVbSqJP4EOWqf+ixqEcK+0ZyGrF/ukPQGpLhuz9U9Us9yd4DBQ05I62bL/e7Xhqv8Fso9wByYgTSokbzNmYsOXWmxfnsnCTrbi7wSlbBHFRfO2aXfacDq0JXL7f5sCAepOeMiTLuZQIj4AAWQrp18OZGbeE3OIp2PnzcrhLzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=NlLP0Fui; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-426717a2d12so20276615e9.0
        for <devicetree@vger.kernel.org>; Sun, 14 Jul 2024 06:41:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1720964465; x=1721569265; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wkQnz1fsc+wtBdxU8oz4D/ZMkVp9+IUswsryocxsv9w=;
        b=NlLP0Fui4KkwYnX8UtCen7oAn/23wO2d010dSmfKi0EMkiBVlKseYT5aE4QhVEvdGW
         fbsz8N9Ceyr2YCmg20DqGabHOUDA+mx7iQTPutbbYKpcTqmeLsC66+B4pRdD3JrEttKf
         yJp7NfDVdjuTIRlYQMG4u8MHjOIDx2QmIQI3510y11I5cYokTjg4D8MZutG+F2ej+Uj4
         vWcUozylXrvcxCvPwQ2Sizb4dQgdrzKqcHlo+rnp4OolCGs5o7zlU/+JIFo4jrVHRu8F
         SxOTW5qqhwjuOlSN+uJCs0gIvz1iqAHdsZ96seQFeKIbRjZ+YAzjp+q9lhMhEpc54k2q
         KS5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720964465; x=1721569265;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wkQnz1fsc+wtBdxU8oz4D/ZMkVp9+IUswsryocxsv9w=;
        b=lqbz4OOoebgE8j303K9FdHxPO4gF6z70kuOF4QgWRPBbInA4gW9ft08LIAP4N03v2B
         4CCf+QJesVV+MhHYd/DE3I5YRwc79oqs03UK2eSnGYLX0Mx20aZ7pjLo+9cEzB3/EcgT
         r1yoa8kvU8v3l4RsCI6VXBQjd1eKlh0sPaSWXSIjq0kQZYvQz4GFRwv0HVgACOLEmaNF
         51sn0HEu20KNPxOi0YThMmOrgZS4O84zOoANliVXnRzAL9KEep78RsLVtlUi5eCtVpJf
         W7dQoKRanfNK/Jy/M1F38KaDKKvgWkLuduNvcWXwPt6WFV57uzQJlCYC2WJ6MlTgngQZ
         2YMQ==
X-Forwarded-Encrypted: i=1; AJvYcCVNyGz6g3+dALAqprOZJjGdJqVu9i4wi1cYeJHkyG7JMxkeCjPXUuqDXY6d3ExhhWh2JLrGbizSwJFYVOFXIm7VEYY7vdZiWC1cVA==
X-Gm-Message-State: AOJu0YwKMKIyIx1w2smNBCAVKgcBy6suRAEpBp5khe3v4ow+M5EXwrRV
	J2zljqTiHjr/wT+JqRoQQWcNLgE9V8Bd2X1u9XbjI0U1gSLKADnvyTm/q3uOYuA=
X-Google-Smtp-Source: AGHT+IHMoK4ef4Te2vS85qtBTXCotELhrWhwgWbhUmLlQqR1CSAOogUJzzAuK7+Mp8E60lOvA+9zGg==
X-Received: by 2002:a05:600c:524c:b0:426:65b0:3035 with SMTP id 5b1f17b1804b1-4279da3a671mr70583065e9.15.1720964465388;
        Sun, 14 Jul 2024 06:41:05 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.171])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3680dafbea9sm3871306f8f.82.2024.07.14.06.41.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Jul 2024 06:41:04 -0700 (PDT)
Message-ID: <e402ad3e-8b3d-47c0-a2e5-997fe14f7445@tuxon.dev>
Date: Sun, 14 Jul 2024 16:41:04 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 26/27] dt-bindings: arm: add sam9x75 curiosity board
Content-Language: en-US
To: Varshini Rajendran <varshini.rajendran@microchip.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, mihai.sain@microchip.com,
 andrei.simion@microchip.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240703102011.193343-1-varshini.rajendran@microchip.com>
 <20240703102936.196606-1-varshini.rajendran@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240703102936.196606-1-varshini.rajendran@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 03.07.2024 13:29, Varshini Rajendran wrote:
> Add documentation for SAM9X75 Curiosity board.
> 
> Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>
> Acked-by: Rob Herring <robh@kernel.org>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

> ---
> Changes in v5:
> - Updated Acked-by tag.
> ---
>  Documentation/devicetree/bindings/arm/atmel-at91.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> index 82f37328cc69..7160ec80ac1b 100644
> --- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> +++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> @@ -106,6 +106,12 @@ properties:
>            - const: microchip,sam9x60
>            - const: atmel,at91sam9
>  
> +      - description: Microchip SAM9X7 Evaluation Boards
> +        items:
> +          - const: microchip,sam9x75-curiosity
> +          - const: microchip,sam9x7
> +          - const: atmel,at91sam9
> +
>        - description: Nattis v2 board with Natte v2 power board
>          items:
>            - const: axentia,nattis-2

