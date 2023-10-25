Return-Path: <devicetree+bounces-11896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 250B77D6EA4
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:26:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CEF0E281CF2
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:25:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE67029435;
	Wed, 25 Oct 2023 14:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZYytXJVt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B197329432
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:25:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37487C433C8;
	Wed, 25 Oct 2023 14:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698243954;
	bh=0F8pJ3JqD7QlDe970Bdf1JSfOPxON3UsNUeHODnd4qY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZYytXJVtroW9Bh/zSmBleWnhZEnKL5nQHkCgbGllp3YHDRdRWTLo77EA/A+wcVwF+
	 SqEgyHVox1D7iTJxtH8BqOVlqu8aQNLshaQIstfxlVKugWzbWxLJTom1ibUlcdAe9e
	 hNGo1hkLwx24+tiHFXvSZxXFHFoNwNKQ772otSTQGtBkOywVPtS7M4C2tIcmKg/I6d
	 ruojPi/QQljmx4+S66Xv0QTe8REr5QD6Zk3gdnMoydG79uJNC3Y3b+O/BWyz8ii5O8
	 E7NCM3hLAeAc7NaTJnkbq0msdIgbKADpXab8QTEqP/IE4/EZibF4FFdJ8xaQt8xMz7
	 2z8HJZDORZ0gA==
Date: Wed, 25 Oct 2023 15:25:47 +0100
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Richard Leitner <richard.leitner@linux.dev>,
	Guenter Roeck <linux@roeck-us.net>,
	Jean Delvare <jdelvare@suse.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: hwmon: add ti,ina238
Message-ID: <20231025-epilogue-preset-962b88985ea3@spud>
References: <20231025-ina237-v1-0-a0196119720c@linux.dev>
 <20231025-ina237-v1-2-a0196119720c@linux.dev>
 <20231025-hut-omnivore-f4b44a7b928d@spud>
 <qoxgyho5twbm4jopfveaf5ee3z4tkyb2z5f2vsyrpglffegmxf@v2z5ckcaa5jc>
 <20231025-eatery-backup-ad85c043cb01@spud>
 <8cd5c34e-f733-445d-bc1e-d4dea1bcb47d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xrjRwLJD5GJJAX7+"
Content-Disposition: inline
In-Reply-To: <8cd5c34e-f733-445d-bc1e-d4dea1bcb47d@linaro.org>


--xrjRwLJD5GJJAX7+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 25, 2023 at 04:18:31PM +0200, Krzysztof Kozlowski wrote:
> On 25/10/2023 16:11, Conor Dooley wrote:
> > On Wed, Oct 25, 2023 at 04:07:31PM +0200, Richard Leitner wrote:
> >> On Wed, Oct 25, 2023 at 03:00:01PM +0100, Conor Dooley wrote:
> >>> On Wed, Oct 25, 2023 at 10:34:12AM +0000, Richard Leitner wrote:
> >>>> The ina238 driver is available since 2021 but lacks a dt-bindings fi=
le.
> >>>> Therefore add the missing file now.
> >>>
> >>> Seemingly it is documented in Documentation/devicetree/bindings/hwmon=
/ti,ina2xx.yaml
> >>
> >> Thanks for the feedback. True. So is it fine if it's left there or
> >> should it be removed from ti,ina2xxx.yml as this is a separate driver
> >> with different properties?
> >=20
> > Merging them would seem like the most straightforward thing to do, no?
>=20
> Sorry folks, I don't quite get what do you want to merge or move and
> why. Drivers are not related to bindings. The point is the compatible is
> already documented, so is anything wrong with existing documentation?

If it was not clear, I meant merging the bindings, not the drivers. IOW,
adding the new compatible for the ina237 to the existing ina2xx.yaml
binding.

--xrjRwLJD5GJJAX7+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTklawAKCRB4tDGHoIJi
0kTMAP0Q3flehQeFG8GrnHx6b6bEYhSUfIi6uz259MhiOKJgZgD/U+SEhmFR365g
iAJsSG9ggcCuvoJRqFkUk7LG4poyjQU=
=T4Tm
-----END PGP SIGNATURE-----

--xrjRwLJD5GJJAX7+--

