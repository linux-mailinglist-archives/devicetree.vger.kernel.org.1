Return-Path: <devicetree+bounces-183155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2AA8ACF8A0
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 22:14:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 61E923AFFAB
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 20:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B9B527E1D5;
	Thu,  5 Jun 2025 20:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="dTQ7x9VW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180D8202F65
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 20:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749154463; cv=none; b=V/uJhEAepjM81RhrtMl7V2H9CsRAgwmU2hlbIW2zSaayKr5yJfyrkR7T7IVN9kMU0r8QLpYRyy/pWS0pr0obcG6nUvMwy05joE1TRlbjtqyrYas0YrbuO3pyMmoEBjXlelylQJ6iFYYHsUo3UnF6pNTASBxCEvXVSW55mxnxiWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749154463; c=relaxed/simple;
	bh=6YixZOzPWbkzOYmBEoMzf0Mbs3GxjBDYXyDloyNRgsQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Yz55kOJuap2CegOVJVuUSf7aCshrcTit/KnE/s9S6OnxFx+Hj5l7+/lmvgYUvAXzDjiEOU2jRnFN3wKSywM83dMv8MeqM5UFg68xto2H8+A1FhejBDrFep0al/h+KN+AviQ0U2nIvjiLb2NKkIjSxG61ayqLBt0mWNo89PkaHI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=dTQ7x9VW; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=x0qQ
	mkD815o36B/CBxf3GbNgkCrxbj8Aa0uApsHGYeU=; b=dTQ7x9VW8DyiF6mWre53
	kLAnYG71rIdTjSPu9CeV2IO04Uqx8SzyV/wUDTltYQITKwuUfw56ZySY296CCqeW
	p8Dd1/X033VfYfkZ/BPB9GYrJhWK1Q2F3qeZjscDB0ZCAqbIzrq4XJbWdW7h4XxG
	uKFtsNGQaRHeTLosa+4zbYjk47NU65cs3ylKDOaalGCi/fCFJSbJiTAOKftzRVYw
	BCpms55xb1+p25TMSLMR0O+UyvU873OvE5V4DaUl1PlX7qdnWpC7vrdhFJPyIe8E
	vNNFh3bOLWBJqu0dSDRmeMqxdAwtwPkUvrKwAXVBGvF2aTR6WyAGO21UqMEDhoec
	PQ==
Received: (qmail 1269126 invoked from network); 5 Jun 2025 22:14:10 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 5 Jun 2025 22:14:10 +0200
X-UD-Smtp-Session: l3s3148p1@McGvwdg2OoAujnvk
Date: Thu, 5 Jun 2025 22:14:10 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Frank Li <Frank.li@nxp.com>
Cc: Jorge Marques <jorge.marques@analog.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-i3c@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] i3c: master: Add driver for Analog Devices I3C
 Controller IP
Message-ID: <aEH6kpXStLc0dWZq@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Frank Li <Frank.li@nxp.com>,
	Jorge Marques <jorge.marques@analog.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-i3c@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250604-adi-i3c-master-v1-0-0488e80dafcb@analog.com>
 <20250604-adi-i3c-master-v1-2-0488e80dafcb@analog.com>
 <aECaFQzkPYdfjagK@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GXe3Ct2mLNY0M4s8"
Content-Disposition: inline
In-Reply-To: <aECaFQzkPYdfjagK@lizhi-Precision-Tower-5810>


--GXe3Ct2mLNY0M4s8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > +static void adi_i3c_master_wr_to_tx_fifo(struct adi_i3c_master *master,
> > +					 const u8 *bytes, int nbytes)
> > +{
> > +	writesl(master->regs + REG_SDO_FIFO, bytes, nbytes / 4);
> > +	if (nbytes & 3) {
> > +		u32 tmp =3D 0;
> > +
> > +		memcpy(&tmp, bytes + (nbytes & ~3), nbytes & 3);
>=20
> ALIGN_DOWN(bytes, 4)?
>=20
> Do you need conside big/little endian to trim down data?

The driver uses the same code for reading/writing the FIFO as the
Designware and Cadence driver. The Renesas driver I am working on has
also the same pattern. Time for a helper function maybe

	i3c_{read|write}l_to_fifo(register, data, length);

?

--GXe3Ct2mLNY0M4s8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmhB+o4ACgkQFA3kzBSg
KbYmSA/+IZXTuecloMa7I1/LbmBCQFy5sAh/vUPxCCGQUPFR6YJoIhUs+s7l8S60
Z5P//0BW4bh2/5sLRBy18SN3UI0ADP1dgeKaTkSb/fxTM49YUJEaS44MxKrfLN4Y
1g8GiTgx/GERwouQHQDHn/wKQ8ADgynJcoXEldLu6LqpYIq7rRKRYBzJuXnHgRgk
M3BK8sCOUGt3yU68DO/p5wHyfJHhIaVnP7ZyKFL0nNkfzoQZoz7x3xzsSNJhpUKg
st3J9Z3K1rFe6lBB1Of5WgxNyqab1GagJl5LkZznUqC5t9YCihxMaeovXrl6Dm8Y
U1rUU8+ddO6bcGE1cCYJAIAnhJj2K0QCZrFKhrcLqf2N9yRuhvRnSiJ/fD0gHVPL
4yD/J9bxLQgB++AFlgjGGpCmtSSuUDiYTl7SvC/iaBFb8lW6vFCGHX4ECANbPXA2
rnlsXWir4YaeLAaD6ryQpOAiTOhhAZkOXtLAPN979UOUPtVl/WkWPKx1YlMdDSgJ
s5ZhMRU75q8RLM7CLfoWokjj3AEi36fv0ebSPtUS05spiSJVJzTVCCYgIpoiCOPV
iTjl2VL+22LD/fw4ammODlx/dullZDyOHDqyA5esIjgqKtu8D2wECEsTCMqpV7cd
410fdnNrxP7UKRmPo8rVC4lY3PrWnHgzSZSv3QbikScKqy8rg7s=
=xqhH
-----END PGP SIGNATURE-----

--GXe3Ct2mLNY0M4s8--

