Return-Path: <devicetree+bounces-132855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D62269F8563
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 21:08:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE72C18945FC
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 20:06:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE4D71C5CB2;
	Thu, 19 Dec 2024 20:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6TdLR+M"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A48FD1C1F05;
	Thu, 19 Dec 2024 20:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734638472; cv=none; b=hF0/YLda1dDg3DjAlhvBoacM69OSYxiA95wOn8OeBgVtPnHuoWuj3oLidzWxcP+Flu6XoKhbfpEobiSz+2JLV9hP0N8tPJv1Dwvcy10u2lbedxdFdFxmhBrLbiJrUx8EIueBHeG0EvY7GvV7gT9sugoCkbYlAmuEOa0Z0YmCHUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734638472; c=relaxed/simple;
	bh=znyT96NwkypUkxFvAf4my1nVUYw5GJdxoe8C90powIE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gaQJ+9t8Q/ComNWrpT51V5I2VQmn/UI+cAZArom1k00vX8/73USNpa6ZHMEUGuj40uTzduVyNB56wpH60Vxipxvj0x0hKonfWE0Z11bLn0iwQJPR3q+RHf8XnmCKCNnT5eFcE4QVBfNrD7TqVNLui4xOhIanlVX2mkGpNWPUpxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6TdLR+M; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 277F4C4CECE;
	Thu, 19 Dec 2024 20:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734638472;
	bh=znyT96NwkypUkxFvAf4my1nVUYw5GJdxoe8C90powIE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a6TdLR+MMfrK5eiw/0oDYsFqM08PhAmklPBS5ZTgqsgrD8cYIJMIdo9r6/5grJEf5
	 nwn8yZ1cFVs0iMeW5s0U1jhBePxjcsHlcotJQ13AEWxUmGelhoTXcWiCf0yc9UhMbg
	 OsnWonVxfbG59nB4ZzoAGcvaDWhPZ7cw53mrFBZXJS0MN/MMLfnla1OLODlybRVzo3
	 QqDiu8HQWuK5UzmB7167u2GWTwSvyUFkXywcclVU+nnnHOsqAdKBZYwqECm1kIFtFU
	 9iS4vf0ABPfozRuHON+OSsPJ+Gr/1SNRRpG+1gRu3faRiMZYwOoLjeSc0wbsr7DWuS
	 f9btMCj2xstdg==
Date: Thu, 19 Dec 2024 20:01:07 +0000
From: Conor Dooley <conor@kernel.org>
To: Charan Pedumuru <charan.pedumuru@microchip.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mfd: atmel: Convert to json schema
Message-ID: <20241219-catcher-genre-5ea63d8e6587@spud>
References: <20241219-gpbr-v1-1-e19a562ebf81@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Zy1sd7hEFBhjy0R2"
Content-Disposition: inline
In-Reply-To: <20241219-gpbr-v1-1-e19a562ebf81@microchip.com>


--Zy1sd7hEFBhjy0R2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 19, 2024 at 11:12:50AM +0530, Charan Pedumuru wrote:
> Convert old text based binding to json schema.
> Changes during conversion:
> The text binding is misleading, add a fallback `atmel,at91sam9260-gpbr`
> for both `microchip,sam9x60-gpbr` and `microchip,sam9x7-gpbr` which is
> missing in old binding and `microchip,sam9x60-gpbr` is not a fallback
> for `microchip,sam9x7-gpbr`.
>=20
> Signed-off-by: Charan Pedumuru <charan.pedumuru@microchip.com>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

--Zy1sd7hEFBhjy0R2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ2R7gwAKCRB4tDGHoIJi
0gYkAPsFKMHeABypDLDH+ewRLZ1ax1Do381DqhEZ19Ri/IU3lAD+K2LsJ8ZwNMTJ
PJZkW9XVehehUmAdj8TMOYp9FDJHRgA=
=R7Tq
-----END PGP SIGNATURE-----

--Zy1sd7hEFBhjy0R2--

