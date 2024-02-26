Return-Path: <devicetree+bounces-45877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F0D867204
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 11:52:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 47F4F1C28C6B
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 10:52:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71EA41F605;
	Mon, 26 Feb 2024 10:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="SKM4BtoY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (www.zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8959F1EEEB
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 10:48:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708944504; cv=none; b=PPY9xLZ1/TBjAsZCSeKBjHIzvimEGNTNN7crdczQo/qLm/QKVoUxveJkWRfxiSNItLgO8VFKBkXdip2+GKlPgwaBc80828WDblhFHPSjslhFDJkRUUXB1X/LPhi448NQ/pshOe1uI+Qx//Rx5EyI9+IbGUIvLJYNR+y87tZZ0W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708944504; c=relaxed/simple;
	bh=93RNERpHXJfqDKfnRao1G0Tupa9b05WDZBwpyK+tePQ=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=elyS55k4snJM30zqi/biW3jgA8tpgsptkZjVbeNJv4KtRCXhkXxCjm9kTK2yjwfSfNAVrhmlxsY/X8SYCB6SfiBMcFHkmezjdPii7WlF6Tyzpsr/XJ6xBANB3a3ibEOd0SS3jAT2NGBS3s9S+fY6lZw/d4lCfUPfLakiixQv2gU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=SKM4BtoY; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=93RN
	ERpHXJfqDKfnRao1G0Tupa9b05WDZBwpyK+tePQ=; b=SKM4BtoYU2550UxfTSZt
	0UTyjPz1ptTCtt7zuW1WVzx7Rx24whaM4i5b6HkE4c+e9bE5lFZVr7A2fR3qoO/2
	1+eszLKREzh7xZUjdNLLiXEpgkcZZbIPmaJ2BRWDdApn2TEoslrzH4ssWfeV4olk
	ZgzUXRiJS0ssjY453dXOnJrgVOkYc/iDr0snhwxEwpMjQZ61zpZsl+dSCvMZgT+0
	lfL5sJA8REsZg0l4ysRBNM1fHj9AmTvmimzzVd5kCoSTlmfyFmrDvQ+eh4mJi+Oc
	QV9OmnHXir9IVbkeNJnnt/XvKlfpVPgIJj6YUNymBNbNwT0VuAqjkAyoyTSXZ2bn
	AA==
Received: (qmail 1208504 invoked from network); 26 Feb 2024 11:41:37 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 26 Feb 2024 11:41:37 +0100
X-UD-Smtp-Session: l3s3148p1@XPrTjUYSYHZtKPIz
Date: Mon, 26 Feb 2024 11:41:36 +0100
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Rob Herring <robh@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: i2c: mux: i2c-demux-pinctrl: Drop
 i2c-mux.yaml reference
Message-ID: <Zdxq4GnRyjC07EH8@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Rob Herring <robh@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240124190552.1551929-1-robh@kernel.org>
 <Zb6nBYTkZmXZ0G2X@shikoro>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZokECiHDjO7diAZl"
Content-Disposition: inline
In-Reply-To: <Zb6nBYTkZmXZ0G2X@shikoro>


--ZokECiHDjO7diAZl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 03, 2024 at 09:50:13PM +0100, Wolfram Sang wrote:
> On Wed, Jan 24, 2024 at 01:05:50PM -0600, Rob Herring wrote:
> > The I2C de-mux is different than an I2C mux, so i2c-mux.yaml is not
> > relevant and shouldn't be referenced.
> >=20
> > Signed-off-by: Rob Herring <robh@kernel.org>
>=20
> Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Andi, can you pick these up?

Or you negotiate with Rob how you want to handle I2C DT patches. I
agreed with him that I usually take them. Except for generic cleanups or
so.



--ZokECiHDjO7diAZl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmXcatwACgkQFA3kzBSg
KbaQnA/9E53iIf+fJ/1fcCXflR+wlGvFZPNH9q4sYiD++nUHyWWYwlw8ACIcqsVF
1WsQhN1wFS0ClGmK6Pr3UdtsT1Dqq2Nfo2k5ceq+mWJ/fGsMk6+6Tn8iIMmioMif
eY97O8sG3YofpN61ew6xGKuhEkf7hz+lDoh3bxdlcnECUiZ6oEzPb9GiQy9Xqgtn
PdZAXc7oqI8U+ydTyEokdAgvurTaTBPcx8ToOf5uptk5Kt+ib77igJDcZVWwi5YB
ZHJAMRw3Ac5n5/xYQelFnpAVnMLGaU5Bd2G+syLa63ARYw38Y8Y+bhLlqbZ22g+Z
8rZpe+SvZGeudyRnrT8VrOu4N5vlbUimCNZCRq2dK2nNyi8pGO5UjhTrfOJIiKyr
aGNIATsA3wN5HEslm9Y7gdjz3RbBuJ3ADeRgcvQgoP5Uvl27+XRo98Z0scxZy33v
rOodmLUGHqal3nm0w1mU3g525QjVjXA4DzhPkipMQRg8DLFyUmmO7G5CvXz+sJZU
7bfGN+FG8uRGFA7DdJCQXQhkP2TIMkJbuncSyAaCXSfY2w/+LYM1YtrOKOIT4GLV
u5z17chqQlFKN2IqM6S264DI73vs6bWVfxdgBtMjsvhJtzJ4wnfk/vHPuTOCctAl
XQKnoT3v/Tj+U5b0I+ZgcwQlGPJGpTFOu+mMrRY54kfUogxzS6g=
=GL/q
-----END PGP SIGNATURE-----

--ZokECiHDjO7diAZl--

