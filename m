Return-Path: <devicetree+bounces-20425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 798D57FF3B2
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 16:37:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A92781C20D50
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 15:37:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72EFD524C9;
	Thu, 30 Nov 2023 15:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XxEaiHVP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D62524AD
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 15:37:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAF54C433C8;
	Thu, 30 Nov 2023 15:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701358638;
	bh=DEfwEsrfdTaKSTIEFXZCNrvfb8NRUdxB2lcPYr3uym8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XxEaiHVP7qZe4urDwuhAjWNUOqvcNbTmmnjp3zvHvTrcVrOI5a6MkCRnKJe3DisYH
	 49hiAlNp461XtD2aXDu6NUYXMYOivZRTkBebqD1T41eiIvPK7mrKZtiallTL6Z4Xfc
	 FR+HNRnuTLOLA7t78AGwGDJbQNm3TBv2oZme/FZAZ/Z5BZtW/htwkOwvRUUZ8MwcEA
	 TMPalRnHagMa+dqBn9JPB1FAB2NOVBFQrJW8UkYVTnlUUwiiq7uBHuHve3GVR8ioJX
	 24zn1VFmWGgOKdNViGBg+pNnNl1u3mX94wxyk8MxhEUM32OnG4JtpM9LtP73lqacAi
	 mnYfIW71J4F3A==
Date: Thu, 30 Nov 2023 15:37:12 +0000
From: Conor Dooley <conor@kernel.org>
To: Xi Ruoyao <xry111@xry111.site>
Cc: Kwanghoon Son <k.son@samsung.com>, p.zabel@pengutronix.de,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, jszhang@kernel.org, guoren@kernel.org,
	wefu@redhat.com, paul.walmsley@sifive.com, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, inki.dae@samsung.com,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v3 1/3] dt-bindings: reset: Document th1520 reset control
Message-ID: <20231130-strict-yarn-0b7ec0f47bc1@spud>
References: <20230918045125.4000083-1-k.son@samsung.com>
 <CGME20230918045134epcas1p1b80b338b66512a976c3783cd0e51da50@epcas1p1.samsung.com>
 <20230918045125.4000083-2-k.son@samsung.com>
 <20230918-4ef7f52da269f3a7e4023bb3@fedora>
 <005301d9eab7$5688c920$039a5b60$@samsung.com>
 <20230919-42333064be342f6ab125dd75@fedora>
 <5f437109d2be2b8843f549a661054a2e3ec0d66e.camel@xry111.site>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="WAKvEsPGuWM3Yjbn"
Content-Disposition: inline
In-Reply-To: <5f437109d2be2b8843f549a661054a2e3ec0d66e.camel@xry111.site>


--WAKvEsPGuWM3Yjbn
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 30, 2023 at 12:42:09AM +0800, Xi Ruoyao wrote:
> On Tue, 2023-09-19 at 09:47 +0100, Conor Dooley wrote:
> > Guo,
> >=20
> > On Tue, Sep 19, 2023 at 02:08:32PM +0900, Kwanghoon Son wrote:
> > > > > > +=A0=A0=A0=A0=A0 - const: thead,th1520-reset
> > > > > > +=A0=A0=A0=A0=A0 - const: syscon
> > > > >=20
> > > > > iDumb question perhaps, but why is this a syscon?
> > > >=20
> > > > This is good point.
> > > > In fact, I took it from the vendor kernel, and I tried to keep it a=
s same as I could.
> > > > Vendor also followed drivers/reset/reset-imx7.c
> > > > As Rob said, if don't need it, I'll change it.
> >=20
> > > I have investigated vendor kernels, but it is still not sure reset in=
formation.
> > > I thought this is about sys_reg, but without datasheet, can't tell.
> > > Therefore, should be stopped patch for a while until knows better com=
es out.
> >=20
> > Is there documentation in English you can provide to these people that
> > are trying to add support for your product?
>=20
> It can be downloaded from
> https://dl.sipeed.com/shareURL/LICHEE/licheepi4a/09_Doc now.  Click on
> "TH1520 User Manual.zip" and enter a captcha.  The doc about resetting
> is in chapter 5 of "TH1520 System User Manual.pdf".

Thanks Xi! Pity there was no response from the vendor to this for
months :(

--WAKvEsPGuWM3Yjbn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZWisKAAKCRB4tDGHoIJi
0ne4AQCpH/mzJjeMQBRdjUbmAWLMVpb472UKnn6JbArl6ZbhFgD8CmPgI9f8BrQH
RGR80riMhYQ+yIOzdEQrWILkVlerWgE=
=Mv8t
-----END PGP SIGNATURE-----

--WAKvEsPGuWM3Yjbn--

