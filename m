Return-Path: <devicetree+bounces-139830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB99A1712E
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 18:18:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F1F703A29C7
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 17:18:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34C7F1EE001;
	Mon, 20 Jan 2025 17:17:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0kRbRym"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0E51E9B00;
	Mon, 20 Jan 2025 17:17:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737393432; cv=none; b=b/Yp4wMvMtF68Cos/5i1+WY+Pz6hpEzVhMjoqEvTjLfL4THY81zuHB2zBPCZA/KicoYoMfvW8npC60qSOTOb8aHEQcbbfL5DioS2oKih/LYYeoGGUFFXNsYtRctmwin0DWsIh3I8FoskiKM/bnE5t5Tcgp2S1eUmKqMy7d8SHh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737393432; c=relaxed/simple;
	bh=A923nmZtkqZm56LOWMtx0sXfsZZxUxKhZX5aBe4AcaM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PkiUIHLzDYqiDsI5ob5YFgOoAOUesX3tvDXR/zndcA3eF8QL721QZT8CZW+4VL6/gM67NqjmZ2hmrsiaPgUqV8oXgF8JzcPHi4qCt5vwEN1P4Ik+GM8mYj5FiJvfKn92L5LVRGwNV1IqAZmVf/6fKnEtH1ElepgPicGbJcSTug8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0kRbRym; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07188C4AF09;
	Mon, 20 Jan 2025 17:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737393431;
	bh=A923nmZtkqZm56LOWMtx0sXfsZZxUxKhZX5aBe4AcaM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P0kRbRymS6KzeYybpOJMY0LyrBu2anpENyASGOFzqsfF3et6I9aqi+ys8LIMOqctb
	 oOT1/wBk43bEhp0BNqoPu8w51qc0YJFsBybwQq1gzmUv4uDAb7GbOwDrXVOoZ3Wn7l
	 LyEKmJZaXxtWsdMKeTBdj+OyYE+HFtuFWPjOEhtGeI7wKaZr+YbQInE5EhqfQIxIiI
	 rUFSsWYp0H44nbdUqbWNfuSkv7Ajm06aXknG+YRcLN6ABY0C7xyHApOgPz+rHOAX6d
	 r9f9H9pLjvi5F/iVJv7xWb9gnVu0Qj8ZljxYbSBLkJ+Dhi9KMQ0gCGXyjnwLXiCcpX
	 hRm7NbhNs10lg==
Date: Mon, 20 Jan 2025 17:17:06 +0000
From: Conor Dooley <conor@kernel.org>
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: Eric Biggers <ebiggers@kernel.org>, linux-riscv@lists.infradead.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	=?iso-8859-1?Q?Cl=E9ment_L=E9ger?= <cleger@rivosinc.com>,
	Andy Chiu <andybnac@gmail.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 5/5] dt-bindings: riscv: document vector crypto
 requirements
Message-ID: <20250120-veggie-yin-826152e1398f@spud>
References: <20241024-fanning-enrage-bcc39f8ed47d@spud>
 <20241024-pungent-lasso-42dd3512a3c8@spud>
 <20241025022411.GB1781@sol.localdomain>
 <20241025024224.GC1781@sol.localdomain>
 <20241025-defile-blaming-12fc1e3a62e0@spud>
 <Z4r73Iq5IWM8Z633@ghost>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="PHDwxKNkyYTSVlll"
Content-Disposition: inline
In-Reply-To: <Z4r73Iq5IWM8Z633@ghost>


--PHDwxKNkyYTSVlll
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 17, 2025 at 04:54:52PM -0800, Charlie Jenkins wrote:
> On Fri, Oct 25, 2024 at 05:53:49PM +0100, Conor Dooley wrote:
> > On Thu, Oct 24, 2024 at 07:42:24PM -0700, Eric Biggers wrote:
> > > On Thu, Oct 24, 2024 at 07:24:11PM -0700, Eric Biggers wrote:
> > > > On Thu, Oct 24, 2024 at 01:34:33PM +0100, Conor Dooley wrote:
> > > > > From: Conor Dooley <conor.dooley@microchip.com>
> > > > >=20
> > > > > Section 35.2. Extensions Overview of [1] says:
> > > > > | The Zvknhb and Zvbc Vector Crypto Extensions --and accordingly =
the composite extensions Zvkn and
> > > > > | Zvks-- (sic) require a Zve64x base, or application ("V") base V=
ector Extension.
> > > > > | All of the other Vector Crypto Extensions can be built on any e=
mbedded (Zve*) or application ("V") base
> > > > > | Vector Extension
> > > > >=20
> > > > > Apply these rules in the binding, so that invalid combinations ca=
n be
> > > > > avoided.
> > > >=20
> > > > It looks like that part of the spec is wrong, though.  The Zvknhb a=
nd Zvbc are
> > > > correct, but the list of the composite extensions that at least one=
 of them is
> > > > included in is: Zvkn, Zvknc, Zvkng, Zvksc.
> > > >=20
> > >=20
> > > I am attempting to fix this in
> > > https://github.com/riscv/riscv-isa-manual/pull/1697
> >=20
> > Looks like at least one person agrees with you, but I'll wait til that's
> > merged before submitting another version. Thanks for reporting it.
>=20
> It's been merged now :)

Ye, I actually respun this last week, but opted to wait until after the
merge window to send another revision.

--PHDwxKNkyYTSVlll
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ46FEgAKCRB4tDGHoIJi
0gzMAQDPuabHzzsol76+F6jUE8gwHHdY0OM8zByhgJ9+8VW86AEAnIAt+Wjm4iz7
Qk5p7MJZlDnf/Hb03lLSLz/Y+QcRGQI=
=8OWo
-----END PGP SIGNATURE-----

--PHDwxKNkyYTSVlll--

