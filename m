Return-Path: <devicetree+bounces-228212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 39793BEA8FF
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 18:15:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A5B2E942373
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 15:37:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E92EB336ED6;
	Fri, 17 Oct 2025 15:36:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OHR94A4w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1959032C93A
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 15:35:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760715360; cv=none; b=MFW009Qke2t200CWcIKaXh16aFVyUY+IMIDkdagkIf9ag641405NzHqguLkBnPTtyCXmRRTMH1UT42RGQdPHNTNYXjgUyYclytpU8iv4GkcrIXtmUwsNkTkd8hvu7p9AF6sKjiYFZ/IJpoLnpFnpsuHJBjkGo+kmUsvwWYYu650=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760715360; c=relaxed/simple;
	bh=K2qsVubYn8CjPdJ5wxrhOx1EatQUzPg4cvi5piJsRvg=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=UTdKo+UYI/Ftb2bw48DK1SuH08rPbgppQVQGNF73sMx5IQIvD0JFVbAnJCpL1J0GigG3SxWmyU9lQHgYC8PiC1fpMiqj3p31I8Og7SbkRqTkhqzGksjT1cWmWBl8HjHhtuwWF9YrwV5N7ePc6ufiZjIp3mgBMfA+uwqpGpAQSMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OHR94A4w; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-46e6a689bd0so20038515e9.1
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 08:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760715357; x=1761320157; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jXEmmH8KoIy+3oXIIcxfKQybPt2IeFDnPMZ3gpQBr8I=;
        b=OHR94A4wi7UuKhVMy2p0jHbB3azRh7iDoA0SAMo0JnGyTVamlfctEEb5IM9J8yLEGx
         zz2xkVhJ5cyQOfGqNyWJVmeUDdclYaxJoIUrqIUgG2knhD3PhO/3MwW/wnowhHVESIbB
         TKncrp0Di3lZZOokMU4xXnlJBeNK7All53/UD6H6QetaYzz76dCL9Lx9RNyIVnSEZLGD
         4baLTmyQt0KplV3SpaAtgqnK/6rrz4IJwTeaaVOHCrynn5xSejre7O4Uj+OxAe+orFE3
         czCRg3zFr/sMoz/HwIc622Gqixe4Xee4tJWJVrBYjV7rPlpeVRaRR0coA0uO5y+mrdIx
         TP4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760715357; x=1761320157;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jXEmmH8KoIy+3oXIIcxfKQybPt2IeFDnPMZ3gpQBr8I=;
        b=r/2Oitthxb98uW95lqxI65s2RzNYFu8bZxtUppUhz4BCNWKdTmW9MyN9k4IG3LaA7x
         DpCSUBaEHrHk1K47X4zoxtq/HinDe24fcG79yqMBaJiqgmc2ao+PICghC8cQknLPdYsv
         6/6kC0gDlvZj/59nr095trEHBikHC8o9Lws4P1JD/hyj03oi7+GU1GD0ykrO+RyATNZh
         4lwBnyOc2EbSOINyUwKEi95W8rQC6ept4/2qhqPz5JBHxEubnEQEFs28feLD+5wdeej6
         0/6IcC4R9ggA+gQ13LFlXzXRLQZQcYOYAoOorFuChciNSfHrNcZCZ/7wh7ejviIZI+4j
         rxaA==
X-Forwarded-Encrypted: i=1; AJvYcCWUpVhbGJPE+B9gSLVYRR3WhTGUEAiOzgnBJyrYahRhWxwrHmTiY8ev33BRTUjow4R1vIXXvUbaNkS0@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4UjbG8cpidIBkyAgeMNzb03Pb1aqY8GHRwhdrQd8IxK1zmvgd
	FM/P0FmovHJe5MvOGICtzJolBGBHGwg5Z0vaVd6HWoFZYT5JanEY4btd
X-Gm-Gg: ASbGncu9WOZVU6MFf4gsXgovr9x39rTHSk6PMQ8FE29pqP4u74knGHSEkg3z+r7UFGM
	sSjigxcm+NfbFtJN4QAIGXYXG6XL8bmcBJTIZvLwxLSNSecsDzB31+iOUKkECkh+GKUFJhJcNG6
	zWbsECDjsX5ZigyUjoHe94P8/ISbl9Czb3L5b1ctEFz39UeElbvazJScUs4ILsbPlJYFRwrrEkW
	2oOWSG+2PGjZQB7Rx5IhKo5WEGwaqhxooIjEHrhOiYDVpvADsujmLE/e219sY1Ua9MgZVVY+Li7
	bZvFJucgzKSErEWnALeg9xuGP1aPsPMFaknvzX1yr8Cq1m9Us2DAWIJI2Q9/yVivjIz7Wmp19Jp
	jG5hvuMYFQO8w73Z0mbgBtKJAYjBCn5H28JyU3k9O8fBWBPEyQAzkFqrxkUslbu0eclBW66VJpr
	RyZ5X0mz1b7jIgg3P8wA==
X-Google-Smtp-Source: AGHT+IFyT1Ik0zXeCGBE2QwHTLZmpbbOjcSgg1Wptb8qYhrZIBd25XN2NSqPB/D9VelyoqlG3l71LA==
X-Received: by 2002:a05:600c:820b:b0:46e:6d5f:f59 with SMTP id 5b1f17b1804b1-47117878465mr37367015e9.4.1760715357144;
        Fri, 17 Oct 2025 08:35:57 -0700 (PDT)
Received: from giga-mm.home ([2a02:1210:8642:2b00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5cfe69sm42472598f8f.32.2025.10.17.08.35.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 08:35:56 -0700 (PDT)
Message-ID: <336e169019bd3eadc475c981abef3db07149a5db.camel@gmail.com>
Subject: Re: [PATCH 1/3] ASoC: cs4271: Fix cs4271 I2C and SPI drivers
 automatic module loading
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Herve Codina <herve.codina@bootlin.com>
Cc: David Rhodes <david.rhodes@cirrus.com>, Richard Fitzgerald	
 <rf@opensource.cirrus.com>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown
	 <broonie@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski	
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela	
 <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Nikita Shubin	
 <nikita.shubin@maquefel.me>, Axel Lin <axel.lin@ingics.com>, Brian Austin	
 <brian.austin@cirrus.com>, linux-sound@vger.kernel.org, 
	patches@opensource.cirrus.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>
Date: Fri, 17 Oct 2025 17:35:56 +0200
In-Reply-To: <20251017171024.5a16da34@bootlin.com>
References: <20251016130340.1442090-1-herve.codina@bootlin.com>
		<20251016130340.1442090-2-herve.codina@bootlin.com>
		<60fbaaef249e6f5af602fe4087eab31cd70905de.camel@gmail.com>
		<20251017083232.31e53478@bootlin.com>
		<d6bd466a5d11b016183db0ac3c25185fad3036fc.camel@gmail.com>
	 <20251017171024.5a16da34@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.0 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Herve,

On Fri, 2025-10-17 at 17:10 +0200, Herve Codina wrote:
> > > > > In order to have the I2C or the SPI module loaded automatically, =
move
> > > > > the MODULE_DEVICE_TABLE(of, ...) the core to I2C and SPI parts.
> > > > > Also move cs4271_dt_ids itself from the core part to I2C and SPI =
parts
> > > > > as both the call to MODULE_DEVICE_TABLE(of, ...) and the cs4271_d=
t_ids
> > > > > table itself need to be in the same file.=C2=A0=C2=A0=C2=A0=20
> > > >=20
> > > > I'm a bit confused by this change.
> > > > What do you have in SYSFS "uevent" entry for the real device?=C2=A0=
=20
> > >=20
> > > Here is my uevent content:
> > > --- 8<---
> > > # cat /sys/bus/i2c/devices/3-0010/uevent=20
> > > DRIVER=3Dcs4271
> > > OF_NAME=3Dcs4271
> > > OF_FULLNAME=3D/i2c@ff130000/cs4271@10
> > > OF_COMPATIBLE_0=3Dcirrus,cs4271
> > > OF_COMPATIBLE_N=3D1
> > > MODALIAS=3Dof:Ncs4271T(null)Ccirrus,cs4271
> > > #=20
> > > --- 8< ---=C2=A0=20
> >=20
> > that's what I get with SPI-connected CS4271, and this is actually what =
I'd
> > expect (linux-next as of 2433b8476165):
> >=20
> > # cat /sys/bus/spi/devices/spi0.0/uevent
> > DRIVER=3Dcs4271
> > OF_NAME=3Dcodec
> > OF_FULLNAME=3D/soc/spi@808a0000/codec@0
> > OF_COMPATIBLE_0=3Dcirrus,cs4271
> > OF_COMPATIBLE_N=3D1
> > MODALIAS=3Dspi:cs4271
>=20
> So, this is without my patch applied.

this is the modalias of the device, it doesn't depend on your patch series.

I'd say that modalias for SPI device is correct but commit c973b8a7dc50
lacks MODULE_DEVICE_TABLE(spi, ...) in the driver.

I'd argue that I2C modalias is correct in the driver:

# modinfo snd-soc-cs4271-i2c
...
alias:          i2c:cs4271

But I still have to understand what happened to I2C core.

> I don't have any CS4271 connected on SPI bus to perform the same test
> with my patch applied.

--=20
Alexander Sverdlin.

