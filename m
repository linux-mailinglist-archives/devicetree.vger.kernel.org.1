Return-Path: <devicetree+bounces-240410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E32CC70DF4
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 20:44:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6BA3534687A
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 19:43:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2267D369966;
	Wed, 19 Nov 2025 19:43:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="FRr0z+nT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D27FB366DAD
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 19:43:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763581395; cv=none; b=kyGlgNOHigSbtjx1WHKaSwjI+nZ+E7jnmOB5j+5PL/U+rEGYBnSsqAFMbzLnbDn/JW5leQEGeP10NMlhLS3tsaY/r3kYAGM1VjS6b5FqE8PBVcnbnttfoBiFGo6vp4reU+LOYlaJmZd3xqFpTcBaRVxz0YtTYXYYtzuOMhYeoPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763581395; c=relaxed/simple;
	bh=kZJ/8sQ4pBzIyN48KspjfsUapZbYO90/jzzRhLTB9Qs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KyOBMv7jSQpzwyICnRDwoLLD2O0qfNXcSqoORpBmASoULNqX/P3BODlGr8DMhlkQmg6grj4j8xIxnoOQf5GJsP8V24KoN4JopbV5TPvJXyipDY1ZCSLRQywbh9MUJxq1PbkqgFiedoAUiLs59L109mVSnwE1PUTOmH+KATyKpOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=FRr0z+nT; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=kZJ/
	8sQ4pBzIyN48KspjfsUapZbYO90/jzzRhLTB9Qs=; b=FRr0z+nTb6TtV8O5sCn3
	8GiaEdgc6M1TXxJzxvczuYDF06pQ06id/B5+GIvtXI0jU2YGoIIA22LsfeQolzRE
	yqw090Ernyj2Vwy+6muQ7GfGbZ/Rhqn3HfWAwo/LcMxnH0jd/J7NqzUrwZAgybZp
	Sc34KBoFTuvYsYTrp6p3CeCXluNud/bsOcfwSvSRJhkGwfWZGgToModPeAVmRpTR
	t8fijaexhQg+xX+73HjtHiQmif4ICBHpd129CwDAV83gQTt+866iBZBniMYgRN50
	bEa5afDHurp2fGOJbfck6TOFCVMMcwlJg39OzD680wjIpTG+Q8rbz5ERicbtZI7c
	3g==
Received: (qmail 85207 invoked from network); 19 Nov 2025 20:43:10 +0100
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 19 Nov 2025 20:43:10 +0100
X-UD-Smtp-Session: l3s3148p1@5NxOyvdDBwptKPF4
Date: Wed, 19 Nov 2025 20:43:10 +0100
From: wsa+renesas <wsa+renesas@sang-engineering.com>
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	Tommaso Merciai <tomm.merciai@gmail.com>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	"magnus.damm" <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/2] arm64: dts: renesas: r9a09g047e57-smarc: Add overlay
 for P3T1085UK-ARD
Message-ID: <aR4dzmzDoo6lDQUL@shikoro>
References: <cover.1763475830.git.tommaso.merciai.xr@bp.renesas.com>
 <0babc991d3b2163200bc083ef80563931d4b639a.1763475830.git.tommaso.merciai.xr@bp.renesas.com>
 <aRyiQJsu6gob3Gf9@shikoro>
 <aRzzEgeetDFlE3YC@tom-desktop>
 <aR1f6PMbG0N_9oAo@shikoro>
 <TY3PR01MB11346F52C1E32C9960436561A86D7A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qQJwsqkXT8ywSKIw"
Content-Disposition: inline
In-Reply-To: <TY3PR01MB11346F52C1E32C9960436561A86D7A@TY3PR01MB11346.jpnprd01.prod.outlook.com>


--qQJwsqkXT8ywSKIw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> to ensure software portability. If that is the case, if we are using i3c as i2c which
> alias it will be assigned? The next unused one. It will change if we define another
> alias for normal i2c.

Yes. Bus numbers are not stable. Udev rules should help you here.


--qQJwsqkXT8ywSKIw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmkeHc4ACgkQFA3kzBSg
KbZxkA//WKQCus7y1C9n7hypqlIUk5sYHnX2mOfGwtQJjKBb3TOUInnEpKhACfCk
somKcWdeSJGRYOOWgUHCMSxRJdCQej98itCUO+PUAbMmyDUBq9hcyLHmGtELuEG5
SQNKWQC4yamacu6zc8peQOUuto0fKtXq/FYtTmR3C6iM6eHW87MZh3NmOlX0aJ55
VX3myoIsiZI35QV9AY1MUS+uecu1a0tTMTNzjVRDWzzKt6KEv2r7MIV8HEOb3Crp
8M5c3l29bh7vh5jJBWjdNhXJ5PyEVZKc+kbwnG0frHlyDvQ07aX1rTxZVf/MesIv
19XQMfm45M260iluho83fOkFNjqY9BMGp+9Ym7EisLdEYHxSMuSQRfGMPrX2dqs6
Bv4T0owXbal2u7lEWo9l6k/uSr99tGxVxtVnxtCvWs9Kp+vtsSf4IQAJJy8vJhR3
AcRFXaDXpjc2mot6E2HWDrgboIR6j9Ky0VsEeUj7Z+JaX1skVN0cGwmQUJBFRUV4
MmWd8lCha2RMOfWxUdawmVaCID2isO+hMwoqo0NE4eOtP/pfhWf1vcXuZxiAtUoz
FIsjWusGM6LgHBK39PY1KUUFgr9aaH+NNnc9hwJnMtGWaho/Po3ROZ0vfHDRWXxD
u4BhKfk5NqRJ/CbzgnaoyvN6W80R4oNljJMC3m11fdqrstl4U7U=
=/Gsc
-----END PGP SIGNATURE-----

--qQJwsqkXT8ywSKIw--

