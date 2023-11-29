Return-Path: <devicetree+bounces-20064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FB97FDA38
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 15:46:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A29821C204F6
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 14:46:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A30728366;
	Wed, 29 Nov 2023 14:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxJ4H6GH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F210F20308
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 14:46:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3C45C433C8;
	Wed, 29 Nov 2023 14:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701269192;
	bh=9GQN7/hdcUEnNmQ493lxzKNysjRFZYQgbQLVbB0NNY4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AxJ4H6GH8+xeJG2+XoamWN0mDamr/sM05A315NvSSf1ymw1jRa8ZCdNR9pqMwNgkq
	 qIM4tFsZF9JRaPEM+i4HCzRjYICUDhNtU2/13si1TwKGqwIM0pG0OIWcMoMSxMulJe
	 cpnCo5WCPx0+4gq4/akUPV9jjcBGsN1UC+MQqA9n1btENC2kuGPdbA/9uGLBlnmeKc
	 PpoE0AknaGzWPdQePVe3GRsvGYvODK+QuY/AEN1JSPaw4+9/Lq/Iibjtz54xgaPvXa
	 ZCXionHWL5eofhyBe2zRsnCkLj6mR3YKbYYu2fEBf+Kfre56CbwO4FvsGyp7Apb3Kr
	 6gONbu+1c5xRw==
Date: Wed, 29 Nov 2023 14:46:26 +0000
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
Message-ID: <20231129-thrower-umbilical-f11ee0749800@spud>
References: <20231129060043.368874-1-jeeheng.sia@starfivetech.com>
 <20231129060043.368874-3-jeeheng.sia@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="iOelv6T+mj3cWbE0"
Content-Disposition: inline
In-Reply-To: <20231129060043.368874-3-jeeheng.sia@starfivetech.com>


--iOelv6T+mj3cWbE0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 29, 2023 at 02:00:39PM +0800, Sia Jee Heng wrote:
> Add device tree bindings for the StarFive JH8100 RISC-V SoC.
>=20
> Signed-off-by: Sia Jee Heng <jeeheng.sia@starfivetech.com>
> Reviewed-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--iOelv6T+mj3cWbE0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZWdOwgAKCRB4tDGHoIJi
0kUIAPwM427aA3mlP+6PzIu9owQq54/yLBLKInM1yuRBzap2PwEA5w++iYrLinPx
NltepIkT2aOJNelqv2QZ9nPf/t8MpAw=
=jdE6
-----END PGP SIGNATURE-----

--iOelv6T+mj3cWbE0--

