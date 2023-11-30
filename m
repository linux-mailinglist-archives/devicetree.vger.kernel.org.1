Return-Path: <devicetree+bounces-20385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC3E7FF129
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 15:05:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76308281967
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 14:05:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 878AF487A3;
	Thu, 30 Nov 2023 14:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQmWMW3n"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF3B3C694
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 14:05:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A523BC433C7;
	Thu, 30 Nov 2023 14:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701353148;
	bh=0bBErjRDq1tShxa+ZQUxMiiFY8Sr+lLm/nr9F9U95/k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IQmWMW3nBQO9dm1t/E18YFK0AnC/mglah74K64IGkrwM+j4yLwR6VQVurr1fw3ijq
	 k4D9jrismUB8XR0M1yk1ExdoDewlZr3JnimtmuoqgdkxLAHJKb9kuVZ3PmQ6e3BXGr
	 sNK9Xhhbt83YR8B+qjw3DEbwsJ6Ft4wodKo0abZ4K4CpJ4qz0d3PtuYB67jf0MY/ND
	 ca1X5w4rtUvOmJ5QudqujjGyT6e2I/0rnqsqoaj94ylZWqPUFsfbr4wFmUeUoNjfcx
	 N7QA8QdrliZQqaNsZD/m2Aya2rHJtwhYPDFFofPs9G0rQwPgMjFrB6+fK6LpfxIT5x
	 8szHutp8RX+rA==
Date: Thu, 30 Nov 2023 14:05:44 +0000
From: Conor Dooley <conor@kernel.org>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH v1 2/8] riscv: dts: starfive: Group tuples in interrupt
 properties
Message-ID: <20231130-droop-reggae-3f1ec3809a77@spud>
References: <20231126232746.264302-1-emil.renner.berthing@canonical.com>
 <20231126232746.264302-3-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GDqc2Ost9zQQcBe6"
Content-Disposition: inline
In-Reply-To: <20231126232746.264302-3-emil.renner.berthing@canonical.com>


--GDqc2Ost9zQQcBe6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 27, 2023 at 12:27:40AM +0100, Emil Renner Berthing wrote:
> From: Geert Uytterhoeven <geert@linux-m68k.org>
>=20
> To improve human readability and enable automatic validation, the tuples
> in the various properties containing interrupt specifiers should be
> grouped.
>=20
> Fix this by grouping the tuples of "interrupts-extended" properties
> using angle brackets.
>=20
> Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>

This one is missing your signoff Emil.


--GDqc2Ost9zQQcBe6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZWiWuAAKCRB4tDGHoIJi
0kjFAP98CAuQRyqCQFxRXAWKKidu4wFen/Zt8TMkwHgIbaZloQEA5D/IV6QDjol+
X0TG+1sqJS12THdiw2HGwLlcbBYKngk=
=mWd2
-----END PGP SIGNATURE-----

--GDqc2Ost9zQQcBe6--

