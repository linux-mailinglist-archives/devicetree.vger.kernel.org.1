Return-Path: <devicetree+bounces-21433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1318039F3
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 17:18:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AAD0B1C20A63
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 16:18:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 595E02D780;
	Mon,  4 Dec 2023 16:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVhD/UgO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0B55395
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 16:18:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 973F5C433C7;
	Mon,  4 Dec 2023 16:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701706698;
	bh=yDzvwMVlTobByjnSGQyneCW0HtTxC52ddIxe9fPN3os=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VVhD/UgOk1VH4nMhaGXfD+m1K9OZ5rYZIk/4Fnx8Zai+cX+Z64vYDI4IF5wcKSh/D
	 5a+Y6PJmU/ZdqYtRoPiBgMb9JGDHucFAw8CE/0gZNt52NJGeYnd95Lh6VnJKhtdAZJ
	 lp3EQhooN/WZKn1+TJwikNDjcNKnmzp/fRF8LaWg+NLHtlUuvyKifnu4c0jlT26m2M
	 UI2tylugntqs7ftIW2ItBr4i+4wBX+gDSGIBn47eDW934px7h8FI2GvF0wPpfJmZmP
	 tvpLOjlMidIQuvbUEo5Kb+TkLZbFwGcoXZpGM4wLutiougqtkIeilJAb1wAI3hO46B
	 yHYQ81+c+mZyg==
Date: Mon, 4 Dec 2023 16:18:13 +0000
From: Conor Dooley <conor@kernel.org>
To: Inochi Amaoto <inochiama@outlook.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Chen Wang <unicorn_wang@outlook.com>,
	Anup Patel <anup@brainfault.org>,
	Samuel Holland <samuel.holland@sifive.com>,
	Guo Ren <guoren@kernel.org>, Jisheng Zhang <jszhang@kernel.org>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v5 1/2] dt-bindings: timer: thead,c900-aclint-mtimer:
 separate mtime and mtimecmp regs
Message-ID: <20231204-germproof-venue-6874ad902323@spud>
References: <IA1PR20MB4953C912FC58C0D248976564BB86A@IA1PR20MB4953.namprd20.prod.outlook.com>
 <IA1PR20MB49531ED1BCC00D6B265C2D10BB86A@IA1PR20MB4953.namprd20.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="r7TrBvfH2EyTxEDe"
Content-Disposition: inline
In-Reply-To: <IA1PR20MB49531ED1BCC00D6B265C2D10BB86A@IA1PR20MB4953.namprd20.prod.outlook.com>


--r7TrBvfH2EyTxEDe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 04, 2023 at 05:51:08PM +0800, Inochi Amaoto wrote:
> The timer registers of aclint don't follow the clint layout and can
> be mapped on any different offset. As sg2042 uses separated timer
> and mswi for its clint, it should follow the aclint spec and have
> separated registers.
>=20
> The previous patch introduced a new type of T-HEAD aclint timer which
> has clint timer layout. Although it has the clint timer layout, it
> should follow the aclint spec and uses the separated mtime and mtimecmp
> regs. So a ABI change is needed to make the timer fit the aclint spec.
>=20
> To make T-HEAD aclint timer more closer to the aclint spec, use
> regs-names to represent the mtimecmp register, which can avoid hack
> for unsupport mtime register of T-HEAD aclint timer.
>=20
> Also, as T-HEAD aclint only supports mtimecmp, it is unnecessary to
> implement the whole aclint spec. To make this binding T-HEAD specific,
> only add reg-name for existed register. For details, see the discussion
> in the last link.
>=20
> Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
> Fixes: 4734449f7311 ("dt-bindings: timer: Add Sophgo sg2042 CLINT timer")
> Link: https://lists.infradead.org/pipermail/opensbi/2023-October/005693.h=
tml
> Link: https://github.com/riscv/riscv-aclint/blob/main/riscv-aclint.adoc
> Link: https://lore.kernel.org/all/IA1PR20MB4953F9D77FFC76A9D236922DBBB6A@=
IA1PR20MB4953.namprd20.prod.outlook.com/

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Although, I figure it is going to be me that ends up taking it.

Cheers,
Conor.

--r7TrBvfH2EyTxEDe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZW37xQAKCRB4tDGHoIJi
0k7+AQCD3i9MlUls5AeaNYbwXSKbbrJ8nrMswlOtYuKpALuxgwD/c5t5zE8FQyWQ
gFvWp6AcxMmNv+4b61lJDPWZ+Mrm+Qc=
=VXzQ
-----END PGP SIGNATURE-----

--r7TrBvfH2EyTxEDe--

