Return-Path: <devicetree+bounces-14149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1470A7E2668
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 15:13:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C3ECB28142E
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 14:13:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAC41286AD;
	Mon,  6 Nov 2023 14:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ED9ygq3q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC8B528694
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 14:13:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C102C433C7;
	Mon,  6 Nov 2023 14:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699280032;
	bh=Igyfnd7gKatDLsWMFivF+3reFZuVy396YDB1a4OV+Wg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ED9ygq3qarkzAUt293YaP55vmkcsDSfqmhINXXvojeAc7aqbwHwBedG5uLzGZ2who
	 Tyqk9dgh4e38h0qY/06PDVVFTNdo67xPusjN8076/xtDe0FSYK/dfifrqTiIwqK2gM
	 hepRtbKD4ECsApF8YG39efNvaIz2Hx3NCR/F8gomHGzpdIKHHxhQ/EDmM8+APWjOQn
	 fRbrAEf2bWXzO+qCbaZzo3cFbss8iu0Em6E2f2uGZd8yKj5q8xlyqHCiiMjujW2XXG
	 b41yiFOoJ43t3iiSo7xR8DC7SeOITlTEXwpyExQwjkoLiNHLSvZxvTJx6vF4KqpjUq
	 F0p8j/Kz2dhWg==
Received: from johan by xi.lan with local (Exim 4.96)
	(envelope-from <johan@kernel.org>)
	id 1r00NB-0000KT-2f;
	Mon, 06 Nov 2023 15:14:37 +0100
Date: Mon, 6 Nov 2023 15:14:37 +0100
From: Johan Hovold <johan@kernel.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] dt-bindings: gnss: u-blox: add "reset-gpios"
 binding
Message-ID: <ZUj0zWeadtdtCHGy@hovoldconsulting.com>
References: <20230921133202.5828-1-wsa+renesas@sang-engineering.com>
 <20230921133202.5828-3-wsa+renesas@sang-engineering.com>
 <ZS0-E_h4I_g7zVIm@hovoldconsulting.com>
 <ZTYYKVTYEa6roCci@ninjato>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5WuYEJnvvvo97xO2"
Content-Disposition: inline
In-Reply-To: <ZTYYKVTYEa6roCci@ninjato>


--5WuYEJnvvvo97xO2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 23, 2023 at 08:52:25AM +0200, Wolfram Sang wrote:
> > And what GNSS chip/module is this? This should also be included in the
> > commit message.
>=20
> Ok. UBlox Neo-M8.
>=20
> > Do you have a link to a datasheet?
>=20
> https://www.u-blox.com/sites/default/files/NEO-M8-FW3_DataSheet_UBX-15031=
086.pdf
>=20
> > None of the u-blox modules I've seen have a reset line so I'd like to
> > where this came from and how it is intended to be used.
>=20
> I didn't know that old modules did not have the reset pin. I thought
> they were simply not used, so far. This one has. Check pin8 in chapter
> 2.1 in the datasheet.

Indeed. I must have looked at the datasheet of the older neo-6, which
does not have a reset pin, before replying.

Johan

--5WuYEJnvvvo97xO2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQHbPq+cpGvN/peuzMLxc3C7H1lCAUCZUj0ygAKCRALxc3C7H1l
CPcKAQC0U4Up4W8lCsEWnKplr3kztUCxvmhvjq4JrmLEzdpqOwD/dZ5j62BAxT3S
cOb92huGBfWpuqvGNcqG5yObTdhg2gI=
=1QCH
-----END PGP SIGNATURE-----

--5WuYEJnvvvo97xO2--

