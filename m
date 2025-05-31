Return-Path: <devicetree+bounces-181992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D1AAC9AE2
	for <lists+devicetree@lfdr.de>; Sat, 31 May 2025 14:18:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A4EE3BC5EC
	for <lists+devicetree@lfdr.de>; Sat, 31 May 2025 12:17:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F04DD23C384;
	Sat, 31 May 2025 12:18:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="jgYRwBDk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7A68238D22
	for <devicetree@vger.kernel.org>; Sat, 31 May 2025 12:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748693888; cv=none; b=l4gJC+AqcXo0OYEB08e03PVR2HADNKZ4tQ+HuJDgBUzFap4L08gk8ac7+Zq51tAKv+lDo/LEbAhBeEQGkPHnnTni6EjGs++K7Z8ZkcRxpRP6C0lMt7oDnz7vnu7ctgkyONGw0QzgrYM+tnBQAmolk3FU4Ss2Lo8TuMeDrFDoIhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748693888; c=relaxed/simple;
	bh=+74Hhna9Izo6chE4zoXmt7brKd7FufFok0bY9M5FiWg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MyI2zHUtnUAmEvQentN6pH63URvhgUKXugRDl1/MVR7gmRFvOYeEKnz7r70XG18ivj9CBDUk4YTCPBgBWzFZXScLgl88i9+cqXA2JIg/AcDwBoRkfa1FZJrpIr9X8fZDAORZsBUm9FIKcSzYLFMI8L77N5AS73l3htrMae3MHVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=jgYRwBDk; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=+74H
	hna9Izo6chE4zoXmt7brKd7FufFok0bY9M5FiWg=; b=jgYRwBDk8Q+Hg6u4f/dS
	LTko/KCwfnVXbCPqYz47HQzMSMYjT9N0a2c/bdGjmgnZPs8Tb6usLH85Kpxwi6eo
	cHgNqHPQvLNXE5F/fsOpS2qbIsW8lkwAenP1LHjEOB73szBANlnqyEutK5NUqS2y
	QhbHukFFJVG1unqSas0y74Mnj8PygAhJgOmDZ19kOkCB3aTxSAQtEyHsp0QXGyJ8
	rOI6TQejHkcn7xbqza09NT8obBXq6chmKvZHXxg78vtVJ0zxcVtjyCZJOnLJlgEk
	FjhX+llItTxheOaZ/eMr7FwzVMeCI/5BEtm6cFwmK6FEmaHhyqPD7DNB/OkPU6oj
	qg==
Received: (qmail 2660063 invoked from network); 31 May 2025 14:18:03 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 31 May 2025 14:18:03 +0200
X-UD-Smtp-Session: l3s3148p1@ZYm3hW02kShtKPEF
Date: Sat, 31 May 2025 14:18:02 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Chris Brandt <chris.brandt@renesas.com>,
	Andi Shyti <andi.shyti@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-renesas-soc@vger.kernel.org, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH 6/6] i2c: riic: Add support for RZ/T2H SoC
Message-ID: <aDrzesrRpZUiyYBS@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Chris Brandt <chris.brandt@renesas.com>,
	Andi Shyti <andi.shyti@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-renesas-soc@vger.kernel.org, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250530143135.366417-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20250530143135.366417-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gYZcbJsgp7/D/9If"
Content-Disposition: inline
In-Reply-To: <20250530143135.366417-7-prabhakar.mahadev-lad.rj@bp.renesas.com>


--gYZcbJsgp7/D/9If
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 30, 2025 at 03:31:35PM +0100, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>=20
> Add support for the Renesas RZ/T2H (R9A09G077) SoC, which features a
> different interrupt layout for the RIIC controller. Unlike other SoCs
> with individual error interrupts, RZ/T2H uses a combined error interrupt
> (EEI).
>=20
> Introduce a new IRQ descriptor table for RZ/T2H, along with a custom
> ISR (`riic_eei_isr`) to handle STOP and NACK detection from the shared
> interrupt.
>=20
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>


--gYZcbJsgp7/D/9If
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmg683oACgkQFA3kzBSg
KbbNCg//Uka34eTPfHMIvTYOOwdCzZEHgfXKwkIiDPA6BxY58fZ5UcDB4gAPt+Na
xvwmGJ9BMdh1WhElVSVuqbeNbxm4/DaZC1z3Z0dqF5NrrA07kbu1aeyFjmCP35px
9Udr2NnXf4pJroxM8Gk/wpkpk3rBrxY1J2iFKI+yVgNRAGV9dhxOW6SNfZhZVVjg
VnHqRYu72m6Ni0jatCS6Ky/ybO0xWea6ExwWT37eTbX3XEgWCWoIsfeax34u93gc
Td+2f1ubcK5iGigm9osAsiMYHL9dGKodAIjlFsK8CdOXfpOEm1wv2FaOk+HvrZcg
dtJF4FgjcEpkmZ+MdoAVrx4p5nyS+3G4kK0eeuZkkkVCGbypE4XRR3bOFHk0+ykj
lHNchm7LclE7H73bN0QG1dXH2Zira6cTzI2xgULlrymD3DpFistNQ6cOq7FJGm33
y1ncWg4qjR2NTBaBjRttJGXgj0RUXUBQHUDPsRtD0OCTPg62CV8qtcQeXyGiDW7z
ihY/pKULtbztX8f4z56MatHT2kdPe65m0y8HVEU+iSdjha4xuk+G2j+DCddRopIF
NmJ8pEPL3SChO/PMh8f7p6NW4UWBlIbaJ+oqVIyWZ/MRVin0CjZKr5IY7ftLAPbm
BXitk/mwyYJXPWEY5TH9+BPJQHMsGfLW9wS5OfgO7eWD/UOo7ec=
=beBU
-----END PGP SIGNATURE-----

--gYZcbJsgp7/D/9If--

