Return-Path: <devicetree+bounces-3910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5C67B07CA
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 17:11:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 15FA31C20829
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 15:11:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FF9838F9C;
	Wed, 27 Sep 2023 15:11:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E321170F
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 15:11:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28366C433C7;
	Wed, 27 Sep 2023 15:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695827481;
	bh=3c17RM3lgss6ciS2nZym/NDvTUzWMd7ldR5Bhl0Pnn0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UCtoaY5dOvUFWXEvXcQE6AzMVS/487g8GFk4HQIkU9T0cUOtw9japE08eYhcOs6iQ
	 DC6UbfiX6bZsiN4LMODaY9SUWHR4hv5FkMo4q/cthzcUa5rlWTpvxWrvLR92pInpxJ
	 7EMdR7Sbni79BA2fVza7VhFEikrQPf7aaQppeCMsbYnOIqw80RzNqxPsHpOXvoSLc9
	 EgbHFHcTUhLwCom07jeccyq2d37/FImwHtj3hwi3ifEeduYpWhpYlk7iPmmnidwTgR
	 VQlxTrqx4Wloa7ldTgYQGm07oEBd0V2lusHe1bZNVO+slmHooQd4wyo1YvrfIg57Q9
	 X9fNB+BGRrl8A==
Date: Wed, 27 Sep 2023 16:11:17 +0100
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm,psci: Add missing unevaluatedProperties
 on child node schemas
Message-ID: <20230927-dynasty-luckless-ca6fba85873e@spud>
References: <20230926164553.102914-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="LEwIwqrbHBA5X0WB"
Content-Disposition: inline
In-Reply-To: <20230926164553.102914-1-robh@kernel.org>


--LEwIwqrbHBA5X0WB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--LEwIwqrbHBA5X0WB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRRGFQAKCRB4tDGHoIJi
0mWdAQDn6WnFg9Y3/EaZYDN8m/l8n6cxpfzQ2aPmody64MUMxAEA8HmmiDqgcX4o
lHhz9Xqx71N+nYeXvzHVQaM5r+pfrw0=
=/wis
-----END PGP SIGNATURE-----

--LEwIwqrbHBA5X0WB--

