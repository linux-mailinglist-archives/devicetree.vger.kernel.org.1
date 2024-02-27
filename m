Return-Path: <devicetree+bounces-46411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 746008694C6
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 14:56:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 266D7281F85
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 13:56:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D438141995;
	Tue, 27 Feb 2024 13:56:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8A2113AA2F
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 13:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709042166; cv=none; b=FvYOmydPInZd8ryHmufTCmKU6gbSzbJW2DPD1ZMDXzlbY0lWeVnc+aas1tBJ8XivXuT1efvBlHkHs/bMhU85ofyFUGfoaEbn0PGjS72GVXgB1E/WgBlZ5kU2b4FHHFVl1QYACr8iSNofhle0dWttNpEAwV5qo1D/uAWoL2LzKhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709042166; c=relaxed/simple;
	bh=K+T2NbvBbwwtBX5T4/ttN3sSijOhAUhFkTbdk6QTf6w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dp5jddKzmC4kLyhIJIrwSoDHZ1qnodGRHSDiaa+SV++AxUNKbiIQ/EdSGsyqAs7g0n0X/GZht4AtGljDdwCYbHJY3F61y0VXJxcjhQP3snbowEXt/0I63SgRGzKSrrgRmWRVsOe+dtspYdWnTS8781a+rxXNXyjqNPABf+ykpy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rexw6-0007Sa-Qs; Tue, 27 Feb 2024 14:55:58 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rexw6-003DBt-5D; Tue, 27 Feb 2024 14:55:58 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rexw6-00CUO7-0D;
	Tue, 27 Feb 2024 14:55:58 +0100
Date: Tue, 27 Feb 2024 14:55:57 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Rob Herring <robh@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/2] arm64: Add basic support for QNAP TS-433
Message-ID: <2ifrk72uv2j27eukuxeekeuluzf4bu5335qk73gaaykg7tcq4d@uhkutnknqqd2>
References: <cover.1709034476.git.ukleinek@debian.org>
 <170904127405.3703837.16422930909447111254.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iesqjog43iq3vvyl"
Content-Disposition: inline
In-Reply-To: <170904127405.3703837.16422930909447111254.robh@kernel.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--iesqjog43iq3vvyl
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Rob,

On Tue, Feb 27, 2024 at 07:45:06AM -0600, Rob Herring wrote:
> New warnings running 'make CHECK_DTBS=3Dy rockchip/rk3568-qnap-ts433.dtb'=
 for cover.1709034476.git.ukleinek@debian.org:
>=20
> arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dtb: video-codec@fdea0400:=
 'interrupt-names' is a required property
> 	from schema $id: http://devicetree.org/schemas/media/rockchip-vpu.yaml#
> arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dtb: i2s@fe420000: reset-n=
ames:0: 'm' is not one of ['tx-m', 'rx-m']
> 	from schema $id: http://devicetree.org/schemas/sound/rockchip,i2s-tdm.ya=
ml#

Yes, I saw these, too. But given that the added dts doesn't touch these
two nodes, I thought this to be a problem of rk3568.dtsi that I can
ignore for this series.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--iesqjog43iq3vvyl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmXd6e0ACgkQj4D7WH0S
/k6skAf/dRZ20y6F1oQUou8Fu3bZZuCmLbZMoyvVb0SWNLJnVdwJWpAmv3LlO/Eo
KC2WS0L7PP0szwrhVa06ihiVlZ26d6AaKoLz0+98H3ZozTBqcauZY43RItjzpb6T
34wV14+1BpoadHtM536egD0FbHDcMANX9Yvt4uJ72VwAXNEFKElzzrhzmm0v0Cni
QHNtZL5NN6x3wxHURvudfxp6emU7AuzhsQcpnylWk338czdTV3vvb7780cKclzWD
v3G+Ru5KSKWN+ycp3xVw10bpT2z6Va7gfps3Rx+UKyCHksVlDX3KzbU3yIAQENOX
lkxCRZyEuDhVkS6AI+ZFAMfr20DaFQ==
=HVJi
-----END PGP SIGNATURE-----

--iesqjog43iq3vvyl--

