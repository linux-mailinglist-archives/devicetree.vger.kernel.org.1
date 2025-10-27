Return-Path: <devicetree+bounces-231662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F744C0F788
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 17:55:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id ACD4A4F811C
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 16:51:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 589F43148C1;
	Mon, 27 Oct 2025 16:51:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSos1m45"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26516313552
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 16:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761583873; cv=none; b=hb7a1w9FKubgZ0lmjCSe8D7sNN83hshf2FsUudOoUOXyXqEsbuUYZ5lrdLQ692V1fRttc1U4iQl7osAWvnoi/ucCwyXz+Xgmqxn/nl6W7+LR45radxo0vbHnvLAyj7vZbLC0NwTIwu/Olpk/QIlE9pKtXS+7OeaI74MOx+SXlfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761583873; c=relaxed/simple;
	bh=+Ikopio+4rlJHw3bTm9z1zPFxyYc7R5jz3S5E7zWu1s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BFVRSEs7ZrXktG4u4hYTvauhB/5N2nmWNcN+XlipPiOvI3lr0+umrOz7Tj1gW1Rg+7YHuwLeIevh2CZqnlXjps/HWa+opLHgcaB0bVjLbt0jlbXdNVqodEEHxiBRAOQU/h1odAJ8D07kEIXmSi/+kO1zCk1yc/m3+3NleH20CVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSos1m45; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 442F4C4CEFD;
	Mon, 27 Oct 2025 16:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761583872;
	bh=+Ikopio+4rlJHw3bTm9z1zPFxyYc7R5jz3S5E7zWu1s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qSos1m45Q4MNAIOh/Vvw6zjJEh1YeBOtFms245ejWuHce0vaO/R8D0qeD+vnyQl+m
	 1S55l59YT91+h6PaTYdHlAqgbhZXXqavRmrKI3WUx4OXj47/MnFgUl8AFO692g7b3C
	 /Tz5hFSnOU/uLcYVC04UQCrsIcfdK3Us6RuYmwAlOXQTxiFbwAjIewiLFdrKW/X6MU
	 7HSxa+5QrUBm6/9kvCtuYJHTb6vZaU87nvNDF1Cs6e5n+vniSzFxjnaHaE5DyboR2h
	 Tav4+syDQepGb0xAzewPvwbAngfsGXRtDL+T+TfkkMHPhyWgM4PW9xrlRWqC4/IMRL
	 /uqFj/Ne2CXtA==
Date: Mon, 27 Oct 2025 16:51:04 +0000
From: Mark Brown <broonie@kernel.org>
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com, Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Melissa Wen <mwen@igalia.com>,
	=?iso-8859-1?Q?Ma=EDra?= Canal <mcanal@igalia.com>,
	Maxime Ripard <mripard@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Stephen Boyd <sboyd@kernel.org>, kernel-dev@igalia.com,
	kernel-list@raspberrypi.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: broadcom: rpi: Switch to V3D firmware clock
Message-ID: <10a4ef77-0e70-4ef2-b1df-535b476d256d@sirena.org.uk>
References: <20251005113816.6721-1-wahrenst@gmx.net>
 <9ebda74e-e700-4fbe-bca5-382f92417a9c@sirena.org.uk>
 <a5e1e279-7e20-458d-a75f-787e0adbc9fe@gmx.net>
 <ad07546f-0c2d-4bc2-b794-755b892c7328@sirena.org.uk>
 <a016e7e1-09f7-4056-a855-6cfaa8d51962@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SEkriafkm8cMGXAM"
Content-Disposition: inline
In-Reply-To: <a016e7e1-09f7-4056-a855-6cfaa8d51962@gmx.net>
X-Cookie: How do I get HOME?


--SEkriafkm8cMGXAM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 27, 2025 at 05:43:21PM +0100, Stefan Wahren wrote:
> Am 27.10.25 um 13:07 schrieb Mark Brown:

> > No.  This is happening in mainline (was originally reported against
> > pending-fixes) so wasn't affected by all the module breakage, that was
> > separate.

> I think, i got confused because I was only able to reproduce this issue with
> the broken linux-next. So I was going for the wrong cause :-(

> Do you use arm64/defconfig as kernel config?

Yes, it's just plain defconfig.

> Is there a HDMI cable connected?

No, the boards only have ethernet, serial and power connected.

--SEkriafkm8cMGXAM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmj/ovgACgkQJNaLcl1U
h9Bi8Af9HJF4gLivbPe/q4aY+lhdEokB01CfSAy4tyT8TEF7Y9/1p+4e4ziTcaps
scwoPjV2rcsUG6TeHSkrXMUzHcmIM8ISIettfZcAeDJpiEZCeMWtHVT3HCXyTUQI
wYL7sMkS23SZ8cLIU0HsQnKu1SkJen64bWHQy377buPjoty8vxjLwKn3u9d7+Db9
iRyCIu88KQktSP/KalViloulz+pN0bWPmcOBVAKZesGqtq18EdEFj8n8XQQ6U/SM
VqoV842V6MLwZzSm5ZJwizev4sbsF/1wkcGVpXDvTJQb8LZq2N9fQthlzFOFer+D
EWzz0pkWqYyS6cHmOoG8vTznqHJLuA==
=kK0M
-----END PGP SIGNATURE-----

--SEkriafkm8cMGXAM--

