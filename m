Return-Path: <devicetree+bounces-20824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F21BD800F6A
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 17:11:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD604281D86
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 16:11:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E28CC4C60A;
	Fri,  1 Dec 2023 16:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPZYGYdx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 726E34C3C8
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 16:11:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E02FC43397;
	Fri,  1 Dec 2023 16:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701447092;
	bh=jRf4b5sq3QMU3+oPL9KR9b7Qo2nIgS11b+cRCI+8FZg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mPZYGYdxTQWcyIytDWTWB5LF6ebaaxz2r1aubp545Jlwv2J7mesf+vOXLS2cuvxqo
	 O3UBoS0CA0Or4dATNhWoqHvoz1KafKEKxUMuFXWkOGO7MvkFehA4XT68Iu6ucLx/K3
	 wWZaoU0i+5LmGbB2D76RKIxsG8rCQ5wZr6wE5SNaWQKM7l7u7bBEdhCtuDnj0347//
	 VzmJzIGguIekvZftYeVeilrCQ1JbpgQGZ2HQef4Z8Oiw31JbVYY/g4czshOkZMVJCp
	 flgHvVizrg975oOJfJUIpVqSFx3DKU8DPTfZTHCsTQWXGQlmHmVa4YLtrr6+29XEdz
	 R3upqjMZyiflg==
Date: Fri, 1 Dec 2023 16:11:27 +0000
From: Conor Dooley <conor@kernel.org>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
	Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 0/9] arm64: dts: mediatek: Add MT8186 Corsola
 Chromebooks
Message-ID: <20231201-esteemed-finch-84782fad14cc@spud>
References: <20231201070719.1229447-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="RfsLZDnPaa0m/Otx"
Content-Disposition: inline
In-Reply-To: <20231201070719.1229447-1-wenst@chromium.org>


--RfsLZDnPaa0m/Otx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 01, 2023 at 03:07:04PM +0800, Chen-Yu Tsai wrote:
> Hi everyone,
>=20
> This is v2 of the MT8186 Chromebook device tree series.
>=20
> Changes since v1:
> - Reorder SKU numbers in descending order.
> - Fixed pinconfig node names
> - Moved pinctrl-* properties after interrupts-*
> - Switched to interrupts-extended for external components
> - Marked ADSP as explicitly disabled, with a comment explaining that it
>   stalls the system
> - Renamed "touchpad" to "trackpad"
> - Dropped bogus "no-laneswap" property from it6505 node
> - Moved "realtek,jd-src" property to after all the regulator supplies
> - Switched to macros for MT6366 regulator "regulator-allowed-modes"
> - Renamed "vgpu" regulator name to allow coupling, with a comment
>   containing the name used in the design
> - Renamed "cr50" node name to "tpm"
> - Moved trackpad_pins reference up to i2c2; workaround for second source
>   component resource sharing.
> - Fix copyright year
> - Fixed touchscreen supply name
> - Mark missing components as disabled instead of deleting the node
> - Dropped reset-gpios from touchscreen nodes
> - Drop status =3D "okay", which is the default
>=20
>=20
> This series adds device trees for the various MT8186 Chromebooks that
> were initially released. These are the Tentacruel / Tentacool devices
> released by ASUS, and the Steelix / Rusty / Magneton devices released
> by Lenovo. The device trees are taken from the downstream ChromeOS v5.15
> kernel, ported to mainline and cleaned up.
>=20
> Corsola is the Google codename given to the MT8186 platform. This
> platform has two reference designs, Krabby and Kingler. Kingler was not
> used in any actual product, and is therefor not included. Steelix is
> an alternative design put forward and is effectively a mix-and-match of
> the two reference designs.
>=20
> Most of the core design is shared between the variants. The differences
> are on which external components, such as the display bridges, are used.
>=20
> Patch 1 cleans up the current list of MediaTek boards. The entries are
> reordered by SoC model first, then by board name.
>=20
> Patch 2 through 5 add DT binding entries for the Tentacruel/Tentacool,
> Steelix, Rusty, and Magneton Chromebooks.
>=20
> Patch 6 through 9 add board device tree files for these devices. Patch 6
> also adds the corsola dtsi file for the commonalities between the designs,
> as well as a dtsi file for the krabby reference design.
>=20
> Currently external display support is missing. Audio is not working, as
> enabling the audio DSP causes my test systems to hang.

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--RfsLZDnPaa0m/Otx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZWoFrwAKCRB4tDGHoIJi
0r+7AP9/1M++ZVkAg204HKeqqsE9wsncwLCYXX7Bx+uL1pXlAQEA7Uc5XHDttJoV
wdpfT6zxPe57C2wIW3XC3uHuB/kcvAI=
=OEBa
-----END PGP SIGNATURE-----

--RfsLZDnPaa0m/Otx--

