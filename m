Return-Path: <devicetree+bounces-7304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F03487BFF7B
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 16:42:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2D8651C20BDD
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 14:42:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3915918C3B;
	Tue, 10 Oct 2023 14:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/VuGz2b"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC5F1428E
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 14:42:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15081C433C7;
	Tue, 10 Oct 2023 14:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696948925;
	bh=lA6xTbD3hqaJF/U2LchiEukFCVhTNuxUo3PNv1B9SZI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=W/VuGz2br/m8AZim6i/6aXKvQih3Oybv4QF3iB7SsJvuNClKjaYjhadS95dPPyiTM
	 OohA39UBUQ+DSb2bBw9Otw5Sxbtk1aJiVNF05jXUNrPOJXrE8Jn+cApS9MBtalLfie
	 sQSmBF2aUhX6YisMhE86OIsvYs9j5CzVm9e1XeqA3p8yQfiMLl8uDj6X0Tmne2wS7+
	 ZIj9YFMrHaKb8R0iVxek5xeL6qRQVJgMP5XhPIw5j9oMnPFxVaycKZKhQ9d2zQ5IKk
	 3aXz6MjEV1bTZFqBLZ117Ve0wtksjOCkrf3+zXrgQTmvPmI0zoBwqNBhv90xU9YKLR
	 tLI3riLR/jpvw==
Date: Tue, 10 Oct 2023 15:42:16 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Jagath Jog J <jagathjog1996@gmail.com>,
 andriy.shevchenko@linux.intel.com, lars@metafoo.de, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC 1/2] dt-bindings: iio: imu: Add DT binding doc for BMI323
Message-ID: <20231010154216.6032a1c2@jic23-huawei>
In-Reply-To: <CACRpkdY+K90mN1Q1tf38FLRgEsz3q8dK9SJYSQVwGe=PL3FaUQ@mail.gmail.com>
References: <20230918080314.11959-1-jagathjog1996@gmail.com>
	<20230918080314.11959-2-jagathjog1996@gmail.com>
	<20230924143710.7c6edc4a@jic23-huawei>
	<CAM+2EuJ8o5X2ucph8gic2=03bbLQmUCX=j3SFLrqD4Y6rwXs9A@mail.gmail.com>
	<20230930170530.0b8f185c@jic23-huawei>
	<CAM+2EuKzBVbTF2SrpYEYfzap1wrONboFV-QuTU9Fz7sVjqJLeA@mail.gmail.com>
	<20231010100002.0163d681@jic23-huawei>
	<CACRpkdY+K90mN1Q1tf38FLRgEsz3q8dK9SJYSQVwGe=PL3FaUQ@mail.gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, 10 Oct 2023 11:06:18 +0200
Linus Walleij <linus.walleij@linaro.org> wrote:

> On Tue, Oct 10, 2023 at 10:59=E2=80=AFAM Jonathan Cameron <jic23@kernel.o=
rg> wrote:
> > Jagath Jog J <jagathjog1996@gmail.com> wrote: =20
>=20
> > > Regarding your earlier suggestion to have two different controls for
> > > drive-open-drain, do I need to define sensor-specific drive controls
> > > in bindings for both interrupt pins?
> > > for ex: bosch,irq{1,2}-open-drain =20
> >
> > Hmm. We do have precedence for a single control e.g.
> > nxp,fxls8962af.yaml as drive-open-drain.  So perhaps just go with that
> > and if anyone is needs different values we can figure it out later.
> > pin control (which is where that binding item comes from) seems to have
> > examples doing much the same.  Sets of pins with a single drive-open-dr=
ain
> > entry.
> >
> > Linus, any comments on this as you've dealt with far more similar cases
> > than me! =20
>=20
> Also st,st-sensors use drive-open-drain.
>=20
> And that in turn is used because the pin control subsystem use that
> exact property. (See
> Documentation/devicetree/bindings/pinctrl/pincfg-node.yaml)
>=20
> So use that.
>=20
> (I'm so happy to be able to provide a definitive answer for once!)

We kind of lost the question along the way.  Wasn't so much about whether
there was a generic binding but more about whether it is worth providing
separate controls for the two IRQ pins?  Or just assume no one is crazy
enough to play that level of mix and match.

J
>=20
> Yours,
> Linus Walleij


