Return-Path: <devicetree+bounces-166131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FAAA86636
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 21:22:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8E60E7BA785
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 19:21:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A9D0233153;
	Fri, 11 Apr 2025 19:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="jIM+JxK/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12ADD258CF0
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 19:22:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744399350; cv=none; b=MCqRsQ5A2qQf4kvx7pv1eVw0V4NhByec/tfCp7lY2a5OMaPwUcnQrLQZdYQtlxxGNCJNM1TxWoJQE0Xt1TseqHVI7Slzywki5kIv+WTSlqWv1bcdO7gidZYK85z2cHVap7w/HrdZMfp6ikBAe5QGY5Z/zVmgjOMVFjGSFlLY7k0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744399350; c=relaxed/simple;
	bh=EpMfVXlRTt1GrOrTqdwyTkUroj30aT9SoXpbumxN1/E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Qiev8rUByT7OqIBh+ZwFFBy+9qpIZOG2pYoQvo5dt712xu/AFeMRaSGjeVTvKAwx0WvjrxSfzQq5bx6FBPq1i1zsUXoY0yJu2LkoE/ZmzFLeIvS9CBFgrlxgK51+B2FBmXp5nis8azNKDHJpjuda+70YAotiCiTMY7huPl3k9FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=jIM+JxK/; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=EpMf
	VXlRTt1GrOrTqdwyTkUroj30aT9SoXpbumxN1/E=; b=jIM+JxK/RPdddUQ6FgxS
	hnvs4D9UUIh2HWhlpTeGu7vgR9VvGmQUyNcEwcYSD9RU0i6GBZDQfBoQPPgz5xxw
	4WU/qrOLIHDksM4V0Rvh+Dmr9Yse2ycW1sFXg+YYapwIcFzW3vH0l0ONkHjY3ErY
	ptGvIRWGbi0G5gYeYB5cVDNAaaZzInRJ/RSIRIWcV2UHjw2zTF2hphUG0YJk4ahq
	GsHWkftnUJgSh0GLvMJQut58y8iU6mzHUnxIJRU9AL7U3nXCEkLLALIt3YfGcz4r
	d1VC6A/cC8ioJs7kyKuaewE9mnns46BRK9mPqZv8CdJbCqmR7R67CpKJGM82mfES
	Lw==
Received: (qmail 1401741 invoked from network); 11 Apr 2025 21:22:25 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 11 Apr 2025 21:22:25 +0200
X-UD-Smtp-Session: l3s3148p1@70FXn4UyKN0ujnsS
Date: Fri, 11 Apr 2025 21:22:24 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Rob Herring <robh@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: serial: snps-dw-apb-uart: remove N1S binding
Message-ID: <Z_lr8MjNCYXz8V89@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Rob Herring <robh@kernel.org>, linux-renesas-soc@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org
References: <20250411155220.5940-2-wsa+renesas@sang-engineering.com>
 <CAL_Jsq+DOp8YOcshTVqYcbmgbuc4etTQeeswmMUYjw1sws4mAA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KjleNIVyskKXyFmn"
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+DOp8YOcshTVqYcbmgbuc4etTQeeswmMUYjw1sws4mAA@mail.gmail.com>


--KjleNIVyskKXyFmn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> Seems like the platform is pretty dead. If you want to send a single
> patch removing all the bindings, I can take it.

Yay, consider it done (in a few minutes).

Thanks!


--KjleNIVyskKXyFmn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmf5a/AACgkQFA3kzBSg
KbYvYhAAlmFkkXAR6RRuKRturPVfhNmQNCwiD89v1ZTd9G8LGAhV+CZkegNy2hRS
S6/DeY+FVSrCriTk0wMi+6zVMDw16uDIRMxO2mNWuGvP/ar+vhjagiLnOuqV1mjc
ADE8VBiMpGQSPMvNxTOT5k3EX8CWKWgh7GsS3VYkfUDWU59esN2f0mOuA5rorvkH
ntRdW61GaQC/TGXYlB83Qv9RVkTNbQkVbbxHcuxap64lFva+7mJoqSqikuzoj9DO
aCt8JyO+Dkq7LUBd7USDpjvx/aGWdK8us3NEapCtaHj1gWFgR3LqH+OyU0fNKMet
lBVEpwkWgJkJQ9cK2hZL4M2Tetx8MGuHI9WnhTWUgIq5/Tnzoy3IFjVghvvCkOcD
FueZc7n07jzKGKj7Mx0Dw79HXd/hcZpPMyZQjWybXqGI8f1NoltVx8qERbHN9KMX
AnD8tavUDYAP15wLKjO5sTfjSaVR0VS89WZiMeKbDuaTmej6/TvdlAbgdVASOC2q
kNphG37LAhdyknbUpJsvL6DcqrhF/z7lblfSkUPqRKVbfScR4Gn9KSR09OJQozmc
dpj02NCVQhvjqpfaTXjT5vN0r5AWBl7QthIa3NX7q3WV+g2ymxmrOs5O1gbrAFaE
kymgNDNJi1xZayGDpLHwqzFZA06Ogt3osbgAGjWkKGCd9+9fv50=
=XyEi
-----END PGP SIGNATURE-----

--KjleNIVyskKXyFmn--

