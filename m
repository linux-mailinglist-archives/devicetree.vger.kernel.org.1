Return-Path: <devicetree+bounces-218906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A983B8582B
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 17:18:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 65E773AB128
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 15:13:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0FDF214812;
	Thu, 18 Sep 2025 15:13:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOpCyvRD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76DE61A00F0;
	Thu, 18 Sep 2025 15:13:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758208396; cv=none; b=IZxGPoPQnS2EmMHv6+Vq+C4rGUfJpLtA9xQjJkgTEBPq089U0ohmLXcOlgcJ41J5EgGe981Dsd406CoAnVEwT3wK0yVJE+mraRznufDGn3XH0L1mb9m6I4QX+xlDi7npkHqYKDtR2l5eRr6fBSmyTpgAmfbTEwIPXLAqJO6skfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758208396; c=relaxed/simple;
	bh=MTQzEFQiULsusrEoiFHrUIY5UVxjD6bMm0XeIsQK0Sg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gxlsF9o+LzYrTWxZwcyD4XyjTV0y32+ZOZQVeq/ogCoXEXKvn+3XMKuuPP3dSX1XaaBS1dqOosqF0dtuKhwZ8sfHBZXc7/5NV1B5cIhUUTczbpwE8ZBW0nExNHSGt4fLhFofwO7c1KSjdkrPzLvBz0NRkIA9ol68X58BCOoh/dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOpCyvRD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8DB5C4CEE7;
	Thu, 18 Sep 2025 15:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758208396;
	bh=MTQzEFQiULsusrEoiFHrUIY5UVxjD6bMm0XeIsQK0Sg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JOpCyvRDsW9Il8ySCZwzhVqD3CavFZiKMcDftrKXTocuE3EX+EulR0BgBXqiyUc86
	 tm8a5J1XPpdfPQbuxnadH3s+xsujaYWZSLq29TMQtBMQyOg+Zoc8fA+QHo4j8dH4Z8
	 jMcJ7h+NIry4rIQ7eqfM9FXlIdOdqcPQRTrG+pnv80g/G8q5hYVH8RcUC/H59+kgFB
	 Xv1umMMLMHXPCeBEg7J3N6bSICWq7+SgtzE8EV8yb6VicWQ5gqWAZnxHTXe3otSbJS
	 V16k9JQMtCC1H3BOQOyjtKE562+Mp7gAjqAOUin3tD6hdsG0GeaWbMR4k/ROEiu/kL
	 L1ZC6uY72K4dA==
Date: Thu, 18 Sep 2025 16:13:10 +0100
From: Conor Dooley <conor@kernel.org>
To: Cyrille Pitchen <cyrille.pitchen@microchip.com>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Russell King <linux@armlinux.org.uk>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/5] dt-bindings: gpu: add bindings for the Microchip
 GFX2D GPU
Message-ID: <20250918-unbalance-shrubbery-8038941c6797@spud>
References: <20250918-cpitchen-mainline_gfx2d-v2-0-6cfac9d56612@microchip.com>
 <20250918-cpitchen-mainline_gfx2d-v2-1-6cfac9d56612@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="h3/7+aMqJ6Ffw8WC"
Content-Disposition: inline
In-Reply-To: <20250918-cpitchen-mainline_gfx2d-v2-1-6cfac9d56612@microchip.com>


--h3/7+aMqJ6Ffw8WC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--h3/7+aMqJ6Ffw8WC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaMwhhgAKCRB4tDGHoIJi
0kTgAQD8JKUvi3YGAWpBtFlr+fWrmGnI2vCnimmP2oRKPXftkAEAjWLLhsT2G/h9
zhB4+qfto1vN11PxMJHIQRK+sDB5+Q4=
=0XOG
-----END PGP SIGNATURE-----

--h3/7+aMqJ6Ffw8WC--

