Return-Path: <devicetree+bounces-7774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E024E7C56A3
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 16:21:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A62828129D
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 14:21:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F30402032A;
	Wed, 11 Oct 2023 14:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWkuPTZW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D261D1F17E
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 14:21:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85DE4C433C7;
	Wed, 11 Oct 2023 14:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697034071;
	bh=2gpLjyqUi6wcjJjAwFjG693BPOH5KzH0g4x8Uy+z3TU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LWkuPTZWxq7VqSIH5U9qpBsgJvX1VZMMRSMMB2ruW/80qHsTSP/8yLlmPr9otIEfl
	 50GofoSBBobrbKfk9FChIXKZI7uU54+yXYNK7ujGNXaPNhwnTI+SKGVXqDzHlwhoMA
	 cJ/0x17C5B+oTd92yl+oQolj1YN9x+NJt/U+6wCgsGHG/znA3JVPVFGBflSmmBMnSE
	 /uw1M6puMBDLYPIc815P1UN2VGiyXNt+grmXMuTAJuqmKjBxXT26F5bo3vQT3uPh7p
	 R6s2z3dhNe3nzODxN43Ak8fFffsWsnOuyRKJiJ3MaT/JbHZAwURGNltmhJDUx+PeOq
	 KUrhAtp7Egd7g==
Date: Wed, 11 Oct 2023 15:21:06 +0100
From: Conor Dooley <conor@kernel.org>
To: Mark Tseng <chun-jen.tseng@mediatek.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Roger Lu <roger.lu@mediatek.com>, Kevin Hilman <khilman@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Project_Global_Chrome_Upstream_Group@mediatek.com
Subject: Re: [PATCH v1 3/3] dt-bindings: soc: mediatek: add mt8186 and mt8195
 svs dt-bindings
Message-ID: <20231011-motor-equator-db141b74726a@spud>
References: <20231011034307.24641-1-chun-jen.tseng@mediatek.com>
 <20231011034307.24641-4-chun-jen.tseng@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zBOX+bhAlTIL62fW"
Content-Disposition: inline
In-Reply-To: <20231011034307.24641-4-chun-jen.tseng@mediatek.com>


--zBOX+bhAlTIL62fW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 11, 2023 at 11:43:07AM +0800, Mark Tseng wrote:
> Add mt8186 and mt8195 svs compatible in dt-bindings.

This commit message just repeats the contexts of the diff in prose.

> Signed-off-by: Mark Tseng <chun-jen.tseng@mediatek.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--zBOX+bhAlTIL62fW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHQEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSavUgAKCRB4tDGHoIJi
0sqKAP9Z6J6MQ/uOMPuXIPe5q8SmKRkNtaXcVNBweiVeryHgeQD1F2xJdjmsESzy
iLjBjIDhUP9NvRUTQD/+6R2i+r1OBg==
=pNdI
-----END PGP SIGNATURE-----

--zBOX+bhAlTIL62fW--

