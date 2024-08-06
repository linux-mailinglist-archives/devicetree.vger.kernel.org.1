Return-Path: <devicetree+bounces-91503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC3C949968
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 22:46:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7ABFC1F223C7
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 20:46:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9658B15688F;
	Tue,  6 Aug 2024 20:45:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXdthX0/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 704EB824A0
	for <devicetree@vger.kernel.org>; Tue,  6 Aug 2024 20:45:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722977157; cv=none; b=sNzvA1ZLorkUpHl4OgXmqqf8JDLhBvojS1a1MabLoXvTIihuUL5f7jUm3BuhwCLAizSUtCmSYZthpye5qpyowrXY1QvAyl8pm64Ez0EQ+UjeVegnNiVgFnv225yFTfblZDXw8rMgpHn0iKX3j031KDeNHCxa/TadebfLUwBIuv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722977157; c=relaxed/simple;
	bh=DQ4di4g7iT1eApSTupyvEh0ZQhuK2NwMcj4qW+uji00=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uj806amy/2y8wqPuAm7lo/zbFLnEthk/Mohb1ZvhhgM8eLJrVwaBA2FHLUiEiHhm02ljQWIGqmp5SPnCq3jRqssY6ZnNHG6T0XtLL5LID6gpKnq/p376mfn5APF2OgMprMhheDK3tJqhGU4fV6qko+yJJM3/ZWA7WUEA+U8THgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXdthX0/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51B28C32786;
	Tue,  6 Aug 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722977157;
	bh=DQ4di4g7iT1eApSTupyvEh0ZQhuK2NwMcj4qW+uji00=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CXdthX0/9BmWfLQLLyK8FHps/5SL/MitMI5ZU2/k2UJPP7Vb793LFABCFx3S8JaaA
	 clOCQXWoc1bf6oLMyZbFX8ZQ0u1DlSKXZfOFYH/AnS9/xjYcop84lFTFbqHLpnxbAi
	 kB6oUUD3pZa75qLvrmtAv/XfPL8B74dlWP3uMHojQ3XE4Ghjjq31VrSK6h7Xq5ToTE
	 d8wX19mCQkWRr5/RWtLP90xi13qX/LDeGXtk4pKrCoKnTnptHU987a1BTq5ANnm+UR
	 Yrm5deHrXNkyzvgki0SX1ew7mmsJSkSw1mbyo0FBsEO8bU/Hp1hnIZlr/BgO7ciqvW
	 aus+7x4I/hKlQ==
Date: Tue, 6 Aug 2024 21:45:50 +0100
From: Mark Brown <broonie@kernel.org>
To: Macpaul Lin <macpaul.lin@mediatek.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
	Bear Wang <bear.wang@mediatek.com>,
	Pablo Sun <pablo.sun@mediatek.com>, Macpaul Lin <macpaul@gmail.com>,
	Sen Chu <sen.chu@mediatek.com>,
	Jason-ch Chen <Jason-ch.Chen@mediatek.com>,
	Chris-qj chen <chris-qj.chen@mediatek.com>,
	MediaTek Chromebook Upstream <Project_Global_Chrome_Upstream_Group@mediatek.com>,
	Chen-Yu Tsai <wenst@chromium.org>
Subject: Re: [PATCH] dt-bindings: regulator: mediatek,mt6397-regulator:
 convert to YAML
Message-ID: <7186e664-ef52-4552-b91d-d6ad358eed4e@sirena.org.uk>
References: <20240806122507.2766-1-macpaul.lin@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pJ/AckYPDty924kc"
Content-Disposition: inline
In-Reply-To: <20240806122507.2766-1-macpaul.lin@mediatek.com>
X-Cookie: She's genuinely bogus.


--pJ/AckYPDty924kc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 06, 2024 at 08:25:07PM +0800, Macpaul Lin wrote:
> Convert the MediaTek MT6397 regulator bindings to DT schema.

As documented in submitting-patches.rst please send patches to the=20
maintainers for the code you would like to change.  The normal kernel
workflow is that people apply patches from their inboxes, if they aren't
copied they are likely to not see the patch at all and it is much more
difficult to apply patches.

--pJ/AckYPDty924kc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmayi30ACgkQJNaLcl1U
h9AKDgf+IWMZpBQCI8bs1vbOgAI2X4JErCQSfq1xCOp+2JAccBEB+IMftlvfNWz3
Jhmh02Z2WWfM5ykM2VQR1cfvuksln0n3ZTgpQnI8iPZffqSrMO0XR65afdsTfdG4
9XIr+JYZYVLO74BOunvm5/e5j29r7NIdiiMeQ/cncS+blZK/GpT5lAzZRfo7tdeB
9/Lo05f/twaWXY/loZv5hAl9TjXFrr51pG7AOX2Y5HfL7kPpoaHu/Tup9WAt23JE
bF2PsG80Wdp+bZVgrK/dZsYlsxMENlUmbSuEnIhsKgM2iKbWrOpbtdc7iNqaMpf0
iwRLxZh8ajeC8D1FY2UJ8xS2Wykbpg==
=W0Cr
-----END PGP SIGNATURE-----

--pJ/AckYPDty924kc--

