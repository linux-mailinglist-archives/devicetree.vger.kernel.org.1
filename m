Return-Path: <devicetree+bounces-13466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB777DE2CA
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 16:15:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B5205B20DB1
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:15:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33A0213FE7;
	Wed,  1 Nov 2023 15:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwbLrc9k"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1481311C8E
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 15:15:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6B34C433C9;
	Wed,  1 Nov 2023 15:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698851743;
	bh=bF/PDFBgCNEyxwW8X8+O+LXv1aXNzxtk1fqmjVSSxIg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RwbLrc9k+lhcD+zuA+JUajGEIHE1ZmvRDGzu1U9hxkLbKtleZGYavyCUDhj013ZYv
	 +bw3mvaFolfSXUVoy7KuLICIi2wdF1kWm/zAWT6yMv6XGccoex0k11FUU/NvLdBSKB
	 LEEAtxwROehdt08c/uUexyzGdxjkaXkx3qL9diBOnxb8M8wGc+lxrAZyuvSYTmHXOF
	 +P1ezyaa+scUF4zFhKZn/4FKhWo9quIjXT0oDmbRN0YvTndtaQdCsfZU49/BHT1oSP
	 2dpqluBHQI1Cnz8gxZbUvY3jGq81khx7wo0OWYqqHZ4EpvgPBBdjCyVblbobAlR8vg
	 w5Ddh/hcNhd5w==
Date: Wed, 1 Nov 2023 15:15:39 +0000
From: Conor Dooley <conor@kernel.org>
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: add rve
Message-ID: <20231101-detest-respect-e2fcb236697c@spud>
References: <20231101144057.2653271-1-hugo@hugovil.com>
 <20231101-maimed-email-4decd11f1d52@spud>
 <20231101110404.9f4c31d69c67d91e7be46387@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="WlopFModHXtQCbk9"
Content-Disposition: inline
In-Reply-To: <20231101110404.9f4c31d69c67d91e7be46387@hugovil.com>


--WlopFModHXtQCbk9
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 01, 2023 at 11:04:04AM -0400, Hugo Villeneuve wrote:
> On Wed, 1 Nov 2023 14:54:34 +0000
> Conor Dooley <conor@kernel.org> wrote:
>=20
> > On Wed, Nov 01, 2023 at 10:40:57AM -0400, Hugo Villeneuve wrote:
> > > From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> > >=20
> > > Add vendor prefix for Recharge V=E9hicule =C9lectrique (RVE), which
> > > manufactures electric vehicle chargers infrastructure components.
> > >=20
> > > Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> >=20
> >=20
> > Where is the user for this?
>=20
> Hi Conor,
> it is for a new board I submitted a few seconds after this patch:
>=20
>     https://lore.kernel.org/all/20231101144303.2653464-1-hugo@hugovil.com=
/raw

Please send related patches together as a series chief.

--WlopFModHXtQCbk9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZUJrmwAKCRB4tDGHoIJi
0sX3AP9jvlH/3APqmjLIKQcl8tABtma9khveW9OtMe/M/PxqFAD8CjKxEAsJoZ5V
n2LtJUS6SQDguE5p8MvwwaztcJuxFA0=
=vJ9n
-----END PGP SIGNATURE-----

--WlopFModHXtQCbk9--

