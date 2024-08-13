Return-Path: <devicetree+bounces-93359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5523A9509D2
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 18:07:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 865AD1C20B51
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 16:07:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3ED21A0AFB;
	Tue, 13 Aug 2024 16:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QB1KfuiK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D04A71A0715
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 16:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723565175; cv=none; b=dLdxE+0KPbFtJ84bjkR1o4DqrLoTLcJNiWPypEWodL4+Px0/4K1ScS4d27h3GHCGsZTuyL5s4seYiTFQCTzAOqMm8VB7bNty23v/3ndEAzTI5IwtHeroOft82E6m9/RLzB5fk14/9pPZcxqhAxY1wYlNL24eawQ6itNStnW0q3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723565175; c=relaxed/simple;
	bh=T7uWzh/8GXK6vV7Z9wpmODp4NtAaI21CEQhAx3gybR8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YVZMCyjzW+Q1cspWfUn7pt7sGrNsgfV4+wlEjUBfmFOhd2Xwt/AZdQWEFNj3POffxfMNUKER/B8m6RkyaHBriYSJ+6r1jo5QjLEFP7CK1gN4tDJuAbeGNtOru9k1rWjPd79XL89Rd5VFPnE2rBvkmJ42Cs9cBbCHFAOWseeAGcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QB1KfuiK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9666C4AF09;
	Tue, 13 Aug 2024 16:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723565175;
	bh=T7uWzh/8GXK6vV7Z9wpmODp4NtAaI21CEQhAx3gybR8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QB1KfuiK+PoxPhau7yXiLmA25T3L8+BZTUG9Jas3mIRvTDBxctADYc9K03NClJBXW
	 65RMmQU75MGucSYm8NtOi4AWtOHs00qWvsyQPw4KxAN3PFst5m86KzGRfaOd3A3+1/
	 2dAceEM6/YfSfx59So5gH/ii8byHtBJOGywqgcLAeJ78thwRp12h/4BnZlhCIhd8oe
	 TT1/nHm24zvW+ZJYU3Qezpgl80j2hUZMPH1Ms3QR2CReSa9C78p+UnNcovclvs+3yf
	 LTeoijgbosUKZChm0txVZxI8zX9QIOsSrFdtvUzieQNgAMAeZb3v0Tqwh8y5FKjimZ
	 d07rrzgVB2Lpw==
Date: Tue, 13 Aug 2024 17:06:10 +0100
From: Conor Dooley <conor@kernel.org>
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Andrea della Porta <andrea.porta@suse.com>,
	bcm-kernel-feedback-list@broadcom.com,
	linux-arm-kernel@lists.infradead.org, kernel-list@raspberrypi.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH V3 RESEND 1/4] dt-bindings: timer: convert
 bcm2835-system-timer bindings to YAML
Message-ID: <20240813-fried-handheld-239f57d40a6f@spud>
References: <20240812200358.4061-1-wahrenst@gmx.net>
 <20240812200358.4061-2-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="QvgAwF9bjR25Iv4q"
Content-Disposition: inline
In-Reply-To: <20240812200358.4061-2-wahrenst@gmx.net>


--QvgAwF9bjR25Iv4q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 12, 2024 at 10:03:55PM +0200, Stefan Wahren wrote:
> Convert the DT binding document for bcm2835-system-timer from .txt
> to YAML.
>=20
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

--QvgAwF9bjR25Iv4q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZruEcgAKCRB4tDGHoIJi
0kEDAQCrplBUqDoMnLw+VWDGOKW/Bzxc/wVm+ERCqru2qP2FdwD/f3MusvCT16nW
oujCVkThYbfNdlYG4sHGAGYVmI7FrAM=
=0HRj
-----END PGP SIGNATURE-----

--QvgAwF9bjR25Iv4q--

