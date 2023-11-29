Return-Path: <devicetree+bounces-20067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A11A7FDA4F
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 15:48:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3B2771C208F2
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 14:48:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43CF032C90;
	Wed, 29 Nov 2023 14:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kT2G2Hm8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292681D6BC
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 14:48:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B196DC433C7;
	Wed, 29 Nov 2023 14:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701269327;
	bh=0+QaGA6PBlnGaUf5ZoWEYbce089KPfDbZK0tj/I7cFY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kT2G2Hm8rBBK2fdq61Bkc6ea8uM+C0n3FaCDZbnKVd4J80BT27l4NEw1EfMJLPU7D
	 PD3im0d1vothsZI+2iCr5mMP2NMABsMnuQjqwlXdmQ0hndCVi+AkXn2H2aog3i5aNO
	 qYZYxYf2xEWwzIX6z2zkunD47iP4iWw9RGjQ7L7Bpf7YBz+ssH/SKVyAFc/3C6jrDK
	 Kz7/FtB2kiIAIbfLSKEGeB3pdk0Tm/QfrnoXPYz+kG++6nYvzncdiBxzpQ7n2BdYxd
	 fNVwPcssWP2wiIK1qdaa0cyMOGpik1Pvj5U/2yu+HqIbMBvAEMknd1N0eOMnEXcgqL
	 t/myAVP+nNXfQ==
Date: Wed, 29 Nov 2023 14:48:41 +0000
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
Subject: Re: [PATCH v2 4/6] dt-bindings: interrupt-controller: Add StarFive
 JH8100 plic
Message-ID: <20231129-clatter-quarterly-4401934d2b50@spud>
References: <20231129060043.368874-1-jeeheng.sia@starfivetech.com>
 <20231129060043.368874-5-jeeheng.sia@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fypqDAEC7EAThQr9"
Content-Disposition: inline
In-Reply-To: <20231129060043.368874-5-jeeheng.sia@starfivetech.com>


--fypqDAEC7EAThQr9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 29, 2023 at 02:00:41PM +0800, Sia Jee Heng wrote:
> Add compatible string for StarFive JH8100 plic.
>=20
> Signed-off-by: Sia Jee Heng <jeeheng.sia@starfivetech.com>
> Reviewed-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>


--fypqDAEC7EAThQr9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZWdPSQAKCRB4tDGHoIJi
0hQDAP961Iv1cU5dwPISI0S3yN45u/dL+hNqlw3EW/MWezvgXwEA6cTCBtuJGKCH
ePXq3ljQb5QkwFLuMvT6evagEHPv4wM=
=e5L3
-----END PGP SIGNATURE-----

--fypqDAEC7EAThQr9--

