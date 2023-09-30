Return-Path: <devicetree+bounces-4840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C30277B4169
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 17:00:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 74A712818D1
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 15:00:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1579816434;
	Sat, 30 Sep 2023 15:00:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01969156EB;
	Sat, 30 Sep 2023 15:00:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F33D1C433C7;
	Sat, 30 Sep 2023 15:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696086048;
	bh=FXz2SREKtf+iI847/DSKV9eCwFUODi1WlM1uajRmxKA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=LhtZ3ey+X77bzCBum1Fj6V+3iNyWT6Ts3CN5CvF6Zemop5a6Hmm+giHf9o+0+c932
	 qerH2pgVeSyyV0CcVKXPGoDFUKSyhLqir7lCF+wXdGbUq//5AZqkOZpat/ZYkOsiEL
	 9uxXJk9gOgRZlcwe9vcy3qI0H0rbnwCKKulZCg0leRQaK4VU73XtY9Yzeqs3pJ9B0Q
	 mL+L7Q9JL8gICvUD5nVg1r8oxiTio7G569MwmeTvkJOGXnvzM0FhkRHGY5Xtg4f8N9
	 zr0XPcRfYD0aD+nJw/fa8zw78mhFP2fIS8HsQEnL8i0jd3VWLcA+ZaVA089uqEPjuB
	 djXsKfOYZD3Ig==
Date: Sat, 30 Sep 2023 16:00:47 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-staging@lists.linux.dev, David Lechner <david@lechnology.com>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Michael Hennerich <Michael.Hennerich@analog.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Axel Haslam <ahaslam@baylibre.com>, Philip Molloy
 <pmolloy@baylibre.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 14/27] staging: iio: resolver: ad2s1210: implement
 hysteresis as channel attr
Message-ID: <20230930160047.0c5a5388@jic23-huawei>
In-Reply-To: <CAMknhBGFBwQQouhsPMgCuMn6+eQfDCcSzJvF-DwJAnoEPvMLAA@mail.gmail.com>
References: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
	<20230929-ad2s1210-mainline-v3-14-fa4364281745@baylibre.com>
	<CAMknhBGFBwQQouhsPMgCuMn6+eQfDCcSzJvF-DwJAnoEPvMLAA@mail.gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, 29 Sep 2023 12:53:00 -0500
David Lechner <dlechner@baylibre.com> wrote:

> On Fri, Sep 29, 2023 at 12:25=E2=80=AFPM David Lechner <dlechner@baylibre=
.com> wrote:
> >
> > The AD2S1210 resolver has a hysteresis feature that can be used to
> > prevent flicker in the LSB of the position register. This can be either
> > enabled or disabled. Disabling hysteresis is useful for increasing
> > precision by oversampling.
> >
> > Signed-off-by: David Lechner <dlechner@baylibre.com>
> > --- =20
>=20
> ...
>=20
> > +static int ad2s1210_read_avail(struct iio_dev *indio_dev,
> > +                              struct iio_chan_spec const *chan,
> > +                              const int **vals, int *type,
> > +                              int *length, long mask)
> > +{
> > +       static const int hysteresis_available[] =3D { 0, 1 }; =20
>=20
> This is basically an enable/disable. Should the 1 value be changed to the
> appropriate radians value since this is hysteresis on the position
> (angle) channel?

Good point. However it should be in the _raw units. The text is
slightly more explicit on this for
the variant of hysteresis applied to threshold events as it's
added or substracted from a threshold (and thresholds are in
_raw readings unless only _processed is available).

Does that make 0, 1 correct as we are talking about LSB only?

Jonathan


>=20
> > +
> > +       switch (mask) {
> > +       case IIO_CHAN_INFO_HYSTERESIS:
> > +               switch (chan->type) {
> > +               case IIO_ANGL:
> > +                       *vals =3D hysteresis_available;
> > +                       *type =3D IIO_VAL_INT;
> > +                       *length =3D ARRAY_SIZE(hysteresis_available);
> > +                       return IIO_AVAIL_LIST;
> > +               default:
> > +                       return -EINVAL;
> > +               }
> > +       default:
> > +               return -EINVAL;
> > +       }
> > +}
> > =20


