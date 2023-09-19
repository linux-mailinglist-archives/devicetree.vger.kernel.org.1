Return-Path: <devicetree+bounces-1303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4791F7A5CDB
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:47:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 008242820C5
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 08:47:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7DEB38DCD;
	Tue, 19 Sep 2023 08:47:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD912538C
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 08:47:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 880ACC433C8;
	Tue, 19 Sep 2023 08:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695113274;
	bh=luFy040TJwhqSwX6q8NyoQWoiTXkeP9Qqccg14Kb0rA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nAIFlH97A7V8Ycm5uK/xK6ieazUEpI6YXPLvhBAsVWWi/V3P5Cl/gf+bo2KM6XzpY
	 FiD9pjJGvZgLyEPbAXtwZheJ1vghZLACfrHxcmSvosElzIq2o2lq5R9kKMbsS75SAn
	 RYRQVm290QV8qTTKyOZlH4A3dSINv/5Ao7gSizbOLtSmJAzY/44cJRkOcUf0qbsDuH
	 +Bu7I7wNfH2s7qGXk9e8jGslCoa0Lfge1lXBwzyrINlsDGeQvHZQEPShb6uScOGxGx
	 m1GGzvEU1PkEktT16u02UirNKQUM6SKWCoS06MCHogJlny3+FRkAkhCpfcJ7T7j1hy
	 fuRxCsIoi3WoA==
Date: Tue, 19 Sep 2023 09:47:48 +0100
From: Conor Dooley <conor@kernel.org>
To: Kwanghoon Son <k.son@samsung.com>
Cc: p.zabel@pengutronix.de, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	jszhang@kernel.org, guoren@kernel.org, wefu@redhat.com,
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
	inki.dae@samsung.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v3 1/3] dt-bindings: reset: Document th1520 reset control
Message-ID: <20230919-42333064be342f6ab125dd75@fedora>
References: <20230918045125.4000083-1-k.son@samsung.com>
 <CGME20230918045134epcas1p1b80b338b66512a976c3783cd0e51da50@epcas1p1.samsung.com>
 <20230918045125.4000083-2-k.son@samsung.com>
 <20230918-4ef7f52da269f3a7e4023bb3@fedora>
 <005301d9eab7$5688c920$039a5b60$@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1iibWnnp3IIIl0SS"
Content-Disposition: inline
In-Reply-To: <005301d9eab7$5688c920$039a5b60$@samsung.com>


--1iibWnnp3IIIl0SS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Guo,

On Tue, Sep 19, 2023 at 02:08:32PM +0900, Kwanghoon Son wrote:
> > > > +      - const: thead,th1520-reset
> > > > +      - const: syscon
> > >
> > > iDumb question perhaps, but why is this a syscon?
> >=20
> > This is good point.
> > In fact, I took it from the vendor kernel, and I tried to keep it as sa=
me as I could.
> > Vendor also followed drivers/reset/reset-imx7.c
> > As Rob said, if don't need it, I'll change it.

> I have investigated vendor kernels, but it is still not sure reset inform=
ation.
> I thought this is about sys_reg, but without datasheet, can't tell.
> Therefore, should be stopped patch for a while until knows better comes o=
ut.

Is there documentation in English you can provide to these people that
are trying to add support for your product?

Thanks,
Conor.

--1iibWnnp3IIIl0SS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQlgMQAKCRB4tDGHoIJi
0vyLAP9HZrpuOPBneDIXfpdgbTVat7I4LUqO20r1ekUdthdEhwD/brQ5aP+rZx8t
p7nYOH/eyRcDKWMoDlVvvHjOP+5T/ww=
=/q0V
-----END PGP SIGNATURE-----

--1iibWnnp3IIIl0SS--

