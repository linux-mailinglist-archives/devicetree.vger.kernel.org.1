Return-Path: <devicetree+bounces-223435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2778FBB4DF5
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 20:30:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD6512A225B
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 18:30:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24EB7257834;
	Thu,  2 Oct 2025 18:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzqgycZj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2C00199BC
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 18:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759429841; cv=none; b=EaL9BNc+jHB67MRQlpO6VLJMg8Wh3eHnXGBZO0wNOKQ6EaLMCyRjfiAqcgS9A3P9uQUakWB9OyZQVYKqVWKXF7foZzOgz6huTnbv0pyl/VAdHNAvBhOQEqCJ7aL6Q5YdKswqpPiLoJCzpIPjVxdTkOZ5cuQYC5sMYr3NH1q/bDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759429841; c=relaxed/simple;
	bh=0mh2PXI4RPCLiX+zU35do9JgkruwIWIRKLm0Jl8yX3c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cXcJ5gnk96g/WqjnUQuR0Aft1ZIrw2NEwm9V73ZdR2OVmRAeGj80/6+Pi/usx0dUbnM4zBteLUcVyUCkK9CGwsfQx7cMa1SLpnsUStsYNXOwwHdtUjZEFuLnXR7mdckw4fVMFt9+B4UEDQYpe/0DY7mLBRinOtkuZjgYXEDYPLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzqgycZj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D973C4CEF4;
	Thu,  2 Oct 2025 18:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759429840;
	bh=0mh2PXI4RPCLiX+zU35do9JgkruwIWIRKLm0Jl8yX3c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DzqgycZjsrI4nqyDFEZYHQ+O4VSOxNCY4BKkDQuaCkSw1cgyc/TgUjAlBRStFoquY
	 Sjy7dkyUIh7e6DCP3TqL/vnw7Lfouyuh6DUbLzabR6kXHHBmJ/dochZzkQBRyhMQKV
	 ppTI+AeHLe7/YgdnMWWflFVSRjRoFrIx+wzh4ONkjTog/a/VQIfYn2Y7AfJrCLrB7P
	 tQuCUvbn0db/w/JGMUnWKDMPxN+8ve0SDhv2X0Vj3/lRvE7MrTM9lu3qjxaMk79FnQ
	 u2Geab/qL/JlrujgLOZZXpBDQCw8M33oo5l6xKJn5lHnN8xaMsWwbpTaFt8s1MwG5z
	 RRK1tmRZBbiAw==
Date: Thu, 2 Oct 2025 19:30:34 +0100
From: Conor Dooley <conor@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Algea Cao <algea.cao@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>, Jimmy Hon <honyuenkwun@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Muhammed Efe Cetin <efectn@6tel.net>, Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>, Sandy Huang <hjc@rock-chips.com>
Subject: Re: [PATCH 1/3] dt-bindings: arm: rockchip: Add Orange Pi CM5 Base
Message-ID: <20251002-rehab-ripcord-043788a3c6f4@spud>
References: <20251002034708.19248-1-laurent.pinchart@ideasonboard.com>
 <20251002034708.19248-2-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ntsgCHwA2iMj9xet"
Content-Disposition: inline
In-Reply-To: <20251002034708.19248-2-laurent.pinchart@ideasonboard.com>


--ntsgCHwA2iMj9xet
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--ntsgCHwA2iMj9xet
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaN7EygAKCRB4tDGHoIJi
0i8HAP9YE/REwXXRgakNjtjNxjA84B7owoCO2nbe0IWr959JlwD5AUKlhJChjLP5
u8llwVBhX+ZbpzsLfMHeNR8tC5vk1Ak=
=/5jM
-----END PGP SIGNATURE-----

--ntsgCHwA2iMj9xet--

