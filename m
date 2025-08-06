Return-Path: <devicetree+bounces-202278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 88738B1CA9D
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 19:24:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 349D3620FEC
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 17:24:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3090129AB1C;
	Wed,  6 Aug 2025 17:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t96kj3it"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE9D29A303
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 17:24:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754501077; cv=none; b=l82vKRoN6cMlqLYzI9CmjctDzrZODb7mNviN8M5aWzd8Z4AJJH4uwSCoTkYprOQPdkCCbkTVOCjUW9XZIYBFQ433mk0NM7jeQ6PEJNoI+JQwlZ6wamMAbysT5cfbM7Jbrs7E9KQSNYrNybzrt9xByFAkgEqgWEkg9N3vpW1yTkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754501077; c=relaxed/simple;
	bh=bMbJSOemwxtkr6y2/CO582iIjzf2dNw1IlAGK1bGO7o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W1tCskS3WpVNdja9usB4E9H2bQzldbOZ2i71/iKj1ui5OyKQRuegU3bRI1ztPReERjEWm1DWb9RJJ7Tr82a9c+xVNDVoCs0l5FKZM6uZkopDYdHEojZfwgEGc8YU7Tx/hNv0arzSEevZavtpRQba1/C0B/c8EDqCFmTFEdPb66s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t96kj3it; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7784C4CEE7;
	Wed,  6 Aug 2025 17:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754501075;
	bh=bMbJSOemwxtkr6y2/CO582iIjzf2dNw1IlAGK1bGO7o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t96kj3itk5/ZNAbM2Gkcrz5K4qoyc644wK1X0JDg1uvVF6gcsjKkK5ocAD8ZCLEY/
	 TsgFXcafXcSxGf40jc5k/YHVE9vVlqX3wtP705KPZ/7UqN7k5Ow/DcM4yHz99QB6dz
	 m1x9AslZ2A1L8CoOpbuHQS/4hN/Gg/fo1hkfRnEfK5/qb0iDAv67SuxCyG7YYVzEie
	 NsFVSoKvy29JjWj09z9l+J+iZ7ANvqlEVkq384pFVF60JA2UaPilweG9At88zkXuFd
	 9E6xrVoo8CjBYejxBtoeW59TV0XtaixVlvZIOcYvZWaHwtgTiNZDSHWQp9lPvVvF9T
	 Ue4gELT7HwyMQ==
Date: Wed, 6 Aug 2025 18:24:31 +0100
From: Conor Dooley <conor@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm: Spell out acronym
Message-ID: <20250806-recovery-avalanche-044917fa089b@spud>
References: <20250806-aem-dt-bind-v1-1-d14676dfb027@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="NZIun3GEgTZluO8+"
Content-Disposition: inline
In-Reply-To: <20250806-aem-dt-bind-v1-1-d14676dfb027@linaro.org>


--NZIun3GEgTZluO8+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 06, 2025 at 01:03:08AM +0200, Linus Walleij wrote:
> When I authored these bindings I had no idea what "AEM" stood
> for. Now I know: it means "Architecture Envelope Model".
> Detail this in the bindings.
>=20
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> Maybe this can be applied directly to the bindings tree, I don't
> changed this document much.

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--NZIun3GEgTZluO8+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaJOPzwAKCRB4tDGHoIJi
0g9UAQDfZ2iyhOL4ZhB3bKj8b8pe7bO/XjQPGukWjDkNpmkslwD/Q3LhXJYLt5NF
B3srvt4Bnc49A9tPsCeibN5yDPnFJQg=
=P4OV
-----END PGP SIGNATURE-----

--NZIun3GEgTZluO8+--

