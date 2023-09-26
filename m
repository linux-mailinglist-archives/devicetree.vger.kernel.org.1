Return-Path: <devicetree+bounces-3445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7FA7AEDCC
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 15:12:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 861502814E7
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 13:12:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 040D328DD8;
	Tue, 26 Sep 2023 13:12:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E927128DCA
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 13:12:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F4DEC433C9;
	Tue, 26 Sep 2023 13:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695733944;
	bh=tEmZVsFUr9fSaZxXK1gcCt5lsfnZ60ZguEkk/NvJJxg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=g2RcjHgPcFiwFH9WhaEbhXTLOq4VkH7CkU3VQEIBi6TtifRCupmiu0HTxaXfCzovh
	 lAnH3tSDOYn3UYUoBFT+87G8wySGZdNFzSraedTFruedakoBNeqW060wJEiE1F/KKV
	 XGzJlUTt5bAIPV2C8IpdB5U9rr4eNH9afPldmQhNFig5UMwiN1Au5kNExSaEH8TrRo
	 V9qGpV7IFDaDevLdJg9m6q0tnu/ulRwvHK5MB6mDbppcCo7+UyVD3xCkLPUhtwq7QI
	 xyhgsV9T/o/kHfjvKlFvZ3BocQFi1VPBp8+ZrZqa08e7z80c8pfm8GpuZvbKdnkq/0
	 ihrKVuUXHZt4w==
Date: Tue, 26 Sep 2023 14:12:19 +0100
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
	Mike Leach <mike.leach@linaro.org>,
	James Clark <james.clark@arm.com>, Leo Yan <leo.yan@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, coresight@lists.linaro.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: arm,coresight-cti: Add missing
 additionalProperties on child nodes
Message-ID: <20230926-trivial-landed-4c291e73394a@spud>
References: <20230925220511.2026514-1-robh@kernel.org>
 <20230925220511.2026514-2-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7MqFRIBkMyePXi20"
Content-Disposition: inline
In-Reply-To: <20230925220511.2026514-2-robh@kernel.org>


--7MqFRIBkMyePXi20
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 25, 2023 at 05:05:06PM -0500, Rob Herring wrote:
> Just as unevaluatedProperties or additionalProperties are required at
> the top level of schemas, they should (and will) also be required for
> child node schemas. That ensures only documented properties are
> present for any node.
>=20
> Adding additionalProperties constraint on 'trig-conns' nodes results in
> warnings that 'cpu' and 'arm,cs-dev-assoc' are not allowed. These are
> already defined for the parent node, but need to be duplicated for the
> child node. Drop the free form description that the properties also apply
> to the child nodes.
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--7MqFRIBkMyePXi20
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRLYswAKCRB4tDGHoIJi
0iCuAQC1dso8YQQh1/a5gG2GO+uzI0OQQiGYQ/5LL0PEfLq4xgEApA1wEWP2ns83
H/f6nHaNEjQCzK7gcxzwD8j77ugYIgM=
=mHxD
-----END PGP SIGNATURE-----

--7MqFRIBkMyePXi20--

