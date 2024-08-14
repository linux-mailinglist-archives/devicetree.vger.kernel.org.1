Return-Path: <devicetree+bounces-93737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A159520CE
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 19:14:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F0131C21693
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 17:14:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3CB01BBBCA;
	Wed, 14 Aug 2024 17:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PM1LQgUu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F5828DC3
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 17:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723655665; cv=none; b=m3I1Ynw4WS/7JgTnbwSTkXhzRCS77iWDa7HVCblRIvNFPgRsSbRKGl2+xjGWnM1e7e8lPYZofqaaDQb8b/VAlc20N8XHcUbzTKfxSmycpQIbzpnGJXkse6JXXtNI5MElG5fMwVS66SGvOtfIfUp7I5RmGsdp6/YLH83wi/dunEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723655665; c=relaxed/simple;
	bh=blA3SSlWobp+ymfR6wJSN8N7F9m9dTpcI5LCBJp96tQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TmpAjGPyKWVEAah88exufDk1tTwIWSm6IRST03zQc10wp1R4TxncWJYzfu5Gl6xFz3zQwGjMGUiUA9fIDIamPQ2z4245WU1S7yHvfWnOhP7/LSFxnh/yjA2Y3SRAYavt/p6VcWIZVS+kCL4OM5id7SxFa/dT0Jlt4iACZkSW2yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=PM1LQgUu; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2eeb1ba0481so1593121fa.2
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 10:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1723655661; x=1724260461; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XVbOQ51p6R1MiYPVnFg0RL8dPh9TQ81XjE0YMdoGDEk=;
        b=PM1LQgUurYCwLYDINIJnOisowOyEve/EBHBn7deNsHBIA35oSiZwnlHyTFzJ7Aucyp
         VVdDIKhkmN35r29ISm6IsZufZO29F2eoOwks6UgKrlglkfhhp52i2BIHD0xR4MOked66
         JbA0VU5AmHKqzZ+eq4ixZcpBJqKF8UN9aEk9bpZf4Ya0Rmzswx4cw+jZcxRFjpizwc0x
         5HTe+VhG9wq4+NA+ctFYrvFRhaKOy2xDKuo1Mg3TxPvffGF9/xiX9suHvaMRj20YcK+E
         P27Tgm0l1RUamhlgigXry9lrkWsohHxBfZNxV6WkRxp9W3rkbLjxg5UN1V9GHiXrqcw1
         w3Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723655661; x=1724260461;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XVbOQ51p6R1MiYPVnFg0RL8dPh9TQ81XjE0YMdoGDEk=;
        b=Sf4aGRwGAn/6JjnveyTRZ+QBaMi14qB58rzmerRAyehP0XIQu+uV0ucw1g7zcWVAlX
         kMceIvQjWlCNohokD8GHWS6nQ0BHWN7meewbzHlIU7uYzGNES4nN8q83yHhRXLvpBjAz
         +IDuKL0uv9qEnhqFV7ecRUantMWFFpnFu1MNq00lVIY99+WhOJrcqPC3IbuamdRPzK19
         xIcrnOthKZE4coh7z6NugpaFt2wZYG1B51N5zmndSZISVBwH7NprbVSq4khPPlyQg3jA
         f+bDTSev0MJuea7QvQmhS3wpt3cmGbUa1rY41nO8Lq8z+8oNmBexwjH8Fd2opVoRVaHB
         TsNA==
X-Forwarded-Encrypted: i=1; AJvYcCXa8GW6guN2Kl9zhCl2ZApscnMUdjDX2lkyH5/Lh0WX2aU8VyWf1LgJWseOU0DuHgNd0+K4VrcbthWtw32uU9R3a5S2yYWqbdGhVQ==
X-Gm-Message-State: AOJu0YwmvZmcWlAwYERbO9sZkk0DQS2naNmrcxfcFmHejw/Z1W6l0aTr
	bqSOtAyQyXE/VSyvO8tOpeu2c84dDHeJXB4QXO7T9fTHtYZZG8+S8NMJX32hk+4YTGxX0tmErfJ
	6RW8F6+oH+R3w2iMe8IXFOPK1v4ulAb93dqGz7Q==
X-Google-Smtp-Source: AGHT+IEL1JxJHsQVWFrwUNuPiVOcA6sWDEaFvbmneam38L+A5QIC+EqMK3s5NkkHC1kDhbTcuPkHxAMp4ntfuYQBQ4s=
X-Received: by 2002:a05:651c:19ac:b0:2f0:25dc:1894 with SMTP id
 38308e7fff4ca-2f3aa1d9de7mr24706231fa.2.1723655661371; Wed, 14 Aug 2024
 10:14:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240722-dlech-mainline-spi-engine-offload-2-v3-0-7420e45df69b@baylibre.com>
 <20240722-dlech-mainline-spi-engine-offload-2-v3-5-7420e45df69b@baylibre.com>
 <20240726123836.GA998909-robh@kernel.org> <9f57e41f-3534-4188-ae78-d323aa45e2a1@baylibre.com>
 <20240814-breeding-revolving-ba26c46164de@spud>
In-Reply-To: <20240814-breeding-revolving-ba26c46164de@spud>
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 14 Aug 2024 12:14:10 -0500
Message-ID: <CAMknhBHxq3MKXATBXg6tZkkkUmiAtph=+8mV4KgcLne+J8kGzw@mail.gmail.com>
Subject: Re: [PATCH RFC v3 5/9] spi: dt-bindings: axi-spi-engine: document spi-offloads
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Jonathan Cameron <jic23@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	David Jander <david@protonic.nl>, Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 14, 2024 at 10:58=E2=80=AFAM Conor Dooley <conor@kernel.org> wr=
ote:
>
> On Fri, Jul 26, 2024 at 02:17:00PM -0500, David Lechner wrote:
> > On 7/26/24 7:38 AM, Rob Herring wrote:
> > > On Mon, Jul 22, 2024 at 04:57:12PM -0500, David Lechner wrote:
> > >> The AXI SPI Engine has support for hardware offloading capabilities.
> > >> There can be up to 32 offload instances per SPI controller, so the
> > >> bindings limit the value accordingly.
> > >>
> > >> Signed-off-by: David Lechner <dlechner@baylibre.com>
> > >> ---
> > >>
> > >> RFC: I have a few questions about this one...
> > >>
> > >> 1.  The trigger-source properties are borrowed from the leds binding=
s.
> > >>     Do we want to promote this to a generic binding that can be used=
 by
> > >>     any type of device?
> > >
> > > I would make it specific to spi-offload.
> >
> > OK
> >
> > Meanwhile, we are working on some other ADCs (without SPI offload) and
> > finding that they are using basically the same sorts of triggers. And
> > on the driver side of things in this series, I'm getting feedback that
> > we should have some sort of generic trigger device rather than using,
> > e.g. a clk directly. If we need this same sort of trigger abstraction
> > for both SPI offloads and IIO device, it does seems like we might want
> > to consider something like a new trigger subsystem.
>
> A "device" in the sense that "pwm-clk" is a device I suppose. >

In simple cases, yes it could be like "pwm-clk" where a PWM/clock/gpio
is used directly as the trigger. We also have a case where there is a
PWM output combined with a clock output using an AND gate, so more of
a "real" device. And finally, there is actual dedicated hardware, like
this [1] time division duplexing (TDD) controller that, in addition to
it's primary purpose for RF applications, can be used as a general
purpose trigger source - mostly useful for creating burst of a finite
number of pulses.

[1]: http://analogdevicesinc.github.io/hdl/library/axi_tdd/index.html

> Are any of
> these other things WIP on the lists (that I may have missed while I was
> away) or are they still something you're working on internally.

My ideas on actual trigger devices and bindings are still mostly on
paper, but we do have a couple of ADCs on the mailing lists right now
where I think it would make more sense to have a flexible "trigger"
but we have been making due with what is currently available.

ad7525

In this case, we need two coordinated triggers for the CNV and CLK
signals, one that generates a single pulse and one that generates a
burst of 16 or 18 pulses, both repeating periodically. Right now, the
proposed DT bindings only allow specifying a PWM to provide the CNV
signal and a second PWM combined with a clock and an AND gate (same
one mentioned above) to provide the CLK signal because that is the
reference hardware design. But technically if one wanted to use, for
example, the aforementioned TDD controller to create these signals for
CNV and CLK instead, it should work just the same.

[ad7525]: https://lore.kernel.org/linux-iio/20240809-ad7625_r1-v2-0-f85e7ac=
83150@baylibre.com/

ad4030

This also needs a CNV trigger, but it works slightly differently than
ad7525. For now, the proposed DT bindings just have a cnv-gpios to
describe what is connected to the CNV pin. But for certain
applications, a GPIO is not the best choice. For example, to use the
oversampling feature of the chip, we have to provide a burst of some
power of 2 pulses, up to 16k pulses, with specific timing to trigger
2**N conversions before reading one sample. This can be done by
bit-banging the GPIO but could be done much better/faster by something
like the TDD controller that is specifically designed to create a
burst of a finite number of pulses.

[ad4030]: https://lore.kernel.org/linux-iio/20240627-eblanc-ad4630_v1-v1-0-=
fdc0610c23b0@baylibre.com/

Having a generic DT binding for these ADC input pins that can be
connected to a wide variety of outputs seems more future proof than
having to modify the bindings each time someone wants to support a new
type of output provider.

