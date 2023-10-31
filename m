Return-Path: <devicetree+bounces-13185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A927DCD4D
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 13:53:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 525C61C20BB4
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 12:53:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1ADCA46A0;
	Tue, 31 Oct 2023 12:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFqNwfKF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F21A315CA
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 12:53:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54B7DC433C7;
	Tue, 31 Oct 2023 12:53:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698756802;
	bh=0t3IKrPFgiqf2EohJYkK9JIarq/qoo7KRj3/Wzm+8r0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fFqNwfKF3IvXgzpRWY/GGCo1g7N5HTZ4LVSlnYhInGA7stwDSsM3V24XNeD3lTe72
	 1n7XO1hmSbOVc3ejmJvKDmJM5Amf8faDt7HqqKfEmTE7w5sTBcvc8cS2OF1dL/qZWO
	 4Y3sOpFac/CYli0FSwf75gpvtnHPV5FxxNhNTN+YbPGQy1u6/WIUcaywa9QFSW2s1n
	 chE0YogbYmI8ocDJ6acvZIqXVjxQhnYam3gRfTmirZic7F6B6gzTzeUW9IZe8e9BCm
	 Ziv8cwwvn7kYWH8E86eed8Rg+LW7ZVlzGT6SNO5wevpp1sLqR1tGv292WGHnmBIScl
	 TmWXUykuYiDKA==
Date: Tue, 31 Oct 2023 12:53:14 +0000
From: Mark Brown <broonie@kernel.org>
To: Artur Weber <aweber.kernel@gmail.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Stanislav Jakubek <stano.jakubek@gmail.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 6/6] regulator: bcm590xx: Add proper handling for
 PMMODE registers
Message-ID: <63356933-3da7-4068-ad77-0f0e8d8915be@sirena.org.uk>
References: <20231030-bcm59054-v2-0-5fa4011aa5ba@gmail.com>
 <20231030-bcm59054-v2-6-5fa4011aa5ba@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JwakjBWjo5Y6WgSv"
Content-Disposition: inline
In-Reply-To: <20231030-bcm59054-v2-6-5fa4011aa5ba@gmail.com>
X-Cookie: Is it clean in other dimensions?


--JwakjBWjo5Y6WgSv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 30, 2023 at 08:41:48PM +0100, Artur Weber wrote:

> +	for (i = 0; i < pmctrl_count; i++) {
> +		ret = regmap_write(regmap, pmctrl_addr + i, mode_mask);
> +		if (ret)
> +			return ret;
> +	}

Why not a bulk write?  What happens when the new values are partially
written, both if there's an error and just transiently?

--JwakjBWjo5Y6WgSv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmVA+LkACgkQJNaLcl1U
h9Cn4Af/avvAKVxZeTeXLPlGXQMqtb8I4zu45eiTGPiemTnzPESQOjREO+R8XzqM
jw6zhgziB7wn+dWLfhlZ+rgKu2NPzOiclg8qtHn9iG2IMTWdvxxqD5T1BAWR07yJ
gSEKdMu3eMa1G+3BHCVVh50OtZcIw00ZjsJmtMQddwv9PJH39gy59vHnRPlju8VR
Fi1HECtOyj0YY6sH+qH0QlsJjWwGO2uCDRKHUNke9HKMn+qCKWsZ5INdY3+c61yC
ybW8Z0EGWsVewY53n5XNnGEJoAUSoMjyBlHO62/4vd8j/Tsy8ZsCxq/01JCkofL1
MDTD84p/0r379datrbXKRu6c1RCKjg==
=ph1+
-----END PGP SIGNATURE-----

--JwakjBWjo5Y6WgSv--

