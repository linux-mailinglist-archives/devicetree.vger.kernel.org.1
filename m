Return-Path: <devicetree+bounces-25360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9DC813042
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 13:36:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A173CB21835
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 12:36:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65BCF4B5B9;
	Thu, 14 Dec 2023 12:36:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BEABA3;
	Thu, 14 Dec 2023 04:36:17 -0800 (PST)
Received: from mail.maildlp.com (unknown [172.18.186.216])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4SrWym6SLmz6JB0r;
	Thu, 14 Dec 2023 20:35:12 +0800 (CST)
Received: from lhrpeml500005.china.huawei.com (unknown [7.191.163.240])
	by mail.maildlp.com (Postfix) with ESMTPS id 4C4AD1400DD;
	Thu, 14 Dec 2023 20:36:15 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Thu, 14 Dec
 2023 12:36:14 +0000
Date: Thu, 14 Dec 2023 12:36:13 +0000
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: David Lechner <dlechner@baylibre.com>
CC: <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>, Rob Herring
	<robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>, Michael Hennerich
	<michael.hennerich@analog.com>, Nuno =?ISO-8859-1?Q?S=E1?=
	<nuno.sa@analog.com>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown
	<broonie@kernel.org>, <linux-kernel@vger.kernel.org>, Stefan Popa
	<stefan.popa@analog.com>
Subject: Re: [PATCH v2 3/3] iio: adc: ad7380: new driver for AD7380 ADCs
Message-ID: <20231214123613.00002b69@Huawei.com>
In-Reply-To: <CAMknhBF9GtbOP_M2q8DrrMOePFOaQzGxqcS2P8OHjtGN-Z27Vg@mail.gmail.com>
References: <20231213-ad7380-mainline-v2-0-cd32150d84a3@baylibre.com>
	<20231213-ad7380-mainline-v2-3-cd32150d84a3@baylibre.com>
	<20231214101415.0000060c@Huawei.com>
	<CAMknhBF9GtbOP_M2q8DrrMOePFOaQzGxqcS2P8OHjtGN-Z27Vg@mail.gmail.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: lhrpeml500006.china.huawei.com (7.191.161.198) To
 lhrpeml500005.china.huawei.com (7.191.163.240)

On Thu, 14 Dec 2023 11:33:51 +0100
David Lechner <dlechner@baylibre.com> wrote:

> On Thu, Dec 14, 2023 at 11:14=E2=80=AFAM Jonathan Cameron
> <Jonathan.Cameron@huawei.com> wrote:
> >
> > On Wed, 13 Dec 2023 05:21:20 -0600
> > David Lechner <dlechner@baylibre.com> wrote:
> > =20
> > > This adds a new driver for the AD7380 family ADCs.
> > >
> > > The driver currently implements basic support for the AD7380, AD7381,
> > > AD7383, and AD7384 2-channel differential ADCs. Support for additional
> > > single-ended and 4-channel chips that use the same register map as we=
ll
> > > as additional features of the chip will be added in future patches.
> > >
> > > Co-developed-by: Stefan Popa <stefan.popa@analog.com>
> > > Signed-off-by: Stefan Popa <stefan.popa@analog.com>
> > > Signed-off-by: David Lechner <dlechner@baylibre.com> =20
> >
> > Just one additional comment.  I 'might' sort both this an Nuno's comment
> > if Mark is fine with the SPI and no on else has review comments.
> > Feel free to send a v3 though if you like ;)
> >
> > =20
> > > +/* fully differential */
> > > +DEFINE_AD7380_DIFFERENTIAL_2_CHANNEL(ad7380_channels, 16);
> > > +DEFINE_AD7380_DIFFERENTIAL_2_CHANNEL(ad7381_channels, 14);
> > > +/* pseudo differential */
> > > +DEFINE_AD7380_DIFFERENTIAL_2_CHANNEL(ad7383_channels, 16);
> > > +DEFINE_AD7380_DIFFERENTIAL_2_CHANNEL(ad7384_channels, 14);
> > > +
> > > +/* Since this is simultaneous sampling, we don't allow individual ch=
annels. */
> > > +static const unsigned long ad7380_2_channel_scan_masks[] =3D {
> > > +     GENMASK(2, 0), /* both ADC channels and soft timestamp */
> > > +     GENMASK(1, 0), /* both ADC channels, no timestamp */ =20
> >
> > https://elixir.bootlin.com/linux/v6.7-rc5/source/include/linux/iio/iio.=
h#L567
> > See the comment (added recently!) =20
>=20
> I did see this comment but this is already sorted in order of
> preference, so I'm not sure why you are calling it out. Just FYI, I
> guess?

No. Order of preference would be turn on the minimal if that is enough.
First item is the highest preference (if the requested channels are a subse=
t of
that we don't look any further).  Here that means we always stop on the fir=
st
entry and never look at the second.

>=20
> >
> > Also, if I remember how this works correctly there is no need to include
> > the timestamp in the mask.  We do special handling for it to avoid havi=
ng to double
> > the number of provided masks.  The details being that it uses
> > iio_scan_el_ts_store rather than iio_scan_el_Store. =20
>=20
> Indeed. I've been working ahead on adding more features and noticed
> this. So we will need to find a way to say that we the timestamp
> should not be allowed under certain conditions. But that will be a
> discussion for a later series.

Interesting - you have cases where it's not valid at all?
It sometimes becomes inaccurate because we are interpolating across
data from a fifo, but I've not seen a case where we can't provide anything
useful.  Ah well - as you say I'll wait for that later series!

Jonathan

>=20
> >
> > So as you have it I think you'll always end up with the first entry
> > and that will include a bonus bit that isn't a problem as it will match
> > anyway.
> >
> > So just have the second entry and 0.
> >
> > Jonathan
> > =20
> > > +     0
> > > +}; =20


