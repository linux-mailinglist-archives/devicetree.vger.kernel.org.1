Return-Path: <devicetree+bounces-63133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4098B3D03
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 18:41:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 81D631C211E8
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 16:41:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAFB514900B;
	Fri, 26 Apr 2024 16:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jv3UJZBI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7D476BFB1
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 16:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714149684; cv=none; b=VIaBrdubFHvnEoC258AVsH+iftpJ6kXKNrh3lgL+hTGQvtEL0GKgbb/lIQ0VA4YC1Le9WxpYc+8gnQDyDZ+XdbNydQL1q90yA397ECXCKTEE+1fia7q3V5Tgg8N1lVHnts2nYU/uS3ILvQvYneFEmSSMTsdqHrLyGP0DPrsoT10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714149684; c=relaxed/simple;
	bh=k1HP50/EGRsUos+ckzgu46eFkX2MgzeubV1KZsHe06A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gg0fZE/aKRA8wkm+Q/63I061yZXuvy8C8VJuGJRYDZx2MU+5tROzvoC6EzL2LedL2houPvBpGVrj+GTInUacw0hGUzIbtXCxTEMA9n3MFdg7c5lixEzFWaelg2HyUyjXb1yyR+43cqXB4WuhWmadm0BIc3x5aLOAVP20sVkGml8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jv3UJZBI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A804AC113CD;
	Fri, 26 Apr 2024 16:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714149684;
	bh=k1HP50/EGRsUos+ckzgu46eFkX2MgzeubV1KZsHe06A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Jv3UJZBI8EoQD+MY42q6VH09SsEWWd86AtEWK6oq2dbKKL/e4hjPAgFOKJVhMJb0D
	 ab0cUjJurgPmRoYwy6jUnWb4pgALss3IOkwhRj2k9ZEii5h0JSzoRYqyzh+6cQxhmS
	 ZmQ8EOvuuUMqSqkrOC7Y45dMBoF4YBKqgOBJ+pTk9CjB/vHCkejVWD47er79laTXFK
	 shybO0cUNhpwWUDcaD0gpO+7ycX7ftLcqppMQVQ0UUTZD7/IcE2Z/dEoKbwkGSI9uZ
	 mTOqN/kNmkgeZaMajFaYM4ILOWADLr+FLfiI77m04kLzGoBQDMkFprvIvDV8tnoCX0
	 t534ELXVIfd3w==
Date: Fri, 26 Apr 2024 17:41:18 +0100
From: Conor Dooley <conor@kernel.org>
To: Andrew Jones <ajones@ventanamicro.com>
Cc: linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu,
	conor.dooley@microchip.com, anup@brainfault.org,
	atishp@atishpatra.org, robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	christoph.muellner@vrull.eu, heiko@sntech.de, charlie@rivosinc.com,
	David.Laight@aculab.com, parri.andrea@gmail.com,
	luxu.kernel@bytedance.com
Subject: Re: [PATCH v3 2/6] dt-bindings: riscv: Add Zawrs ISA extension
 description
Message-ID: <20240426-cogwheel-levers-948f454caa7e@spud>
References: <20240426100820.14762-8-ajones@ventanamicro.com>
 <20240426100820.14762-10-ajones@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6r9tvAN/HBvHKqJ2"
Content-Disposition: inline
In-Reply-To: <20240426100820.14762-10-ajones@ventanamicro.com>


--6r9tvAN/HBvHKqJ2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 26, 2024 at 12:08:22PM +0200, Andrew Jones wrote:
> Add description for the Zawrs (Wait-on-Reservation-Set) ISA extension
> which was ratified in commit 98918c844281 of riscv-isa-manual.
>=20
> Signed-off-by: Andrew Jones <ajones@ventanamicro.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--6r9tvAN/HBvHKqJ2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZivZLgAKCRB4tDGHoIJi
0tnVAP95swoPxTiUUB+e1S5YEyOC7kzvWJ+sufF+uu4Vca84zgD/YgIAtt5fP8z/
L2jhiF5CyTzyCR7zuNLSwkcta5XVEA0=
=z0CS
-----END PGP SIGNATURE-----

--6r9tvAN/HBvHKqJ2--

