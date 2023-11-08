Return-Path: <devicetree+bounces-14508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A649C7E531A
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 11:12:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 60E92281340
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 10:12:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3D4710979;
	Wed,  8 Nov 2023 10:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpHxRraX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B59341095F
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 10:12:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46B69C433C8;
	Wed,  8 Nov 2023 10:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699438346;
	bh=AbtY/mFze6zgK8MQbZQ6ERWatOJKIZmTR+VQEQ/f2fk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dpHxRraXzWcp9um51jU45WFFZQyJNdH6TXDUCXJKhrQL3JvgVMthksJk0u5yCegYL
	 TwbEkteBlMWLK7d0z7ZzKKtUASfpRPXfOVV2fIHFShKsL5jyH3tzHLg6gt013enPim
	 up9rdqE1IgC0AYoDr/XTsJxa4whKZX1fw+xpQulf6g8M8lsXfTvymrL9TqJj4ygRLh
	 sv3vTHe3ETfB12VYOwjoQx9d2pyA6q+sKdguWiDBxb42N31V0iP8jZrvuZ1YYJawzc
	 +h6+PSfHUahKHR1UEMWyhb22WlnBw1glKLTA3252lERdAHhL3q6Sd0N7erRtrdiNLt
	 XMj5+2+Gj1ZPA==
Date: Wed, 8 Nov 2023 10:12:21 +0000
From: Conor Dooley <conor@kernel.org>
To: Michal Simek <michal.simek@amd.com>
Cc: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
	git@xilinx.com, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: soc: Add new board description for
 MicroBlaze V
Message-ID: <20231108-five-womankind-6ee2462c93b9@spud>
References: <50c277c92c41a582ef171fb75efc6a6a4f860be2.1699271616.git.michal.simek@amd.com>
 <20231106-hangnail-prankster-a04e713bed35@spud>
 <4223470c-5596-4168-9c89-e701559fbbed@amd.com>
 <20231107-expensive-jitters-92e454f77ea8@spud>
 <8b17622b-de1a-4075-9527-8755f5e4dc14@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="G1+2ugXbEtPAn3nK"
Content-Disposition: inline
In-Reply-To: <8b17622b-de1a-4075-9527-8755f5e4dc14@amd.com>


--G1+2ugXbEtPAn3nK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 08, 2023 at 11:06:53AM +0100, Michal Simek wrote:
>=20
>=20
> On 11/7/23 22:18, Conor Dooley wrote:
> > On Tue, Nov 07, 2023 at 12:09:58PM +0100, Michal Simek wrote:
> > >=20
> > >=20
> > > On 11/6/23 18:07, Conor Dooley wrote:
> > > > On Mon, Nov 06, 2023 at 12:53:40PM +0100, Michal Simek wrote:
> > > > > MicroBlaze V is new AMD/Xilinx soft-core 32bit RISC-V processor I=
P.
> > > > > It is hardware compatible with classic MicroBlaze processor. Proc=
essor can
> > > > > be used with standard AMD/Xilinx IPs including interrupt controll=
er and
> > > > > timer.
> > > > >=20
> > > > > Signed-off-by: Michal Simek <michal.simek@amd.com>
> > > > > ---
> > > > >=20
> > > > >    .../devicetree/bindings/soc/amd/amd.yaml      | 26 +++++++++++=
++++++++
> > > >=20
> > > > Bindings for SoCs (and by extension boards with them) usually go to=
 in
> > > > $arch/$vendor.yaml not into soc/$vendor/$vendor.yaml. Why is this a=
ny
> > > > different?
> > >=20
> > > I actually found it based on tracking renesas.yaml which describes on=
e of
> > > risc-v board. No problem to move it under bindings/riscv/
> >=20
> > That one is kinda a special case, as it contains arm/arm64/riscv.
>=20
> If they are kinda a special case then what are we?
> All AMD/Xilinx platforms(ZynqMP/Versal/Versal NET) can have
> arm/arm64/riscv/microblaze cpus(riscv/microblaze as soft cores) in the sa=
me
> board (IIRC I have also seen xtensa soft core on our chips too).

That would be an argument iff you had all of those in a single file, not
when you only have a single compatible for a riscv "soc" in it.

--G1+2ugXbEtPAn3nK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZUtfBQAKCRB4tDGHoIJi
0oGkAQCOlynYcqYzbJW9/y5wv3scanv4SU3OnBIPS1V6IlHuhAD+JMDO7E6DuVN1
D6r49nat9xH3V3kodZUw/6bTGeR/ug4=
=+/Bj
-----END PGP SIGNATURE-----

--G1+2ugXbEtPAn3nK--

