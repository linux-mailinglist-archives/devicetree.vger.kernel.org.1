Return-Path: <devicetree+bounces-7148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 174567BF6A3
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 10:59:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 481D71C20A79
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 08:59:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 800E415AE8;
	Tue, 10 Oct 2023 08:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EC7EPtjK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F6D156C0
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 08:59:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54B7BC433C7;
	Tue, 10 Oct 2023 08:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696928393;
	bh=VPdLVYDkYK6Xvvcav5U5Gbw4A7BwKmwy+jdIVkYAH2I=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=EC7EPtjKcAAcpm/405fN5lsGG+9c3dRCZJiVjy5bcLboQL9MxDHd2N4su1QzUSmj6
	 6YkKV9H/B+zOO+0TZBp4dmJ9jgUG4YqoNx6AvMMekEpfKOHOmS4Kfo9BB3izTET1Om
	 u00gHSpP+Gp+eeHXroaxJuOr5D1X2lW8wdTtLf12vOrBNdKpN5ohTADh/utOt21+Mp
	 Ui9qeqFcCAFCScX64YLzzmk1TkGnjQY7vOchevn9S0w/T2SxM0Ltth3py6KSRF45lL
	 n0pGPZWtqQSA9CwwnpAsklG2RC4bUW8sTbgU/ws5JV4XwnHcHD6JcCsMBp2xLeG5hh
	 +13ZbjgTp57Ww==
Date: Tue, 10 Oct 2023 10:00:02 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Jagath Jog J <jagathjog1996@gmail.com>
Cc: andriy.shevchenko@linux.intel.com, lars@metafoo.de, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Linus Walleij
 <linus.walleij@linaro.org>
Subject: Re: [RFC 1/2] dt-bindings: iio: imu: Add DT binding doc for BMI323
Message-ID: <20231010100002.0163d681@jic23-huawei>
In-Reply-To: <CAM+2EuKzBVbTF2SrpYEYfzap1wrONboFV-QuTU9Fz7sVjqJLeA@mail.gmail.com>
References: <20230918080314.11959-1-jagathjog1996@gmail.com>
	<20230918080314.11959-2-jagathjog1996@gmail.com>
	<20230924143710.7c6edc4a@jic23-huawei>
	<CAM+2EuJ8o5X2ucph8gic2=03bbLQmUCX=j3SFLrqD4Y6rwXs9A@mail.gmail.com>
	<20230930170530.0b8f185c@jic23-huawei>
	<CAM+2EuKzBVbTF2SrpYEYfzap1wrONboFV-QuTU9Fz7sVjqJLeA@mail.gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, 8 Oct 2023 11:54:39 +0530
Jagath Jog J <jagathjog1996@gmail.com> wrote:

> Hi Jonathan,
>=20
> Few more questions before sending the next series.
>=20
> On Sat, Sep 30, 2023 at 9:35=E2=80=AFPM Jonathan Cameron <jic23@kernel.or=
g> wrote:
> >
> > On Thu, 28 Sep 2023 03:07:22 +0530
> > Jagath Jog J <jagathjog1996@gmail.com> wrote:
> > =20
> > > HI Jonathan,
> > >
> > > On Sun, Sep 24, 2023 at 7:07=E2=80=AFPM Jonathan Cameron <jic23@kerne=
l.org> wrote: =20
> > > >
> > > > On Mon, 18 Sep 2023 13:33:13 +0530
> > > > Jagath Jog J <jagathjog1996@gmail.com> wrote:
> > > > =20
> > > > > Add devicetree description document for Bosch BMI323, a 6-Axis IM=
U.
> > > > >
> > > > > Signed-off-by: Jagath Jog J <jagathjog1996@gmail.com> =20
>=20
> > > > > +  interrupts:
> > > > > +    maxItems: 1
> > > > > +
> > > > > +  interrupt-names:
> > > > > +    enum:
> > > > > +      - INT1
> > > > > +      - INT2
> > > > > +    description: |
> > > > > +      set to "INT1" if INT1 pin should be used as interrupt inpu=
t, set
> > > > > +      to "INT2" if INT2 pin should be used instead =20
> > > >
> > > > Why not both?  Sure driver might elect to use only one, but the bin=
ding
> > > > describes the hardware not the driver and both might be wired. =20
> > >
> > > If both interrupt pins are wired, should the DTS file need to define
> > > both of the pins? =20
> >
> > Yes it should. + we need the names to know which is which.
> > You could rely on order, but it's more flexible to not do so, particula=
rly
> > when you also need to support case where only one is wired. =20
>=20
> In the driver, I currently prioritize INT1 over INT2 when checking
> (bmi323_trigger_probe(..)) based on the interrupt-names defined
> in the device tree. However, I'm open to suggestions on the best
> way to ensure that the order doesn't affect the selection process
> when both interrupts are defined in the device tree.

If they are both present it is absolutely fine to pick one in preference
to the other.

>=20
> Each feature, such as data-ready, watermark, tap, and others, supports
> either INT1 or INT2. Based on the interrupt pin defined in the device tre=
e,
> I configure the all the features accordingly.

That's an implementation choice to do them all based on one interrupt
pin so absolutely fine to do that in the Linux driver, but the dt binding
should allow for other choices as there are sometimes efficiency gains
in doing so.

>=20
> Regarding your earlier suggestion to have two different controls for
> drive-open-drain, do I need to define sensor-specific drive controls
> in bindings for both interrupt pins?
> for ex: bosch,irq{1,2}-open-drain

Hmm. We do have precedence for a single control e.g.
nxp,fxls8962af.yaml as drive-open-drain.  So perhaps just go with that
and if anyone is needs different values we can figure it out later.
pin control (which is where that binding item comes from) seems to have
examples doing much the same.  Sets of pins with a single drive-open-drain
entry.

Linus, any comments on this as you've dealt with far more similar cases
than me!

Jonathan

>=20
> Regards
> Jagath
> >
> >
> > Jonathan
> >
> > =20


