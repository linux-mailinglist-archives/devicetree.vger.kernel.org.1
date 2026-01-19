Return-Path: <devicetree+bounces-257029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9E5D3B544
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 19:13:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C02CD3009224
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 18:13:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AD7432D7FB;
	Mon, 19 Jan 2026 18:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHzmDsSb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280AA2C11F0;
	Mon, 19 Jan 2026 18:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768846389; cv=none; b=Pa4T+SEIRYKc7EzewbXgT8Bo/coxLyqVTfxcm/fkfYiLm4hqyBzRC7MYdafZwBiiZIYOa+UgeF5kQc8hpwj0OL12mKGHB6danKX6P5qVAors1rrW6kTCblYFq+V0ARW55IeMzVzb12g7PqwsWZp+h26LX5puxUNZL7t4FXkYgfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768846389; c=relaxed/simple;
	bh=+GPrc+VC5LhsvUwvuFMDOJQ8WEkZu6sQfESCubnoKsE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AGLYj7tHWwkvd+xTKzesYxrgSFIOs0pmULTqYCq5tDiJFUGkj8RmroWarhAgfll4uHzONmDeOrYxCJlgOmUxuV3ARU7ejuAJwkuTO4f3jAeK6uETCOcu5B3qBhAgPPxhZh+RK0RoMth6nlOWPwuU8uJBuGvqV0uwgQI5n6tbGnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHzmDsSb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B87FCC19422;
	Mon, 19 Jan 2026 18:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768846388;
	bh=+GPrc+VC5LhsvUwvuFMDOJQ8WEkZu6sQfESCubnoKsE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZHzmDsSbOquj5RyNUjRMRTb54VBQw8JpU6rHan4MVuZmcusPLy8ngI7hZx/0nPXlK
	 WAYONRXcsqBHimnRy7J/VuRLmNS7g8g7r6OsQ5LGF04bnkHDJrRdwrw1yMht2Gl1Mw
	 mrUNbBQWK1OsK8ScQxwbeejq9zYZx/aJ5sux+6dMCS0QxKZIdPvd4FNB1WVkdp3erb
	 ITuiT1Js8BrGzbZP/kBUdiu39Mk2A1HhuzC7+RtVvZdeGq5ohq8LjEvmZu301PXjtL
	 c5ER6DuBO7ATfLdbwhYG3m7RXPSXbv189ZMcucPKv/Gt8DVXz2YgA9Dchh8XrQZvNa
	 M9iLJeF4H/roQ==
Date: Mon, 19 Jan 2026 18:13:04 +0000
From: Conor Dooley <conor@kernel.org>
To: Junhui Liu <junhui.liu@pigmoral.tech>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] riscv: dts: canaan: k230: Add "b" ISA extension
Message-ID: <20260119-parcel-overtly-2621c4069f13@spud>
References: <20260118-k230-ext-b-v1-1-6a63616b11cc@pigmoral.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oPma+Hg1nyREzzym"
Content-Disposition: inline
In-Reply-To: <20260118-k230-ext-b-v1-1-6a63616b11cc@pigmoral.tech>


--oPma+Hg1nyREzzym
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 18, 2026 at 10:25:07PM +0800, Junhui Liu wrote:
> "b" is ratified (Apr/2024) much later than its components zba/zbb/zbs
> (Jun/2021). With "b" added into riscv/extensions.yaml, a dependency
> checking rule is now enforced, which requires that when zba, zbb, and zbs
> are all specified, "b" must be added as well. Failing to do this will
> cause dtbs_check schema check warnings.
>=20
> According to uabi.rst, as a single-letter extension, "b" should be added
> after "c" in canonical order.
>=20
> Update k230.dtsi to conform to this rule. Also synchronize "riscv,isa"
> with "riscv,isa-extensions".
>=20
> Signed-off-by: Junhui Liu <junhui.liu@pigmoral.tech>
> ---
> Based on Conor's k230-basic branch and rebased to riscv-dt-for-next.
>=20
> The commit message and implementation are adapted from Guodong's patch
> for adding the "b" ISA extension to multiple dtsi files.

Applied to my k230-basic branch.

--oPma+Hg1nyREzzym
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaW50LQAKCRB4tDGHoIJi
0lyVAPwIyMt9V+9/RQXQI3699dzt8Z/BHQtTcQpwEb/azVM2zQEA1DJemeolcjLQ
6fgw6pCmq1lhCiCd1FcY21oaoE4X6AY=
=blkV
-----END PGP SIGNATURE-----

--oPma+Hg1nyREzzym--

