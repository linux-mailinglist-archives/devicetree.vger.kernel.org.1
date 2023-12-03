Return-Path: <devicetree+bounces-21081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD9380237B
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 12:51:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 66C691C208FA
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 11:51:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A09852F38;
	Sun,  3 Dec 2023 11:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZBv5tVL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 815F1C2EE
	for <devicetree@vger.kernel.org>; Sun,  3 Dec 2023 11:51:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5714C433CD;
	Sun,  3 Dec 2023 11:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701604298;
	bh=j+MWyvG7dYrNIh8G6k9NK5UM+dH6jsdU5B4UsxoT+ew=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lZBv5tVLF2NI8QfgBY/8Ji3ma0UtpBOAg4ZA0uEFcL8QLOHa6Vj3kH2Wz0SpY2P+Q
	 JY/emv7qYlZbHwn0xIDwBObeEF1jos2kj8dM3or2URoeh+07CQD2lya7bZrzIDu72W
	 HQUoQtCDK1g1880UKXKabHh6v2u1dS68efrHT3s2OWuEe8eL67uAiGpg/2YrbsZG7c
	 1bHbDSrY0Xu/IA36Y1MMH7mVCpfSxR/a410cHV+fsK08eWTvbReMdXuYJBw5TyOE8A
	 B7+m+/hpKcq+tCtWTTboUkLg6stP7KBkMOLz5yBqz1kVbI4VwuavmOphozufGN1gmd
	 61v8Xby1WsQkQ==
Date: Sun, 3 Dec 2023 11:51:32 +0000
From: Conor Dooley <conor@kernel.org>
To: Chen Wang <unicorn_wang@outlook.com>
Cc: Inochi Amaoto <inochiama@outlook.com>, Chao Wei <chao.wei@sophgo.com>,
	Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Anup Patel <anup@brainfault.org>,
	Conor Dooley <conor.dooley@microchip.com>,
	Jisheng Zhang <jszhang@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v4 0/7] Add Huashan Pi board support
Message-ID: <20231203-parabola-deploy-105940119261@spud>
References: <20231201-strung-mandarin-110a322468c9@wendy>
 <IA1PR20MB49539E82E5C0B5CBFD889F39BB81A@IA1PR20MB4953.namprd20.prod.outlook.com>
 <20231201-nutshell-uptake-48161193c6e7@spud>
 <MA0P287MB033290A6C8B15202E31E43CCFE80A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="FS9zK2k9fGsYJ11f"
Content-Disposition: inline
In-Reply-To: <MA0P287MB033290A6C8B15202E31E43CCFE80A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>


--FS9zK2k9fGsYJ11f
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 02, 2023 at 09:11:38AM +0800, Chen Wang wrote:
> As far as I know, sophgo's SoC product names all start with "sg", while
> products starting with "cv" come from CVITEK (another chip company). CVIT=
EK
> was acquired by sophgo a year ago, so now many SOC product names that
> originally started with "cv" are being repackaged and changed to start wi=
th
> "sg".
>=20
> For the cv1800b adopted by Duo, Sophgo has made it clear that it will not
> change its codename.
>=20
> But I heard that for other products, such as the cv1812h used by Huashanp=
i,
> sophgo may change their names in the future, but sophgo has not officially
> confirmed it yet. Looks like sophgo themselves are still in the process of
> digesting cv's products, ;)
>=20
> Since we have just started to support cv1812h and have not done much work
> yet, I suggest not to merge this patch into the mainline, and wait until
> there is clear news before doing this to avoid introducing unnecessary
> modifications later.

If there are people who have the boards, I'd be inclined to make the
mainline kernel usable for them. Doing some renames or adding
compatibles down the road, if the SoC is actually rebranded, is not a big
deal. I'll leave it up to you guys as to what to do - it's only -rc4
today, so there's no impending doom.

Cheers,
Conor.

--FS9zK2k9fGsYJ11f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZWxrxAAKCRB4tDGHoIJi
0t0zAP49o75PXGwjkXR55YAqI5SOHIrBtYKQz46TH7DfrJMqaQD/UUMH5SNrat4p
8sFmOMNmT3Ueh4ph6xACjsgSGLQQRQI=
=irXv
-----END PGP SIGNATURE-----

--FS9zK2k9fGsYJ11f--

