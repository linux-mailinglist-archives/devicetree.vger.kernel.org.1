Return-Path: <devicetree+bounces-7395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E23297C04DE
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 21:44:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE3D41C20B9C
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:44:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBE8D321A5;
	Tue, 10 Oct 2023 19:44:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7KrsoMc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFFEF3219E
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 19:44:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B770EC433C8;
	Tue, 10 Oct 2023 19:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696967071;
	bh=3C++hF0g2xnKijtFMR04daPdF8gMLF1v7H3LnvxMEhg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t7KrsoMcqOmJb1MuzJxoEBEyUaRciAvWD61supcifUDsRdoYMEPuVEuFWTABqJ541
	 jxulDs09PYKpUgBhJUj/eA4O0OoR1ai2BuCNy7vlrAdO/kUfSa4q6wu2zEYJ87lUVm
	 CsCbcawg9RiP8bY55Tu1sO3CjpZ5hDeWlgK5y4LvP32ngvGyio3Q3o0yJoiCUDCLvg
	 z2b4RgpuRZTpxo1dfk7931Jl8D4VHhgcJcoeWIegFeRjdd656UDokKnZ+3ERDpDOzs
	 dOk98eBpG9v1IiTiyFmBb12OLpEOa0axyhkB8nsfEBV8h5brrzZSx6WPc4deYS46k7
	 g2yP0X3R631ww==
Date: Tue, 10 Oct 2023 21:44:27 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	loic.poulain@linaro.org, rfoss@kernel.org, andi.shyti@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, todor.too@gmail.com, mchehab@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/5] dt-bindings: i2c: qcom-cci: Document sc8280xp
 compatible
Message-ID: <ZSWpm/7xnoFkUn31@shikoro>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>, agross@kernel.org,
	andersson@kernel.org, konrad.dybcio@linaro.org,
	loic.poulain@linaro.org, rfoss@kernel.org, andi.shyti@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, todor.too@gmail.com, mchehab@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
References: <20231006120159.3413789-1-bryan.odonoghue@linaro.org>
 <20231006120159.3413789-2-bryan.odonoghue@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t6Aj+rePpll//Dod"
Content-Disposition: inline
In-Reply-To: <20231006120159.3413789-2-bryan.odonoghue@linaro.org>


--t6Aj+rePpll//Dod
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 06, 2023 at 01:01:55PM +0100, Bryan O'Donoghue wrote:
> Add sc8280xp compatible consistent with recent CAMSS CCI interfaces.
>=20
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

Applied to for-next, thanks!


--t6Aj+rePpll//Dod
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmUlqZsACgkQFA3kzBSg
KbYxYRAAr7+ppZOIsAJ24eXrV+W6sJDcUrxv7CSK9IjgX4II8QHuJJPwGW1iUeax
LOgmBQcvDP2hQKG3oaAWcpn0UWly1ny4n6iHLyMK9EDiKIPkXVr64G5sfN/iDRjL
U6lSb5ZRpO9uYvVu7+vFU9JmCoO5p53JnQpdkvZpy89wT8ylMST/Dx/ZHMYr6ySj
s7TsBNizXBo0UXSUYjpXekq7NZHIP124/wK+LWUx3AXq7fnlGsksCAoQen27G05F
U5bIPxhJuNvO4U/1g1xNZFHsOwI6Gb2Jk/dpNmik4YJ7jaiUfzK3QXuH0Yge/vxK
JsWIdmMRMz31UTSePtq49Gd4Q2PFo92fti+TUVzZhkawhgi8jL6aX6u1Z93PMeqv
NnHgVT4ziqKqCCHQQU11CcGcjNaepfawOlWSebqTI1oDk9Z5XAMRyxU0tGVAYQtB
BKiPvnUeQ0kHGhoyfb4V5d3Q5ue9l12aJ2/PAMH2F5w3Q3m25dgRteW0IAT8OuZc
TjxNWAbtDh6I3ZxgfBHR9XR8kdkBHgxv7h/6lYh3fxdUPPPnLHrADCURVscownI7
tJy7FNISwe1O6yHfge2FnzUOFAspZAUL9VBMPU0fL5Z4w5NxTIxPs5tQsDfJQmxj
zAnfTpMqoVsvt05mGusYWetkr00c3RiNG3Yp4P8V0zIGDWH7TS4=
=jtu3
-----END PGP SIGNATURE-----

--t6Aj+rePpll//Dod--

