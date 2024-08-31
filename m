Return-Path: <devicetree+bounces-98741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCEF9671D2
	for <lists+devicetree@lfdr.de>; Sat, 31 Aug 2024 15:32:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A156F1C21436
	for <lists+devicetree@lfdr.de>; Sat, 31 Aug 2024 13:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBEDE125A9;
	Sat, 31 Aug 2024 13:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="oloo6lRa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321BEB673
	for <devicetree@vger.kernel.org>; Sat, 31 Aug 2024 13:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725111164; cv=none; b=T4mG0uCHdDp1HugeCUyWmT4YvEj9g6Bk2tABXRvhSisZRntvqgSZTGEwH1ORh9RwHD5uJVXd4p2cysCxx3eRlt1DFST6Wy0r3Lvt01awO4F6xgLe5DWmdKTe4TnWA7z9nnqhlhBdRORnXKcjOY1OIC6FCipTSkhQvvPRV38Ohu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725111164; c=relaxed/simple;
	bh=5ZV+3l8c2Ov9JRuodqJ9l0PCuEMCWZ/CJ8ukjbSL0Ng=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o9ADFutv2fVq+UhwvLmbr/OAbSD0uglZLdis5xfkZeQcfege3mxfKSbg8Y5aTbAzvVG5jGla/Q7Wc/6qYd4NOjA/yapKLmmWXFgB0FtSTHs3kVqnjuJEEHuCWJs54MQLWfhGOepNl9cmyfsKzL2zYL6EEiqbAj9G5hlFejqzC8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=oloo6lRa; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-374c2b0707fso141499f8f.2
        for <devicetree@vger.kernel.org>; Sat, 31 Aug 2024 06:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1725111161; x=1725715961; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cFA5cHVrCYbuMnxG2Yr+lCNh1E7e+JscJmhgi8KeHwQ=;
        b=oloo6lRac96aozdwEE8ZMcu33tpcdW8jHUHFWD5JoNtDi2l4Ra7gwt76vq9B8YOtkL
         Gilb1HTsYQYTcWF1clFRqRqSiBoECYj4RXTjZZLZ0LjsGEYzq+Km5RbGFb0MeivIGlUq
         sFJtNSquQgZsJBry1nmWq/VZv/7Or9DTUq+llRtmxm4IUGDPj4RYgw2mqQhygFZ04T4a
         vKjMFnsc+nXHZEjFQsjHEtTwMRiy4kM2149OmayI78XoAXuReHlw73NiARtNd7waD6a0
         eB0OEN/P9OkeSs3f8HR8wwv2YCY3s/2szWNUGFmy8s7eNlNr8Vy6nITF2Bj1bZMWDzhL
         oiMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725111161; x=1725715961;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cFA5cHVrCYbuMnxG2Yr+lCNh1E7e+JscJmhgi8KeHwQ=;
        b=Lj0MTD8FAUEVuI7Eqm5vM7D2S06GGwQshiVIB5Y/ykMZoMsgbA7gTfobE1YW4ggfQm
         RfQCQMmM4X56hGYqxWwQ4UOrj/SmWx/iYqG+T1/yAIB3tSNX2p6J5XW5eZxGERkuJaNC
         ZCoBJjfXd6elS4CQyU1EF8En3mj1mIOafxfm4L2JaSvNUPfdhz8flX3/yuefoxj1Kr6N
         oFVbCmDhBq/yI0Alen1TeS+s1PVDZvO10k2hL7yeXQvwB/EFIhSRtMaAhJ0rLTuhYCWH
         5Qm48W1iS4cUFXKt7tdUTbHihqhwJAwBHiWKFrG25jVlbYqH1M6kYWfbAZEHBEfKDRII
         iU2g==
X-Forwarded-Encrypted: i=1; AJvYcCVktxMh9sARJDEOkhM5esEH7IZ6TpmuCXZ86TfnjI8OkVeKvfdOJcIJGiVZ2UZAZw8AYcp4JHtNWm1h@vger.kernel.org
X-Gm-Message-State: AOJu0YyPSDH5uZmeixcuYn/ba/sMYoDp/jAb1eW8X0l3mbh3YejZKqW4
	A+mKs8f1kRLWiaQDdQuH6GOZwhEOe9aqjshk35J1Zo31e0Gg/0vbDorFsnCTYqs=
X-Google-Smtp-Source: AGHT+IHknTcekKLxNYFyFH1SpJ0QujPtjHA1CNaSNCcSSUh5NNLKhm6npBadJ3CC2mIwHzZ8oF7MWA==
X-Received: by 2002:adf:8b52:0:b0:374:baeb:2ec with SMTP id ffacd0b85a97d-374baeb0b84mr1764071f8f.19.1725111161146;
        Sat, 31 Aug 2024 06:32:41 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3749ee71650sm6540647f8f.40.2024.08.31.06.32.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Aug 2024 06:32:40 -0700 (PDT)
Message-ID: <5b803d4a-ffba-485d-b1c0-0691a8fa9542@tuxon.dev>
Date: Sat, 31 Aug 2024 16:32:39 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: clock: Add SAMA7D65 PMC compatible string
Content-Language: en-US
To: Dharma Balasubiramani <dharma.b@microchip.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240829-sama7d65-next-v1-1-53d4e50b550d@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240829-sama7d65-next-v1-1-53d4e50b550d@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 29.08.2024 12:38, Dharma Balasubiramani wrote:
> Add the `microchip,sama7d65-pmc` compatible string to the existing binding,
> since the SAMA7D65 PMC shares the same properties and clock requirements
> as the SAMA7G5.

Looks a bit odd to me to publish bindings and driver chances by 2 different
people, at exactly the same time. Maybe coordinate and publish it together
(at least for the future).

Other than this:

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>


> 
> Signed-off-by: Dharma Balasubiramani <dharma.b@microchip.com>
> ---
>  Documentation/devicetree/bindings/clock/atmel,at91rm9200-pmc.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/clock/atmel,at91rm9200-pmc.yaml b/Documentation/devicetree/bindings/clock/atmel,at91rm9200-pmc.yaml
> index c9eb60776b4d..885d47dd5724 100644
> --- a/Documentation/devicetree/bindings/clock/atmel,at91rm9200-pmc.yaml
> +++ b/Documentation/devicetree/bindings/clock/atmel,at91rm9200-pmc.yaml
> @@ -43,6 +43,7 @@ properties:
>                - atmel,sama5d4-pmc
>                - microchip,sam9x60-pmc
>                - microchip,sam9x7-pmc
> +              - microchip,sama7d65-pmc
>                - microchip,sama7g5-pmc
>            - const: syscon
>  
> @@ -90,6 +91,7 @@ allOf:
>              enum:
>                - microchip,sam9x60-pmc
>                - microchip,sam9x7-pmc
> +              - microchip,sama7d65-pmc
>                - microchip,sama7g5-pmc
>      then:
>        properties:
> 
> ---
> base-commit: b18bbfc14a38b5234e09c2adcf713e38063a7e6e
> change-id: 20240829-sama7d65-next-a91d089b56a3
> 
> Best regards,

