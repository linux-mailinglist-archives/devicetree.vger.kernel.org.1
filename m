Return-Path: <devicetree+bounces-193706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CD7AFB6AC
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 17:01:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B51823B685C
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 15:00:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50BE52E1724;
	Mon,  7 Jul 2025 15:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbEeo+nY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F082E11DC;
	Mon,  7 Jul 2025 15:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751900468; cv=none; b=ae4g3bv+aUww081vOVlUBjmx88rXuEgrRg/dTe7P7QsAYlnEf8oyp9cdW/55nGPwcpszb1/LwBsRyzXyI7KpjU6bjnYdgxkUavaCmBI/PPWyBlT65Yi6vFakjLrg7d4mE4jY0497gcXVJOtwvP3Ixwy4N9ltMcLR57i3IqXvzGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751900468; c=relaxed/simple;
	bh=omTGso+65ZA7G2Bfr2eWoHCvSUgY6ENDyMqh3FM3vJw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PZ70GDJk7Q862aIHmrm5GDf/upKofObxnUfS8+qD6MBROMYI0KoCAtCZUiGvH1aDb71a92VP/yyQ3D/QrXpBhh5BJWTgIWmaOqsYTgO012X62jQiu8ScuiaBkOAzz3RYIRmQthiyaw3XZiKdhBN42HRkIUU4jI5KygJwvpemHp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbEeo+nY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A293C4CEE3;
	Mon,  7 Jul 2025 15:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751900467;
	bh=omTGso+65ZA7G2Bfr2eWoHCvSUgY6ENDyMqh3FM3vJw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SbEeo+nYxkis2bWVYjxrPc/W2SPvVt1U9cuH0jrauqxelbE1Zqys/0QNSVB8V/bs3
	 ohglVfJUbq1y3q5oMitprdlxQhSdgvK1rEo+0VCFe0z42s+JB7lke+HOyx+WYzVaKb
	 IB6+HpXyVh93+yjvDCWeukltIuZ0pzwo9iEdPHg9oCTGc8QH5uD6eCsWqzbGmxCtp2
	 KM2piJ4kxsFcUIVpSus0RmI9+e/9CACE8kueMWW0Mbr5WtaRipyLuantL+uC//QD/U
	 fTvEhE7d7BEZtzkCvxTvn1b3GFrP8iSYlAu83XjZjrWX1OBEc9Sdh++JaHpEHrLC/h
	 REJVcTWi94j5A==
Date: Mon, 7 Jul 2025 16:01:04 +0100
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] docs: dt: writing-bindings: Consistently use
 single-whitespace
Message-ID: <20250707-headwear-lapping-7d127166ce7b@spud>
References: <20250707095019.66792-4-krzysztof.kozlowski@linaro.org>
 <20250707095019.66792-6-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="iyVuR/LgN29AZ5pE"
Content-Disposition: inline
In-Reply-To: <20250707095019.66792-6-krzysztof.kozlowski@linaro.org>


--iyVuR/LgN29AZ5pE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 07, 2025 at 11:50:22AM +0200, Krzysztof Kozlowski wrote:
> Document uses only single whitespace after full stop, so fix
> inconsistency.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

--iyVuR/LgN29AZ5pE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaGvhMAAKCRB4tDGHoIJi
0p+zAP95hLMJyMlNUuugA0OYKiWQsfXSerknKi1wQES38atHbAEAuduuNIvQCilm
47e+gF5Wc9BEHovzdS9LF6vSi8/CkwY=
=uEvl
-----END PGP SIGNATURE-----

--iyVuR/LgN29AZ5pE--

