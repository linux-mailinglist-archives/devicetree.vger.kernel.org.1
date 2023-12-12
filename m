Return-Path: <devicetree+bounces-24411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB7680F25A
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 17:21:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5A5E0B20B6A
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 16:21:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93C1377F1A;
	Tue, 12 Dec 2023 16:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gaJ/cK3a"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70F8E7765B;
	Tue, 12 Dec 2023 16:21:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C6B8C433C7;
	Tue, 12 Dec 2023 16:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702398106;
	bh=I4hXkEoUTFcolc2OptvZYGQLuDHWI9mD2TQ75fDGAEg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gaJ/cK3ae/NyZnW+kIfXD31ZVQhxWOZvEpEiCVaZ2axAEt8mVlkfRPOH7ZSZz1vbq
	 DLCfEavz6/qjkfAjqzIjV1AHKLEKaNugKFiqJZ3wgh+siQAnwmyOiaSO71VYUtuMAw
	 5yp5ECVxUihw9upcoHDCAEwoE53y+gipQccjtaUeNeCpnwvzeVQPmzD+ycWnGs3j8n
	 Nfsl9d2RQwEA9bvLFqEbgmlPTy5ACynj/IAbZyLZzi+ZKxHjg/s32OCuwLJuS8K9ol
	 V5Pa/ygKBO/eCWPJ3UTgIVD/om+8hOznatNNxeZbuDcUn6NZb2Gj5R2KXnEldsah5A
	 wL0bvkZNkNtTg==
Date: Tue, 12 Dec 2023 16:21:38 +0000
From: Conor Dooley <conor@kernel.org>
To: Daniel Golle <daniel@makrotopia.org>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Felix Fietkau <nbd@nbd.name>, John Crispin <john@phrozen.org>,
	Sean Wang <sean.wang@mediatek.com>,
	Mark Lee <Mark-MC.Lee@mediatek.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Alexander Couzens <lynxis@fe80.eu>,
	Qingfang Deng <dqfext@gmail.com>,
	SkyLake Huang <SkyLake.Huang@mediatek.com>,
	Philipp Zabel <p.zabel@pengutronix.de>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org
Subject: Re: [RFC PATCH net-next v3 1/8] dt-bindings: phy:
 mediatek,xfi-pextp: add new bindings
Message-ID: <20231212-renderer-strobe-2b46652cd6e7@spud>
References: <cover.1702352117.git.daniel@makrotopia.org>
 <b875f693f6d4367a610a12ef324584f3bf3a1c1c.1702352117.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="WPQBtHmwAqf+kt5+"
Content-Disposition: inline
In-Reply-To: <b875f693f6d4367a610a12ef324584f3bf3a1c1c.1702352117.git.daniel@makrotopia.org>


--WPQBtHmwAqf+kt5+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Dec 12, 2023 at 03:46:26AM +0000, Daniel Golle wrote:

> +  mediatek,usxgmii-performance-errata:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      USXGMII0 on MT7988 suffers from a performance problem in 10GBase-R
> +      mode which needs a work-around in the driver. The work-around is
> +      enabled using this flag.

Why do you need a property for this if you know that it is present on
the MT7988?

--WPQBtHmwAqf+kt5+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZXiIkgAKCRB4tDGHoIJi
0igfAQCIaKPOwiNl671rEJW649XaWHfBlXjLZAGVfwCmX2BsbQEAyKovajF2JIX8
oC8ansV48AdAaqaRErICzJeNb8cD4gg=
=vMqS
-----END PGP SIGNATURE-----

--WPQBtHmwAqf+kt5+--

