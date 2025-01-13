Return-Path: <devicetree+bounces-138159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0A5A0BEF2
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 18:37:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28F0A3A2ACB
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 17:37:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63FDC190692;
	Mon, 13 Jan 2025 17:37:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FumxbJgQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F625240232
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 17:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736789865; cv=none; b=bwlGfc/omkApbKVUkHvFUMiKoMyVzpyiGwph8cnB63jrUtSZzxMQ1N2Xo2nvGunzncWEe1oF8jtL+u0Ief1dvoEyoTEw6sLPtYKjKx6t/dsaNY9gU2t24QAyXzVGkwmLq9+vx6yrQUjAqMSgqOg/hWg+gu6ndrGDpyfvBemZYak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736789865; c=relaxed/simple;
	bh=nfIml/GWxEsZm0NpaVbjbKNfBZtmD00u78N6+zE2OWk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RtvV5HB1p+O8B7K7lfnbBXUVlWAI33eFc7D+/1G4Q9bo6ajZpukuziWoQzf86GvC6Bus+43IC6vttHr2+bPxr3lJZrjNEoicFzgT4oQbdt0E8fw7Hw3QpHusXjs+qm0WDJtgwFveUNB5s8gr3zP9SoYxCBi6WUE5N6Fl3R31+1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FumxbJgQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20DABC4CEEE;
	Mon, 13 Jan 2025 17:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736789864;
	bh=nfIml/GWxEsZm0NpaVbjbKNfBZtmD00u78N6+zE2OWk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FumxbJgQ71kYmQkug7xA2BOvkp9Uq19JqUckCrQngg8pIz7gfiQ8tHxNC8jN3Mmsa
	 03YDC69Plg4fxc21wEzIkGOWPT9cSOmYc5HSxafS/s15bBKOa5VR8U7YKaNVl2ZSMI
	 PNKK/fmoEO9pq1X4RHTD4aIeZW/8HN5rP7WQjnTN+d1ABvEu05PHkykdWUtqYlVfm4
	 Qe3R/n40ETrlSw6bj5zcJNBE1vQrPzmP+R/yiepJiKa/LZ9VMIoNmkm6EiTEzB+uTT
	 aN2RIq2XsmBRCoqxIAogTmLncrnSUuX4GuFigGNj77gFzbJ3MZoOKaUuDgYwakmax9
	 eMakHZ9M5EXYQ==
Date: Mon, 13 Jan 2025 17:37:39 +0000
From: Conor Dooley <conor@kernel.org>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@outlook.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH RFC] arm64: dts: sophgo: Add initial SG2000 SoC device
 tree
Message-ID: <20250113-aftermost-whole-18401dc54137@spud>
References: <19bb108e93bb58eecc6a53d78ff4e75fc380f072.camel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="z1X8w3KbdPQChHSz"
Content-Disposition: inline
In-Reply-To: <19bb108e93bb58eecc6a53d78ff4e75fc380f072.camel@gmail.com>


--z1X8w3KbdPQChHSz
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 12, 2025 at 01:55:05AM +0100, Alexander Sverdlin wrote:
> Add initial device tree for the SG2000 SoC by SOPHGO (from ARM64 PoV).
>=20
> ---
> Dear ARM, RISCV, DT maintainers, I'd like to ask your opinion on the
> below patch, which I plan as a base for ARM64 BSP for dual-arch (RISCV or
> ARM64) Cvitek SoC SG2000. The main motivation for ARM64 support is the
> ARCH support in the upstream gcc, which is not that mature for RISCV.
>=20
> I believe it's the first time we already have quite some base in the
> tree for a SoC, so it would be advantageous to re-use it and not
> duplicate the same SoC structures in two places, especially having
> in mind that Cvitek/Sophgo are still working on upstreaming and by
> far not all HW blocks are populated in the SoC DTs. They focus primarely
> on RISCV, so ARM64 would be dragging behind in this case if it would be
> forked.
>=20
> On the other hand, including SoC dtsi from RISCV into ARM64 poses
> some technical challenges by itself, obviously CPU cores have to be
> deleted, same is true for interrupt controller. And the interrupt
> numbers are of course difference for ARM GIC, so they have to be
> overwritten.
>=20
> Alternatively I can split existing .dtsi included below into their
> RISCV-specific and generic parts, so that both ARM64 and RISCV would
> include generic part and their corresponding ARCH-specific parts
> bringing CPU cores + interrupt controller + IRQ numbers for each and
> every device separately.
>=20
> The below example isactually booting (being included into board-level
> DT), so it's a real example I'd be ready to submit if there will be
> no objections of the cross-ARCH include approach in general.
>=20
> What are your thoughts?
>=20
> =A0arch/arm64/boot/dts/sophgo/sg2000.dtsi | 164 +++++++++++++++++++++++++
> =A01 file changed, 164 insertions(+)
> =A0create mode 100644 arch/arm64/boot/dts/sophgo/sg2000.dtsi
>=20
> diff --git a/arch/arm64/boot/dts/sophgo/sg2000.dtsi b/arch/arm64/boot/dts=
/sophgo/sg2000.dtsi
> new file mode 100644
> index 000000000000..96afd342bde5
> --- /dev/null
> +++ b/arch/arm64/boot/dts/sophgo/sg2000.dtsi
> @@ -0,0 +1,164 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include "../../../../riscv/boot/dts/sophgo/cv18xx.dtsi"
> +#include "../../../../riscv/boot/dts/sophgo/cv181x.dtsi"

FWIW, this can just be #include <riscv/sophgo/<whatever>, /should/ be a
symlink for that, as there is for arm64. At the very least, I did see a
patch adding that link in the past. Check out what the RZ/Five is doing
(that's the riscv renesas chip) for an example of how this already has
been done - I think it's doing what your "Alternatively I can..."
paragraph describes.

--z1X8w3KbdPQChHSz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ4VPYwAKCRB4tDGHoIJi
0tPdAP92+UcHJCss0o1ICZL++iZWw/z31s3IyurwEC7rC33EMQEA4xiVuLT7bFTc
b7Xyw1nOCCorNKX2WrA3s8zMRWo1LA4=
=34ET
-----END PGP SIGNATURE-----

--z1X8w3KbdPQChHSz--

