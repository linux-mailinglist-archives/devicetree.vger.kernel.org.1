Return-Path: <devicetree+bounces-5090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EFF7B52DF
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 14:22:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C3CEE282FE9
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 12:22:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B10D0171CC;
	Mon,  2 Oct 2023 12:22:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0D4914013
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 12:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4F28C433C9;
	Mon,  2 Oct 2023 12:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696249328;
	bh=9JTxOS4Ez5ORtaTea5hqlBqSPR3EmYOiqEikAVo0TJc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YVAMnLqlATfqsZoU4xC+VSc696gPnBhDzh+6lCcGUTLWPOZcc9NkVoFkULvKW0ju9
	 CBYXtRW7/U1chaU1zBEs7VdXxqqy48g2GGnIAQ3WOHn8RJCMRLkwFprgvfS27ZZz2r
	 wY/HBEu09y7WvyjS5BIsYJdAuw2tMEeco8Ffexm2ILLuWlaEFKAcFk9b6LKWGTlOID
	 gDp3doFvolTvfUVvqt4U9hLdBPZtD+2N/sKwYSSLCIKJFLtHM4HmCu43N/osd4/Pwo
	 nLMfa83Hk1HT6x0e7QG9n2lzASKpnZJNi4XAFF1lScaFD5nR3seURCsrDYICj+m+o9
	 7qUA38wrlwUWA==
Date: Mon, 2 Oct 2023 13:22:02 +0100
From: Conor Dooley <conor@kernel.org>
To: Jisheng Zhang <jszhang@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Anup Patel <anup@brainfault.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	Inochi Amaoto <inochiama@outlook.com>, chao.wei@sophgo.com,
	xiaoguang.xing@sophgo.com
Subject: Re: [PATCH 0/5] Add Milk-V Duo board support
Message-ID: <20231002-slurp-anime-a2308245174e@spud>
References: <20230930123937.1551-1-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7PRu9BiGWpbVBTj7"
Content-Disposition: inline
In-Reply-To: <20230930123937.1551-1-jszhang@kernel.org>


--7PRu9BiGWpbVBTj7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey,

On Sat, Sep 30, 2023 at 08:39:32PM +0800, Jisheng Zhang wrote:
> Milk-V Duo[1] board is an embedded development platform based on the
> CV1800B[2] chip. Add minimal device tree files for the development board.
> Currently, now it's supported to boot to a basic shell.
>=20
> NOTE: this series is based on the SG2042 upstream series for the vendor
> prefix and ARCH_SOPHGO option.
>=20
> Link: https://milkv.io/duo [1]
> Link: https://en.sophgo.com/product/introduce/cv180xB.html [2]
> Link: https://lore.kernel.org/linux-riscv/cover.1695804418.git.unicornxw@=
gmail.com/ [3]

Other than the comment I left, this seems fine to me. I'd be happy
enough to pick up the pre-reqs from the other series & this one if one
of the Sophgo maintainers acked these patches.

Thanks,
Conor.

--7PRu9BiGWpbVBTj7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRq16gAKCRB4tDGHoIJi
0hPiAQDbufi/xai4dSO3amSl9rZppK2+0zKPHMA4SBi3nyrj2gEA2gOHga+VuE+6
cQyX0Y96P/ro+L1m7PljdpadXG5/swQ=
=G7RO
-----END PGP SIGNATURE-----

--7PRu9BiGWpbVBTj7--

