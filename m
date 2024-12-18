Return-Path: <devicetree+bounces-132348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAA89F6B64
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 17:42:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 21213167145
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 16:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 876B91F7096;
	Wed, 18 Dec 2024 16:42:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGeejggJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCAD14AD0E;
	Wed, 18 Dec 2024 16:42:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734540129; cv=none; b=Ss5+SCe6o73WuLreNlbv9kLWmk8IP0NxYlAeMaw/557mlUWFvDI4ngo+qd2iZDBp2qzKm5LyZ3DZGr3Pp3ujDQ32WowoYXwzMnHL3d1R9jA9vZi49iioJ1M9i42yTUZ2oQIodKnfsDhDLN7KSjOouhnOwxlbtQNnemyZFgEGpVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734540129; c=relaxed/simple;
	bh=dhyOE4YUoRsGIZT0ogQrkPhGxu4aVtP1g3XBoISLt7U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iRfV1ANCjo2wW6ltbUWPLUtXLxpTxedn6pwWtAo0arWL1Piym5N9tlOOopfGgseffK+B1Qo6tr4L1BN8LtqOezGMIsq/eisY/8sQWk1aNbXLojXsC7e2Fvj4qzoMEKcqnkPnMI3ycZcKqZMAD8kWoR3zolVYACM76hvvO5UM8nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGeejggJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4143CC4CECD;
	Wed, 18 Dec 2024 16:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734540129;
	bh=dhyOE4YUoRsGIZT0ogQrkPhGxu4aVtP1g3XBoISLt7U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NGeejggJplLLEXCN7Ii1Dq8SyLlYw30CUocD41RmWjnxx3EwtrNvzMPCYRFIjFgGa
	 dn06ELmZRukffUJI/rA03m4rm8tVWntwlg2SzelkNiHd4hbFR7pyZgPS9/lNl+EBut
	 k4mHsCVhTwXVw9dvBR+nYpQKD0RUwbZkxxnZ13SbevGIrEMNcZW8PRZ0fl36aJy/fF
	 zp1P2TxU+oUP/yOSADxFSiGox7l/11PTdN0PPv3tk6F3j4IORiN5YwG80ui+TMEjO8
	 PWxoyFNb/TdyxAPPkFEDaTTVzsPSR0kT/SqQ2fclwdPIteujVHXMhclDZjuafTo1kt
	 caR+mBYrSeuuQ==
Date: Wed, 18 Dec 2024 16:42:03 +0000
From: Conor Dooley <conor@kernel.org>
To: Frieder Schrempf <frieder@fris.de>
Cc: linux-arm-kernel@lists.infradead.org, Marek Vasut <marex@denx.de>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
	Robin Gong <yibin.gong@nxp.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Conor Dooley <conor.dooley@microchip.com>,
	Joy Zou <joy.zou@nxp.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 1/9] dt-bindings: regulator: pca9450: Add properties
 for handling LDO5
Message-ID: <20241218-yapping-driver-d67cf1662b57@spud>
References: <20241218152842.97483-1-frieder@fris.de>
 <20241218152842.97483-2-frieder@fris.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="coNBr7QctIEeG3n2"
Content-Disposition: inline
In-Reply-To: <20241218152842.97483-2-frieder@fris.de>


--coNBr7QctIEeG3n2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 18, 2024 at 04:27:24PM +0100, Frieder Schrempf wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
>=20
> This reverts commit 27866e3e8a7e93494f8374f48061aa73ee46ceb2 and
> implements a new future-proof way of handling the mismatch between
> the PMIC driver and the hardware for LDO5.
>=20
> It turned out that this feature was implemented based on the wrong
> assumption that the SD_VSEL signal needs to be controlled as GPIO
> in any case.
>=20
> In fact the straight-forward approach is to mux the signal as
> USDHC_VSELECT and let the USDHC controller do the job.
>=20
> Most users never even used this property and the few who did have
> been or are getting migrated to the alternative approach.
>=20
> In order to know the current status (which of the two control
> registers is used) for the LDO5 regulator, we need to route back the
> USDHC_VSELECT signal by setting the SION bit in the IOMUX.
>=20
> By adding the according GPIO as sd-vsel-gpios to the LDO5 node, we
> allow the regulator driver to sample the current status of the
> SD_VSEL signal that is used to select the correct control register.
>=20
> The SD_VSEL on the PMIC is always an input. It's driven by the SoC's
> VSELECT signal (controlled by the USDHC controller) and we use the
> SION bit in the IOMUX to internally loop back the signal in order to
> sample it using the GPIO.
>=20
> As the SD_VSEL pin is directly routed to the LDO5 regulator in the
> PMIC, make the sd-vsel-gpios property part of the LDO5 node.
>=20
> SoC                                  PMIC
> +-----------------------+           +-------------------+
> |                       |           |                   |
> |                       |           |                   |
> |  GPIO <----------+    |           |                   |
> |                  |    |    SD_VSEL|   +-------+       |
> |  USDHC_VSELECT ->+------------------->| LDO5  |       |
> |                       |           |   +-------+       |
> |                       |           |                   |
> +-----------------------+           +-------------------+
>=20
> For boards which have the SD_VSEL tied to a fixed low level, we add
> 'nxp,sd-vsel-fixed-low'. The voltage of LDO5 is therefore only controlled
> by writing to the LDO5CTRL_L register.
>=20
> If none of 'nxp,sd-vsel-fixed-low' or 'sd-vsel-gpios' is set, we keep
> the same behavior as before. The driver assumes that SD_VSEL is tied
> high and the LDO5CTRL_H register can be used, which is in fact not true
> for all known boards and works merely by chance.
>=20
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

--coNBr7QctIEeG3n2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ2L7WwAKCRB4tDGHoIJi
0gWzAQDUtj59/3nzuoweiBKWKKIPBYM16b8nOrc4NaUzXTNqqAEA1PaDp23BDn/E
L/KEjG6qhat2oumCyi6ESkLp+wQhkQY=
=YsDx
-----END PGP SIGNATURE-----

--coNBr7QctIEeG3n2--

