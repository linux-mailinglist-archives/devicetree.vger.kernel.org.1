Return-Path: <devicetree+bounces-36227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 961948403DD
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 12:31:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 553BC1F20F46
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 11:31:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B86A65B5C9;
	Mon, 29 Jan 2024 11:31:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468C55BAD2
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 11:31:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706527910; cv=none; b=pMfJNMZjy1sLS8KqbC7909trEa+3WfK8gbUdS40E68G2gbSlVCWwp+U/A5g/oMQuSclghfxR7vduCjIXQKsAVPy9/LYdLriOVN68W4N4eijUicLmT/JLcMcESDkFK1hPLocH2gNOdQqpG8zBhMO7kGkLRn3OhpiWMEHu4I3YMds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706527910; c=relaxed/simple;
	bh=iN1H7UtyxvMtsdhekdL52VXiMFzdyDopLFCq+wKEAAM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tGrlWFRfHg2nn9E6iRUHcaVdbh/YQXMey7m/zMQtvN2qHlKG1+ru8kIUIKjGw58RSxONgEcQX5W4B5lI2nANschiHRUydGRQcOp/d3PS9Kxd834+5NJWMHRMmP+B50969DPSiPUg+LGkmTCVtkg3FdHhBneyW+J7RXyOgcdeVaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1rUPrL-0006Kn-Aw; Mon, 29 Jan 2024 12:31:27 +0100
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1rUPrI-0039rt-4A; Mon, 29 Jan 2024 12:31:24 +0100
Received: from pengutronix.de (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id A89FE280977;
	Mon, 29 Jan 2024 11:31:23 +0000 (UTC)
Date: Mon, 29 Jan 2024 12:31:23 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: William Qiu <william.qiu@starfivetech.com>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>, "linux-can@vger.kernel.org" <linux-can@vger.kernel.org>, 
	Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh+dt@kernel.org>, 
	Wolfgang Grandegger <wg@grandegger.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>
Subject: Re: RE: [PATCH v1 0/4] CAST Controller Area Network driver support
Message-ID: <20240129-boneless-herbicide-24966319a1e4-mkl@pengutronix.de>
References: <20240129031239.17037-1-william.qiu@starfivetech.com>
 <20240129-gills-excitable-01213b5b28eb-mkl@pengutronix.de>
 <ZQ0PR01MB1253323CA8F8173D98BDD3949F7EA@ZQ0PR01MB1253.CHNPR01.prod.partner.outlook.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hdklyqubvughg56z"
Content-Disposition: inline
In-Reply-To: <ZQ0PR01MB1253323CA8F8173D98BDD3949F7EA@ZQ0PR01MB1253.CHNPR01.prod.partner.outlook.cn>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--hdklyqubvughg56z
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 29.01.2024 08:07:49, William Qiu wrote:
> > Is there a public available data sheet for the IP core?
>=20
> We do have the data sheet, but I'm not sure if CAST is willing to make it
> public. I need to contact them first and then reply to you.
> Or you can contact them on their website, which is https://www.cast-inc.c=
om/.

I'll contact them via the website, but please ask them as well, as you
have probably a better, more direct contact to them.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--hdklyqubvughg56z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEDs2BvajyNKlf9TJQvlAcSiqKBOgFAmW3jIgACgkQvlAcSiqK
BOiiCwf/eNLsL6NzPZwKlkK3NClJKuaLytTsBVxWnFSMs/IZehhGTbvC8ATFyqXM
IoRcuBQ6mMM4KO3nU5ytVMriTGbdIMRvGBgrO/YDNiRChk+vCxSRn+oJ5QUWkZpT
hLcJWXbpAYg4BKOCO9BEQUE6BpPKBxfgXYKO7RMhu5Qg8MZowYaUT/fx8UXibuEb
Hr0KlCJxWRlUZ5LXxtad90r03K2PaLF3V3ORyROLEE4f8uGIKGG/JsSlgRaOKtic
PHNm0K1J1Xxv+8X8rxgwbDhjt/kQznukqUJeOagX6ng6CVCo+qK5qSf1hbOdBm4h
dDJAw2btJHE7BR/CYNTMygV7gtfdqw==
=Mf4/
-----END PGP SIGNATURE-----

--hdklyqubvughg56z--

