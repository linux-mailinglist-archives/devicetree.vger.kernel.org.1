Return-Path: <devicetree+bounces-161563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C600EA74951
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 12:38:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E5913BEECF
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 11:38:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9419021ABA6;
	Fri, 28 Mar 2025 11:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="Izzal2IN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A608D219E93
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 11:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743161918; cv=none; b=MBPf3gkztqDj7gcJqMQPAatfcFFVEBncCqiW80z8nV2xYCeSCVApSWer9PramiLjdNddG3VtRUPMJYmznMbkCqgBPp4XNMUA9FHr1stF3F3ktv9jSnixvWfmEmVcuYiDh7QPfqCM+mVFXGP3TYiZ5Ijqu0CyujHP8doYX3KmkkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743161918; c=relaxed/simple;
	bh=bqKzGayknXTZY8+qIPSnP3CvC0n773xuDzlq4hKHrAk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AsZ3NgO2iq7qjTTfbjUxjPkgbeTyuKIl6TatCLRkvwaJCP+PXLN8k5eOQrjrD4ZbvlQuW0KmWS2uMxuBkXvQf6YLLO2NPhzwN2hqWP5n+ut9DLTXXvMOTtpqVsaR9HbLxVU0H9I6E9KzXgJgTCDEps5/lgGMZ3SgjSw53iyw7Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=Izzal2IN; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=bqKz
	GayknXTZY8+qIPSnP3CvC0n773xuDzlq4hKHrAk=; b=Izzal2INY/au68cYYf3f
	ZQbjZALkcwHRQShVZjxEnpoOtLTq5MHuuwGZf6/yTnHuoZJlki19rzyyCI6Ma24W
	qy4LZBxARCCUxm4Mon7h0qVbO9e3cM3TbM5xU4R7eWpPny7rxFHX1ORrsQD3Roc9
	uBfsZpisbXDU7xUj7NETahIUlXeA36McFaZnRPKz7OYiF1xM9qg8av9hoWFIHIyf
	qyCsPaNpqaloFo15VhQcBa8J8U67nIIlieFWDFGSBZ2AkWbIXYgyAuWoeS3gqttT
	90xz7AqrMRwi/5EFjPeRNTzk7C8ej8Y5JqE+5VjukPlTYDFKDjD3L6JlzIMr4399
	zQ==
Received: (qmail 226936 invoked from network); 28 Mar 2025 12:38:34 +0100
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 28 Mar 2025 12:38:34 +0100
X-UD-Smtp-Session: l3s3148p1@io2pgmUxF2JtKjIj
Date: Fri, 28 Mar 2025 12:38:33 +0100
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Jarkko Nikula <jarkko.nikula@linux.intel.com>,
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: i2c: snps,designware-i2c: describe
 Renesas RZ/N1D variant
Message-ID: <Z-aKOQ3TP9lVGkA2@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	linux-renesas-soc@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Jarkko Nikula <jarkko.nikula@linux.intel.com>,
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org
References: <20250326223123.11113-2-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Gl0YEPK+pimikIM+"
Content-Disposition: inline
In-Reply-To: <20250326223123.11113-2-wsa+renesas@sang-engineering.com>


--Gl0YEPK+pimikIM+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 26, 2025 at 11:26:58PM +0100, Wolfram Sang wrote:
> So far, no differences are known, so it can fallback to the default
> compatible.
>=20
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Applied to for-next, thanks!


--Gl0YEPK+pimikIM+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmfmijkACgkQFA3kzBSg
KbYByQ//cAElO737j+ziEZ3Ix0PSZqtjXFaXEWeD2XfiAG6Kwi/W49CkOBWL3Sf1
EL0QFOC8XpQd89R8+2ro9u8FtFDcaq7zCBqfUnC8pVcvaG7FDbBMTQxEIMDuPE6a
jmSV1K5KtY+hKnT7HWBnI/lWeDjijCFwG1n4Wd3C9fSgH/sgLrVBaxuo273G0H7H
G9a7+PyfhPkyUMD14azmRaTYgnlwwtfznAEPDMRw4QpqXuJE7sKDpwsMewgWmJHb
l2IQ1AxFn97AmnEi6oWv7Yr0d6dzCCVHHEt+8EHDWWYBGUqegL/LOtQ8acON/wJf
3Ng1j4f4n+AqiY0SsqjgmAaIi8/L1KEYoZkrMZE/hHpPYz2/63lFauSIiH2hOjjL
IOb3Mj4YO+faTYzRohHC9za1oTo6mBqBlOVJ0DMpxYlYQcfPUhjfmmsrnV4jItKz
HIZsqbNsM+vCy68A8xkfi4zM2Y60beQGS57bLIdmX/TbQXHaWH/5mQpEbBUYLvto
fSWbwNm0UjDftT3x0S5yNv2nDAylR0DMACXqyriT6+SYSiYncIHDUuyd6z5y8IGi
CY0NccYmkUyCUV8lzTO5dvfWf3VXTfUcJtpSEaWrZC7Fc2N1KlEIJmIUZwvQtqOS
o7VsuNR5ZRx2/t/i8gZ311VBk2F1J14xo2QMuSg0AN9cuV6Iatc=
=m+/t
-----END PGP SIGNATURE-----

--Gl0YEPK+pimikIM+--

