Return-Path: <devicetree+bounces-3150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0B07AD7D6
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 14:18:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id D26CE1C20380
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 12:18:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E942D1B278;
	Mon, 25 Sep 2023 12:18:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D74B2134DF
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 12:18:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF963C433C8;
	Mon, 25 Sep 2023 12:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695644319;
	bh=+JXbgHqUQ0aKUPdu2YpA/gNhZEobY1Ib1Js2eZ6C4y4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VSFJXhqMU2CPq714eb0uq2pEc9nv8j/cwX+sX0cQkJMfFGxsIUDvhY5cV5xmCjd/M
	 E1Hxf1DTQu5ojdO+6Wag6OTSsxYBgjPYjej15Hg5GhS4f+28eePgmg59pIKGs/1DHj
	 upDFAiWEv+IkeCUZczfxORA8SP1okbOUkEs63qVemIMTACFYGMrdRuFSM4CX5eBNG6
	 IuG3MXPG31SSkyJi6STlJMcc3lZZo/h6r1SmCr4xHEHAY51n6ljSYHevI4vqxMVU4m
	 EgebJXe+2nOqKz+eHk1JiT/RppNwmHnbVrMUVsStzmkQi4tFfD/2Mpoo5cUc8mYHXF
	 xZRyr7aR78lwA==
Date: Mon, 25 Sep 2023 14:18:33 +0200
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
Message-ID: <ZRF6mbpswWoxdJsl@finisterre.sirena.org.uk>
References: <20230919104357.3971512-1-wenst@chromium.org>
 <20230919104357.3971512-8-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="C03nZbIMQ4GsEMUt"
Content-Disposition: inline
In-Reply-To: <20230919104357.3971512-8-wenst@chromium.org>
X-Cookie: I had pancake makeup for brunch!


--C03nZbIMQ4GsEMUt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 19, 2023 at 06:43:50PM +0800, Chen-Yu Tsai wrote:
> The DT bindings for MT6358 regulator now defines the supply names for the
> PMIC.
>=20
> Add support for them by adding .supply_name field settings for each
> regulator.

This doesn't apply against current code, please check and resend (I was
using -rc3).

--C03nZbIMQ4GsEMUt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmURepIACgkQJNaLcl1U
h9CZBgf7BZ9QaFpLALkLChBSjjaoNvvXZz88PigXkOGFHH1EzKUeQg2iA35QMiZU
5+HHyO01EtSiVuAAB7Ih/f1QjLgnaRc5rooaBYYgO2oy8TO7CDIs+zi58f5Rj3gq
ifKFsw/u3yfhd28Cg55RLbKugC/VmCjRD8fPthvhpSH9d4uKCwSwca4m5k48dUQ6
RuHHUSIr1lEbrL3cpsPUg65EYV2TQYFDPSZjLnqfpXvfna+a+JOnmYzT4WNBvwzy
wx0pVsbA5L+9FFuTPWWZlAbPL1gqnxaCVx4jnfaraolAciq53by4g59tbg4mkNoH
MFOeJQpe9yDMJaFeC1cWs0L6IZU4IQ==
=q4Ky
-----END PGP SIGNATURE-----

--C03nZbIMQ4GsEMUt--

