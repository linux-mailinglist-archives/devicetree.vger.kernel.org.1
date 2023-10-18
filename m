Return-Path: <devicetree+bounces-9789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A077CE7C6
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 21:34:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 221A1B20EAD
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 19:34:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E7FC436BA;
	Wed, 18 Oct 2023 19:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MzSXndBw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D637339AF
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 19:34:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC0B9C433C7;
	Wed, 18 Oct 2023 19:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697657645;
	bh=qNvq5nn34ptG8W3wOMopSL2JWGOxzGNcPU4CungQFb0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=MzSXndBw3xEFGtBlXC9SjNDbBmleKWZW8nD6N8HyANQ/gD/QTc+UVSE7dbtp3sECT
	 m6ii4fpYF7QDaf98H1fi3EItMflqPgtTJnedZCCsGNFlC7BAFduw0wVNtEyjsdvOaZ
	 oCeq8VbcYf6R9dZ1itBvha/LutXCm4Y3umg+41ZkdDGaXaWXyunFlV8hFA4uR69iYl
	 r9fdGHA6xANWnHGtRtAKahWUez1D/lg8YRLFd+8BpVMYn9SbqGXRUnJRJwQ1dZm7e6
	 alsMI5HHzpjdZd/9s51SQXv6wAurVROfFGkrCouAb+7fskaGN/AwGFixEXuDH6S6K6
	 bPfNpN6Lkd20g==
Date: Wed, 18 Oct 2023 20:34:23 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Jagath Jog J <jagathjog1996@gmail.com>
Cc: Matti Vaittinen <mazziesaccount@gmail.com>, Matti Vaittinen
 <matti.vaittinen@fi.rohmeurope.com>, Lars-Peter Clausen <lars@metafoo.de>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Dmitry Rokosov
 <DDRokosov@sberdevices.ru>, Cosmin Tanislav <demonsingur@gmail.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/3] iio: accel: Support Kionix/ROHM KX022A
 accelerometer
Message-ID: <20231018203423.06f20a6c@jic23-huawei>
In-Reply-To: <CAM+2Eu+Xp6j1ppLd+zHMTu6jfc6DQKBShfe-nAyokVi0MUmoSA@mail.gmail.com>
References: <cover.1666614295.git.mazziesaccount@gmail.com>
	<758b00d6aea0a6431a5a3a78d557d449c113b21e.1666614295.git.mazziesaccount@gmail.com>
	<CAM+2Eu+Xp6j1ppLd+zHMTu6jfc6DQKBShfe-nAyokVi0MUmoSA@mail.gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, 18 Oct 2023 01:37:12 +0530
Jagath Jog J <jagathjog1996@gmail.com> wrote:

> Hi Matti,
>=20
> On Mon, Oct 24, 2022 at 6:10=E2=80=AFPM Matti Vaittinen
> <mazziesaccount@gmail.com> wrote:
> >
> > KX022A is a 3-axis accelerometer from ROHM/Kionix. The sensor features
> > include variable ODRs, I2C and SPI control, FIFO/LIFO with watermark IR=
Q,
> > tap/motion detection, wake-up & back-to-sleep events, four acceleration
> > ranges (2, 4, 8 and 16g), and probably some other cool features. =20
>=20
> This is a nice driver, and I found it very helpful as a reference.
> One question regarding scale please see below.
>=20
> > + * range is typically +-2G/4G/8G/16G, distributed over the amount of b=
its.
> > + * The scale table can be calculated using
> > + *     (range / 2^bits) * g =3D (range / 2^bits) * 9.80665 m/s^2
> > + *     =3D> KX022A uses 16 bit (HiRes mode - assume the low 8 bits are=
 zeroed
> > + *     in low-power mode(?) )
> > + *     =3D> +/-2G  =3D> 4 / 2^16 * 9,80665 * 10^6 (to scale to micro)
> > + *     =3D> +/-2G  - 598.550415
> > + *        +/-4G  - 1197.10083
> > + *        +/-8G  - 2394.20166
> > + *        +/-16G - 4788.40332
> > + */
> > +static const int kx022a_scale_table[][2] =3D {
> > +       { 598, 550415 },
> > +       { 1197, 100830 },
> > +       { 2394, 201660 },
> > +       { 4788, 403320 },
> > +}; =20
>=20
> Given that the integer part is non-zero, and
> IIO_VAL_INT_PLUS_MICRO is returned for read_scale,
> As raw value will never be fractional how does this
> correspond to a reading of 9.8 m/s=C2=B2 for the Z-axis?

Definitely suspicious as should be in m/s^2 for an acceleration and
it should be

9.8*16/2^bits

So I think these are out by a factor of 10^6



>=20
> > +
> > +static int kx022a_read_avail(struct iio_dev *indio_dev,
> > +                            struct iio_chan_spec const *chan,
> > +                            const int **vals, int *type, int *length,
> > +                            long mask)
> > +{
> > +       switch (mask) {
> > +       case IIO_CHAN_INFO_SAMP_FREQ:
> > +               *vals =3D (const int *)kx022a_accel_samp_freq_table;
> > +               *length =3D ARRAY_SIZE(kx022a_accel_samp_freq_table) *
> > +                         ARRAY_SIZE(kx022a_accel_samp_freq_table[0]);
> > +               *type =3D IIO_VAL_INT_PLUS_MICRO;
> > +               return IIO_AVAIL_LIST;
> > +       case IIO_CHAN_INFO_SCALE:
> > +               *vals =3D (const int *)kx022a_scale_table;
> > +               *length =3D ARRAY_SIZE(kx022a_scale_table) *
> > +                         ARRAY_SIZE(kx022a_scale_table[0]);
> > +               *type =3D IIO_VAL_INT_PLUS_MICRO;
> > +               return IIO_AVAIL_LIST;
> > +       default:
> > +               return -EINVAL;
> > +       }
> > +} =20
>=20
> Regards
> Jagath


