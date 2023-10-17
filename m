Return-Path: <devicetree+bounces-9141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B07407CBCA7
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 09:45:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E1A2C1C2037B
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 07:45:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBC5723766;
	Tue, 17 Oct 2023 07:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3EZhgt0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF41211CB6
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 07:45:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73E81C433C8;
	Tue, 17 Oct 2023 07:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697528735;
	bh=WArevt6GXcxE3WhRBrAB6YfSmlJb0fKxC2Cf185aRsw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d3EZhgt0Dk1F9+pzg8IHqH36i74VGXQx6rQQr9WhOH6qkqa9fRB3mAIJHRtUNZoHM
	 R3W17qyI+PrUOC7EmS2UPqP98ejMWDtrYAlGtWy3mDw2229lvMGOXr8QmNGWDiJOCj
	 IZuwNaxYNElv1qDtK7tMlG7H2nJ0geWg/tW6I/2pPHMUlAksqPsk13VYZm+xMkOS6d
	 MApx2e9Sf1CUoXabMD/FUos0T477mDdyPfJarX39DpCVUejBY+X4KrdP/RVdO1lWpC
	 SrfzbHEL3G6FYtb3k4xjhpcVm2zgpCHWVHJVT6Wz2Gkm/16lsibV+TS14AYFRecmui
	 swktSfrImYtVw==
Date: Tue, 17 Oct 2023 08:45:30 +0100
From: Conor Dooley <conor@kernel.org>
To: Mehdi Djait <mehdi.djait@bootlin.com>
Cc: mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	conor+dt@kernel.org, laurent.pinchart@ideasonboard.com,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, thomas.petazzoni@bootlin.com,
	alexandre.belloni@bootlin.com, maxime.chevallier@bootlin.com,
	paul.kocialkowski@bootlin.com
Subject: Re: [PATCH v7 2/3] media: dt-bindings: media: i2c: Add bindings for
 TW9900
Message-ID: <20231017-primp-outlet-98aadd3c4493@spud>
References: <cover.1697463708.git.mehdi.djait@bootlin.com>
 <d5b2b2584fd471a037e574086bfd193b22fb9587.1697463708.git.mehdi.djait@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="JONb17A5fbx7YTK+"
Content-Disposition: inline
In-Reply-To: <d5b2b2584fd471a037e574086bfd193b22fb9587.1697463708.git.mehdi.djait@bootlin.com>


--JONb17A5fbx7YTK+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 16, 2023 at 03:58:32PM +0200, Mehdi Djait wrote:
> The Techwell TW9900 is a video decoder supporting multiple input
> standards, such as PAL and NTSC, and outputs a BT.656 video
> signal.
>=20
> It's designed to be low-power, posesses some features such as a
> programmable comb-filter, and automatic input standard detection
>=20
> Signed-off-by: Mehdi Djait <mehdi.djait@bootlin.com>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--JONb17A5fbx7YTK+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZS47mgAKCRB4tDGHoIJi
0oohAQCQibSmBabT3FmwXEXZUbZIPD5UX0IdIXL8ksNq8BqXjgEAndxurscX6zs1
W9m67aWnBopJUBNJ6YyQlE3zD+AzSg0=
=yiSR
-----END PGP SIGNATURE-----

--JONb17A5fbx7YTK+--

