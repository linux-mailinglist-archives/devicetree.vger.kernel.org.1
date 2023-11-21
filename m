Return-Path: <devicetree+bounces-17441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D207F28EF
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 10:29:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A14831F23699
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 09:29:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 922AA3B2A7;
	Tue, 21 Nov 2023 09:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rasmusvillemoes.dk header.i=@rasmusvillemoes.dk header.b="NqC2sTZ6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1C25F5
	for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 01:28:56 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2c5087d19a6so64618711fa.0
        for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 01:28:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google; t=1700558935; x=1701163735; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/k25KQkkg5XW8254zDMBp9fZA/uqh7X3yWWc6qHj3b8=;
        b=NqC2sTZ6tD34zeXuA4DYYOeBvAj+4gghZFkdxojg1ZM5zotQzRdE9TmSahS04ie8tF
         bXnT6Bom1wzssVcGsRNP9SX0roy2r/q5nsU+vJqd7+FBfnkiEzkAxbG6asDiasFicmV9
         Am9DAdDjGbauDUA3uT1sLjEgvxZEf/vDSCWPY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700558935; x=1701163735;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/k25KQkkg5XW8254zDMBp9fZA/uqh7X3yWWc6qHj3b8=;
        b=sEfS3VA5uVd03eIS5COr2EUXVPwRglpVEd16lJucs+RpHpf0RBhw+ImrLyjS/XP5KQ
         8wu5fsaOOh6rCQ49vNUmN49gXUalwsLWy+t33oRUDsnyMgCgfkeXZuZaLG6zcZall3+6
         8dJncDmR4DDqXmT7NnuZoGAgydUQLv9FoxxYsHit9oztvTe+4kK3iuOvfEVEULlKue3m
         7EdjHtWOE6wk8tbNm4T6eRCh2vyyeGznUYxhEWoGhyx7LCAI+XcrqEhWNwjMAV5YMDNr
         eYl5LQH9bqBoS9vPnyWNX9Zd2HbLK6mQ8LHnXo6jkRKW4YawhBG+oVIzXRs5+SzWqSKs
         A9yA==
X-Gm-Message-State: AOJu0YxlId/+KB44rCTBbNRxNAdA0gtzNRHjtlVirzkj58vWTrL4Ho9f
	sxhYCaxKgkbB+Ujd9IQ8cCOm1Q==
X-Google-Smtp-Source: AGHT+IGvestydbs4jYstacuh2Y0LcbMH8cwssSlcxSJs7loJ4ka/2u7savkjzuHUOfXkLaEb46amjg==
X-Received: by 2002:a2e:bc1e:0:b0:2c8:8b61:ea13 with SMTP id b30-20020a2ebc1e000000b002c88b61ea13mr1205508ljf.18.1700558934969;
        Tue, 21 Nov 2023 01:28:54 -0800 (PST)
Received: from [172.16.11.116] ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id v6-20020a2ea606000000b002c0167edd86sm1234653ljp.122.2023.11.21.01.28.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Nov 2023 01:28:54 -0800 (PST)
Message-ID: <83eeb98d-ea56-4f7c-bed9-fe09aaa4cf7a@rasmusvillemoes.dk>
Date: Tue, 21 Nov 2023 10:28:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: serial: rs485: add rs485-mux-gpios
 binding
Content-Language: en-US, da
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Lukas Wunner <lukas@wunner.de>, Rob Herring <robh@kernel.org>,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org
References: <20231120151056.148450-1-linux@rasmusvillemoes.dk>
 <20231120151056.148450-2-linux@rasmusvillemoes.dk>
 <fd5c7d9f-a52b-4abb-a0d4-f5bdf2a669de@linaro.org>
 <1c016987-da88-47f2-bc1b-fcbe4c71a5c9@rasmusvillemoes.dk>
 <67a2cea0-f2de-4e7d-bc9d-ae29885f9210@linaro.org>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
In-Reply-To: <67a2cea0-f2de-4e7d-bc9d-ae29885f9210@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21/11/2023 09.34, Krzysztof Kozlowski wrote:
> On 21/11/2023 09:27, Rasmus Villemoes wrote:
>> On 21/11/2023 08.52, Krzysztof Kozlowski wrote:

>>> Anyway, similar comments: this does not look like generic RS485
>>> property. Are you saying that standard defines such GPIO?
>>
>> No, I'm saying that several boards that exist in the wild have the
>> RX/TX/CTS etc. pins routed to a multiplexer, which in turn routes those
>> signals to either a rs485 transceiver or an rs232 driver (and those in
>> turn are connected to different screw terminals). So no, it's not a
>> property of the rs485 protocol itself, but very much related to making
>> use of rs485 (and rs232, though of course not simultaneously) on such
>> boards.
> 
> Which upstream boards use it?

None, because the binding doesn't exist.

> To me it looks like specific to each controller, not to RS485.

What do you mean "controller"? It's not specific to one particular
SOC/IP, any uart IP capable of both rs232 and rs485 could be wired to
circuitry like this.

>> Would a link to a schematic help?
> 
> Yes, always :)

https://ibb.co/B3gzySt

The UART1.* signals on the right are from the SOC (in this case an
imx8mp, but I know of other boards e.g. based on powerpc that use a
similar scheme), and the COM1_Sel is just some gpio. The multiplexer is
roughly in the middle (U2103).

As you can see, if one wants to talk rs485, one must set COM1_Sel low
(and that works just fine by describing the rs485-mux-gpio as
ACTIVE_LOW), and if one wants to talk rs232, it must be set high. While
userspace could be tasked with knowing about and handling that gpio on
top of the ioctl() for switching mode, this really seems like the kind
of thing that DT is supposed to describe and the kernel is supposed to
handle.

Rasmus


