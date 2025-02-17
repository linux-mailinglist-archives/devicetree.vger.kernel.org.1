Return-Path: <devicetree+bounces-147318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B7118A37EFE
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 10:54:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E753F16573D
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 09:53:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D7C0215F67;
	Mon, 17 Feb 2025 09:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="OC2nfi7H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A47215F51
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 09:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739785998; cv=none; b=sQ+9XD+Q22AP6F0goNRSNGyzHUzIgKUG63thYK7xg4DB1TO+UvkJMJujKBgmMSFGJePO5C+R4xyjSCJWZJpD66ai+SC37dJka/xOnCMp2UG+rRKLJacMwS0SdOtxzIB9FnNYR2ubFdbLR8YvTDfYjLDPu40GH2MTMIZQc9JMEiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739785998; c=relaxed/simple;
	bh=sZnEEppvN+5ZXENvdwQwxEP/i9zLlRLGORxzucL/TZg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KoEM2R/R2+s1q6Ylf0ljG7IR+aL8qzAt/joU2OmEqP58XFQalUQ+P7Tcz5NiALc9ZqTRx3MO50ZEiKEgazpsZUnXWt3AvRn2bzL4L2lcETLNz7xDneIM1YqrK0TjjJlPt/I1xV/oNnPB1wm87DHi3Hlsef8R3kXVumKTEQCqOLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=OC2nfi7H; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=sZnE
	EppvN+5ZXENvdwQwxEP/i9zLlRLGORxzucL/TZg=; b=OC2nfi7HRutBmlYALE3T
	gDHUFhmxy/BuqKGGrJ976ZDgnXLCUu8g2Sv12otaRczwj8wHBVQKinS7nQio3yat
	MBROAbvSs0xa4zte/W2mNX+/u/kj43ySWLYnQIMYSQQxflgzf7QdRKyGB9I1xMg+
	PNw7kY/LexIk50ZW3H6asQIgaIvTLSzVYfgxuM52ovMJgyOG7RyrB2MSXJgUC82/
	lmp4iR8no9zMOuav/igAHTJ2zYfGf+yqDyu34FbtnbOegij9dGXroEUWgBAYBolR
	fW/VNhALpecIrr4wwuBKka6ivs2NPBSoeYj0T2xIYXLIIzwItkQNfFndfdk/C9P4
	Lg==
Received: (qmail 3241275 invoked from network); 17 Feb 2025 10:53:06 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 17 Feb 2025 10:53:06 +0100
X-UD-Smtp-Session: l3s3148p1@DcitfVMuTsYujnvP
Date: Mon, 17 Feb 2025 10:53:05 +0100
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Cc: linux-arm-kernel@lists.infradead.org,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 0/4] ARM: dts: at91: calao_usb: fix various naming
 problems
Message-ID: <Z7MHAdHTaituyg2w@ninjato>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	linux-arm-kernel@lists.infradead.org,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Rob Herring <robh@kernel.org>
References: <20250131210236.36212-6-wsa+renesas@sang-engineering.com>
 <7e966eea-e2e7-4fd4-bc6e-67fd49c57ddd@tuxon.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pdPuI6c7IgJyvMFw"
Content-Disposition: inline
In-Reply-To: <7e966eea-e2e7-4fd4-bc6e-67fd49c57ddd@tuxon.dev>


--pdPuI6c7IgJyvMFw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> For this, I'll be waiting a follow up on
> https://lore.kernel.org/all/20250131162713.33524-2-wsa+renesas@sang-engineering.com/

I have the patches ready. Will send v2 after I rebased on top of your
at91-next tree.

> These were applied to at91-dt, thanks!

Thank you!


--pdPuI6c7IgJyvMFw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmezBv4ACgkQFA3kzBSg
KbbxghAAqLEKBP1Xr517csCtpxYcrb3Xt/NVAlZi/2wANuLBzYofJ/jVEckoEsDo
e0Aj7kt9RB+Ud2A7UnhUgm9eD8UHvzmYTEFoh8c3EwDAd751CjQky7h+jZgn9n8c
yJuRE77MuHyV982btSC48p4wNMwre+mTQ+36zIx5ElnrzwnPyCdm0C+R6ALx6USU
ZOxnHglIr+Flow0/SlhQ1g3HHomLxEX+JKYifiqN3jSJ1PF+qMblyPe1WGe/2tfo
LS/9uphcoqdYGxW65L3CihnnFZecjIEbfbcTS1WR83YeNAbnB8Cl1YRC0yKLZT/M
aiGgsWzMJ4apqpPd8g/HLaRlf/R8HR8iesSfb16e9rvULrF20baooOuukstuZk1q
+o8SnU7bClkSHe+LBkaNU0RDrmcrVWOw5AFcKPswXE33etRD8HsyAEg74P+/I0Ep
SSGe++WlyAKLwxxMs+fXwdljVwbv+xfzZxEMmxMbAmeQK37u6qNHNkikeEY8g8Y5
cgkHRx+KpUMP5ZlDcZz5fkyaIo2YHfrH5YgmCAS1UN7dk88VGb0r+TrLfin3uihT
+tuZhlgzbzlhlOmEQSeM0yazbIrRQf9/OIophEZTvy582tl9piYqeXvGCAIQbFa/
fAKuftxQuTrktC8Sjzip1/+fD35cTN/mDFoWClqb9MCXks9VHaU=
=fcWg
-----END PGP SIGNATURE-----

--pdPuI6c7IgJyvMFw--

