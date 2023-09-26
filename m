Return-Path: <devicetree+bounces-3473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4FC7AEFB5
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 17:29:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 0594DB208CB
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 15:29:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1476530CF6;
	Tue, 26 Sep 2023 15:29:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03CF730CF4
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 15:29:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3546C433C9;
	Tue, 26 Sep 2023 15:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695742145;
	bh=u8b2IFsXG6BYbvL2ly6sSXnKfNqvQC9inEX2QHsDbe4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oGaM7mnw0ur3AJG9xiZ1MzLaAEStY0dsB5mNBhvWgaFOz7MthbVWOTieAzsU2ydUc
	 k7gzeRnasYmYUZmPTRS8UeHYOD01PDmSU9Ugm9lQzWTmVyi9QTh+hRLqC9ZvTgqPZW
	 8GNQ/SjZc/xM0ika5tsqKCaw4KchVjLKu9xYDqf/HBzYahj4fjTAqNkN37puY5DxSf
	 wUmWUrb4l6A1uuxeeBg3tP+ZzO5a7FLsycQg00P887JLw/rL7jTqlOJQ6zgbbBkrSs
	 5ZZ7ug7siDRpYApC93t74IS0mpojtMD2kYd+LIOn8XXTwBoG4sK1caDWQT1jwmSe6N
	 rWR2UjWKv7sqA==
Date: Tue, 26 Sep 2023 17:29:02 +0200
From: Mark Brown <broonie@kernel.org>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Zhiyong Tao <zhiyong.tao@mediatek.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v3 07/12] regulator: mt6358: Add supply names for MT6358
 regulators
Message-ID: <ZRL4vmNXFVWOFsjJ@finisterre.sirena.org.uk>
References: <20230919104357.3971512-1-wenst@chromium.org>
 <20230919104357.3971512-8-wenst@chromium.org>
 <ZRF6mbpswWoxdJsl@finisterre.sirena.org.uk>
 <CAGXv+5EeQupoWc880sCSOuGsdc24y6qPBaaypdV749oHi-XjSA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bXPyTeiLA27bUpcX"
Content-Disposition: inline
In-Reply-To: <CAGXv+5EeQupoWc880sCSOuGsdc24y6qPBaaypdV749oHi-XjSA@mail.gmail.com>
X-Cookie: Save energy:  Drive a smaller shell.


--bXPyTeiLA27bUpcX
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 26, 2023 at 11:58:43AM +0800, Chen-Yu Tsai wrote:
> On Mon, Sep 25, 2023 at 8:18=E2=80=AFPM Mark Brown <broonie@kernel.org> w=
rote:

> > This doesn't apply against current code, please check and resend (I was
> > using -rc3).

> Which parts were you planning to merge? I believe we're still blocked on
> the DT bindings. And I need to update the patches to fix a warning report=
ed
> by Rob's bot.

IIRC everything except the first and last patches.

--bXPyTeiLA27bUpcX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUS+L0ACgkQJNaLcl1U
h9BPSwf8CR4po77h7L5GG4DOj2NwAPFMRFpOYD+YH2EWI8ru2oAwCB5MgYZmBtKA
YdDRXNrB3uUshBzfRImfQ+oLUcvGZkXlvnuUXldXi/G0rDCyy3oAISwxhcswlzpP
m2hW6XazDuF8D3WVaYhL7hZpUukcoRv6vH3SKx5jQaZF0j+5rE9w9g0/YaOcRaTr
jj79JrzUASzSRk6TXVTNot+4eIKMQcHLZoIaB/MA2hJi8hICmfA/q0KHNNy9twe2
yLi2gCFpfFypJ6TM0MgRq+59HRTZ/W0+/hVQTIkAyZT5eeMhyw/7WrvhY+/Hbe5F
2UxlA8a9PLNpM0EDB+kItuXHoxj9Ag==
=yTkl
-----END PGP SIGNATURE-----

--bXPyTeiLA27bUpcX--

