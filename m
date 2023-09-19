Return-Path: <devicetree+bounces-1308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A17167A5D49
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 11:04:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B1D091C210C4
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 09:04:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D892E3D385;
	Tue, 19 Sep 2023 09:04:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D091D30F96
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 09:04:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE739C433C8;
	Tue, 19 Sep 2023 09:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695114250;
	bh=0HoaoIryoMNBjclA4E9p8j1l8zhUoytllUXAdhNwV5M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b/l9gCQ0T8EvqzJqFrQ5of1NAyiceRmdIutxOzP5nFXj3+C2NovgXilDrksFhbwvr
	 O2trT4x5qScyykTeTddgKkJ2NlqZDVkjd4SgU/cCUlaqymPUgEUXTPUFeKvGo8lScP
	 GZhlgg0D2BhDqV/cJGjDZ57+o1v4sJPpkJzlTD6KFHl2Kfor2bSkNVksRaj0EyRNbe
	 DMS8CrGEZx1spG8Biu/A6bqshM5iuBDdWbOcp6xHWhWRKbCSO+vcn7DRXbGaa/XVxi
	 I2qgLNA3dlYfDkC8y/XoLajqwQBijGz6LRnyVp9+yljnrCyDegNBSYRkf9ASlkdT9h
	 imjCEN7Pb+nzA==
Date: Tue, 19 Sep 2023 10:04:04 +0100
From: Conor Dooley <conor@kernel.org>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Stefan Agner <stefan@agner.ch>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v3 4/6] gpio: vf610: add i.MX8ULP of_device_id entry
Message-ID: <20230919-501837c1104366ba793b0c62@fedora>
References: <20230918-vf610-gpio-v3-0-ada82a17adc5@nxp.com>
 <20230918-vf610-gpio-v3-4-ada82a17adc5@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5zdzlSUyqQ668/XK"
Content-Disposition: inline
In-Reply-To: <20230918-vf610-gpio-v3-4-ada82a17adc5@nxp.com>


--5zdzlSUyqQ668/XK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 18, 2023 at 04:16:08PM +0800, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
>=20
> i.MX8ULP GPIO supports similar feature as i.MX7ULP GPIO, but i.MX8ULP is
> not compatible with i.MX7ULP per binding doc. i.MX8ULP only has one
> register base, not two base.

"per binding doc" is a poor justification IMO, as you literally just
changed it earlier in this series. I think the commit message here
should re-explain the problem so that the rationale here is clear in
isolation.

> Add a new of_device_id entry for i.MX8ULP. But to make the driver could
> also support old bindings, check the compatible string first, before
> check the device data.

Sweet, seems like you have addressed the backwards compatibility stuff
for the old binding :)

Thanks,
Conor.

--5zdzlSUyqQ668/XK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQlkAQAKCRB4tDGHoIJi
0rb8AP993AO2r6CSvVZx8F5s5DBodTKq3cEDVHeH6mdCJSOgpwD/Xiq7LXIzgBfZ
6S8r4rMkPZAmZwZvNhTjZVidIH6ZYwg=
=PSDM
-----END PGP SIGNATURE-----

--5zdzlSUyqQ668/XK--

