Return-Path: <devicetree+bounces-267320-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id E1aLOHklnGlFAAQAu9opvQ
	(envelope-from <devicetree+bounces-267320-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:01:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A167C1746D5
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:01:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 686C9301477F
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 10:01:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CD4F34D91C;
	Mon, 23 Feb 2026 10:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eU2mk2Ro"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E959E344056
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771840882; cv=none; b=LJbCdxOKJ/Kg5aah7ZqqimQWOYEFxx2mUZWUnYoajp/0TrfsxP1HeY6lW55fD53cxcnOZUJ6AEXtwew1NTIJEJJhIl/T63otd0gGRp8BHvlpNlhsB/MyPp4kGCYJn6CGDqiEzk9NxZCIiji0k7DXfT7C++IlIRmzpm9UMsmysNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771840882; c=relaxed/simple;
	bh=jOH4HAzztbNJd6N61B5fbyjwf94NZbbCov5AxWZaPqE=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=FlC1WJFWG4rR1+HPFZpE+9+mx0QmV5DhrHJeOlA9/1hUQYkBklj/EiJpj6KBMmkf4sRleyoQODC3WNsAsV1Lb1pdJVMVztv9yulEzdEeP7j0qrtTRqXasz0iI5tMPgNeap8OzpMdflLp1zajVGk0Oru1NVYX/7UDftyHzAQe6LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eU2mk2Ro; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-43621bf67ceso2708889f8f.2
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 02:01:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771840879; x=1772445679; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KQ52RF9UrdLJkddCssVt0GgYIwMli1ZJtjVYuLN9frw=;
        b=eU2mk2Ro/urxOk6w2nwtZ69HxNZjL6nHS8ndFE9zPpRkCSIii1IqqaRCYBkaG2Yd9R
         +ZWio4os4mz9ITSZl/QPMCLL5sQxBfDHmKj4A/3nyuJc1vhsRvOsJ+icD7OdCN9irHeG
         urQWEeauDEKpGQ44huplQJQ3Qd4+vxddWUNVq8rNUegTPeOxUu2WhwARPQ7Y/npiE1JC
         3HJOnsRxniKuqADeziz1z3jGLzz7d53t+3/MP0o0IyvHTMVxMOqATUR6s6LcK3pZehon
         iFngUEi8VMF7JyOUMuu6P6UxO+V9dwEKAdUNTnUUiCkrBe/Bl/TfypcPtOsuOolQ5rK6
         ++yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771840879; x=1772445679;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KQ52RF9UrdLJkddCssVt0GgYIwMli1ZJtjVYuLN9frw=;
        b=oRY7dFsmlWd8e7rUKwVn0rw8nM78iseo6xyv7/PqQH+tRswUz090ZOymm+47xlomal
         TEG9gzQ36FczaQi/RWIcXykmuJJd6OWQcV4i+3fIHlBMJKwlOkaxIDOgP5eu325c68Cp
         etEGXqPraSY3omqpcg7ojH7PahpZgKQI+zAwOdS4K7CGebdnxVvb6wDPie89oD1DEAfG
         0yMhaqVBE2t9pJ5UXZWeRt0JV6Cyf0rDMV9PKYwvuec3uPbKt+yLahZNd82ZinRbsWc5
         GK87y2NImZeDWQLYJAb2YJm/ShZL99PyAfGRfvjq8uhfSDWo0QzmhCIzC6nNp0QnfLUJ
         RjDg==
X-Forwarded-Encrypted: i=1; AJvYcCVMtyIK12kolIX/IqSvHvdxG7/XP/5gxpN9jxqbGrjdUxlNBg1TEibt1djo0hUhM0BGt7YDOiA7BQxm@vger.kernel.org
X-Gm-Message-State: AOJu0Yxqg47YpQfB/V6YzVi7ibB88LFLV/GWmC1M6rdF1UM+/SV1nFts
	aYVKKkJHNDf12dpWgGUTeewy5u6boCKXjrAEwr2ygyacWLaD6ETvqGcC
X-Gm-Gg: ATEYQzyghJv2FQc9yJ288MlSIWB8sg8uFDaTon7l/9+ioZZG8H6V/vXt/QUFfMwgvY7
	9sWOI5aLNIE5Avtpk2H62RkYpAsiPl42Fq6ktrxkhdVCl9+OhXP+N+x+mQhwfJOEPK1C3fCbwf/
	/XcXDe4nPfzXMWO6VWNVh/K7UQuqZxtcb4LMndQxLZZnW8XxZsBGS6je1jtgZqXSXtFjeaOATPE
	X4Q1rdLU/g8m1HQZ1PuEflWwJsxcQbLO5clw347pH1g3tJFMupW/q/mgu4zEBpdV+6YIwtWD9mE
	PPcimoHHHxAapbzm8eMEDmehXsxV7YU9DQc1OonCqZQstrG7ggQKVIvrWxcbAkh4csqv8oHZ5iv
	4AswWBMnveRNBqq8E/WbJawG95E2c1jC4SzpDp6FoHq/FfLccgC9eBqRD/IpXEvu7bbRzVYUjlW
	jCS8G7aQi9XvT20bBpFwA9f0aTTkjOKfI=
X-Received: by 2002:a5d:588b:0:b0:435:6c8d:d017 with SMTP id ffacd0b85a97d-4396f17b315mr14662055f8f.32.1771840878920;
        Mon, 23 Feb 2026 02:01:18 -0800 (PST)
Received: from [192.168.1.187] ([148.63.225.166])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d4c60bsm17820046f8f.27.2026.02.23.02.01.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 02:01:18 -0800 (PST)
Message-ID: <9392fea00a9c3b23d1bc9468faa1b3cc20904398.camel@gmail.com>
Subject: Re: [PATCH RFC 0/8] AD9910 Direct Digital Synthesizer
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: David Lechner <dlechner@baylibre.com>, Rodrigo Alencar
	 <455.rodrigo.alencar@gmail.com>, rodrigo.alencar@analog.com, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich	
 <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, Andy
 Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Date: Mon, 23 Feb 2026 10:02:00 +0000
In-Reply-To: <bdc973e5-df74-48f2-8884-439b03565940@baylibre.com>
References: <20260220-ad9910-iio-driver-v1-0-3b264aa48a10@analog.com>
	 <a72b2d62-3b91-4789-a1b1-ff1429e80ed5@baylibre.com>
	 <2k4ouimpaxjuhnk67qmrues2375zj43ehru7h5as6w6kf7yak3@2ndr72co5trh>
	 <bdc973e5-df74-48f2-8884-439b03565940@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267320-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[baylibre.com,gmail.com,analog.com,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bootlin.com:url]
X-Rspamd-Queue-Id: A167C1746D5
X-Rspamd-Action: no action

On Sun, 2026-02-22 at 14:32 -0600, David Lechner wrote:
> On 2/22/26 4:01 AM, Rodrigo Alencar wrote:
> > On 26/02/21 02:16PM, David Lechner wrote:
> > > On 2/20/26 10:46 AM, Rodrigo Alencar via B4 Relay wrote:
> > > > This patch series adds support for the Analog Devices AD9910 DDS.
> > > > This is an RFC so that we can agree/discuss on the design that foll=
ows:
> > > >=20
>=20
> ...
>=20
> > > > represents a distinct signal path into the DDS accumulator, so the =
driver
> > > > models them as separate IIO output channels (all IIO_ALTVOLTAGE typ=
e).
> > >=20
> > > Generally IIO channels represent the physical input/output, not the
> > > internal channels.
> >=20
> > That is part of the reason for this RFC. Dividing those top-level modes
> > into channels allows for better organization, as they can operate toget=
her,
> > i.e., phase or scale can be provided by single-tone profile, while
> > frequency is controlled by the digital ramp generator (see Mode Priorit=
y
> > section in the datasheet). Also, it allows to explore the most of stand=
ard
> > ABIs like, scale, frequency, phase, sampling_frequency and enable.
> > Putting everything into a single channel would make things a lot messy
> > to interface with.
> >=20
> > > Ideally we would just have the one channel here with a mode selection
> > > attribute. Documentation can tell us which modes use which attributes=
.
> > >=20
> > > > This per-channel separation allows userspace to configure each mode
> > > > independently through its own set of sysfs attributes, and to
> > > > enable/disable modes individually via IIO_CHAN_INFO_ENABLE, relying=
 on
> > > > the hardware's own mode selection architecture.
> > > >=20
>=20
> Looking at Table 5 in the datasheet really helped me understand this bett=
er.
> I think this series could benefit from a documentation patch that explain=
s
> more about how the driver works with some diagrams.
>=20
> So really what we have here are a bunch of digital data generators rather
> than a bunch of altvotlage output channels. And the same data channels ca=
n be
> mixed and match as the source for up to 3 different components of the out=
put
> (frequency, phase, amplitude) depending on the priority rules defined in
> Table 5.

More bellow... But note that all of the (or most of it) generators are goin=
g to
be feed into a DAC. Your output is altvoltage but maybe we can treat the
internals as voltage. Not sure.
=20
>=20
> Digital data sources are really more like a buffer in IIO terms than a
> channel. And before we added the IIO backend stuff, there wasn't really
> any other digital data source/sink that I am aware of other than buffers
> (but there are certainly a lot of odd corners of IIO that I haven't explo=
red
> yet, so maybe I missed some).
>=20
> In a recent discussion, the idea of possibly needing a way to provide
> some userspace interface to be able to tweak knobs of an IIO backend
> was also brought up.
>=20
> Putting those ideas together, I'm wondering if we need some new channel
> type or even a whole new interface (e.g. a new sysfs directory like buffe=
rs
> and events) for managing these digital data sources/sinks that are not an
> IIO buffer.
>=20

But what would be that channel? In the end of the day, we typically have vo=
ltage or
current DACs and a DDS primary function is indeed to generate alternating w=
aveforms
that you then typically feed into a DAC (and in some cases from the DAC int=
o a
power amplifier). So the DDS is just part of the data/signal path. Anyways,=
 not sure
on the new type and I think we already have the "blocks" in IIO for dealing=
 with this:

. frequency
. phase
. amplitude (raw + scale + offset)

But you're right that maybe it's time to think in a better way to fit them =
together.=C2=A0
Maybe a new type (as buffers or events) can make sense where the above are =
treated as, example, scan
elements. Maybe it's overcomplicating, not sure. It surely needs  discussio=
n and thinking :).

And spoiler alert, as you might have guessed already, the parallel port stu=
ff is to be
used with DMA buffers (and IIO backends). At least, that was the plan IIRC.=
 But Rodrigo
can confirm it.

> I think we've seen enough of these already to know that things like a
> "tone generator" and a "ramp generator" are going to be common and could
> share some standard attributes.=20
>=20

I tend to agree. For example, there already some DACs (with dithering) that=
 make use of a similar
interface (but with a custom prefix). Though the end goal is different, the=
 interface is not that
far off:


https://elixir.bootlin.com/linux/v6.19.3/source/Documentation/ABI/testing/s=
ysfs-bus-iio-dac-ltc2688

Anyways, I knew this one would be an interesting one for upstream :)

- Nuno S=C3=A1

