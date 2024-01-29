Return-Path: <devicetree+bounces-36230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FBA18403EF
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 12:39:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D5AB51F240DD
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 11:39:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D15D81DFC4;
	Mon, 29 Jan 2024 11:39:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohjrvhYB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADEB55BAD8
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 11:39:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706528369; cv=none; b=Cxl8d2qfvPn03Mc/mxar+xaPevbXzBHPBiFOuj1N0wIZGbQmqY7kcgOE7U68F4CJZCY84gKNup1wY5akO5ir5A/K2ersFo+2l3C2SsRbfeRR3tKVqrq02nkwJFIALXgPTDtTt4Dr44N6ct6ysW9JoAMCoL32iwk9Tf9dtyJcOg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706528369; c=relaxed/simple;
	bh=BZCTPuHkr53/fiFd/hictNBJruiJNTZi6Ino45cyYmk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IEF4NA1vzRJWmosfNMdhDZkcvYCBMcjkje7Yd2MWoaLY1z8i3Si/eSuMlxxWLgnVkSum5skVoBmdItCZJAf6u8OIQ5TPC1nBQ19xHZq+/oLSRob4b/7r88PPGKV6jW0D0T4Dw6kni0LKh4LJtkREAoyN5mzRbmpsptMPoTMqJw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohjrvhYB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0B59C433C7;
	Mon, 29 Jan 2024 11:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706528369;
	bh=BZCTPuHkr53/fiFd/hictNBJruiJNTZi6Ino45cyYmk=;
	h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
	b=ohjrvhYB79+TmXuUYRkhN+8cIDWiAnUgvmf5TiyDi+X5XexxEmvo0tvfDIvDzBN4k
	 pv9CdIOPJfYXEhnai68KOfZYrbmzLrE/I/6whDqQdfENs2GrXlI1TPkmJhA18ffuqD
	 Kl/cltjfONb9GW0R6ecxkY8cwaROxolNj8l2Lg22FHZPWQ2kCAQhVxquFCcP/I9id6
	 tUMsZ/yN3Ihv9dCThEJbwdXGoJdanwlDXLfFAfS8g8IxNh5tl5jM3usyWJFWnvY3Vw
	 rHEu2FIvm9R+i1vUVVUIH2HW7mGYGV2iBitaFidgOwX3MI/qLg/v7p4KmPctMfNIAM
	 UvvhMkzVD928Q==
Date: Mon, 29 Jan 2024 11:39:24 +0000
From: Conor Dooley <conor@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Lorenzo Bianconi <lorenzo@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Felix Fietkau <nbd@nbd.name>,
	devicetree@vger.kernel.org, John Crispin <john@phrozen.org>,
	soc@kernel.org, Arnd Bergmann <arnd@arndb.de>, dd@embedd.com
Subject: Re: Support for airoha en7581 Soc
Message-ID: <20240129-gawk-strongly-91344f34d004@spud>
References: <ZbeJ5okKQ66FXGxP@lore-desk>
 <f16842b0-0086-41b6-a366-e27ccb2905c1@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="DWS7EwZsWub5O+8A"
Content-Disposition: inline
In-Reply-To: <f16842b0-0086-41b6-a366-e27ccb2905c1@collabora.com>


--DWS7EwZsWub5O+8A
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 29, 2024 at 12:34:37PM +0100, AngeloGioacchino Del Regno wrote:
> Il 29/01/24 12:20, Lorenzo Bianconi ha scritto:
> > Hi Matthias,
> >=20
> > I was wondering about the status of the following patches:
> > https://lore.kernel.org/linux-arm-kernel/20231001122418.2688120-4-dd@em=
bedd.com/T/#rbafabf4bf2473327f35ce7d79623f63838630537
> >=20
> > Do we need to respin them? Thx in advance.
> >=20
>=20
> Lorenzo, I don't think you have to.

The compatibles in en7581-evb.dts appear to be undocumented as of
whatever linux-next I have checked out from late last week.

>=20
> Matthias, should we update the MAINTAINERS file to include the MediaTek
> Airoha folder?
>=20
> Actually that question is for both ARM and ARM64.
>=20
> Cheers

--DWS7EwZsWub5O+8A
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZbeObAAKCRB4tDGHoIJi
0u7nAP9KiZHlscFnJqhvxnnPfAIecdNaWArb6yhErrefStvP4wEAzuZUr73i/R5z
clHOA9OY1MB8gL9f8KRylQIBejJWqAA=
=S7cE
-----END PGP SIGNATURE-----

--DWS7EwZsWub5O+8A--

