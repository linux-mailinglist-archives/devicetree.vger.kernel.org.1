Return-Path: <devicetree+bounces-142897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 381A3A26F7B
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 11:46:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C1E301674FA
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 10:46:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 095E420A5DF;
	Tue,  4 Feb 2025 10:46:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="QGBn6oRh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AD3C2080E5
	for <devicetree@vger.kernel.org>; Tue,  4 Feb 2025 10:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738665975; cv=none; b=duSclBFyGKyslzB2RruG6PHW4cct8QGDjo+4xVOUV8KD6FtyFVXhqxo6CmHrw/cy/2+ANAujJjQa7Yxp6aiHxT7z9q8GTmp2SIV8b1XfmzlOjnwWGe9V/vdpKsCMkxpbrT1poL1ZmXELKYEXW+RV9bLEUq/64bhT85ur4HXn7cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738665975; c=relaxed/simple;
	bh=zosb3D1QwgSBrgespobcMa5wVaJ0cnorTHN7tNFV1Qg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jnLCttl1P3vBrG1xH2la3jrkSal1Tk+rwJdwzoiX0g1bXKRhZ51Pk8z1dB+R5oZGt00209Fc6yPIsvmrD6lT8YywzEOx0JtLQ+1ECa1oQNKe8bxWDgJaxY4QprXKjOQQ1QVCAMpuuv7B/LW5b3Iaznq6or0r2gPSG5o3DcNxhN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=QGBn6oRh; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=IHxQ
	NXN+6qa/z7VYSCw+qF0UhglNLq1b0kyxpmGnIt4=; b=QGBn6oRhxPHzTLn/3RVO
	YSgBvjHUbMAi8v0uXE0tfmV7nxWUMrj1XA19slCdiBUTfRC4dsI46GLpkvz+5Ur7
	doSvWNNREhpuqsPwDrTLXcaVyzHUeloJINPIG6iOwmYewOrV5JvgPWmo3AZbDygq
	MMYxWzbPfVGIhrTjHCaoVCQeLL2th3hldtGR7enwrk6gW74y7CKuX5XNIAr1H2Ka
	16hpa4dCx84Nuxt4hv/qKcYODh/VG/qtXpUoTQoAuQp1CCRDRqHHOVApJh8u7CDW
	5Tu5KArOt8cqmksfTwu96sc0hBuE4UxByrNcv94S1x1fD9VEpbR5Bof0MZVQwhhC
	yQ==
Received: (qmail 3007007 invoked from network); 4 Feb 2025 11:46:11 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 4 Feb 2025 11:46:11 +0100
X-UD-Smtp-Session: l3s3148p1@0Y+Tt04ttJ+5aIpF
Date: Tue, 4 Feb 2025 11:46:10 +0100
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: ARM: at91: add Calao USB boards
Message-ID: <Z6Hv8hdzYPzf9dvE@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	devicetree@vger.kernel.org
References: <20250131162713.33524-2-wsa+renesas@sang-engineering.com>
 <20250202-horned-singing-cormorant-afdc77@krzk-bin>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cGWJoZ1M+YnyqTAo"
Content-Disposition: inline
In-Reply-To: <20250202-horned-singing-cormorant-afdc77@krzk-bin>


--cGWJoZ1M+YnyqTAo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > +              - calao,usb-a9260
> > +              - calao,usb-a9263
> > +              - calao,usb-a9g20
>=20
> I don't undertstand why calao,usb-a9g20 or existing olimex,sam9-l9260
> can be fitted with any SoC.  If that's expected, mention in commit msg.
> If not, then this needs to be fixed, not grew.

Can do the fixing.

Thanks for the review!


--cGWJoZ1M+YnyqTAo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmeh7/IACgkQFA3kzBSg
KbbDlg//SovnNVkRN/q/9WcjswDKGFTADyU0obch7RS6zqVrDHqDYOqAOOwLN3eV
8RRRFVr5ytHfK8pQg9IxCHdGjIKG+wmhr30cjKYNu5DHkZQN7Hr7JeJF5xB6P5rm
jfOalHQq0y8EvkpSxCivmo3OMkvRdCzzm5UeIfiXPgJc6TBsc77zbjT1Bo9UIyRB
0lWSQ8WAGewZCHGZ7lJINRRb2K6YRQSylnJnSnSdM73A6/lMpfWAvQCqFnUGjW/G
57PGIANrBdBKs2/LGsjk4kO1XfXFs80zoaMZXWVSWbsgBVsV88hMlC3BJg6wsgQD
CpHVonOS8Hh7hCkBVOaQB/MD82vZ6IPKuAhda7isBnbXb63tTp++A9snmPujTPjA
mGo5P1y8lpZi/RT7C4vV26MyzbJVq+iWA/lkwx6yOJNbhXVTIv53JxnCYStcaswL
JK9AVPpT+i3PO8z/CyN+9yAWgA2UOTUojDY0ioQTZWUgZqXpm2HgoEtiePfoj8xL
CYcDRgnW9z1W8ZOLTDutCxMiiukuXk0AtHnx8TlcyYOS8wuNOnpZJ9S+0WfbjzW/
E/AkRkJo1sSq8gFapVFIw8v0f+o8vjqWqqADFePRMbRKvcUU2uDVvNDQfAuYO1U2
Z5MPV3AfbesFp+yLYZ/CZWHe5HLTPniTKNO3Y75G3uXZOdtPKg4=
=Qgsv
-----END PGP SIGNATURE-----

--cGWJoZ1M+YnyqTAo--

