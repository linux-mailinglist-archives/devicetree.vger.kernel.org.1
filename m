Return-Path: <devicetree+bounces-18043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E06317F4E75
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 18:33:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1CC971C209FC
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 17:33:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B92AE4CDF7;
	Wed, 22 Nov 2023 17:33:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZte+0tO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BFD34C3A4
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 17:33:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DC76C433C9;
	Wed, 22 Nov 2023 17:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700674420;
	bh=t66ChE1TfPFQ4leVbU+HiiqPsGsYgR/Kpz5G6QVAqco=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GZte+0tOIJynbrL9ToAI+8wmmd0HyfH5uVghzad/1UqRiaF4C6s9064mdcKt/mClN
	 pgwq24bRwtf8ygMWpt4p5hZMrb7ZwXUCZ0ndaCob88viNN8YpRWvHx8ga3I4FWetn7
	 WDd2zAPtSC8bmwjqDJQPKlto12h2JK8G0CUQI20jugpDG2gMC/chG23MNx42J6kPKw
	 tVYqyvxjIfpVu7WprGoMZWlSoDxHCX8Xdp9PWwI7MHcJtxfAg3KNzTtOFMosg6x9eN
	 zGvUNVERXK/xaYUz65ceAMTFf839TioCMlE4VcHoE53yl39au7SiZq+f/vvwakpP8D
	 fIHAUxbRfM6zQ==
Date: Wed, 22 Nov 2023 17:33:35 +0000
From: Conor Dooley <conor@kernel.org>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: lee@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, miquel.raynal@bootlin.com,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: iio: adc: ti,am3359-adc: Allow dmas
 property to be optional
Message-ID: <20231122-synthetic-street-06ed7e0de34d@spud>
References: <20231122083608.136071-1-s-k6@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="YOGj+5fj3MMWFFjm"
Content-Disposition: inline
In-Reply-To: <20231122083608.136071-1-s-k6@ti.com>


--YOGj+5fj3MMWFFjm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 22, 2023 at 02:06:08PM +0530, Santhosh Kumar K wrote:
> ADC module can function without DMA, so there may not be dma channel
> always associated with device. Hence, remove "dmas", "dma-names" from list
> of required properties.
>=20
> Signed-off-by: Santhosh Kumar K <s-k6@ti.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--YOGj+5fj3MMWFFjm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZV47bwAKCRB4tDGHoIJi
0ofcAP9PcKnGIruXx/UykDcjvdPLy0KeLgGYzfeWM18mvz4b9QD8DIL1nDA/4qHh
6OeRMcFYhq+fl3z3JCXfCTd3NqnlkgY=
=BeZ9
-----END PGP SIGNATURE-----

--YOGj+5fj3MMWFFjm--

