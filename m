Return-Path: <devicetree+bounces-137250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FEDA08630
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 05:26:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D08FB1670B7
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 04:26:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF9FD1E3762;
	Fri, 10 Jan 2025 04:26:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gibson.dropbear.id.au header.i=@gibson.dropbear.id.au header.b="bfx0E5Xq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24C81A9B45;
	Fri, 10 Jan 2025 04:26:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=150.107.74.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736483197; cv=none; b=GtfkVUyvuxRI4t1zYWu5eTHjVpydjEa7pmeRDEvDoHsj6uWjeFHZPXJ3j6tkTN8keFvwhK9x/t1QXImwFp02RJg3oVEi7obBVEXMxAMc9U7NPBYs62mZZa0rZFIZLAikOsEI/JMQimhHOiPzVIZ/wT0RMD6WHztCVZfZTkxYyXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736483197; c=relaxed/simple;
	bh=XiavKDCGwseegksBFnd6HYkxoq9SlADHV6l+lpVAs34=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k07t8CGt+A3teiP+gDWEZjZ+ABTuDWQ9lIb0GPTPJKfWqE5iHpWXVpreCnNMf12hjiVTa1c3swVetUU1dkW8OJdozLBqalqM+cjdQ8EG2c3i8YwVfVQQdoqm6wX5yw1Q33aqjVab1p05RtiVwS2kpemYBvDKH2UzNLJnLFliRw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gibson.dropbear.id.au; spf=pass smtp.mailfrom=gandalf.ozlabs.org; dkim=pass (2048-bit key) header.d=gibson.dropbear.id.au header.i=@gibson.dropbear.id.au header.b=bfx0E5Xq; arc=none smtp.client-ip=150.107.74.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gibson.dropbear.id.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gandalf.ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gibson.dropbear.id.au; s=202412; t=1736483184;
	bh=jvC9WPsGbTe6wW25y1cUtNv8ORad7QsqaECEljmg0ao=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bfx0E5XqQaVCGraqgaTkNO19rV4wUVMufdheW+SFcYsGgf1ERK0GRtJQohVXu1hxD
	 e2q1bL1J8y98vDdNTzD1rWyP82oCPGKMcW8SZeelNfbog0MFPA3DAXYwO5oklgngo3
	 xPooB4ZXZubVrokGDCZZVIOVEsTmUmsBFZ/YzfbunFL0A+YnuQp2drq+Rpi3K5CSWc
	 O3r3DUYctO/Ed4ijpKGkf9WLJPcWY9+inFrI4YYo1i0ZsEDkVWpl6J9sLi24XXsUbW
	 IwDNkyjZe7KxDnX0YU9LeX6CY3wF8SCgfvZI380r7/fXKKa1Br2iKIwNpqI2npTtCr
	 +AmbSXW+NqWeg==
Received: by gandalf.ozlabs.org (Postfix, from userid 1007)
	id 4YTpWN08RKz4wcw; Fri, 10 Jan 2025 15:26:24 +1100 (AEDT)
Date: Fri, 10 Jan 2025 15:26:23 +1100
From: David Gibson <david@gibson.dropbear.id.au>
To: Herve Codina <herve.codina@bootlin.com>
Cc: Ayush Singh <ayush@beagleboard.org>, Andrew Davis <afd@ti.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 0/7] of: overlay: Add support for export-symbols node
 feature
Message-ID: <Z4Chb_nEDTHms_ZN@zatzit>
References: <20241209151830.95723-1-herve.codina@bootlin.com>
 <33c61b28-c0b8-478d-8107-c6ed1ff9e466@beagleboard.org>
 <20241210104141.39acffb1@bootlin.com>
 <bab9f277-a366-48ec-acdd-0896c8307ad9@beagleboard.org>
 <20241210115515.1886f73f@bootlin.com>
 <6d48095d-59b1-4439-8e2a-927aa1aa1b55@beagleboard.org>
 <20250108090750.45685a50@bootlin.com>
 <d25572fa-8f0c-4f19-874c-6698a1db40ae@beagleboard.org>
 <20250108104719.0412ad94@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="I6CnIClgeg0FhNdR"
Content-Disposition: inline
In-Reply-To: <20250108104719.0412ad94@bootlin.com>


--I6CnIClgeg0FhNdR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 08, 2025 at 10:47:19AM +0100, Herve Codina wrote:
> Hi Ayush,
>=20
> On Wed, 8 Jan 2025 13:58:04 +0530
> Ayush Singh <ayush@beagleboard.org> wrote:
>=20
> ...
> >=20
> > I will experiment with adding support to dtc and see how things look.=
=20
> > Hopefully, 2025 is the year of addon board support.
> >=20
>=20
> Also one point different between fdtoverlay an runtime loading is
> that runtime loading allows to set the target node of the overlay
> at runtime.

I'm not really sure what you mean by "runtime loading".  Do you mean
the kernel's implementation of loading dtbo overlays?

While that is a different implementation from the one in fdtoverlay
(AIUI), they're both working from the same dtb format.  As we
discovered attempting Ayush's proposal, it turns out that the dtbo
simply doesn't have the information we need to correctly path
substitutions; and it's not at all easy to add it.

So, the problem of the encoding format needs to be solved regardless
of which implementation is actually processing the overlays.

--=20
David Gibson (he or they)	| I'll have my music baroque, and my code
david AT gibson.dropbear.id.au	| minimalist, thank you, not the other way
				| around.
http://www.ozlabs.org/~dgibson

--I6CnIClgeg0FhNdR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEO+dNsU4E3yXUXRK2zQJF27ox2GcFAmeAoW4ACgkQzQJF27ox
2GfLog/+P7Wj9gzwpwULE/5lN5A6TZi1DTLT+j598F724X4jnSkskg8rraKb8e57
DrwF2ZbkO9na/fk5Cw1i9HCSuUBC32Eg17td734AsR6eOsInewGgEiuT5qAJJtqu
zs+rFYm9ApD2IjgeTMpxiC8fLzq2ks2sB+jJkU2jv/zrOB39wU5dex57yrVtl+T0
QSor87cw3qtY8mBXzcffpE7NJKRLwdzXTvDABL5k5PSADy5F1uehrv2ZItWK592z
qxJXQL5+MVIxNzXKnSEkQoc7zXfc4KtVJsiDGYArkAJWTsuD7ZE+lITGFedJUxoQ
JC0gbVsOZikJe0c7Uh/X23lQXJofQTU6+TOq6yu/Qiwv6Mx3fHh9Q8z7WMRFkutt
kVEOuI2IKgBdhQZ/PfJn5tzqInDFbVIYE+7wgSOA57hrnQXfkI6G8X0ON7Js91lN
dBHKEkGtUUmkDVaqR7lbYnmtoAXsn0fGl1eskDo2rrRT1Mmg2VCuMsOkIauu8QLn
+gl3i+NpjkQICM0Rk2x6+QEOj2+fiiTXXvpfzc77+BbuPZSHhkBl/LqvFto/nrZX
blU550tg0stF+8XOSkprLh0N8yexKPrMARHF/viUreTZrPxJZsWDsj+4E/VtL88X
XYuWitVJ2H0wlUTFQfLbY0CLkAsY+h/5qEwTZNsmnEUZUzSCiWU=
=7Tfh
-----END PGP SIGNATURE-----

--I6CnIClgeg0FhNdR--

