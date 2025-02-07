Return-Path: <devicetree+bounces-143901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0E5A2C0DB
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 11:45:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C83BA7A073B
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 10:43:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83FAC1DE2CD;
	Fri,  7 Feb 2025 10:44:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F70E197A76
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 10:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738925063; cv=none; b=UDnb2KGIvwnL6tdxM50Ghfqn0d+BgWoMw/GVuzrUPlr0c1x4XU5YyDjE4hzDmQxeOuGvsvSCJoj49ZlcTu+0lcYaFM8mfgVo0E+RJc1glaZT5sjihYv31suKK769efK1IKlG7MzBYxInUlOZKkPQYUJkE6gL+/t4KW2BHlEB8ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738925063; c=relaxed/simple;
	bh=lN4nrDYTRklXqmA7TsPRfUyGwSeYEUQrZUEulGtfDOo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QO72wvpSpFoYXPDT9LMXQExhvrEX9fvCzjCBB/3/Pb3mpfpxVDi/3oT6p3k9bkXG3o9CchlgHcF9ccP5J++mLMD+mTyFSQFlzUBdooPU5QharPztwqScOWfcx0AVdN83LD0CiAUE3fQx3iMWn682ln6XVMxTgt5hCwOO4qM3s+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1tgLq4-0003Ps-JG; Fri, 07 Feb 2025 11:44:00 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1tgLq0-003xey-2N;
	Fri, 07 Feb 2025 11:43:56 +0100
Received: from pengutronix.de (pd9e59fec.dip0.t-ipconnect.de [217.229.159.236])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 6E78C3BC0A1;
	Fri, 07 Feb 2025 10:43:56 +0000 (UTC)
Date: Fri, 7 Feb 2025 11:43:56 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Charles Han <hanchunchao@inspur.com>
Cc: manivannan.sadhasivam@linaro.org, thomas.kopp@microchip.com, 
	mailhol.vincent@wanadoo.fr, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	cem@kernel.org, djwong@kernel.org, corbet@lwn.net, linux-can@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-xfs@vger.kernel.org, 
	linux-doc@vger.kernel.org
Subject: Re: [v2] Documentation: Remove repeated word in docs
Message-ID: <20250207-spectacular-rapid-ostrich-491b96-mkl@pengutronix.de>
References: <20250207073433.23604-1-hanchunchao@inspur.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eakuq3ags2tfwyiu"
Content-Disposition: inline
In-Reply-To: <20250207073433.23604-1-hanchunchao@inspur.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--eakuq3ags2tfwyiu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [v2] Documentation: Remove repeated word in docs
MIME-Version: 1.0

On 07.02.2025 15:34:29, Charles Han wrote:
> Remove the repeated word "to" docs.
>=20
> Signed-off-by: Charles Han <hanchunchao@inspur.com>

Feel free to mainline the patch.

Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--eakuq3ags2tfwyiu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmel4+kACgkQDHRl3/mQ
kZzsswgArOJDaeMFtimp9FAJi4u7f1yqSNH2V3N70daGwc7m14oMljUaHbxbchjI
kIWLJ3OBVjfIflan5CAdWm44bygePzPEBHrxsHN4E/SpXLt5lut4ODJrLNE0Rm8J
4ijBusrMJzc4GzJGBFBLgXLG1Jft7ow6uNgs/7rjJqsCYs851lOa57ryozzu2uOr
K1HQkSyJrHz4GTQfag0CKoSWdzB2S9M3a+cv27OO13/uxQzx+vHo7ykxKvv3Qneq
aVZGQEe80nD/2iHjG3bcZI+cnXIcELH4aIE9g+bXRVnCTFYvMm/U9GBWkAgCELtt
dY4oPH79wLk4pUbmgSOOh9TymIUV0w==
=O1sQ
-----END PGP SIGNATURE-----

--eakuq3ags2tfwyiu--

