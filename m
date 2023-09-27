Return-Path: <devicetree+bounces-3908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5897B07B7
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 17:09:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id BB8A31C20856
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 15:09:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57EF53717D;
	Wed, 27 Sep 2023 15:09:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482671170F
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 15:09:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4F01C433C7;
	Wed, 27 Sep 2023 15:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695827350;
	bh=xTe9MEoLvxYRjUEOE97xwyK6aSZX2+sfD+07FnGSs9I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SaiVaSTerMcyMpATH8Ve60CnHp4RQphlXimDF8GYj2+8Reo8Rm0YofMHPdviRVZMA
	 mAMmgyD6ORIw8ICSHlRTn/IMN3UgZYy2i/bzmoctZr5HRLZZn5Ygyal00mVTsDaGZH
	 3sJTzPElyMUTltkBjxMKflW+uYBDiRQyrTgjhhJFiTw2g084Ul/G7eRW2mkfVjDHMv
	 +Cez6qtt3RxWC6alqetxspaerjeyVrb7YJbiEqIMG6k8u2I3jKtnvxbqArfnrBH1f0
	 268PqJ00NbqwN94/WpXlyzGxkuhQEzKbbjWztQxlHm2nXGBMK3ZcevvYRPwW1vUNAP
	 SCGc5E5cuFTQA==
Date: Wed, 27 Sep 2023 16:09:05 +0100
From: Conor Dooley <conor@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-imx@nxp.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amitk@kernel.org>
Subject: Re: [PATCH 5/8] dt-bindings: thermal: fsl,scu-thermal: Document
 imx8dl
Message-ID: <20230927-unsettled-happier-9c1940c68fd9@spud>
References: <20230926122957.341094-1-festevam@gmail.com>
 <20230926122957.341094-5-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="13F3NC8Cu9n0lIS6"
Content-Disposition: inline
In-Reply-To: <20230926122957.341094-5-festevam@gmail.com>


--13F3NC8Cu9n0lIS6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--13F3NC8Cu9n0lIS6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRRFkQAKCRB4tDGHoIJi
0szoAP0WFSDplDdTN3ePIBPow2NJ2ageb1yLdN6m0UrBaAkFHQD/WT8uVIy6N5J2
zp131wDcC7IH98musQunGg0hjOLoOgA=
=QpXZ
-----END PGP SIGNATURE-----

--13F3NC8Cu9n0lIS6--

