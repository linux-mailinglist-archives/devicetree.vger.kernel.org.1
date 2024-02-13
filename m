Return-Path: <devicetree+bounces-41255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D040A852EA2
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 12:00:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B36B2832B0
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 11:00:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF5D32BB12;
	Tue, 13 Feb 2024 11:00:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485A32BB0B
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 11:00:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707822039; cv=none; b=RNV/fozX5cJmexpWPC5q/dbRL+tzFtqH4CroovmKZnZuTbz7DcsEASLYw14BaTNf299tHjiYu6UBlKFsYHnBVoi47pduvZu4GUX1F8Cuu6y3YGcmswdtIphoYXap5IA/m+BTtS6nyajbO6tgnPWSpJjJGwgSI0egqxb/TgjCce4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707822039; c=relaxed/simple;
	bh=+RNmFerRabSoDvfbT+rohW1J8Y7o+4ePKtvKyk/5nio=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q5AuEpoYn3MMQjm/PUKvMHtUG7UGUN3ZPXAPlyQDz/WvDoixnyqKo/DiKbJNmF8RgpM752pX/NBKDXFEXKm2zRzjGZqFytLd/LIh0CgdkLbNl1CCslvftnIrpyqHGX+DoWXaVzb8/sochtsLKpKS6+nEiVjqrUnEQ2Vac8nD0rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1rZqWY-00066h-Hf; Tue, 13 Feb 2024 12:00:26 +0100
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1rZqWX-000Sxb-EA; Tue, 13 Feb 2024 12:00:25 +0100
Received: from pengutronix.de (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 03AAF28D5D3;
	Tue, 13 Feb 2024 11:00:25 +0000 (UTC)
Date: Tue, 13 Feb 2024 12:00:24 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Srinivas Goud <srinivas.goud@amd.com>
Cc: wg@grandegger.com, davem@davemloft.net, edumazet@google.com, 
	kuba@kernel.org, pabeni@redhat.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, p.zabel@pengutronix.de, git@amd.com, 
	michal.simek@xilinx.com, linux-can@vger.kernel.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH RESEND v7 0/3] can: xilinx_can: Add ECC feature support
Message-ID: <20240213-reactor-vertebrae-af419800fcdc-mkl@pengutronix.de>
References: <1705059453-29099-1-git-send-email-srinivas.goud@amd.com>
 <20240213-evasion-crevice-3faa375c1666-mkl@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pcfdyjxuszkxzmew"
Content-Disposition: inline
In-Reply-To: <20240213-evasion-crevice-3faa375c1666-mkl@pengutronix.de>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--pcfdyjxuszkxzmew
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 13.02.2024 11:22:49, Marc Kleine-Budde wrote:
> On 12.01.2024 17:07:30, Srinivas Goud wrote:
> > Add ECC feature support to Tx and Rx FIFOs for Xilinx CAN Controller.
> > ECC is an IP configuration option where counter registers are added in
> > IP for 1bit/2bit ECC errors count and reset.
> > Also driver reports 1bit/2bit ECC errors for FIFOs based on ECC error
> > interrupts.
> >=20
> > Add xlnx,has-ecc optional property for Xilinx AXI CAN controller
> > to support ECC if the ECC block is enabled in the HW.
> >=20
> > Add ethtool stats interface for getting all the ECC errors information.
> >=20
> > There is no public documentation for it available.
>=20
> Lately I was using ethtool based stats, too and figured out, there's no
> need for a spinlock, you can use a struct u64_stats_sync,
> u64_stats_update_begin(), u64_stats_update_end(), and
> u64_stats_fetch_retry() instead. These are no-ops on 64 bit systems and
> sequential locks on 32 bit systems.
>=20
> I'll send a v8.

https://lore.kernel.org/all/20240213-xilinx_ecc-v8-0-8d75f8b80771@pengutron=
ix.de/

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--pcfdyjxuszkxzmew
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmXLS8QACgkQKDiiPnot
vG8czQf/aG7oFJxKdh1Q53rxG1f7aBqGyD1mOGPP8tUpbBujLHlZ8bTAF8KE9qTw
4w2mFpYKOGhsRgTf1FD4mIWemqWnlaTESbQDu3r3n8x7iP46Chj6YH6hyrWJWpAW
/wAc5jaMCjbkEBQmHRGJxDvZ1cedH/A2St+RpO8GeLvQCkq3qsNkNqI6JwEqc9ek
bbSViga7DX6sokcg0zmhonSrgeKDBv7gf/ZBkWTeNjlFlsjpUXN8bAbRqlt/EqRw
M3ckdj63rdRGTwrOCqHPVYtn/VwhdNvR3vafM8iFZI/9lG9EPeJ1A5Zu+jGIr7IO
Z8UkkTzODpkD/G411piaTJ4I+h47ow==
=DPr0
-----END PGP SIGNATURE-----

--pcfdyjxuszkxzmew--

