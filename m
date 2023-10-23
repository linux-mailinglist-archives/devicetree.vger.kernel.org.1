Return-Path: <devicetree+bounces-10974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAC87D3A81
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 17:16:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF8441C20935
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 15:16:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 266581BDC9;
	Mon, 23 Oct 2023 15:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="Wtbaw2MD"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ADEE1848
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 15:16:06 +0000 (UTC)
Received: from mail.zeus03.de (www.zeus03.de [194.117.254.33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE7A6E8
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 08:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=HXRh
	jnj1YmIkZ+SFrFRAznDVJ0PUHi8jsXuUVzJnxJI=; b=Wtbaw2MDmqkrdIGs043h
	WCjWvhmk2spZEFlMTyt3KEgFnIMo2paSQoTOoQkA2RM4JDiNJBr1Mhe1G6M0399T
	jYh/+iJZIe/Mm3Uch8/iByXYVPwq1D7sDHp9UeJxru1os2Mw8vvSD/XhINsad8nw
	A7qAoK078Rj7q2KsCB+CeOk52xVMqh9xWX6QgiHtozErfjI22MZTUgTE1IylN2wu
	cSdGSN+OY9rpuGo0avB6LZnt8qxd7OuMYIMVpifPaqfB34E0R0MSJ61vWoBbvGn0
	Oi30eM+uZTmERlxo265PLN4eXIe3L4ymHXOlQK9UBXbyjcLl325Q6iU9/a/8hAFf
	6A==
Received: (qmail 1983113 invoked from network); 23 Oct 2023 17:15:58 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 23 Oct 2023 17:15:58 +0200
X-UD-Smtp-Session: l3s3148p1@2IIFs2MIkr4ujnvq
Date: Mon, 23 Oct 2023 17:15:58 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] ARM: dts: renesas: rcar-gen2: Fix I2C bus demux node
 names
Message-ID: <ZTaOLoim4ohvDvLi@ninjato>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <cover.1698068646.git.geert+renesas@glider.be>
 <63e97cb50282b3255ba9654f539b9baa8c621b30.1698068647.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bOOalkfkB16Scjnz"
Content-Disposition: inline
In-Reply-To: <63e97cb50282b3255ba9654f539b9baa8c621b30.1698068647.git.geert+renesas@glider.be>


--bOOalkfkB16Scjnz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 23, 2023 at 03:52:15PM +0200, Geert Uytterhoeven wrote:
> make dtbs_check:
>=20
>     $nodename:0: 'i2c-10' does not match '^(i2c-?)?mux'
>=20
> Fix this by renaming all I2C bus demultiplexer node names to
> "i2c-mux<N>".
>=20
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Acked-by: Wolfram Sang <wsa+renesas@sang-engineering.com>


--bOOalkfkB16Scjnz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmU2ji4ACgkQFA3kzBSg
KbbjlRAAlYHzonp0PKCK9uNYCIDpqiRQLIYCNWyrFTi6aHz2nJV+YqdNcjuAZTFh
EtF0nOiwCJipKjbMkbqPmMHdhApeX1EA1KZ96qBkb+oQrZ35BPkUlL7DVUjrLtvF
7EdFB0PsUGQ8CTdWT9V1Vow8TUUht3LL0xA1Kc3v1ldxibry6XEo7viAH1eHxDSv
F4MsiFQB5Cwr8oqk0A+9ZfZ0mnMw4Ai5nTnuPldwUfu7aznnMD6kuClQ6iXXC9VR
JSrVwagSMQ42YlaiX5NMCF7MZy2g6l82v72OK8UkrVLrEqkyeE4V/zRXstz2XcyL
aTui5rAQMqRBKcHRRbo8Yw9YK2TnE7Jg4i2TiyxdnX59eCXdf3XnGFrhh4nK7C88
DMaY5wdnaBxt800EhZaDH5tFeP6gizUddMD637xff4eAdFi9tCvpCpjgSANA/cYh
gQ0GUAKEd55FxrXBSxrxtUGdGssjARcWW5bKdHlmLkBxe63B35CvO16ZxT3nWhSa
34SznLmG3w8yKmKQCHyzN+X8Xjs/JED1PDldIOzx5nJA1ga1zUvuSnRkQCv7K/v8
Z2Ov+GxjWJr6SFYIOeQ1cBhaoLFnUFi4bAbGW6KkY9LZa3vQqB19pji0c0BiaC4G
1DKA6k+3Kw8uKCXev2YkASg3U8IDIWp6RRCytlGu/gAURCa1DL0=
=Cta+
-----END PGP SIGNATURE-----

--bOOalkfkB16Scjnz--

