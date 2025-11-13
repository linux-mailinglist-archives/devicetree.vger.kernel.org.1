Return-Path: <devicetree+bounces-238297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AF36DC59BA5
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 20:23:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id ED1614E3ADA
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 19:14:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA8E8315D44;
	Thu, 13 Nov 2025 19:13:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P7fDF2lX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0ED635CBBB;
	Thu, 13 Nov 2025 19:13:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763061208; cv=none; b=LxIHfM4W9ZdN1/gVZIiIMS1rwGedDHHi3mcXfTFtk2iHrA5Nv//9H/RjT4yLAKfzFBybe0RMR6yr3Sqyxd1omN2i7PLWF8J0OCqWDCYnuqPwNKmWRb9en6FNtQFfwQ4t3TNuQ7z3lSwYtJwFOut9/8DE+q6kwf0FPRMVMSyGmZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763061208; c=relaxed/simple;
	bh=I6xhqhMdRajfMoTrmdkSIqvVlRCirzuUNoIRZGl7wsk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TetRW72Jc4WQOV6nQ3yATgg6Qb07eav9V5otfbb1XAivIt9N0yVxU4KaSBwj4kMWHETaMFzOhTt3k4+ib7hgW44ixnq5+AIOJxtSAS1lpXVUVSc360z0CWaykkHUR3z7dBiWMdBdxyRvE/PTeaHXKle4X+J8R9ZxsqlYk85bOVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7fDF2lX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59B36C4CEF8;
	Thu, 13 Nov 2025 19:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763061208;
	bh=I6xhqhMdRajfMoTrmdkSIqvVlRCirzuUNoIRZGl7wsk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P7fDF2lXMqLuennG1xp/tHqFXg8tudzX+mj4uRM8pvIWVpTGNoHdfFr2g7x3E89qq
	 xrOy1Z6scA4QuuMVR7j3NcDSM99SZCOXm7gaihi7B+WVmtFDq74tnUQOGfJiIzkWdP
	 g+TqgfcgLB8nIOjruEgIRWjL2jfLgCK5YYV0PJ6HcPPG71aA5OGdZsegkPwKWO0Ke3
	 bF6/KVFGv4L8mUEip2gymcyM6gqZsD28CNH9kigzH/ZG9SWaCvKF4fI4CW226xuQ2u
	 PRW1QRrCRO9Jr2YwOGvBk9T4RRTc9GJqHMRpUodow39F3+ZkndbqfV0Bg4NO5wxZ8S
	 PpV5zId9kNUNg==
Date: Thu, 13 Nov 2025 19:13:24 +0000
From: Conor Dooley <conor@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: phy: lan966x: Add optional
 microchip,sx-tx/rx-inverted
Message-ID: <20251113-sassy-slicer-5a1be0d99aa9@spud>
References: <20251110110536.2596490-1-horatiu.vultur@microchip.com>
 <20251110110536.2596490-3-horatiu.vultur@microchip.com>
 <20251110-unwound-award-a11d69b9da4f@spud>
 <20251111095831.lp4kvdfcahtwgrqc@DEN-DL-M31836.microchip.com>
 <58b0d712-48a4-4490-a63f-404716844557@kernel.org>
 <20251111-ploy-dispersal-164ae403df4d@spud>
 <20251112080235.c5iinfnketsunefy@DEN-DL-M31836.microchip.com>
 <20251112-junkman-buckle-31fcfcbfa3c5@spud>
 <20251113115650.lxsvkbrwnrwj7ysd@DEN-DL-M31836.microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="V6Iy3obSvLMwStRt"
Content-Disposition: inline
In-Reply-To: <20251113115650.lxsvkbrwnrwj7ysd@DEN-DL-M31836.microchip.com>


--V6Iy3obSvLMwStRt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 13, 2025 at 12:56:50PM +0100, Horatiu Vultur wrote:
> The 11/12/2025 18:32, Conor Dooley wrote:
> > On Wed, Nov 12, 2025 at 09:02:35AM +0100, Horatiu Vultur wrote:
> > > The 11/11/2025 17:39, Conor Dooley wrote:
> > > > On Tue, Nov 11, 2025 at 11:06:02AM +0100, Krzysztof Kozlowski wrote:
> > > > > On 11/11/2025 10:58, Horatiu Vultur wrote:
> > > > > > The 11/10/2025 18:43, Conor Dooley wrote:
> > > > > >=20
> > > > > > Hi Conor,
> > > > > >=20
> > > > > >> On Mon, Nov 10, 2025 at 12:05:36PM +0100, Horatiu Vultur wrote:
> > > > > >>> This allows to invert the N and P signals of the RX and TX Se=
rdes
> > > > > >>> signals. This option allows the board designer to trace their=
 signals
> > > > > >>> easier on the boards.
> > > > > >>
> > > > > >> Why can't this just be done in software, debugfs or something =
like that?
> > > > > >> Maybe it's just your description is poor, but sounds like the =
intention
> > > > > >> here is to just switch things around for debug purposes.
> > > > > >=20
> > > > > > I don't think it should be done through debugfs. As this descri=
bes the
> > > > > > board layout and I don't think someone will want to change it at
> > > > > > runtime to see how things behave. So maybe the description is p=
oor.
> > > > >=20
> > > > > You said it is purely for hardware designer to trace signals, so =
sorry,
> > > > > but that's not DTs purpose.
> > > >=20
> > > > If it is not purely some sort of debug helper, then please explain
> > > > better in your commit message.
> > >=20
> > > Yes, I will do so because I don't see how this is a debug helper
> > > functionality. I see it as changing the polarity of some pins and the=
re
> >=20
> > The word "trace" here might be problematic? Maybe you meant something
> > like "lay out", but all of the use of the word tracing in electronics
> > that I have ever seen refers to troubleshooting - be that physically
> > following signals to see if there's degradation or things like the
> > trace framework in linux.
>=20
> I understand, by trace I meant "lay out" the signals on the board.
> What do you think if I say something like this:
>=20
> ---
> dt-bindings: phy: lan966x: Add optional microchip,sx-tx/rx-inverted
>=20
> The lan966x has 3 integrated SerDess and for each of them it is possible
> to change the polarity of the P(possitive) and N(Negative) pins Serdes.
> By changing the polarity of both pins then the functionality of the pins
> will be inverted.
> ---
>=20
> I have tried not to mention any 'lay out' or 'trace' not to make it
> confusing.


Yeah, I think that that is substantially better.

--V6Iy3obSvLMwStRt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaRYt0wAKCRB4tDGHoIJi
0uzxAQDEQalB/WeEpQC7+j9waOPXA+TT11l5l6m1ttvSTYcO4AD+O9VmS6e48uVu
AE2wnZg5k4eM9HhlV4OD4muhvAksAQs=
=DKfy
-----END PGP SIGNATURE-----

--V6Iy3obSvLMwStRt--

