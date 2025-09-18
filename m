Return-Path: <devicetree+bounces-218911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 691ACB858B8
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 17:22:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E8EA73A870A
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 15:17:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D18A30CB27;
	Thu, 18 Sep 2025 15:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qweo1iQh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3865F30C0EB
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 15:17:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758208677; cv=none; b=YEivecshUra/d60085GvUMv519Ooncuon0tgqznXUltFv4rR0YB0KHuNVC4aoIVTbRfa4c+ZfkzCMpEGy+aWWjKT8pg2eko9fe1R6hwpZous9b7S2UITMnUAu2AtWQp1egaoYtnyAOz5h96U0+FdrQRKHLgBZd/sb/8WZ3WlLZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758208677; c=relaxed/simple;
	bh=PwAA7N/gwU9vvxaOkhQLh7iQOXGHAmWCp41XQkJ8zqE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u3mXW7FaCsUsYHC3VpWyWk6SYvb1TX/poAgOFY+y/8luPz55HlotMKW5LkSn29UyOE9QeqRBGWIcAQbuHn3S0pdgWcSzj1hPTL9zm5LmEkwmte92SI7Q9Gw1LhyTOyU+UxjPJ4d3pO9/xIoReeyMb9/VH1Zz4L6mSP+vkPGLUSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qweo1iQh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 146BDC4CEE7;
	Thu, 18 Sep 2025 15:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758208676;
	bh=PwAA7N/gwU9vvxaOkhQLh7iQOXGHAmWCp41XQkJ8zqE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Qweo1iQhAC30pHWKFE1qPULk83VJKNWKb7TQ8qhxQ1APVVSjQoO/nAxoVeqalQQwg
	 HcA9PpVdMlRm+Z2kvPyPA/cDC5hpCnBD6L2hMsurZMNaH/Z7gSUABiW9G7+YvfXCYG
	 M2RrphGRYha2tADyOw/2YpVxvtFN+hZPrRkQAKSUNNf7wsEc59IJyqrS8K9YRE7fO3
	 mloIFb/eLWCBukUQLLXiEmt/DiquIKqdYDM3lCicU9qeNzc7GxXtAOemBdBqJEFthk
	 NeUUPy/V1givEvdjwTF0mpaGA9qCaR5HkuE1KdkE2U3++JQgvOeBbIUEz3U4yVbNsY
	 RU91i703FkoGg==
Date: Thu, 18 Sep 2025 16:17:53 +0100
From: Conor Dooley <conor@kernel.org>
To: Mathew McBride <matt@traverse.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>
Subject: Re: [PATCH v5 1/2] dt-bindings: embedded-controller: add Traverse
 Ten64 board controller
Message-ID: <20250918-swimmable-pep-582ad2b47580@spud>
References: <20250918061441.5488-1-matt@traverse.com.au>
 <20250918061441.5488-2-matt@traverse.com.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ujBo91dhmfbCNWuk"
Content-Disposition: inline
In-Reply-To: <20250918061441.5488-2-matt@traverse.com.au>


--ujBo91dhmfbCNWuk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--ujBo91dhmfbCNWuk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaMwioAAKCRB4tDGHoIJi
0k+OAQCqPL25/HhER43nZqXe+/QZqLWdoysaPuEX1g4hfCALCAD7BRnfD7KBWnUy
dQDZnU+/e9dIBwMKq/G9ZYH1tx4d8g8=
=+R/J
-----END PGP SIGNATURE-----

--ujBo91dhmfbCNWuk--

