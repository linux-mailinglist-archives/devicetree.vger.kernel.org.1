Return-Path: <devicetree+bounces-5869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9CC7B8378
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 17:24:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 97BE92814D0
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 15:24:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C366C18E3E;
	Wed,  4 Oct 2023 15:24:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF7A818E21
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 15:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58834C433C8;
	Wed,  4 Oct 2023 15:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696433048;
	bh=XYBsuHW907+37LNlNvc8QulBglPUKmO3oxD+nsjr5xo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MVyNmValrtZe2Vc5YkvlCJf3e/WsBXJIjJNaiq3p39iwrpyDc8rnK/wZeQrYaH+4E
	 cA7S/cWXbCwZxg1kjoTZabtM9V4Ul+VBXwhRj6WiMwi1DZCuHbxxdWTyWIvKQe/pQC
	 toV/Dc1KJ9OEHrgKUO0wzXynQVH2NPW3qGasA7Qrz2cuhvN67+6U6rYoxzSXxq7OWX
	 Qk0IA4yxY/n3Xj3+8R4KdjcQ/5Ra21OnrUINtnjmkn0wRqjlAfff1NS4303z6U87F3
	 m2my0HxK3jO4n44l5pMcPJ/5SFaIdyUQ2BiPUBG8HOOraf8K0BH4dNCazNNeQmkAVM
	 BoNla2fpPufDA==
Date: Wed, 4 Oct 2023 16:24:03 +0100
From: Conor Dooley <conor@kernel.org>
To: Chen Wang <unicornxw@gmail.com>
Cc: aou@eecs.berkeley.edu, chao.wei@sophgo.com, devicetree@vger.kernel.org,
	guoren@kernel.org, jszhang@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, palmer@dabbelt.com,
	paul.walmsley@sifive.com, robh+dt@kernel.org,
	xiaoguang.xing@sophgo.com, apatel@ventanamicro.com,
	Chen Wang <unicorn_wang@outlook.com>
Subject: Re: [PATCH v4 00/10] Add Milk-V Pioneer RISC-V board support
Message-ID: <20231004-rival-wow-1412dca8c490@spud>
References: <cover.1696426805.git.unicorn_wang@outlook.com>
 <CAHAQgRChywKWKX2=Cyn4VBrZKfy6pY2meHtVqRyBcfRUm7mHYQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="TloKwboP8KmYAarL"
Content-Disposition: inline
In-Reply-To: <CAHAQgRChywKWKX2=Cyn4VBrZKfy6pY2meHtVqRyBcfRUm7mHYQ@mail.gmail.com>


--TloKwboP8KmYAarL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 04, 2023 at 11:14:54PM +0800, Chen Wang wrote:
> Sorry, please ignore this email, it was sent out by mistake.

What are you doing that this has happened twice today?
Don't you just do `git send-email /path/to/directory/containing/patches`?

--TloKwboP8KmYAarL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZR2DjwAKCRB4tDGHoIJi
0id8AP9VBtdP8SAWk9a9uS9dCCZf5WNu7DZEO6o2UQpneBc0kgEAyElB94W41QsD
/UAb3Z04CCd3me0nZbIjiWhgnLjDEgM=
=nahl
-----END PGP SIGNATURE-----

--TloKwboP8KmYAarL--

