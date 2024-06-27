Return-Path: <devicetree+bounces-80578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA2591A05C
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 09:24:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 65B481F21368
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 07:24:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67F8D4D11D;
	Thu, 27 Jun 2024 07:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qwq/A+Nd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448D84D8B9
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 07:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719473063; cv=none; b=Gi9zlS/tBRLykKeuTRdK7qmMUjHwRwixTgM2UM9GDe5XSsMMzYf/mTCvZjm4OALEwHBumanGJTlgrrqK0epAAfHEtazeuh+cTnXpF3NmgBtAvJQx2jETVZf12mW/dSjAdAKXI9WX8F2Mp8I5s2BBBuoWwXO6Y2//IvgjzTKuyMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719473063; c=relaxed/simple;
	bh=TCsdtMbl/CjGn1WCzcRbquqZ7hzL1LyyhlF+/7YDxHM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FkumE/38pM1E0NQ1+Men3GIX1R9j0a6X7W7gExXcZW31PM2BMB2Qx5dpJg+aUj+T2oLpY6S0RXFXTnx5KhongUwvhIWGZV5dXzyKOLeSZ82jPoBBe7xrqP3MC+NPXmLtWCSvEwYtyXn8jMzZi8hYmIqV86WDZ+eamlfzQwbkXVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qwq/A+Nd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 785F7C2BBFC;
	Thu, 27 Jun 2024 07:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719473063;
	bh=TCsdtMbl/CjGn1WCzcRbquqZ7hzL1LyyhlF+/7YDxHM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Qwq/A+NdWTWyRw5QbbP9Lo3+skvizgHw7DvAfboQeR2lM7s5ghh+ak8ex1uYF2x1E
	 6GxNkc27yOmVs5UmfGMPSjLfbdSPsDoVKmAua2N//8TTv5Pl7E9YtqUNifAIwsHoZ2
	 lEp4FSYh+Hw2OFetWQI9iwJCy4pkdyk3TDqeqmlUtnSYfxKTyA6b0Pek/tlZjz6mMn
	 hxpTUvLPj+T8EcNlhAILE8vCtPNKIlehZAn0LBWfE/NThouvLFYCaYzjGazPjYkThy
	 xpTa3R0BSG1Ld3fmUkeyi20RADM5Vf1LlvvDpfVdzM70VvN43HGmtlE4vf/mDIqvv1
	 2rtWVlFa7ejRA==
Date: Thu, 27 Jun 2024 09:24:20 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, Arnaud Vrac <avrac@freebox.fr>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: bridge: add TI TDP158
Message-ID: <20240627-abstract-imposing-sambar-eb0c7a@houat>
References: <20240625-tdp158-v2-0-a3b344707fa7@freebox.fr>
 <20240625-tdp158-v2-1-a3b344707fa7@freebox.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jybhjko5zwg63e5r"
Content-Disposition: inline
In-Reply-To: <20240625-tdp158-v2-1-a3b344707fa7@freebox.fr>


--jybhjko5zwg63e5r
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 25, 2024 at 06:38:12PM GMT, Marc Gonzalez wrote:
> The TI TDP158 is an HDMI to TMDS Redriver.
>=20
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>

Your commit log needs some work.

In particular, that device is more complex than what you're saying, and
explaining the full capabilities of the device will allow people to help
you create bindings that will be able to exploit all those capabilities
without breaking the backward compatibility.

Maxime

--jybhjko5zwg63e5r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZn0TowAKCRDj7w1vZxhR
xVZXAQDfpWv6vQBq+1yTEVr22T0AR6X9HU9cbwdNsVaNpvMjBgD6Ayzw/+lC1IH4
fzVPjrW1mX+vvq6kTB+ZUtOLbBOaOQE=
=OeR4
-----END PGP SIGNATURE-----

--jybhjko5zwg63e5r--

