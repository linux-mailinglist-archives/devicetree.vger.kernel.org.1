Return-Path: <devicetree+bounces-102728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5AC978092
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 14:55:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CFC881C215D1
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 12:55:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E0261DA61B;
	Fri, 13 Sep 2024 12:55:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="I1hMY1Ic"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CACD1DA610
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 12:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726232110; cv=none; b=IsvMDd7IqQ24RrZamfynm+XlKYEJGEMlJfvB0iUcDrizVGfO09Udq94UGnSIwywGda3fVimnmoLQM9qNSxUApQBZy5brNwslBbiE4d0KYfQuq3sM3uKrHK37eTkydWrBhqF5TW7PCydutsR+lkgfMY1Wu5wBCGG5NAro4NNcjY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726232110; c=relaxed/simple;
	bh=It4b7WTIeTTkxjWZyTXy4+yUt95s6XCv7qwUASihMzA=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=MpdljsoYYSo76yrtqYdLnyBD8Ddt+jmJOmm0WCwZ1Vtp6fH5l7Yn+Kmiy1FCmmLPTDh3d1zRNY8UcWbp9/ueIuUK8EG54wproPGPm1fbW2gQcsUYdwK2LE0st9QWpFEpY+09bOdrJLBOUAROrL8yww1SQTEFX+TOf/KunaeF9o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=I1hMY1Ic; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-37747c1d928so646389f8f.1
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 05:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1726232107; x=1726836907; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hc8v0R6GDF5PLdJH56j48gvXNERk+5hUHxBGHTh8r8E=;
        b=I1hMY1IcY0zGjDPZCiV38fQlP2u9o0Vq/vSTFRxVPcWo/UwvBjdUwFnixwJH3p7oWv
         PY0faWP1afH54YEVtCBAotVA0DkahJEz3RWn6NmWcmSqllTixaiVytvNFqK9i1P5QH9U
         GslkPeKj+o/HvV8hKng0DkFb1LgWT8QWDqCp1QCvxNJ9LCQCE2dkuc4YiTXZLMw52mQK
         pWoVed9HfFuLhbCTNfJzN8N/Y4Fr/2B1GFLTLCPK0iginUMgwzIaTYSuIOUu4JZAWQ0G
         rx1LjqKNxVhYOnS3dh0MXWy4l170k/jGX0mf+bnjuUPC6zPZeYQrW3xeAwG27ERJoDAj
         38Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726232107; x=1726836907;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Hc8v0R6GDF5PLdJH56j48gvXNERk+5hUHxBGHTh8r8E=;
        b=KbyXxqolpmv65sDzpAn5FJHg5NFBU6RIHz6diub4qPKQrAIsfA53izXh2zQveRZzST
         Dmk4sMGPZUQdEsThVHyRjd0PVY7Q8pp5eyoLbkalcA9GVRA4DB27X/MIh81S9QbpEP1J
         TxTwXI6t2BoVUTb2d9gqe5stOifyBUcuZcKylzOg/M6mbU1iRjC8BkJGHBc7eSw6AFsg
         pm6Bk+B6vZ5CrlddCJCMmz2/sxIqirMmCy3QGj8QE7vYt5/O0o6A+0DoFLR0p/TEr06B
         rytIgsgNZpkiJy+L0kcpmn1PVb82B2zuM0Tz2mC4R55T8/S7nnktCe1PYMrccP0O4wqB
         fxTg==
X-Forwarded-Encrypted: i=1; AJvYcCVTca3emXlvLi1cAm6RfVA+YrhA5K8i7E0vwhAnpb0mo0uMeTsITYwFBP/Od9DhQYlVNRDW5B+RNyTX@vger.kernel.org
X-Gm-Message-State: AOJu0YwIjGjGt8ykqHCZOaU34h5bpOzIz6n+6aK0dwPFSXrNPHwrArzH
	j+elCVqWRvKYbjwwaauSlXkbLMT1/wlaWa0XiUZQRPRxgN9Dmwnxv0PS4FpHFwU=
X-Google-Smtp-Source: AGHT+IGuxOqBic27IcdAV/ufZJdHJH6P9HTUargjaKKwS2U8i3tVdW9oMa5vfdAciNNzAQoU2peu6w==
X-Received: by 2002:adf:e647:0:b0:374:ae04:c7c5 with SMTP id ffacd0b85a97d-378d6241dacmr1435602f8f.36.1726232106543;
        Fri, 13 Sep 2024 05:55:06 -0700 (PDT)
Received: from localhost (amontpellier-556-1-151-252.w109-210.abo.wanadoo.fr. [109.210.7.252])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42d9b16bf68sm24508295e9.27.2024.09.13.05.55.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2024 05:55:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 13 Sep 2024 12:55:05 +0000
Message-Id: <D4567LFFTYJQ.2YC5OODKOVPNB@baylibre.com>
Subject: Re: [PATCH 4/6] iio: adc: ad4030: add support for ad4630-24 and
 ad4630-16
From: "Esteban Blanc" <eblanc@baylibre.com>
To: =?utf-8?q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>, "Jonathan Cameron"
 <jic23@kernel.org>
Cc: "Lars-Peter Clausen" <lars@metafoo.de>, "Michael Hennerich"
 <Michael.Hennerich@analog.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Nuno Sa" <nuno.sa@analog.com>, "Jonathan Corbet" <corbet@lwn.net>,
 <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "David Lechner" <dlechner@baylibre.com>,
 <linux-doc@vger.kernel.org>
X-Mailer: aerc 0.18.2-0-ge037c095a049
References: <20240822-eblanc-ad4630_v1-v1-0-5c68f3327fdd@baylibre.com>
 <20240822-eblanc-ad4630_v1-v1-4-5c68f3327fdd@baylibre.com>
 <20240826102748.4be0b642@jic23-huawei>
 <D452E2M75XCM.13OQGAPJ7JJ4A@baylibre.com>
 <0a4e7fe39cf36774b28c86f6baab5ef8c20e3d6b.camel@gmail.com>
In-Reply-To: <0a4e7fe39cf36774b28c86f6baab5ef8c20e3d6b.camel@gmail.com>

On Fri Sep 13, 2024 at 10:18 AM UTC, Nuno S=C3=A1 wrote:
> On Fri, 2024-09-13 at 09:55 +0000, Esteban Blanc wrote:
> > On Mon Aug 26, 2024 at 9:27 AM UTC, Jonathan Cameron wrote:
> > > On Thu, 22 Aug 2024 14:45:20 +0200
> > > Esteban Blanc <eblanc@baylibre.com> wrote:
> > > > +static const unsigned long ad4630_channel_masks[] =3D {
> > > > +	/* Differential only */
> > > > +	BIT(0) | BIT(2),
> > > > +	/* Differential with common byte */
> > > > +	GENMASK(3, 0),
> > > The packing of data isn't going to be good. How bad to shuffle
> > > to put the two small channels next to each other?
> > > Seems like it means you will want to combine your deinterleave
> > > and channel specific handling above, which is a bit fiddly but
> > > not much worse than current code.
> >=20
> > I can do it since that was what I had done in the RFC in the first plac=
e.
> > Nuno asked for in this email
> > https://lore.kernel.org/r/0036d44542f8cf45c91c867f0ddd7b45d1904d6b.came=
l@gmail.com/
> > :
> >=20
> > > > > * You're pushing the CM channels into the end. So when we a 2 cha=
nnel device
> > > > > we'll have:
> >=20
> > > > > in_voltage0 - diff
> > > > > in_voltage1 - diff
> > > > > in_voltage2 - CM associated with chan0
> > > > > in_voltage0 - CM associated with chan1
> > > > >=20
> > > > > I think we could make it so the CM channel comes right after the =
channel
> > > > > where
> > > > > it's data belongs too. So for example, odd channels would be CM c=
hannels (and
> > > > > labels could also make sense).
> >=20
> > So that's what I did here :D
> >=20
> > For the software side off things here it doesn't change a lot of things
> > since we have to manipulate the data anyway, putting the extra byte at =
the
> > end or in between is no extra work.
> > For the offload engine however, it should be easier to ask for 24 bits
> > then 8 bits for each channel as it would return two u32 per "hardware
> > channel".
> >=20
> > In order to avoid having two different layouts, I was kind of sold by
> > Nuno's idea of having the CM in between each diff channel.
> >=20
>
> Tbh, I was not even thinking about the layout when I proposed the arrange=
ment. Just
> made sense to me (from a logical point of view) to have them together as =
they relate
> to the same physical channel. FWIW, we're also speaking bytes in here so =
not sure if
> it's that important (or bad).

The best we can do (if we managed to do it HDL wise) is to reorder the
data to get both CM byte in a single u32 after the 2 u32 of both diff
channel. That would be 3 u32 instead of 4.

I don't have a strong opinion other than what we have with the V1 should
be simpler to rework for the offload engine since we can manage to
get the same layout from the offload engine. And if there is
some performance issue we could still try to rework the HDL but I can't
say for sure if there will be some drawback with that.

If you or Jonathan prefers the RFC version let's do that, no problem I
already have the code for it :D

Best regards,

--=20
Esteban "Skallwar" Blanc
BayLibre

