Return-Path: <devicetree+bounces-168118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C3FA917A0
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 11:22:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C77DE16C35F
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 09:22:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1BA422A1CA;
	Thu, 17 Apr 2025 09:21:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="IC8VSPgk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9CBD229B2A
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 09:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744881688; cv=none; b=hU/X+QT2a8dAj0YfwM7miyjrEiAexDd3UiRdhnlVRooSQVRPUQAlpXlK7nH0Hmelc8nqXmSMY+hih2I6RAi46yo5U8FpF0gucHyTnGyEwImhWfTqJ2fqKcg5cZurUDkgHA8WUU19tLQtLrwe2BIPWYDxjc7PKB4cZb53I0X7Pps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744881688; c=relaxed/simple;
	bh=1o5Kt4IjqACo6ux4z53BtFLJGu6SBMaTm6gg8my3oQQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iOzruUBHWuFTCmJkegQIzIJi2EtwnUCrbUkQ0z0p8nTzjLKkJEqPghIqJhaZ0m6XyTyp7NrAhrcKefu7Y+xWiUq6T+6/Oc+D249M5wRrWgLCXxJ1tVMPXj5HtSMD2i0/pjnTz/e8hmlzeEaTZTZp1zjM32sQcx31JBs4+Cmlu78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=IC8VSPgk; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=1o5K
	t4IjqACo6ux4z53BtFLJGu6SBMaTm6gg8my3oQQ=; b=IC8VSPgkU9eNV2Pl7CEW
	B9y0PSxiJGDqbObH86ACJeuoDMHk55tfzTBo1mIi2rHRctTqv9e4FVzt06UJmP3n
	QK7QvBE4by7i1gaCs+QOwuVnA8EPVFB1yfxzUxsWKAj6Yev3DTNwd8QrJWEWsiGF
	s5mEY+Fo1BUjVGtZIaCKTl5502Dc9gglAhplC1UQXWYbrp3ldJCA9y+DZyea7Tmc
	Qz1ALjqfeCd0eUHRhSc00cwBEQwNmYPlmTpbD0oXbXZF5oWllyyXKESSdh+z/INX
	AeCmtWCNx+BdmM03iYwA31OVpEj0+GzvD6LtgHoLH+sw7rj+YfsXLaSxYtBMtjLK
	0g==
Received: (qmail 1036485 invoked from network); 17 Apr 2025 11:21:24 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 17 Apr 2025 11:21:24 +0200
X-UD-Smtp-Session: l3s3148p1@MjD57PUyDOAgAwDPXyfYALbiJ46yNPq3
Date: Thu, 17 Apr 2025 11:21:24 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: linux-renesas-soc@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] ARM: dts: renesas: r9a06g032-rzn1d400-db: describe
 Debug LEDs
Message-ID: <aADIFGuBHJm7lxA5@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	linux-renesas-soc@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
References: <20250417085228.34679-2-wsa+renesas@sang-engineering.com>
 <CAMuHMdVCz1=CyMKaKRmn5dEVphEJDUHKGexuxk3hBUXS+EHRGQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x1LSgucKBBGqlIhl"
Content-Disposition: inline
In-Reply-To: <CAMuHMdVCz1=CyMKaKRmn5dEVphEJDUHKGexuxk3hBUXS+EHRGQ@mail.gmail.com>


--x1LSgucKBBGqlIhl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> You could still add the color properties without function properties.

Tried that. Then, I get collisions because of "green_1" instead of
"green:programming_1".

> However, the "function-enumerator" property exists to avoid the collisions.

Sigh, OK.


--x1LSgucKBBGqlIhl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmgAyBAACgkQFA3kzBSg
KbaMnxAAqkcoMJKq3ZiAUzAK4gWrDHNTls3HpjnMSdrlECeSWK3UNerGfe1bZirN
uB/SZqvDap+/qkSYIPdR8UXo2Dw5dlbOZESWcDSQqCQ1hg596y6GVqX4ccm7mcI4
Aq+TMBUJxnDKhqrJozP5TU+kFnjVbX6906Bkc859ZqE+jbYZs8LfpdBkAbznazgo
1/9QE69JGPTfrFYqQqbiIKCW2tXDl03NLOM3HbPM0J/sU1Cyevm5OzLggbjGg1SQ
ViOBGr3DWYrH7XwXSM7X/HWXSe0+EsvzKf+/Vmetx9eb/7+GsuAAabsV68EvLo1E
ZDyA9CTprmlFUkIMtWbF7VNqC7qvdqvmxG40frg8PC4tOb0BaNCkA/XIROhnMDb1
CMZzGPrGG78v422awbY5yE2FXFJRz6rq1wEc6a3eBCYyVvSDo24NMjG2921q7AQH
M76viys/7jztTxmGQ0ZUmlPQncOQh3HcYyp5R86Qkfn6eUyy1xtYTu/BioVdHGxf
SCdcNGNLuwbvz5B1DMDRp6H6x6LaI17j9sI/8l0Affvf33jpFtis/ji+M23osI73
NEhDkPo5qoITsFnOrPER3PX+1AC6sd7Neuz0m5Cay+dW+ZddlFEiYKxGhrQlVi8F
JDfL+wgqSa8szqAkdpuexCxEt3h1KSNBiQPJCsUoZHGC5lIxSb0=
=x34l
-----END PGP SIGNATURE-----

--x1LSgucKBBGqlIhl--

