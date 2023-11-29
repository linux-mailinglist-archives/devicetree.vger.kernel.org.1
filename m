Return-Path: <devicetree+bounces-20066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 182EE7FDA48
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 15:48:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AC6EFB2169A
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 14:48:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2434534541;
	Wed, 29 Nov 2023 14:48:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ca6EXan6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C8E32C92
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 14:48:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88F44C433C8;
	Wed, 29 Nov 2023 14:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701269282;
	bh=PI1weq/pnE/jDDTHXdI0Ix4uqb+JeIDqc0bU61UT7wY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ca6EXan6a9dO9rm3hsPemNIdm96eOx2BlqY79kMTc+6YsKK55tn40Opi7Ogmbysa3
	 8Lt5ztvKuynShJKZ6xi2yiDJ6bdF70RdNPV0cnXOhqhRgUYOI3yayy5ar7PrcJnTfR
	 v6Fd58NES9svvhbylPRDfiNIhPsCUWp4FuLZQpQOW3uSJ6AbEknkKW2MXGj9tPBwM9
	 3u5t2bN9IKHJo5X+C/qUBY2QcyO42ke2I3SyXwYDmKNFT1BNTOsjO2qPsr/WHfCdQl
	 FXQkEjn8a6uZlRIfTD9VPY53ouEwYaL9sy5kRbppjNy+/mVhGsn30CvMvVOm7G8UtO
	 Uo1S1JTLLT/EQ==
Date: Wed, 29 Nov 2023 14:47:56 +0000
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
Subject: Re: [PATCH v2 2/6] dt-bindings: riscv: Add StarFive JH8100 SoC
Message-ID: <20231129-staple-filter-4a1e9494c00c@spud>
References: <20231129060043.368874-1-jeeheng.sia@starfivetech.com>
 <20231129060043.368874-3-jeeheng.sia@starfivetech.com>
 <20231129-thrower-umbilical-f11ee0749800@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mHpRZgRE9TQM1U6p"
Content-Disposition: inline
In-Reply-To: <20231129-thrower-umbilical-f11ee0749800@spud>


--mHpRZgRE9TQM1U6p
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 29, 2023 at 02:46:26PM +0000, Conor Dooley wrote:
> On Wed, Nov 29, 2023 at 02:00:39PM +0800, Sia Jee Heng wrote:
> > Add device tree bindings for the StarFive JH8100 RISC-V SoC.
> >=20
> > Signed-off-by: Sia Jee Heng <jeeheng.sia@starfivetech.com>
> > Reviewed-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>
>=20
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

(with the whitespace thing that Krzk pointed out fixed, just noticed
that)

--mHpRZgRE9TQM1U6p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZWdPHAAKCRB4tDGHoIJi
0tOJAP9enRl8M+ZWxXhgOFJE/TEI8bZPpSIv5hOkVolw8Y/X3AEA2OShFNPWpbKo
LpDiLZXdIPt9gnT2lHE3G6wCHR//awU=
=xkmZ
-----END PGP SIGNATURE-----

--mHpRZgRE9TQM1U6p--

