Return-Path: <devicetree+bounces-166121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EC868A865F0
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 21:12:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 090118C6CFE
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 19:11:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12E3026FA65;
	Fri, 11 Apr 2025 19:12:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="mC36692/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F1E926988E
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 19:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744398728; cv=none; b=PjLQPlRrEFQf4KB25uVzY340AuPcEdltagmEPXtgRIuDZ0m7o5ykf1REvyuqZ7Iab4bBWt5VtjOf4zWYt+6/HHF8uVXNNRNIFHxslRWlHL6FHVL58Huur9a6BFRm63EanhoTz0xrm7RmGPLabLSxsz20cRKueP9dD9TKU496rTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744398728; c=relaxed/simple;
	bh=x5328n9Po4MAp4s+nhheKJVWEt9qvIrfr+K17nPBjxM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EZB+Gt2wO+pbkEM8yzQEFOisZtqYgjnyalLNIlkgg/1VIksR+TCiIFeA48WzioDG6bIxH6ifMQQHvCHFvKASVsSFkSgEuYWuehMpsOSWJcdAvS4Qos08qfaOf6UZ9/v+G7dxhClce56OJBgooEz3dP3L8aCZ+pmqe1t69ZQHCFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=mC36692/; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=x532
	8n9Po4MAp4s+nhheKJVWEt9qvIrfr+K17nPBjxM=; b=mC36692/iEOT3fodsSEj
	uFQb9ftoh+KvrdVp0UW976rY6qr/6Zfs8eFr9eRSLqO/EYPnsJBeEjbU2tqVYGLW
	3tNz2VDHKN4LZFpKSlUQeIrIIfOvfM9PN4+wYhjLWu+Y3w93KDW4QfI/JmjnAtzE
	NYi49qcARB0npirHJjWnLer6i+FMSKPM2vViW+LKhIpdRgd7DiI8gw7QLCgT8kKb
	egI7MUIjbZkCUNwCxeKGeGm9fJEq3sbxA/Yoa4boAwaiQxErZObPAKU+yKslW/gj
	lz7JwDDS1GMDvsAHlfsCzO5YF5ApTeJrqU7Zx/LfJRrVW6zY2q8Ks8uuyZHli+Sb
	Zg==
Received: (qmail 1399403 invoked from network); 11 Apr 2025 21:12:01 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 11 Apr 2025 21:12:01 +0200
X-UD-Smtp-Session: l3s3148p1@AyIeeoUyQJ8ujnsS
Date: Fri, 11 Apr 2025 21:12:00 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Rob Herring <robh@kernel.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: serial: snps-dw-apb-uart: Simplify DMA-less
 RZ/N1 rule
Message-ID: <Z_lpgMgeIvwVgx6r@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Rob Herring <robh@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
References: <90c7aa143beb6a28255b24e8ef8c96180d869cbb.1744271974.git.geert+renesas@glider.be>
 <CAL_Jsq+sCDEO_n_TLmyNBfhc71NNWWe2UQ21jh8+AdHH=G+KAw@mail.gmail.com>
 <Z_k3JV1dEexJurdc@shikoro>
 <20250411161620.GA3329787-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="UVDKZ3tj4v23nX18"
Content-Disposition: inline
In-Reply-To: <20250411161620.GA3329787-robh@kernel.org>


--UVDKZ3tj4v23nX18
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> IMO, whether you drop the platform is orthogonal to this patch.=20

Ok.

> Whether or not the platform can run Linux is irrelevant to whether there=
=20

Yes and no. I know what you mean with "irrelevant" and I agree to that.
But...

> are bindings. Can it run u-boot? Now, if no one is going to make the=20
> bindings complete and upstream a .dts for it, then remove it.

=2E.. also this. If the SoC can hardly run Linux (if at all) it is a lot
less likely in practice that someone will complete the upstream support,
no?


--UVDKZ3tj4v23nX18
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmf5aXwACgkQFA3kzBSg
KbbUvA//eg0OOqgCn9QEbFxWpMpiomFIaiLL/hN+32z9/07MpFunNjoqhGKiCzoF
nVxmiI7GdoV0nG90pfYnkTk9g7jpOcNTL5Xzrod0mZZGQrHUzo2eRT3tHv6qu22e
LaY3lZTcXghv4Us7iK3K8ysAqu/HxYsBTjNzubFwWm2g1VdCkqRyWU8/VNxxs5en
9Lbqoyc1FTLWTYnTmgrL8uAmvZlaXQhC8YjRiBaK0ouMgE5m8L4uKl4qYossu6N7
FpjDiAlKGbg0jGwIs6uDrBLWRjdzqV7dqXAW5o9p0q2gvM+UBZK7Hat5KD+O3Kjp
vQ8BRGuzkCvzliBMkAz7QJvhE6kijV7jD1fhlY9f4IbYgce83Od+bVFfmHGXSI4E
WXh0LSNo1FiqdZYXkYua6BDJ9BtAUHMn8yAgnf/lRuXH45Rii0OH5ROFvpKOGymS
5iGnJsbAczynt0YvLtEm+ChqJZEHYwaFpCAELSLTE3uU7QViPf6oyzqHGqEKXtrC
S0McEFmRbvGH7yz3mf6b1bExzT0BEMJRCFMcPv4Xjh/ZQ6UHdpNFK1BFKlQLoypA
0QI06K479tiWE9wvDo91f17mEjB2DGDHNTfITFda+KpbeWt8T3Fyh8qQqcZRaSy8
h4aJcOvM+sdRjpMkIUklLFIULApSg6ek4Te4tl7JUhobZ6cCN7U=
=mOpZ
-----END PGP SIGNATURE-----

--UVDKZ3tj4v23nX18--

