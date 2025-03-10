Return-Path: <devicetree+bounces-156254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D76A59B95
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 17:52:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 34FE716ED61
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 16:52:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EB5923370B;
	Mon, 10 Mar 2025 16:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRXvFqV3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6C8A23099F;
	Mon, 10 Mar 2025 16:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741625335; cv=none; b=hdFXRGWWHrbKdFyszbUbLPe2m8MPgHbdAmQC+Nb21Oy3I8LT3QnT9WxwbxTV5fuFY1FAoY/tl6P2jqfP26W+r/5JBnwhU02weh9rVz7N+VTEzKlRa04482uE+caDGbrHoUPMdF9xm/i4+hT3qQUaHCsaKUNMLkkO6R31ZWKMHXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741625335; c=relaxed/simple;
	bh=He80anPiKvebL/FnJfyifOVYwrOMXD/S0ef0nCf5pUU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J6my9SlJ9wRCav9oxSCY6Tnq8ir7N2wOw55iTZUFXuTh+T4A7XvYII53jRjFfw7Fs9GuZmKAUN+eUPxwhW9sTkL6dOXeCs39QqflVrXrAqEEBXwjdgKhUJ2t2nxZtHc9vxKctRa6YgbcKbe+ZiWG5DFuQx7Ba5IsAJ5Gm0Qd/Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRXvFqV3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EF3CC4CEE5;
	Mon, 10 Mar 2025 16:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741625335;
	bh=He80anPiKvebL/FnJfyifOVYwrOMXD/S0ef0nCf5pUU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CRXvFqV3/kRcrNhE+X3xH7Bqu+/Gg/vDC3Lchgwmym1TSXropU6yyTRnHEnC+8yR7
	 u2zgWRECaknG8UTwE02i9pWYMLMUmYlSM20LfUrOTMVymV8JLz5uV0IBEkyNGXM7to
	 VbYSwkM/EAnzvgwXFMomeK6p55nqmLhher4sc+tpy5smktHXXJShcXG6ewFU/tWWcR
	 HcKeEDQO5tVUrU1WvD0YZ9F7UJqdgnfp081uVrJ9v3J0/wqjMU3OH+OUTCCmW6VaY9
	 4YfFbXl4b9/rnhgp1X+4CNj9BW16qsT2H+sAgOTVkb9z9BQv6nIuv6qqanYukJJso4
	 QSaR+rWPBW05A==
Date: Mon, 10 Mar 2025 16:48:50 +0000
From: Conor Dooley <conor@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Han Xu <han.xu@nxp.com>,
	"open list:MEMORY TECHNOLOGY DEVICES (MTD)" <linux-mtd@lists.infradead.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [PATCH] dt-bindings: mtd: gpmi-nand: Add compatible string for
 i.MX8 chips
Message-ID: <20250310-running-reluctant-5ca27a149351@spud>
References: <20250307220515.3282954-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xZOwJLFS9ODUFr6Y"
Content-Disposition: inline
In-Reply-To: <20250307220515.3282954-1-Frank.Li@nxp.com>


--xZOwJLFS9ODUFr6Y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 07, 2025 at 05:05:15PM -0500, Frank Li wrote:
> Add compatible string "fsl,imx8mp-gpmi-nand" and "fsl,imx8mq-gpmi-nand",
> which back compatible with i.MX7D. So set these fall back to
> "fsl,imx7d-gpmi-nand".
>=20
> Add compatible string "fsl,imx8qm-gpmi-nand" and "fsl,imx8dxl-gpmi-nand",
> which back compatible with i.MX8QXP. So set these fall back to
> "fsl,imx8qxp-gpmi-nand".
>=20
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--xZOwJLFS9ODUFr6Y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ88X8gAKCRB4tDGHoIJi
0v4wAQDIr9sBDLKcJOxHMM6QCM3PGAzIaD1ERbGI2KtxDOrD4wEAg59dYzDWWGiS
8zuUfx0wcYCwcNWlSlfP3gqnwcrzQQQ=
=TFPp
-----END PGP SIGNATURE-----

--xZOwJLFS9ODUFr6Y--

