Return-Path: <devicetree+bounces-222152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A45BA6527
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 02:46:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91D713C036F
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 00:46:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F1451C3306;
	Sun, 28 Sep 2025 00:46:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wat8rZcc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC3E34BA33
	for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 00:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759020390; cv=none; b=DymfCjZ3ZNV/GAsrNMMOH2SnbQzP0snWg0to85facJPk3ZuzF33A42Zm9aLGvq0lnjjpliZty9XBD4c7J2lX3+5RzNDmddK1yRExSHB/46pd9Gf586/QUePA6m+rLegP+IqN+KxpJI4oZyoi9K6d9swEO2TP2zkjbiUsgp07+bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759020390; c=relaxed/simple;
	bh=uFT8DD+GpvmowlrkoMgNzPNeWBkwZV4HRy1OuviWi4M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=KH2oxCdxrrM/KRcWiVp6QRKKxzKFrgItk0kBJEizd0AIoSzpgv8o9mPW4ex74h0qltIDCMyoJrgbir8F4XUF6ejPT2mCurdYNuZHmMVcA4kbHVien4hJ+a4U4hRX6Qxq60qkt0OOLT3WaKyhaW/+Y6u9nyQ5Zn7N6JknY24L1Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Wat8rZcc; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-271d1305ad7so46441545ad.2
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 17:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759020388; x=1759625188; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R0SQxdo3RLHRiJ7AnzgCm7ZcELugvg2FhH462RqaNN4=;
        b=Wat8rZcc9wy9u3iZaa1ZEAhmaw7yud0TBejGdtLK4GCW0Ov3lePDWZfN3h/8+9hx9b
         nED1BT9BjQ116vlCN//ggNlZ/88yRn6NsEEJazSwAJhy20P+OeHQzo/7s5Uv6eeKSprt
         apcGYm4J7n8URULQFxHr1ebYPFCUqC2H8uq5XLwih+oRQXpN1uUkgTyUkBV0G05vSio6
         1e6uQbDGdnie6fvD806sy7O8QOpcpSVSQWju8Wbz+PkBBXYuZRANoqZTmdjSrnDF4+My
         +jyTrUvhZx9urFkmwgaDpPxYqYiqJEYsv/HW5JQ1MVwbuHn2h92f+gQ4SVM5M8XjAzGd
         wjKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759020388; x=1759625188;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R0SQxdo3RLHRiJ7AnzgCm7ZcELugvg2FhH462RqaNN4=;
        b=eT9SA9BB/2CEsrhu/acJrtIBsXnsRPOY2qUbxvxipFLzxwOeCIxhAKqkvNse5NUs+j
         As2A+h4u6PYW9aw5c/tM3P/C5JnWkTQR6uxyzu5H4oXPBaHjtFJY9nznqIkiq6q9Sc5S
         BPMSn4MFTLlTd40BevE2Hv4TGg8iFGEZhdymKIfjy5ZtlVl198Rf1i6n3YrfusSXYpNX
         4Tuf+vYAREVEuROrxMf4K4vMeJ3J4gJC7b0aXjGlhAghaq77BJva65W/Mdx+gdKFaXbh
         Gh7rx9WmyMpIKajMHpb+9tOJ7IqFk+mgtXMnSK5UIIBu10eF7I5tU09BhhRebgiWNxXc
         xXOg==
X-Forwarded-Encrypted: i=1; AJvYcCUDDBiom/4yAgSkIsCrezOIBkl+g4Zu5k9EEGuT3SZvWlpfYjfjQYwuRKks8lKDqtJqHzsPkAPgYW3m@vger.kernel.org
X-Gm-Message-State: AOJu0Yyte7njzvFGnWekF7wh4VK2dqy27uX4Ve+7AySjeAA4QRQVubm5
	z4+BNCeb7m7+8rdmJFjn/E8l5JEtu7esLVLh4vy0buFLM5aNL+AQ5eIy
X-Gm-Gg: ASbGncsSEc1Wmbw5ZLLIOA9N4K3W3SadHjlCWyN6OpJ15/Vj53unh61Ie7Jnx7vyJTk
	Dzp7jh+5hCTf6qYj+rnpD+jxjGj2UyD6BlJ99tg9sdfdurSs60uuzi3Nb4wzYUZw08l8JjT8H1S
	pfubpUfh1Gq0AIYp1wif0m58tw9JrlqQB7hULdHjS3P8UIW36JyHimx5C3KKDtvMvi3hl7JZVqv
	ipwbjHfXMssvS5bCQGrsG3OcDjp7nie8JPJOqZv61RSKrVYcIsxZrlx0exMkkzdQNqCQSo81CWm
	SjwhmEtpjqn6Vp2r5Gk5iWyquKEMq7/TR7msN/tMb67VCAbhWJvNhKcdBbC81Ddsli2zKKxTVHw
	rtpixPvdV7SkyRyq/B41BEi3lq4KBk/T8VYiSNfe3V1yhgzX3jpPkogjH3CzBnM7Wzwbyr4fL8Q
	cuicRbcym1mgfmeOwwDE6E2LbmsXMBgj6I
X-Google-Smtp-Source: AGHT+IHh6vp11a5YTPpS7Cpx/YPQS6tq6OUbtGBtN9cobxgvPjCMMdsgzvmVq+T4sqfObnWyrmGxdQ==
X-Received: by 2002:a17:902:ef03:b0:27e:ef12:6e94 with SMTP id d9443c01a7336-27eef126f60mr78326435ad.55.1759020388025;
        Sat, 27 Sep 2025 17:46:28 -0700 (PDT)
Received: from setsuna.localnet (2403-580a-80ed-0-4835-5a07-49e7-f115.ip6.aussiebb.net. [2403:580a:80ed:0:4835:5a07:49e7:f115])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6ac27d4sm88980475ad.135.2025.09.27.17.46.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Sep 2025 17:46:27 -0700 (PDT)
From: James Calligeros <jcalligeros99@gmail.com>
To: Janne Grunau <j@jannau.net>, Rob Herring <robh@kernel.org>
Cc: Sven Peter <sven@kernel.org>, Alyssa Rosenzweig <alyssa@rosenzweig.io>,
 Neal Gompa <neal@gompa.dev>, Lee Jones <lee@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, asahi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rtc@vger.kernel.org,
 linux-hwmon@vger.kernel.org, linux-input@vger.kernel.org
Subject:
 Re: [PATCH v2 02/11] dt-bindings: hwmon: Add Apple System Management
 Controller hwmon schema
Date: Sun, 28 Sep 2025 10:36:03 +1000
Message-ID: <2537878.PYKUYFuaPT@setsuna>
In-Reply-To:
 <CAL_JsqK-9n3_H6vS80bZuZiSPi9UNuMzHEPFL_EzYTeyNS1cYg@mail.gmail.com>
References:
 <20250827-macsmc-subdevs-v2-0-ce5e99d54c28@gmail.com>
 <20250925204925.GA637503@robin.jannau.net>
 <CAL_JsqK-9n3_H6vS80bZuZiSPi9UNuMzHEPFL_EzYTeyNS1cYg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi Rob,

On Friday, 26 September 2025 7:43:23=E2=80=AFam Australian Eastern Standard=
 Time Rob=20
Herring wrote:
> On Thu, Sep 25, 2025 at 3:49=E2=80=AFPM Janne Grunau <j@jannau.net> wrote:
> > On Fri, Aug 29, 2025 at 11:40:57AM -0500, Rob Herring wrote:
> > >=20
> > > This should be something like this:
> > >=20
> > > "^current-[A-Za-z0-9]{4}$":
> > >   $ref: "#/$defs/sensor"
> > >   unevaluatedProperties: false
> > >=20
> > > With the $defs/sensor being:
> > >=20
> > > $defs:
> > >   sensor:
> > >     type: object
> > >    =20
> > >     properties:
> > >       apple,key-id:
> > >         $ref: /schemas/types.yaml#/definitions/string
> > >         pattern: "^[A-Za-z0-9]{4}$"
> > >        =20
> > >         description:
> > >           The SMC FourCC key of the desired sensor. Must match the
> > >           node's suffix.
> > >      =20
> > >       label:
> > >         description: Human-readable name for the sensor
> > >    =20
> > >     required:
> > >       - apple,key-id
> > >       - label
> > >=20
> > > Though in general, 'label' should never be required being just for hu=
man
> > > convenience.
> >=20
> > That does not sound as it would be compatible with skipping nodes in the
> > driver if the node misses label. The driver could of course fall back
> > to create a hwmon sensors without labels.
>=20
> The driver absolutely should.

The original submission (and our downstream version) do this, but I changed
it for v2 per Sven's feedback [1]. Outside of development/experimentation,
we will (should) never have a sensor in the Devicetree of uknown utility.
If we know what a sensor is for, then we should have a label for it.

> > I looks to me it would be a
> > stretch to call the presence of the labels human convenience.
>=20
> Then it is an abuse of 'label". "label" is supposed to be literally
> that. Matching a sticker on a port of a device.
>=20
> If you need to associate a sensor with some other piece of h/w, then
> that should be via a phandle or something.

I don't think doing so is particularly useful for this platform. Few of
the sensors that we know about are directly related to any one piece of=20
hardware.
It's pretty much just the CPU cores and Broadcom module. The rest are things
like fans, palm rest area temperature sensors, ammeters and voltmeters for=
=20
entire
rails, etc.

Even where we can reliably associate a sensor to a piece of hardware,
(e.g. the WiFi/BT board), doing so does not by itself do anything useful. We
still need to write a human-readable label for the sensor.

I was trying to avoid yet another vendor property, but would something like
'apple,sensor-label' work here?

> Rob

James

[1]: https://lore.kernel.org/asahi/4a95cbf3-b3ae-4b26-8db2-dd5cf14a4c0c@ker=
nel.org/



