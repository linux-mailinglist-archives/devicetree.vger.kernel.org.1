Return-Path: <devicetree+bounces-20070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B31FD7FDA5A
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 15:51:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E3EB51C2098B
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 14:51:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74CEB34568;
	Wed, 29 Nov 2023 14:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fsrd95RH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5834F1CA81
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 14:50:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7BF1C433C8;
	Wed, 29 Nov 2023 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701269457;
	bh=0VHSKBP1ReMABzZQC3fHKYxtIh+5pDAB20b4lDIyvBc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Fsrd95RHo63I/KiYnCu1p22EqZ5zkOBJx61wvudfvnKHia6k5apCzxVgjiCBJPMu0
	 kuFuH5a10xSmoBkHyjI6xkj+z1ayMfn/RWKD0WtZtf2ldM+K22jqDgB9ZcVRARkDiI
	 MskWm0JkzUmiR3P/gYdlsJIdi5WOkrUAOB5EWOu/6j3mXPlemOnBIP881yNBJ1x8Mw
	 IDGr4M0wjgi4DOOhpde2T9if5Jr9CP7hjjJXxB6PLuHL6SbIdeu0aJO4vlYUGnMPLW
	 CzT0jp6FR/6zQP9zDjTqjOJQiyACSt+Af2oObc6GmRmnjam86soE4y5uAXZeKZkeG0
	 MKnGO2f8ZZVbg==
Date: Wed, 29 Nov 2023 14:50:51 +0000
From: Conor Dooley <conor@kernel.org>
To: Sia Jee Heng <jeeheng.sia@starfivetech.com>
Cc: kernel@esmil.dk, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	krzk@kernel.org, conor+dt@kernel.org, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu,
	daniel.lezcano@linaro.org, tglx@linutronix.de, anup@brainfault.org,
	gregkh@linuxfoundation.org, jirislaby@kernel.org,
	michal.simek@amd.com, michael.zhu@starfivetech.com,
	drew@beagleboard.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	leyfoon.tan@starfivetech.com
Subject: Re: [PATCH v2 3/6] dt-bindings: timer: Add StarFive JH8100 clint
Message-ID: <20231129-junkyard-implosive-5b1d28976e63@spud>
References: <20231129060043.368874-1-jeeheng.sia@starfivetech.com>
 <20231129060043.368874-4-jeeheng.sia@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qKdfr+4VHS8JTnF5"
Content-Disposition: inline
In-Reply-To: <20231129060043.368874-4-jeeheng.sia@starfivetech.com>


--qKdfr+4VHS8JTnF5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 29, 2023 at 02:00:40PM +0800, Sia Jee Heng wrote:
> Add compatible string for the StarFive JH8100 clint.
>=20
> Signed-off-by: Sia Jee Heng <jeeheng.sia@starfivetech.com>
> Reviewed-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--qKdfr+4VHS8JTnF5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZWdPywAKCRB4tDGHoIJi
0hu3AQDko2ie3vpTPXfjxfnvgF6fp8Rl7pzo9cnDc63+d0kVjgD9FRImCWNbkv94
acKyBV66aqco9mGG9l/CojneYNWFswM=
=MwTW
-----END PGP SIGNATURE-----

--qKdfr+4VHS8JTnF5--

