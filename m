Return-Path: <devicetree+bounces-12377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5CB7D9212
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 10:40:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 396F6282381
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 08:40:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2D6579CC;
	Fri, 27 Oct 2023 08:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eTTPYQH5"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F280BA5E
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 08:40:35 +0000 (UTC)
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 404B41B6;
	Fri, 27 Oct 2023 01:40:25 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-5406c099cebso2690903a12.2;
        Fri, 27 Oct 2023 01:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698396023; x=1699000823; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+ZNnHFWiSKIHBdwdRjz0nWKM4UEVROjCQQBMy6BxpmY=;
        b=eTTPYQH58gNX8SCfiwfANdeNDP5A9VgZrY+KjaPB3BDPjTT7+AE0vu3AZogPCpkPCf
         BAc3mEsVxexcB5TV1edobIeS6n1r3QYNmdWbO6oIAeSIAIAYkRlevTT1s+JQonb9KB+2
         yxS2EZTkeLSsJYP/YmZJFHPS0xR5VcCxRwwjAhdLsvA2mWm6mB392fdtX7R67dvcAJ6F
         zADUBW54PENyWSF/Iw0rW1sPUMH5HWSXauHA36DtZpllSEYmaLWVzJah5BH0na2xJLUI
         WrdjskFfZoIX7DLhk840k59JPhbevum9OKBjTwH2SdNARpW1Zzo+AKw6cMgKr1KuFRpT
         +Ncw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698396023; x=1699000823;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+ZNnHFWiSKIHBdwdRjz0nWKM4UEVROjCQQBMy6BxpmY=;
        b=kINk2by5TQadIiU5eZLihroDFLQPy8Lp1eUSa2QRkhqF2oJPgdntkmfwHyTVVHCuL5
         h6Z0Pb+CtHlpuH5V0E4lA2HnLU2l3X76Xo8tPRflbUY9ip2F61aCHmDurhggTQ+M8Uzp
         3F/lVfP4ZByal1NZ1BgJzKQzIZUZmI+HKTYwHzaGxzBazIiJUBFBLUuUHA1aG7E91LlB
         0U/B17Ht+Zmx0rKgo+cw+v5yiOnQx8FhPuY40oGPuB9Xw9aGTvrU8bhWP10xoc9qhYwo
         6sEQaHNkfpZdjRSuBJObeASY8M/6jMB3KESXApJBAVygRSRw/0kCAMwiE5gkpGpsNsMR
         VsHQ==
X-Gm-Message-State: AOJu0YyNp9BCfmNCm4nBYlBpv6nCD4COo7VU8PAC3rXVY6aud14p0qCP
	CpplpUAJ0E6z98fuyf3/PVE=
X-Google-Smtp-Source: AGHT+IFrcDAN8E4GEX2tTqQ6m+OHLmYg96SzZXdJZD4SVuV4XPnzp/WjYBvqIO1UhQcua5eR9lAxGQ==
X-Received: by 2002:aa7:d78a:0:b0:53d:d4a0:3154 with SMTP id s10-20020aa7d78a000000b0053dd4a03154mr1674010edq.31.1698396023205;
        Fri, 27 Oct 2023 01:40:23 -0700 (PDT)
Received: from ?IPv6:2001:a61:3456:4e01:6ae:b55a:bd1d:57fc? ([2001:a61:3456:4e01:6ae:b55a:bd1d:57fc])
        by smtp.gmail.com with ESMTPSA id j4-20020a50ed04000000b0053ebafe7a60sm871060eds.59.2023.10.27.01.40.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 01:40:22 -0700 (PDT)
Message-ID: <b29594464415af0ea56b6d5431744982fa1385ee.camel@gmail.com>
Subject: Re: [PATCH v2 2/2] iio: adc: adding support for pac193x
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Marius.Cristea@microchip.com, jic23@kernel.org, lars@metafoo.de, 
	robh+dt@kernel.org
Cc: conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	devicetree@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Date: Fri, 27 Oct 2023 10:40:21 +0200
In-Reply-To: <02ea54ae3a2ab4f0a19232a4df494f71b1de3b00.camel@microchip.com>
References: <20231025134404.131485-1-marius.cristea@microchip.com>
	 <20231025134404.131485-3-marius.cristea@microchip.com>
	 <d914069815f76245ef91b6b7b0c6b382b054b562.camel@gmail.com>
	 <02ea54ae3a2ab4f0a19232a4df494f71b1de3b00.camel@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2023-10-26 at 15:03 +0000, Marius.Cristea@microchip.com wrote:
> Hi Nuno S=C3=A1,
>=20
> =C2=A0 Thanks for looking over the patch.
>=20
> On Wed, 2023-10-25 at 16:38 +0200, Nuno S=C3=A1 wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you
> > know the content is safe
> >=20
> > On Wed, 2023-10-25 at 16:44 +0300,
> > marius.cristea@microchip.com=C2=A0wrote:
> > > From: Marius Cristea <marius.cristea@microchip.com>
> > >=20
> > > This is the iio driver for Microchip
> > > PAC193X series of Power Monitor with Accumulator chip family.
> > >=20
> > > Signed-off-by: Marius Cristea <marius.cristea@microchip.com>
> > > ---
> >=20
> > Hi Marius,
> >=20
> > I'll be honest and I just looked at this for 5min. But I'm seeing
> > things like
> > shunt resistors, vsense, power, energy... This seems to me that it
> > belong to
> > drivers/hwmon. Any special reason for IIO?
> >=20
>=20
> =C2=A0 Yes, this device is at the boundary between IIO and HWMON if you a=
re
> looking just at the "shunt resistors, vsense, power, energy". The
> device also has ADC internaly that can measure voltages (up to 4
> channels) and also currents (up to 4 channels). Current is measured as
> voltage across the shunt_resistor.
>=20

I think this alone is not justification but...

> =C2=A0 As I said before: I was thinking to start with a simple driver (th=
is
> one that is more apropiate to be a HWMON) and add more functionality
> later (like data buffering that is quite important for example if
> someone wants to profile power consumtion of the procesor itself, or a
> pheriperic, or a battery, this kind of functionality was requested by
> our customers).
>=20

having buffering support already makes a case for IIO, yes.

Hmm, I'm also just realizing this is v2 and indeed you already justified th=
e very
same question in v1. Sorry for noise!

- Nuno S=C3=A1
>=20


