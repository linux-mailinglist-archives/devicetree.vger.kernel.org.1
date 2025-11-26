Return-Path: <devicetree+bounces-242336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D9CC894DF
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 11:30:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0DB773539FB
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 10:30:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A95AE2FD1C2;
	Wed, 26 Nov 2025 10:30:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E742E5439
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 10:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764153029; cv=none; b=qV7RCJfKvZFM9tpjfoQNutXazCgrMOm4sYfetRX8lMEi5W6HS2+TIUEIXXP1E33m+Cn/4LtOdm5zImEJ1UPxsP6Xd1PCMvIkrFV9LVC8kze8p0XZ/znjXtb4mjjVWG2xcUUjmRhFuFunsvo+gRkJUIUR/8NLrL927OkUW/95FFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764153029; c=relaxed/simple;
	bh=jIwJGyuyZYR+5b9pFB0AI93OaCTPPNozIw2p1ftAAmU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Nc2Rev51ZhRfM3RC/z1n3JcbU/PDqPTn0Brya/ffipLJ5o9OYSpNCcZSgi97hp9yfYKTCkHkrqZebnn6wTwAMa5ockKosubJm8t2aKU01iztHlAnWy9EiPw/nZnI5gETgcTLK3y90oagU1oBKJImLsBfChYnd15GzCRoyxZxaG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1vOCmt-0002y4-Ty; Wed, 26 Nov 2025 11:30:15 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1vOCmt-002aVC-2E;
	Wed, 26 Nov 2025 11:30:15 +0100
Received: from pengutronix.de (p54b152ce.dip0.t-ipconnect.de [84.177.82.206])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 6098D4A898D;
	Wed, 26 Nov 2025 10:30:15 +0000 (UTC)
Date: Wed, 26 Nov 2025 11:30:15 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Conor Dooley <conor@kernel.org>, linux-kernel@vger.kernel.org, 
	Conor Dooley <conor.dooley@microchip.com>, Daire McNamara <daire.mcnamara@microchip.com>, 
	Vincent Mailhol <mailhol@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-riscv@lists.infradead.org, linux-can@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [net-next v2] dt-bindings: can: mpfs: document resets
Message-ID: <20251126-rapid-quokka-of-wizardry-4f8c58-mkl@pengutronix.de>
References: <20251121-sample-footsore-743d81772efc@spud>
 <20251126-famous-hummingbird-of-fruition-13a9ac-mkl@pengutronix.de>
 <b1511382-1fce-4a1b-a1c3-962a05fc07b5@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mru2i5tjkbyuvlgv"
Content-Disposition: inline
In-Reply-To: <b1511382-1fce-4a1b-a1c3-962a05fc07b5@kernel.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--mru2i5tjkbyuvlgv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [net-next v2] dt-bindings: can: mpfs: document resets
MIME-Version: 1.0

On 26.11.2025 11:26:17, Krzysztof Kozlowski wrote:
> On 26/11/2025 11:24, Marc Kleine-Budde wrote:
> > Hello,
> >
> > can I get a review from the DT people?
>
> We don't always review each other patches, so you kind of have DT review
> already. I can review, but I just did not plan to review this... less
> work needed...

Thanks for the quick reply and review.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--mru2i5tjkbyuvlgv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmkm1rQACgkQDHRl3/mQ
kZwl/Qf+MI4CbcnKrFEQv7+JuZl3o+Jrg14DSr5/3l+5gdJZSbMTK5xO5N+Z5Ih4
3K4cXamu9YqHL6ZmUpIyOt+qOeTBTeK0wvgggakllupDMldabe6qqPauUkdl4zvf
cwm1mMQgGHpRzBJvgf12EE4aGVCq/LVJe/ojeZmc6pKM5+721hLEUtEjLii+V+FR
ZkX8fbTjQ6VRX+3NtR/bleoCHljy0YnBMqUGCe/2EpRJJAsYWTilDMPXnuREnnAV
DP85ydg8HUBaEzvMzQyygtU1BLlGHUHXONEMToGf8BR2hHtbB2287Xb4sSva0FUJ
IlQ5JYQ3HfvHf+FTtA1IthD/jLQokw==
=izFg
-----END PGP SIGNATURE-----

--mru2i5tjkbyuvlgv--

