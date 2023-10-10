Return-Path: <devicetree+bounces-7305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A1A7BFF93
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 16:49:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D69A91C20BA9
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 14:49:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80F3821375;
	Tue, 10 Oct 2023 14:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdnJSw8J"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62698DDA6
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 14:49:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0000C433C9;
	Tue, 10 Oct 2023 14:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696949369;
	bh=0KXvobl/M1Y6Mk3dGlW7f5LiAx1FlA/lSITdnL1j2E0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=DdnJSw8J4JVDDIKJY/bZVVkcsFGN0n9hwiZzYyDSGxRRrXLFIqkOyI2aKWJR66AiZ
	 37KvoEDHBBfRqKZUgmNS/rjfRybZb/is502JeVlTwwclTFI3tOeo5DKL67m33MxVq9
	 UH7y4b5EVp6UvTSRPlUptKl4XMeZTCtzkHruvugBpnBVmJPioAcLTK1SDh191H95Vj
	 8rlVGEmHERWpcCNepA7RPBIMnSB532XLoPl5LgMo4nDfedmtRwKG4k9LOBSA23AD9m
	 Fgn23m5sgUn8VrghBi6VpmfLyKog+cEzl6654hdkZN8vK9g/nh8eJ3L8dV5hz/ydP+
	 m3o1E4G/z3pUw==
Date: Tue, 10 Oct 2023 15:49:42 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
Cc: Matti Vaittinen <mazziesaccount@gmail.com>, Lars-Peter Clausen
 <lars@metafoo.de>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Paul Gazzillo
 <paul@pgazz.com>, Conor Dooley <conor+dt@kernel.org>, Stefan
 Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>
Subject: Re: [PATCH 1/2] dt-bindings: iio: light: Avago APDS9306
Message-ID: <20231010154942.20737f17@jic23-huawei>
In-Reply-To: <83bb2425-aff1-6359-37f4-4182d4f8ed05@tweaklogic.com>
References: <20231008154857.24162-1-subhajit.ghosh@tweaklogic.com>
	<20231008154857.24162-2-subhajit.ghosh@tweaklogic.com>
	<2c6ff28f-9031-beb2-f8d0-e7f12b0a07b4@gmail.com>
	<83bb2425-aff1-6359-37f4-4182d4f8ed05@tweaklogic.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, 10 Oct 2023 22:48:43 +1030
Subhajit Ghosh <subhajit.ghosh@tweaklogic.com> wrote:

> On 10/10/23 19:22, Matti Vaittinen wrote:
>=20
> >> +properties:
> >> +=C2=A0 compatible:
> >> +=C2=A0=C2=A0=C2=A0 const: avago,apds9306 =20
> >=20
> > I see the driver supports two different variants of this IC, differenti=
ated by the part-ID register. Variants are named as apds9306 and apds9306-0=
65. I wonder if we could/should have different compatibles for them?
> >  =20
>=20
> Yes, we can. It makes sense. I'll implement that.
We could.  The reason to do so is that we might in future want to use
fallback compatibles.  So we want to allow a new DT to work with older
kernel by saying - I have a new device, but it is fully compatible with
this earlier one.  In those cases we check the ID as your driver current
does, but just print a warning that we aren't sure what the device is so
are going with what the DT told us to fall back to.

Jonathan

>=20
> Regards,
> Subhajit Ghosh
>=20


