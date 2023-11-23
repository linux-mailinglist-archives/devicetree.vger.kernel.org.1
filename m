Return-Path: <devicetree+bounces-18230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D10137F5BEA
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 11:07:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 71807B20F5D
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 10:07:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91161224C9;
	Thu, 23 Nov 2023 10:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rasmusvillemoes.dk header.i=@rasmusvillemoes.dk header.b="iwnceLNn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0526910CE
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 02:07:21 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-507962561adso974622e87.0
        for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 02:07:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google; t=1700734039; x=1701338839; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SmXvLPzPw+DEwAZx7VriDTykjMFvpksI53NUtYqCnkc=;
        b=iwnceLNnY/+gvIFj4IJ4gzgyXO1+KoTx7bQXYQOgXIfd3D+240n9InocZrpWqgqmCQ
         UYAGhy/4pa7FeS1qGQc8nAXySdP5QeWK/uecfFwsMXfEFDbvGvzVNYVV6102XV/jLl6Q
         H+6yoLHF2C2TVZ9fimeOR5g8cXJX76fVwKpn8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700734039; x=1701338839;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SmXvLPzPw+DEwAZx7VriDTykjMFvpksI53NUtYqCnkc=;
        b=iB3M4FI/1UcsehNlzXk/PEy+rMIctgi/GUv9FrMDLU0tGH2pLKPkh6PoyL1q6kvJV0
         ChO1yn8m4CGwpWr4fTkxEz0PaIA8qkWBQQVS425Uv5QjgITzxmk3fb9p+2KtRk5IQPEX
         ceohacqKtFj6wzZUc/2VFPwf756+Rraf5HPrczogvDE6M6u7YdDWQtAg7QJc1Z1Ns7Zm
         aMWDRNkjt0/5QBaZEExDi5SsBNPGn/jDQwBGf2nZA6bG7HbybktLdsLFEqsOgAIG+oqA
         ATOf0REOR0ZVvsOieQW0NwiuW+MWMbl+Yi3KlufKztXT7X8DmqohwzCrxUKX+eC/rr0R
         gULA==
X-Gm-Message-State: AOJu0Yx+w2fdhQs/zyYVxh7O6FDSp7IRIP3sscmUAnPfMZQ6TMfAOSx9
	Xn1Ofvihp7+qgNkWQE213NQjLw==
X-Google-Smtp-Source: AGHT+IFP1CDX33ugDyxbihJtdfr48gqh31qpKq2fPD9a+2KIHJNpdkp3yd0K2LQKWo1VGhaYFEBEOw==
X-Received: by 2002:a05:6512:2385:b0:504:3c1f:cbd1 with SMTP id c5-20020a056512238500b005043c1fcbd1mr2496310lfv.12.1700734039096;
        Thu, 23 Nov 2023 02:07:19 -0800 (PST)
Received: from [172.16.11.116] ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id e6-20020a196906000000b0050a5f6b5b46sm146397lfc.225.2023.11.23.02.07.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Nov 2023 02:07:18 -0800 (PST)
Message-ID: <e731c0a9-7a5c-41c3-87aa-d6937b99d01a@rasmusvillemoes.dk>
Date: Thu, 23 Nov 2023 11:07:16 +0100
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
To: Lukas Wunner <lukas@wunner.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 Crescent CY Hsieh <crescentcy.hsieh@moxa.com>,
 Lino Sanfilippo <LinoSanfilippo@gmx.de>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
References: <20231120151056.148450-1-linux@rasmusvillemoes.dk>
 <20231120151056.148450-2-linux@rasmusvillemoes.dk>
 <20231122145344.GA18949@wunner.de>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
In-Reply-To: <20231122145344.GA18949@wunner.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 22/11/2023 15.53, Lukas Wunner wrote:
> On Mon, Nov 20, 2023 at 04:10:54PM +0100, Rasmus Villemoes wrote:
>> Some boards are capable of both rs232 and rs485, and control which
>> external terminals are active via a gpio-controlled mux. Allow
>> describing that gpio in DT so that the kernel can transparently handle
>> the proper setting when the uart is switched between rs232 and rs485
>> modes.
> 
> Crescent CY Hsieh (+cc) is in parallel trying to add an RS-422 mode bit
> to struct serial_rs485:
> 
> https://lore.kernel.org/all/20231121095122.15948-1-crescentcy.hsieh@moxa.com/
> 
> I don't know whether that makes sense at all (I had thought RS-422 is
> the same as RS-485 with full-duplex, i.e. SER_RS485_ENABLED plus
> SER_RS485_RX_DURING_TX).

No, that latter case is as I understand it usually called "4-wire
rs485", while rs-422 is an entirely different animal, and the wiring is
in some sense actually closer to rs-232. rs-422 is full-duplex, with all
the slave device's tx-lines connected to the master's rx, and the
master's tx connected to the slaves' rx (ok, it uses differential
signalling, so there are four wires involved and not two as in rs-232).
But I'm no expert, and there doesn't seem to be entirely consistent
terminology.

> 
> But if that patch gets accepted, we'd have *three* different modes:
> RS-232, RS-485, RS-422.  A single GPIO seems insufficient to handle that.
> You'd need at least two GPIOs.

I don't see Crescent introducing any new gpio that needs to be handled.
In fact, I can't even see why from the perspective of the software that
rs422 isn't just rs232; there's no transmit enable pin that needs to be
handled. But maybe the uart driver does something different in rs422
mode; I assume he must have some update of some driver, since otherwise
the new rs422 bit should be rejected by the core. So I can't really see
the whole picture of that rs422 story.

>> --- a/Documentation/devicetree/bindings/serial/rs485.yaml
>> +++ b/Documentation/devicetree/bindings/serial/rs485.yaml
>> @@ -61,6 +61,11 @@ properties:
>>        the active state enables RX during TX.
>>      maxItems: 1
>>  
>> +  rs485-mux-gpios:
>> +    description: GPIO pin to control muxing of the SOC signals to the RS485
>> +      transceiver.
>> +    maxItems: 1
> 
> The description doesn't really add much to the name "rs485-mux-gpios".
> 
> Suggestion:
> 
>     description: selects whether the UART is connect to an RS-232 driver (low)
>       or an RS-485 transceiver (high)

Indeed, I wasn't really able to come up with a good description. Thanks,
that's much better.

Rasmus


