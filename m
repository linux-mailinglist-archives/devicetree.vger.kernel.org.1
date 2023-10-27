Return-Path: <devicetree+bounces-12504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0957D9B6E
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 16:30:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A109A1F23747
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:30:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E42A319448;
	Fri, 27 Oct 2023 14:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FobtRAFd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7B1337163
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 14:30:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AE59C4339A;
	Fri, 27 Oct 2023 14:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698417024;
	bh=HqA0zfbW9VztCySYiMvQ/vRTrEs3pyPe0tuGpgEOlvI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=FobtRAFdGyRTe4PRYmikUDCGdyCGTYC1ReQnrjPLjXFCM8cHB5oQy1TXboO3KZ1Rw
	 29IRmuAyY5INuMLwujSD2CxHnnomBmFbla++4xJjx2jcCr4zhcjIE6di7309O+rS11
	 +OFWiYCzDPI22HNKZr7rx2oqQHEr9bQBLo8i3BToEFAtAvkwhq2Nwa7ycR1QlnuwIL
	 98ZW1/tw2DSm4WbDHHz7NbUdHxm4oKuvghVm2dYnNe6f3/VJlhuLy9lXuzLKPsr8f+
	 j4MmsJcW2nBI0RVi2+R/XfiZMivrgpucwA480zAAmLwwFmIltMDmFWXWoCR18pS3LT
	 E74I7nd5DzX+w==
Date: Fri, 27 Oct 2023 15:29:51 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Nuno =?UTF-8?B?U8Oh?= <noname.nuno@gmail.com>
Cc: Marius.Cristea@microchip.com, lars@metafoo.de, robh+dt@kernel.org,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] iio: adc: adding support for pac193x
Message-ID: <20231027152951.52a4627f@jic23-huawei>
In-Reply-To: <b29594464415af0ea56b6d5431744982fa1385ee.camel@gmail.com>
References: <20231025134404.131485-1-marius.cristea@microchip.com>
	<20231025134404.131485-3-marius.cristea@microchip.com>
	<d914069815f76245ef91b6b7b0c6b382b054b562.camel@gmail.com>
	<02ea54ae3a2ab4f0a19232a4df494f71b1de3b00.camel@microchip.com>
	<b29594464415af0ea56b6d5431744982fa1385ee.camel@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, 27 Oct 2023 10:40:21 +0200
Nuno S=C3=A1 <noname.nuno@gmail.com> wrote:

> On Thu, 2023-10-26 at 15:03 +0000, Marius.Cristea@microchip.com wrote:
> > Hi Nuno S=C3=A1,
> >=20
> > =C2=A0 Thanks for looking over the patch.
> >=20
> > On Wed, 2023-10-25 at 16:38 +0200, Nuno S=C3=A1 wrote: =20
> > > EXTERNAL EMAIL: Do not click links or open attachments unless you
> > > know the content is safe
> > >=20
> > > On Wed, 2023-10-25 at 16:44 +0300,
> > > marius.cristea@microchip.com=C2=A0wrote: =20
> > > > From: Marius Cristea <marius.cristea@microchip.com>
> > > >=20
> > > > This is the iio driver for Microchip
> > > > PAC193X series of Power Monitor with Accumulator chip family.
> > > >=20
> > > > Signed-off-by: Marius Cristea <marius.cristea@microchip.com>
> > > > --- =20
> > >=20
> > > Hi Marius,
> > >=20
> > > I'll be honest and I just looked at this for 5min. But I'm seeing
> > > things like
> > > shunt resistors, vsense, power, energy... This seems to me that it
> > > belong to
> > > drivers/hwmon. Any special reason for IIO?
> > >  =20
> >=20
> > =C2=A0 Yes, this device is at the boundary between IIO and HWMON if you=
 are
> > looking just at the "shunt resistors, vsense, power, energy". The
> > device also has ADC internaly that can measure voltages (up to 4
> > channels) and also currents (up to 4 channels). Current is measured as
> > voltage across the shunt_resistor.
> >  =20
>=20
> I think this alone is not justification but...
>=20
> > =C2=A0 As I said before: I was thinking to start with a simple driver (=
this
> > one that is more apropiate to be a HWMON) and add more functionality
> > later (like data buffering that is quite important for example if
> > someone wants to profile power consumtion of the procesor itself, or a
> > pheriperic, or a battery, this kind of functionality was requested by
> > our customers).
> >  =20
>=20
> having buffering support already makes a case for IIO, yes.
>=20
> Hmm, I'm also just realizing this is v2 and indeed you already justified =
the very
> same question in v1. Sorry for noise!

I'd suggest adding some text to the cover letter to explain this so you
can hopefully avoid being asked on v3 :)

Also for cases like this that sit at the boundary we tend to also
cc the hwmon maintainers so they are aware.  It can help us to make more
consistent decisions on where a future device belongs.

I'm not against having this in IIO, but nice to work by consensus and
avoid anyone getting a surprise.

Jonathan

>=20
> - Nuno S=C3=A1
> >  =20
>=20


