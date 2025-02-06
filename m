Return-Path: <devicetree+bounces-143522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 90024A2A489
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 10:34:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 255CD165ED2
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 09:34:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 888A0226193;
	Thu,  6 Feb 2025 09:30:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7B7B17A586
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 09:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738834248; cv=none; b=C/lC59aVy+ILZdE1sgELRZL3ZX/+VjLXMFJ29XRaYKNHBqQzMXR31trXmNAREcOJ15wyzco9iA5g73bdw2KxqodsB2V94BztE04OkftfJiTNWi10xFREDc9xFkAzOf+NEIgtqyDECMs62J7gjI5Uw19yGzcso0o8ny9W2i19VKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738834248; c=relaxed/simple;
	bh=Y18W78DDacVBLpk7PrrIOqLKZ+MXb+MEFrYJWPkLRho=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dJm31o57mvQk5p+fFTYW2vQf5ABzjHuD0ydNoOj6+qlI8z0zrbCifYZelciSBn0/lRvLVtLsmGow8s5Pr8OYbBrxfMQU4J8Kx5FcDTxFUROxEemJSbhFuuJnPonsoAGH79eA8a2B+aLtdNTnP9BrzuCZAFPhqqTMGmwwzslU1gA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1tfyDJ-0005ui-3U; Thu, 06 Feb 2025 10:30:25 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1tfyDF-003mWx-2b;
	Thu, 06 Feb 2025 10:30:21 +0100
Received: from pengutronix.de (pd9e59fec.dip0.t-ipconnect.de [217.229.159.236])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 6474B3BB259;
	Thu, 06 Feb 2025 09:30:21 +0000 (UTC)
Date: Thu, 6 Feb 2025 10:30:20 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Charles Han <hanchunchao@inspur.com>
Cc: manivannan.sadhasivam@linaro.org, thomas.kopp@microchip.com, 
	mailhol.vincent@wanadoo.fr, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	cem@kernel.org, djwong@kernel.org, corbet@lwn.net, linux-can@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-xfs@vger.kernel.org, 
	linux-doc@vger.kernel.org
Subject: Re: [PATCH] Documentation: Remove repeated word in docs
Message-ID: <20250206-quirky-malachite-mamba-598802-mkl@pengutronix.de>
References: <20250206091530.4826-1-hanchunchao@inspur.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hm4ctlzjszhq6mov"
Content-Disposition: inline
In-Reply-To: <20250206091530.4826-1-hanchunchao@inspur.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--hm4ctlzjszhq6mov
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] Documentation: Remove repeated word in docs
MIME-Version: 1.0

On 06.02.2025 17:15:29, Charles Han wrote:
> Remove the repeated word "to" docs.
>=20
> Signed-off-by: Charles Han <hanchunchao@inspur.com>

Feel free to take the patch.

Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--hm4ctlzjszhq6mov
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmekgSoACgkQDHRl3/mQ
kZxdTAf5AdW1/IcCxxcCFzVXksRmp7Q0bHOPaSlom8ycnTbaN6nNbYeqeXv3mGMg
5oBVg1sY2aWUW7r3V28h4HzCA9T+G7j2v2Mfv6whc3wTVCUIlTMbVqB+qL6ot0wM
5p1JnlRrqjzdC5ufv1lgpbtYM7/BzHGq1ae6t5R6Ddye4F582kzTW+FmVQ/pgscg
TpwH0NX1OTft3WvbXYzd50r/ycrhcG3buoY4/c28q08w1kgs2YDin8Nr/kn2r29G
hd/lh4XOIG8JSmNojd1trXc+SWE9e271AO//+wFp2PUQXuF3FltKFn9o8Yf83nVE
kqUDEwktUZjxMRDxtv54braGka5XSg==
=WoBM
-----END PGP SIGNATURE-----

--hm4ctlzjszhq6mov--

