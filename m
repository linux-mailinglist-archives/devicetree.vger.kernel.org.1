Return-Path: <devicetree+bounces-6676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F1E7BC6B0
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 12:17:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB9BA1C2082E
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 10:17:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2FCF1803B;
	Sat,  7 Oct 2023 10:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUzeeSgA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4814182D8
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 10:17:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4FEFCC433C7;
	Sat,  7 Oct 2023 10:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696673870;
	bh=5SvARg1tVUAbuCBSDivmH2UxOz0qfHxw6Fo68f/xKHw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FUzeeSgAsBBQiI9I8zffvJjRySGtVNaYobZANkHpk2IN+DoPtz4Rx9/kyo3hLvp2O
	 yQgQ68Iuts5KhkezXy0NZKOPB5bpnkzIh3OdVg9VLqRkAW+dFsuv8tNp0p4YPnmJPy
	 9TzIERm9vTWsuQUxtW61Zc+Fpu5wDJ1oDfU7PqJbvotPtUjODTovCapXF9lHffwJ+A
	 9VZCWndAlxmS+PLOVa9DzZcPp5FMEdbG2j9V61GFd9DmINOXTojKpxceRCD4qtjpTl
	 7PLwRElTlzyXeIfZLqe7A1W0xH41h5+mcL5XHGPG4wE/eppZpRwQFwVs/XBgFuiiAq
	 bPGclCyXEye3w==
Date: Sat, 7 Oct 2023 11:17:44 +0100
From: Conor Dooley <conor@kernel.org>
To: Chen Wang <unicornxw@gmail.com>
Cc: aou@eecs.berkeley.edu, chao.wei@sophgo.com, devicetree@vger.kernel.org,
	guoren@kernel.org, jszhang@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, palmer@dabbelt.com,
	paul.walmsley@sifive.com, robh+dt@kernel.org,
	xiaoguang.xing@sophgo.com, apatel@ventanamicro.com,
	Chen Wang <unicorn_wang@outlook.com>
Subject: Re: [PATCH v5 00/10] Add Milk-V Pioneer RISC-V board support
Message-ID: <20231007-grasp-retake-0463858c13df@spud>
References: <cover.1696663037.git.unicorn_wang@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="iKyvg3rJU1jsPJ54"
Content-Disposition: inline
In-Reply-To: <cover.1696663037.git.unicorn_wang@outlook.com>


--iKyvg3rJU1jsPJ54
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 07, 2023 at 03:52:04PM +0800, Chen Wang wrote:
> From: Chen Wang <unicorn_wang@outlook.com>
>=20
> Milk-V Pioneer [1] is a developer motherboard based on SOPHON SG2042 [2]
> in a standard mATX form factor. Add minimal device
> tree files for the SG2042 SOC and the Milk-V Pioneer board.
>=20
> Now only support basic uart drivers to boot up into a basic console.
>=20
> Thanks,
> Chen
>=20
> ---
>=20
> Changes in v5:
>   The patch series is based on v6.6-rc1. You can simply review or test
>   the patches at the link [7].
>   - dts: changed plic to support external interrupt
>   - pickup improvements from Conor, details refer to [8].

Did you? I only see them partially picked up. I'll just replace patch 8
with the patch 8 from this series I think.

--iKyvg3rJU1jsPJ54
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSEwSAAKCRB4tDGHoIJi
0l2tAQDJTgaBOCPvFiUINFvZMw8wD2MOLJqkt3HmEO9xOGScTAD+ORVuErM4SNOR
n3mMxcJKA/v1jqqvOzsexEgno/chAgc=
=b+S6
-----END PGP SIGNATURE-----

--iKyvg3rJU1jsPJ54--

