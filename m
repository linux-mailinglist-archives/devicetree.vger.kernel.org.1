Return-Path: <devicetree+bounces-142900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C43A26F8F
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 11:50:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5DE001666F6
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 10:50:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E4E320AF8B;
	Tue,  4 Feb 2025 10:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="GzPVw4qJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E29920AF9D
	for <devicetree@vger.kernel.org>; Tue,  4 Feb 2025 10:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738666219; cv=none; b=Hx7pKkQTICIcX/jsTv8gG4i3v+CcCgUlcGAjN0qghK+ZmScEE4621Ue+zMuWcvuN/qPHQvvLaL3ejoUmK1VYvEXvPaEFcF0o+eSNSJNJzrnm46Gjt/6F4wltcgxSl6RdvXjV1mWNGfs/8sXpm9fNzBi6gmioFdo1Q25Z9x42pWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738666219; c=relaxed/simple;
	bh=9ipP3kFnBl1cxLbmAISW/VKp/4wIJ90jIpMVzpvjG9g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L/Zw7xS/oFO0eggOeCXLQregKawIOUalhpgKeNmmrZqwlURO5CBv4KnoggUK/0UZoBaZuCzsbvlkrVcBt24LCpkAFIOHGEoj3IbwBf919bLkgaVIf1oPxbLThTKb1NZbPHgzXCqXO+NwhE7H0LEUc2/4vzNjcwno6D5H/Sr02TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=GzPVw4qJ; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=9ipP
	3kFnBl1cxLbmAISW/VKp/4wIJ90jIpMVzpvjG9g=; b=GzPVw4qJyLJyd/fbQZ7G
	uL0XNaCAeSc1FjwBXAdyx/TbqvrdPZ41HSB9TUdxoPwF/BHJVRVRgcG4oaDcNeWC
	xM84N1Ff7EXsxNck/rkvBfJb9Rvb37RLeczgc/HAM1kq3lJQATtWNveEcaRJM/co
	fT2kpE9zNAR6owBTc5yV0xZ28fj/++IqvKzUxFsS0R7S5aZLBDMSwQGchlMFqkhs
	6/qO90c9z/GqHS+s1611+UK6dd2eHVgnINEjkwKctnNJaBZTYBydPi9pjbmJHunf
	sIMbSF5xM0tDUzl3mSMC+GF7GM5XYZw1wjvPf/DLrglrfrGxGEp0zwCVaZZ2E4PV
	6g==
Received: (qmail 3006169 invoked from network); 4 Feb 2025 11:43:33 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 4 Feb 2025 11:43:33 +0100
X-UD-Smtp-Session: l3s3148p1@JEQlrk4tDIm5aIpF
Date: Tue, 4 Feb 2025 11:43:32 +0100
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 0/4] ARM: dts: at91: calao_usb: fix various naming
 problems
Message-ID: <Z6HvVDV0tE99w3od@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	"Rob Herring (Arm)" <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
References: <20250131210236.36212-6-wsa+renesas@sang-engineering.com>
 <173835855390.46028.13185945524234872285.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kuNg0v0oHwc+O7+H"
Content-Disposition: inline
In-Reply-To: <173835855390.46028.13185945524234872285.robh@kernel.org>


--kuNg0v0oHwc+O7+H
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> arch/arm/boot/dts/microchip/usb_a9263.dtb: /: failed to match any schema with compatible: ['calao,usb-a9263', 'atmel,at91sam9263', 'atmel,at91sam9']

I forgot to mention there is a dependency. As I need to resend the
dependency anyhow, I will put it into the series.


--kuNg0v0oHwc+O7+H
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmeh71AACgkQFA3kzBSg
KbZZhRAAnyOerZ2rDH0wAShdaSb2n/zw0gASiSdkVv6VgfRFgbX3S1+YuxwiWWqP
YM1OLrMBfGUSCLx9DZSy+Ph/ZxWX89BQP/NobQ76R/GCn7/7HnQNMsmobUzrDORe
UQWebxjEvbLPb/Wj8DSFC383jWV9b4/WYI8CQyU1MVQn+YsR0pACkPJGywWYegjV
Txwv5y8qqZhnUShKyAR4ZOzSMqQio8+XCjWzfQ2Ocm4kqP3P1bY1w5cx4O7D6gBk
BsoXoFMOCiscHAcHnlSLUOJflPt981FPApRJ5uS8ivscanZz2xoOqLCZHv9GkP43
oXY1XPs2k+UzRQSJN84s28L8MHNBuOG8lRV7IiQG1shgp99bhLsSw68d/lqcXnq1
a8k9sn7VXNHS8XJCGaLKjCQS04o5QI7AiS47+RV/gF1F7eiZ6ngwJQuTFFoJyPiy
zWM5EC9JLgFzxiF3U0jk4u4gP28vMZC3Idx5bZbmB1d+ejokiB9lek4S6/SvuJgB
iXrd+KzHJc7aohAiIJA8p5HcPfIlVbh5X4nXiyt6bGNskFAXfTij0wa0huecMyZm
RmvH7Xe5YBuYUArvgWDsbrk3hwQX49qi6OZsTCQ2/p2T6lzrk7g/qzu6NZbhV8Ca
Xjs2GGRde/jsy/U72N8E5UI9f3X/NutLwzkqfCXX/bqZI6SDPng=
=/aAy
-----END PGP SIGNATURE-----

--kuNg0v0oHwc+O7+H--

