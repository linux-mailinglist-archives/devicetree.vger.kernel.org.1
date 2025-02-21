Return-Path: <devicetree+bounces-149255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE4EA3EE08
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 09:11:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9553B17E244
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 08:11:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F60F1F9406;
	Fri, 21 Feb 2025 08:11:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE731D89E4
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 08:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740125501; cv=none; b=W7gaGT5ChsrzFj2qcvJfXEFQm3avfx+RzQTRRQ9bjZShEDKtzXZbsszSFEE6jxpfm3rtgngm6Vq57xZXn5dvyFoeF0O2fi7OxlZbHQTGgj9Kn3d1AKBEQA8FauuaCYvxaQYAgOu69zPTKSJ43n6XRfC//bX3WhZQc8F3qskQ/6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740125501; c=relaxed/simple;
	bh=WsD0bE8zHwBw2Ief2jaburMH+zxntZbbKKUDyA9s6U0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WFPfbzOe0U3p05qB87qr/HpXJ8ycD/1a5Uszs9cephQBeU4K82y0bJzO//M643Kjnl7PutDSxgvQVQsMH+hm6Kki752AtNXdeWGBywqDcrt6SJgtgmZRQc13YI9FQEP03CL1AbQ19xWSznwEm1lUwU8OjtqTwHtx4q6aH7sl7jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1tlO8C-0008CR-KX; Fri, 21 Feb 2025 09:11:32 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1tlO8B-0024Om-2a;
	Fri, 21 Feb 2025 09:11:31 +0100
Received: from pengutronix.de (p5b164285.dip0.t-ipconnect.de [91.22.66.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 771CB3C831F;
	Fri, 21 Feb 2025 08:11:31 +0000 (UTC)
Date: Fri, 21 Feb 2025 09:11:31 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Dimitri Fedrau via B4 Relay <devnull+dimitri.fedrau.liebherr.com@kernel.org>
Cc: Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Dimitri Fedrau <dimitri.fedrau@liebherr.com>, 
	Dimitri Fedrau <dima.fedrau@gmail.com>
Subject: Re: [PATCH v3 0/2] can: flexcan: add transceiver capabilities
Message-ID: <20250221-industrious-chamois-of-promotion-980ecd-mkl@pengutronix.de>
References: <20250221-flexcan-add-transceiver-caps-v3-0-a947bde55a62@liebherr.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gs72lukjhvbmuanp"
Content-Disposition: inline
In-Reply-To: <20250221-flexcan-add-transceiver-caps-v3-0-a947bde55a62@liebherr.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--gs72lukjhvbmuanp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 0/2] can: flexcan: add transceiver capabilities
MIME-Version: 1.0

On 21.02.2025 08:40:03, Dimitri Fedrau via B4 Relay wrote:
> Currently the flexcan driver does only support adding PHYs by using the
> "old" regulator bindings. Add support for CAN transceivers as a PHY. Add
> the capability to ensure that the PHY is in operational state when the li=
nk
> is set to an "up" state.
>=20
> Signed-off-by: Dimitri Fedrau <dimitri.fedrau@liebherr.com>

Looks good to me! Now we need an Ack for the DT binding changes.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--gs72lukjhvbmuanp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAme4NTAACgkQDHRl3/mQ
kZzquwf9G3DksJ7fQGrMTolFPT1AgFo6aXUI3kfJuhJhP+XLr9x+2HkAfrNWOAef
ITYmplQXkWBlb7nSOeUCsWiSk9Wh0gVwtgSSFCZtDTC7O6Hk20ysFys6TWOjDZAZ
CeXgBLKZzZ+//kVEwyyLvDg/0lAlj2J2uRhW6M9tT+4GNvLGT1i0LlLCOUpnlk5u
7+AvqUkWWCwYuqjNCtao9isP2lRhJEV5Gv4SfJX/doNoIt1vwV3JQFTCqAZQgxfr
fvUHwn0oc8iY68ecaf30Q2m+X3wtHLdsS/qVG8bIKxNf4T40TfAXuJ0NB6o1WcYJ
acdwYBeMUugv7YfB12cRdsRjV8Axrg==
=mKfl
-----END PGP SIGNATURE-----

--gs72lukjhvbmuanp--

