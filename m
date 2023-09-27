Return-Path: <devicetree+bounces-3907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 737DC7B07AC
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 17:08:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2BBC0281B61
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 15:08:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06AEE37161;
	Wed, 27 Sep 2023 15:08:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA32C1170F
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 15:08:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B12BC433C8;
	Wed, 27 Sep 2023 15:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695827327;
	bh=pF4WfVorE3MtmwthR+eXeyLQ1HZxcdbv0SNH0omtS4g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YpqLbeSMrmBDLhcHRyDYbSdIRf/W7HzNbFKXFxnriVwujYn68xa1tr00HtUYXzk1k
	 sJiDZKX7pou4VweZhMpgG23Lk4bPiCIfD5LUWJiT4XTEIQqkcnZ6GupqXpIopzBD0V
	 edGT4Gf565O2CPpuhjp/+0Yvzm8Ge37ZvCSPZDL1Iysl9K6T86+1SVDLWXF/zRQJxf
	 hcgbbKYYZdMl7bqPmMzjXk23CqL9q0FYF0tndJs+P7H2SoNmrFdfrqjdpg2FDW5SHU
	 EUTqHi/AQnJQPba9YYTm0BK5lUzs6G5pqg0ervcHS6KJ2Sph9MLIGcII+pcgMdaSmN
	 +4TIyJqyypofw==
Date: Wed, 27 Sep 2023 16:08:43 +0100
From: Conor Dooley <conor@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-imx@nxp.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 2/8] dt-bindings: power: fsl,scu-pd: Document imx8dl
Message-ID: <20230927-molehill-purveyor-ed88067ca723@spud>
References: <20230926122957.341094-1-festevam@gmail.com>
 <20230926122957.341094-2-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="d5gx++0daUESew4h"
Content-Disposition: inline
In-Reply-To: <20230926122957.341094-2-festevam@gmail.com>


--d5gx++0daUESew4h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--d5gx++0daUESew4h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRRFewAKCRB4tDGHoIJi
0qfaAP9NWxLYBYllSNiIyH2cduVCYNg08yKBqq/SkshGOw5zuAD/csYzRTeALFsb
vkzRtMkuYb8aP9cF1KKKfpqvE/kLKQg=
=xEIl
-----END PGP SIGNATURE-----

--d5gx++0daUESew4h--

