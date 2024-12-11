Return-Path: <devicetree+bounces-129824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9149ECDB1
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 14:53:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 880F5162F35
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 13:53:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 849B523690B;
	Wed, 11 Dec 2024 13:53:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="We7Ro6Qp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457CA22913A
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 13:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733925210; cv=none; b=IWnyrCTgZmOQoiGBi5yPWT7w/OiP5j+d2DOwZtxwUFrQZ4WblIfuffM8Nqy6oEF2D8CqQjWuzxc8+4yNeeoISV6R0mXD2vPGn5oY/hLI00ZIJYbP/h6tW1jirRr9Nvol9qXWyQTlLtsWZVkEHRKM1xbPtW56L6znLFc5kyVD7gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733925210; c=relaxed/simple;
	bh=YSdh0Mm0FonlMgaa3imnf9PPReZOary7MqBo29RKeZI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WqLPIFPR0OGQJhT/ihmB9bJXsav79bOxXJeX8ob0AR/0vahAqUBw6Q45W0jOWPw//LAH3nK0Hj4igbNfB21AcUltSx0r4is5uyFyf7HsjOuDAU9Y79WBjwMIfuCl4dhAfbyvE4F91IUufrwHqo8lI6ri2FEXdwjdPtW4bZYzaiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=We7Ro6Qp; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-aa67af4dc60so607320566b.2
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 05:53:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733925205; x=1734530005; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2JAQ94DgwmZTsFqQuFhEr5XjtlJo5Liq/MWFSbEP7oQ=;
        b=We7Ro6QpXdFqx1EZCLNk/BGMGe7KhGl6PAlNriTd27U4td+pcYwIjAR39eWjr3fQV3
         hbwqiaKicF/joN8+62DAYg8Wf9/MURxT8V6z8bGdUlL0iV0Y0xNXupuRo9OjB3QYbfXB
         csYSDW2tU10Y1v8TLomFlX/NG62h5wyDlxRXMB8/GWwUj6vIlZrublRxbyO8JQNTZs1M
         OcPBeDjVKdSmVLyG3jFTn0n0XIj0HAlr/ZL0YbhyX4t0B5HGjOtgCwRfE8wv4qfhgf1p
         XHhWsm3/GVeyw5+QUaPsEKGZ4IfFzeXu8dZNVG5Z9qY2DOR51vj1yLn1M/mVxfIyXI4X
         sg9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733925205; x=1734530005;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2JAQ94DgwmZTsFqQuFhEr5XjtlJo5Liq/MWFSbEP7oQ=;
        b=hM3+EwYM2oiba2U9pK2Wh8tAmunkyIZ8FYaOXuPsdHbx6qMzGDfCaYW+htOq6CCDtU
         wIXjiQtl2ttH6y2VCnRlvxCC4UPZVlH4zakQZHro9sFidoaLcmKDx0appJ2fTKgKbSlS
         KiYdzXHtuSPvV52Z74Gw2EAITFJWLAgBik7MG1d15DDbZ2QjGBCqDXMRg5KLeVO3D7Fb
         929XWrmdHxqzyMruJSYPUcOSjpv+hwPS+lRmiaIfWSi/Y8KMwi8SKsrJ3eQHObl/ESGt
         b6NvOZeILI9I4Y5tYMkszj7dnDV/OenMwWjZ+lvkOfPlEwF0snu1nfu0h8rNCYZVZS+M
         5xXA==
X-Forwarded-Encrypted: i=1; AJvYcCUpJPlL1yCYrfqeYrp027pmB3tW7JXM/58AXQxTtZ9OWMWzDKM4UP3MXHB48V1+J/3ykfgmkJFIRq8O@vger.kernel.org
X-Gm-Message-State: AOJu0YywuOe1CYBQeeUXFVVS5fYFmKiqsKElOuSDBnkk4A84y8khEBh3
	nIWP3khaYzOvTDJoVECbqdCR7yBR8cMVFxoo/XOthb0iV0zveVhLA25o93IPPOr4VvNtpSXLtJU
	4
X-Gm-Gg: ASbGncvFb8E3qryoMQfPH1hrhWu3b+zh/0mjkV+c/nNURJB8Z36418Y3bmPS4u1HrjB
	KZLXhQT9br4myaEuYyK72LnPPCRvFUoT+c3Zbeg0q2GvF4FPGrHb34qWnqHsBiZeT9yXLdOg1rB
	02UeH0gQ4cviHrjJvgMQl+qLv7QGzCqzvVjMojnlff+xHzjWRvOwiITpWZr6e4djK2VJZU8+B6H
	JxKGguNFK7zLT9sCdpe8OFw/VUgMzH5U5SWwnr743TkFzs0/YXkWxo2WSukE7A=
X-Google-Smtp-Source: AGHT+IHhR+q/yjOR8fMgpp+HvsWmN+ncd/5Lo5Mk+pkPGE0cvah/TqVw4ZywcOYOxY2cukLaXrgmug==
X-Received: by 2002:a17:906:b3a1:b0:aa6:75e1:186c with SMTP id a640c23a62f3a-aa6b1505cf0mr213318566b.50.1733925205362;
        Wed, 11 Dec 2024 05:53:25 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa653d1df95sm682900766b.98.2024.12.11.05.53.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Dec 2024 05:53:24 -0800 (PST)
Message-ID: <5e7d316d-2e13-436d-8474-48411e2a12d9@tuxon.dev>
Date: Wed, 11 Dec 2024 15:53:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 14/15] arm64: dts: renesas: r9a08g045: Add ADC node
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: prabhakar.mahadev-lad.rj@bp.renesas.com, jic23@kernel.org,
 lars@metafoo.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 geert+renesas@glider.be, magnus.damm@gmail.com, mturquette@baylibre.com,
 sboyd@kernel.org, p.zabel@pengutronix.de, linux-iio@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20241206111337.726244-1-claudiu.beznea.uj@bp.renesas.com>
 <20241206111337.726244-15-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdVMQr9RhG7v32vQeSrepmdh2VdzzwF5obJUpdGNotGV7Q@mail.gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdVMQr9RhG7v32vQeSrepmdh2VdzzwF5obJUpdGNotGV7Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Geert,

On 11.12.2024 15:27, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Fri, Dec 6, 2024 at 12:14 PM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Add the device tree node for the ADC IP available on the Renesas RZ/G3S
>> SoC.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Thanks for your patch!
> 
>> --- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
>> +++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
>> @@ -87,6 +87,59 @@ rtc: rtc@1004ec00 {
>>                         status = "disabled";
>>                 };
>>
>> +               adc: adc@10058000 {
>> +                       compatible = "renesas,r9a08g045-adc";
>> +                       reg = <0 0x10058000 0 0x400>;
> 
> Table 5.1 ("Detailed Address Space") says the size is 4 KiB.
> 
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> i.e. will queue in renesas-devel for v6.14, with the above fixed.

Thank you!

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

