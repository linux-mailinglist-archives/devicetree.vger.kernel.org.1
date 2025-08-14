Return-Path: <devicetree+bounces-204832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD00B27051
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 22:46:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8A7CB1B654CC
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 20:46:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C971A258CF6;
	Thu, 14 Aug 2025 20:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ajp0MAan"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A495E21A444
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 20:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755204368; cv=none; b=TSdbOwcIiTTxX4vpavgvrU2p+Os+WFqH241ia47b9cqrn9sMulchBYOR/lNlmJxnqccQCMA7N0aWdPJFlWEV7pzsoijiMmlDLsAd6aAR9YfweV5LTR+Q6csKbJZPkPGg803z6Ew9n4ckx5pgDrbeOZ1+1f2Q/XgGEbzS1VWGaTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755204368; c=relaxed/simple;
	bh=kfnCXyA/oCmJMg63qZA9zeEFaDLAorqeev+pssB07o4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mQUf+rWEKCLdbt12dKx+xD6TeXpfeEkvtDT7rWpvWBPsKc3HlSseAXskP48RUB+bCcQRntuRw+ggnojIkR+CLaDKXM8MwE0rU+MR0ZvU+oVNB9g4ptQgMqjOjUrL/adfDZwJdCF6H3WX+yQJtjSs42gkzeP4O2YRT4G7M1mLlTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ajp0MAan; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82092C4CEED;
	Thu, 14 Aug 2025 20:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755204368;
	bh=kfnCXyA/oCmJMg63qZA9zeEFaDLAorqeev+pssB07o4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ajp0MAan8mnfg02TfjT5lUysbCxrw9yaulIJev4x2yyw2W8TyBdyIc+cNZBNa8Yzt
	 9JsY7t+F0nVj42y759akjlD/N+byuugu1Qm8BQ+1PJyZEs6SqKW7L3UI71D2QUtErj
	 SaeRcSQxnUWjck0ZDY+85DFkd2JdYQ9NDfm35Z0SUuFpVvhSQ7qNxPQ/bC5qzyiOhz
	 wq/RZFJpPquHOEMBocIGdla3IgLelAZxqP44q/L1iiO+UaWEaVLkGlPkNziK2kSZn5
	 qpXjj5zp2euyB614SUbvOnAtyBuXZ8Khcyd0cm+WvXrNJrGCTJHEDsMyGxVQNpp9ga
	 gqPbA+yr3Ra2g==
Date: Thu, 14 Aug 2025 21:46:03 +0100
From: Conor Dooley <conor@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linusw@kernel.org>, Imre Kaloz <kaloz@openwrt.org>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/3] dt-bindings: arm: List actiontec devices
Message-ID: <20250814-goliath-exfoliate-e4d36c37751e@spud>
References: <20250814-ixp4xx-mi424wr-dts-v1-0-b7c10f3c4193@linaro.org>
 <20250814-ixp4xx-mi424wr-dts-v1-2-b7c10f3c4193@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3+kleRLDHyW8gH3M"
Content-Disposition: inline
In-Reply-To: <20250814-ixp4xx-mi424wr-dts-v1-2-b7c10f3c4193@linaro.org>


--3+kleRLDHyW8gH3M
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 14, 2025 at 06:40:04PM +0200, Linus Walleij wrote:
> One two IXP4xx device families from OpenWrts backlog:
> Actiontec MI424WR revision A/C and revision D, both
> of these are IXP4xx devices.
>=20
> Revisions E and later use different chipsets.
>=20
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--3+kleRLDHyW8gH3M
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaJ5LCwAKCRB4tDGHoIJi
0nhDAQDw9dpawR+UCnD7Nl74TDq6wKcVBgBVKbqWB6SihMdXvwD+IGnzcnDv6QLl
QI/cAnnWJd7kuyTsJks4WWVrhIdA2g8=
=Do5K
-----END PGP SIGNATURE-----

--3+kleRLDHyW8gH3M--

