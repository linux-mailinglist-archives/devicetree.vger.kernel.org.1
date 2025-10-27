Return-Path: <devicetree+bounces-231583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F67AC0E9E4
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 15:52:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6E69C4F12BA
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 14:48:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19FD62C0269;
	Mon, 27 Oct 2025 14:48:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PoBKbX10"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF02E2C21C3
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 14:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761576501; cv=none; b=Oo7QMlwOm6IEdJNHAN/cp442JlG236uNVgt08xZPcHQiSRKhT4znZBUa72ifPvmFtJJZ8F+XIaGGZMkC0FfN0lANop/Qzc7k/Fi4zkLciIWfCcUbfIwqkoXDExC3g/Fief52NdTg6fwgylqb0rr3XXWQ8ttwm1omEfnmzYAuO3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761576501; c=relaxed/simple;
	bh=6/aYoUQSkAZbwd9+QXDbxqsqu7jMVd+14d65oZtGiZ0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=qbZo87C1WQL0p1eimy2QMUKfDx7GmSu5Si1/rPVyMtvL7cdT/4ieyZ1Kmt6RboEFVwS4VEq04wp5TL9yNcviKF98CaA5Iz3/gUh4XGMu7+xLEvMsHNbpWIs0GVfA1fUePRhB9NVxRkiaQCwZe0d/TJkPZS6jkpJzmLMgJFRjwY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PoBKbX10; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4770e7062b5so11105125e9.2
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 07:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761576496; x=1762181296; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zygoCpzphFB2uhMNp3Gp2dYO9osLJcEQsz/2WuF2KM4=;
        b=PoBKbX10nxTlAlAIhheTtLczbbxI8XWVOpwYlV5JOh69C+GHeuEvPkFZDGqmPRrJwZ
         hFmFnmMIWozHTUH9hwZ2d0DjgsmYsxi2syEeMA/i1dUXTn0HumbP7gMLc565Ad/f6ytk
         vUdALicN2lca8yvkVpT3m3D+9QM+UZPno//3PbJtpCVxC0lINWVYig8b8An6e+JnfgFR
         abvNKj9hvQLZMIswoV3xNUJvEaYABWQdRwfrfMn9ny4HGEq9sk9PF3Cb+H1m1JTHXCuI
         VgEFn5+1lXZxF9K+N41RIE4pQdoSnBvQTyE248sqgOnYU5ZG84GD2sBwc1ulXi88+WrS
         rdpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761576496; x=1762181296;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zygoCpzphFB2uhMNp3Gp2dYO9osLJcEQsz/2WuF2KM4=;
        b=wCYd5XO0YZJMMv120IMr3Vc0bDWuJk2/oTogzRLTtZUpZB0l8bNhYyNCS/CpnaH9CC
         O0YCGN9uqmcy39iaRJz6omL+V4ckZDzUWAlogGviQbR+RXdGOgDh8wsw0TmrBQG7n81y
         g9MBc2E2vLrCAvVKKeerswEUzTz9x5yUEOwvvp5odZNsYxN2eo8Hj8VVAp9KD6hAHac9
         JAI0Yt/122UbbU8cGNqYV7oqist32KR5Be90/01h+njD2ICB4kGJtCmTFEtEa/nLbBCA
         QsqoRNmWB6+fif7BlvA/ikky9+p7z9gXcVru8VXhD73UixiUUxQV+PQTOf77oP8I9e4S
         g95g==
X-Forwarded-Encrypted: i=1; AJvYcCW1/YQLSsEB8RVsEhqdf91bRX55UlvJHLX24q40VfymEP8S06+1YFH7NhERgRFsYLGgRWzB85TVp+UY@vger.kernel.org
X-Gm-Message-State: AOJu0YxAgBVOvwHaoEe59fwxUXQ4O1fQjlM7DN4XcObEaNaE2Fd8LeiT
	f519BJUm8glTq6CrUYZzoRZNnNVlwYTk7pUF/sfnReYIBs3hN7Y0zs3a
X-Gm-Gg: ASbGncv3cV1F6Vbjr0e3+goF9Qzr4ZRpmGq9qlLgJi8GMPq95ofIbPtVmvEFRzpbpCt
	uNqeaeAS62zub/WRi+kS5pFwhAQ9v5hn9D4s+rxetKwxJsmIs24+Pr5PcejoA/n6ZsfloB3Alps
	kVxYgObxMqiw+Ry72UfOBuQd98zTsNjGNtchsPg3gVbq1hB+2bQkFCi2zxoq/4UIwQnmC1v7I8t
	AW5F1Dz+6zRTAgCpjrcLMHKklvvABJCfLuGtCnnYHG+UB5jl0D/6ZQhpgm4LuLA9ZPurMQ/9zgT
	bryB1/QNABFz6rtpf1t/iEYO4O8DDBVjo4Dkd7QCw+g2pQBFWvVNpJCcGTf8QbrSQiq8gqMWSfk
	aCjcYON9lgZjdOAthnROlUgDEerQSjy/w9q6bn7kEXEa98rEAD6aXU5WeXFnVTChJwXdFRrhtZc
	r+AaNOYlHqBYUskk7wbvs=
X-Google-Smtp-Source: AGHT+IHXcznJ/RjVrwiQP8/NATnTGGZmftQnkk/PQ+IpbTShD+td5osO5VosOf0EXPa24mv6i1B5vA==
X-Received: by 2002:a05:600d:41cf:b0:471:c72:c7f8 with SMTP id 5b1f17b1804b1-475d2ec5554mr88663125e9.21.1761576495991;
        Mon, 27 Oct 2025 07:48:15 -0700 (PDT)
Received: from [192.168.1.187] ([161.230.67.253])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-475dd489fa4sm136341305e9.16.2025.10.27.07.48.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 07:48:15 -0700 (PDT)
Message-ID: <ffb2512aad9bec33b0fe27035f88e79636362645.camel@gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: iio: dac: Document AD5446 and
 similar devices
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Jonathan Cameron <jonathan.cameron@huawei.com>, Nuno
 =?ISO-8859-1?Q?S=E1?=
	 <nuno.sa@analog.com>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron
	 <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, Andy Shevchenko
	 <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Date: Mon, 27 Oct 2025 14:48:50 +0000
In-Reply-To: <20251023180831.000026ca@huawei.com>
References: <20251023-ad5446-bindings-v2-0-27fab9891e86@analog.com>
		<20251023-ad5446-bindings-v2-1-27fab9891e86@analog.com>
	 <20251023180831.000026ca@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2025-10-23 at 18:08 +0100, Jonathan Cameron wrote:
> On Thu, 23 Oct 2025 14:01:37 +0300
> Nuno S=C3=A1 <nuno.sa@analog.com> wrote:
>=20
> > Add device tree binding documentation for the Analog Devices AD5446
> > family of Digital-to-Analog Converters and compatible devices from
> > Texas Instruments. There's both SPI and I2C interfaces and feature
> > resolutions ranging from 8-bit to 16-bit.
> >=20
> > The binding covers 29 compatible devices including the AD5446 series,
> > AD5600 series, AD5620/5640/5660 variants with different voltage ranges,
> > and TI DAC081s101/DAC101s101/DAC121s101 devices.
> >=20
> > Signed-off-by: Nuno S=C3=A1 <nuno.sa@analog.com>
> Hi Nuno,
>=20
> Thanks for filling in this missing doc.=C2=A0 I wonder what else is old
> enough that we still don't have docs? Guess I should check when
> I'm next bored enough (so that's not happening any time soon ;)

Yeah, wouldn't be surprised if there's some more ADI old stuff hanging arou=
nd.
This caught my attention since I saw that out of tree patch adding support =
for a
new device (with no real reason for not being in tree).

>=20
> > ---
> > =C2=A0.../devicetree/bindings/iio/dac/adi,ad5446.yaml=C2=A0=C2=A0=C2=A0=
 | 138
> > +++++++++++++++++++++
> > =C2=A0MAINTAINERS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 8 ++
> > =C2=A02 files changed, 146 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad5446.yaml
> > b/Documentation/devicetree/bindings/iio/dac/adi,ad5446.yaml
> > new file mode 100644
> > index 000000000000..90fc8ca053fe
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/iio/dac/adi,ad5446.yaml
> > @@ -0,0 +1,138 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/iio/dac/adi,ad5446.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Analog Devices AD5446 and similar DACs
> > +
> > +maintainers:
> > +=C2=A0 - Michael Hennerich <michael.hennerich@analog.com>
> > +=C2=A0 - Nuno S=C3=A1 <nuno.sa@analog.com>
> > +
> > +description: |
>=20
> Trivial but don't need the | as hardly matters if these get formatted
> differently.

Sure.

>=20
> > +=C2=A0 Digital to Analog Converter devices supporting both SPI and I2C
> > interfaces.
> > +=C2=A0 These devices feature a range of resolutions from 8-bit to 16-b=
it.
>=20
> ...
>=20
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 940889b158eb..dae04c308975 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -440,6 +440,14 @@ W:	http://wiki.analog.com/AD5398
> > =C2=A0W:	https://ez.analog.com/linux-software-drivers
> > =C2=A0F:	drivers/regulator/ad5398.c
> > =C2=A0
> > +AD5456	DAC DRIVER
> Tab seems odd here.=20
>=20
> Hmm. For a lot of ADI drivers we have entries that would look like
> ANALOG DEVICES INC AD5456 DAC DRIVER
>=20
> Any reason for formatting it like this?

Ok, time to come clean :)

Bindings were AI generated and then I just cleaned the obvious problems (cl=
early
I did not payed too much attention to the boilerplate stuff - lesson learne=
d).

- Nuno S=C3=A1

>=20
> > +M:	Michael Hennerich <michael.hennerich@analog.com>
> > +M:	Nuno S=C3=A1 <nuno.sa@analog.com>
> > +L:	linux-iio@vger.kernel.org
> > +S:	Supported
> > +W:	https://ez.analog.com/linux-software-drivers
> > +F:	Documentation/devicetree/bindings/iio/dac/adi,ad5446.yaml
> > +
> > =C2=A0AD714X CAPACITANCE TOUCH SENSOR DRIVER (AD7142/3/7/8/7A)
> > =C2=A0M:	Michael Hennerich <michael.hennerich@analog.com>
> > =C2=A0S:	Supported
> >=20

