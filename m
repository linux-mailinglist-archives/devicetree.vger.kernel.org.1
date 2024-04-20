Return-Path: <devicetree+bounces-61103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0E58ABB24
	for <lists+devicetree@lfdr.de>; Sat, 20 Apr 2024 12:54:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED5461C20A6B
	for <lists+devicetree@lfdr.de>; Sat, 20 Apr 2024 10:54:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17CB915E88;
	Sat, 20 Apr 2024 10:54:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+MhFRNz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E45DDD9
	for <devicetree@vger.kernel.org>; Sat, 20 Apr 2024 10:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713610482; cv=none; b=qbaSOe42ErgG9RcHUjtwh+HyllnpQAHr1C2cDuVjg4anOP1DwXwwpz+rAZEDQdp4teXLCdzAstrBzYMqPD/rCojWOmS0D+4hL8Nzz7cal/z81a+2HlDYXRBJ5LIO6Wk6Un8EV+p7Gbc7PyWWSTAhi2esIyAsYYEdWPM7XKoN3ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713610482; c=relaxed/simple;
	bh=8yYLW7gyuedZRx0RuumC/a4QgikYsX4XXuwlrGE+6LI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pHnryVu8uYhvK3lQdmgwYLd8MXy+RysLFmWdBJf38D20Zqpo8D0lZTbXutSZy1USH8zeZRdxUkJQLZulJEdqV82/3/TIcJmH5EhMEEpdTOb+QJuRuMffcvs9gpOWLBynj90eEb+i51DlM+c4zGaGBXBm9Y1c5QJOSd6pWPoT+ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+MhFRNz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14354C072AA;
	Sat, 20 Apr 2024 10:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713610481;
	bh=8yYLW7gyuedZRx0RuumC/a4QgikYsX4XXuwlrGE+6LI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i+MhFRNzmwun318tjv2apgDOjPymkWQojhdg2dg0w7ouVO0Pu1TyxonbZZpdl0DqO
	 eVTXd//9RShBN8Dik2Ze+T3Y9aGCDc6qnyy6R22rL3GoxxFrAGMaUGKmcwji6CIGj/
	 No3oEwoEJjrvx1Xnmub+hoEiC7x1fyBocYxAuAMTxuedIMqBhQWFyTAboksgOZdVSs
	 S+MoRD2Z7qA8EcL85/HXsVCKFH12J6e27YaZQJEtXeFqbUi8Pp/7N8/SsMTz4mOkvM
	 Su81SFoR+SZ1MZ43EbJLLMq+f3dIRSrOYzpZEAsImugI4Z8IeZOKW5lzTOplkbUIh2
	 kRbkqlTlW5nJw==
Date: Sat, 20 Apr 2024 11:54:32 +0100
From: Conor Dooley <conor@kernel.org>
To: Eddie James <eajames@linux.ibm.com>
Cc: linux-aspeed@lists.ozlabs.org, joel@jms.id.au,
	andrew@codeconstruct.com.au, devicetree@vger.kernel.org,
	linux-fsi@lists.ozlabs.org, robh@kernel.org, conor+dt@kernel.org,
	krzk+dt@kernel.org, jk@ozlabs.org, alistair@popple.id.au,
	lakshmiy@us.ibm.com
Subject: Re: [PATCH v3 1/3] dt-bindings: fsi: Document the IBM SBEFIFO engine
Message-ID: <20240420-importer-smugness-fdb48c92ea15@spud>
References: <20240419211143.1039868-1-eajames@linux.ibm.com>
 <20240419211143.1039868-2-eajames@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2jVjDS/uYvR8ikWT"
Content-Disposition: inline
In-Reply-To: <20240419211143.1039868-2-eajames@linux.ibm.com>


--2jVjDS/uYvR8ikWT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 19, 2024 at 04:11:41PM -0500, Eddie James wrote:
> The SBEFIFO engine provides an interface to the POWER processor
> Self Boot Engine (SBE).
>=20
> Signed-off-by: Eddie James <eajames@linux.ibm.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--2jVjDS/uYvR8ikWT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZiOe6AAKCRB4tDGHoIJi
0lt8APwOSCYgU1v4jfqtkGKOKck3jvgqM0rviuuVaPNURcdTywD/ZUz0yis4GFE1
pfcyKkHHp4IeVY6C+5duicPKVy1ZIwE=
=R6YT
-----END PGP SIGNATURE-----

--2jVjDS/uYvR8ikWT--

