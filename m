Return-Path: <devicetree+bounces-256262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F013D3881E
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 22:05:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A7E3302049F
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 21:04:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E09242E4274;
	Fri, 16 Jan 2026 21:04:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7whhVxx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC8E62D47F1;
	Fri, 16 Jan 2026 21:04:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768597498; cv=none; b=bPVNT+C+QKhfIDgtmK7odReqmofuqBOLqgkmqIRDgqKoqZcx5FAYyWwYjCp1aACC+elF/Go3RxZg2ZDpQCiN57+ejLR8RoCSyYndxvXfKFLjltevVotn1d53BbplXzOqEe2V6ChUB78aC8ImWegx6xuMpZ0jp3tuD3mK3OIjbrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768597498; c=relaxed/simple;
	bh=GVOzANANPnt1tlfagNsbqufCLp5zEPRZ971Q9RQonBE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pFScTQmHURuf8Q1ct4bO7qhQDUXh/cYwkk941ehIiYSRRxSwyYA6p4e+RrpSL1+Q0RBXzNwlDhpxlVTTX1bQnS4WjetwiFK7t6W8DRC65yWbJ/VQwk4RNfgGqUXhYQNxB+C7+/wk+X0ezeeYSVi5qbhQsoLmQjr3j+MLU6ubyEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7whhVxx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4898C116C6;
	Fri, 16 Jan 2026 21:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768597498;
	bh=GVOzANANPnt1tlfagNsbqufCLp5zEPRZ971Q9RQonBE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K7whhVxx9KViIGvzIaKc7hJE2WAy3a4kH6I07JykHrUPb6Y5j5QVrQ6AoH3cwylMs
	 4of16LSCKNSu44OlCz22ug3v3Zq4AexQtg8aeGkaNmZIEwqrce3MQvS2G6Dx7/uxQc
	 fcyFjEKxYGZGXn61KY8LwGNXRoFuc9Vf7LDt1QNFr/2cu7XjuwyB7gcjmavs4g6Fnk
	 4Qoogpx9yDIwnTjGALqYHg2sK++VNPrGfZwC76qpM9LVtnEo3Q3vh/v++me10ZFp83
	 bJP5v587yBHew8dN8z9gu2EFqcAlFE269ZPcYmaopSzqYvOg8WNIi8FWb7gKmwQkVq
	 AFRVzYGUj5CVg==
Date: Fri, 16 Jan 2026 21:04:53 +0000
From: Conor Dooley <conor@kernel.org>
To: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
Cc: robh@kernel.org, krzk+dt@kernel.org, pjw@kernel.org, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, alex@ghiti.fr, cyy@cyyself.name,
	dlemoal@kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	gaohan@iscas.ac.cn
Subject: Re: [PATCH v3 0/2] Initial support for 100ask CanMV-K230 DshanPi
Message-ID: <20260116-radiated-floral-98fb8244ff7e@spud>
References: <20260115060801.16819-1-jiayu.riscv@isrc.iscas.ac.cn>
 <20260115-proud-radish-c835a76d0446@spud>
 <aWmr/xEuUhcH0gKk@duge-virtual-machine>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mwYl45uuJZwgEr0C"
Content-Disposition: inline
In-Reply-To: <aWmr/xEuUhcH0gKk@duge-virtual-machine>


--mwYl45uuJZwgEr0C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 16, 2026 at 11:09:51AM +0800, Jiayu Du wrote:
> On Thu, Jan 15, 2026 at 07:23:17PM +0000, Conor Dooley wrote:
> > On Thu, Jan 15, 2026 at 02:07:59PM +0800, Jiayu Du wrote:
> > > This series adds initial support for the 100ask CanMV-K230 DshanPi
> > > board based on Canaan K230 RISC-V SoC. There is a module on this
> > > development board.
> > >=20
> > > The board and module are documented, the basic board/module devicetre=
es
> > > are added.
> > >=20
> > > This series is based on the K230 clock series[1] and the patch 3 of t=
he
> > > k230 pinctrl series[2].
> > >=20
> > > Link:  https://lore.kernel.org/all/20251127-b4-k230-clk-v9-0-3aa09e17=
faf5@zohomail.com/ [1]
> > > Link:  https://lore.kernel.org/all/20240926-k230-pinctrl-v2-3-a9a36fb=
a4b34@163.com/ [2]
> >=20
> > Right, I've grabbed patch 3 from [2] and put it on my k230-basic branch.
> > Do you intend sending a new clock driver series soon? Last time I looked
> > (about a month ago) you had some changes proposed about critical clocks.
> > I'd like to try get this stuff merged but obviously it depends on that
> > clock set. I'll happy send Stephen a PR to smooth things along if the
> > drivers are ready, but it looks like you need to send another version?
> >=20
> > Cheers,
> > Conor.
>=20
> I'm not working with Xukai Wang, the developer of the clock series.
> I merely discovered the critical clocks during the test and raised
> this issue. Regarding the new version of the clock series, you need
> to contact Xukai Wang.
>=20
> I am currently only working on the USB and sd/mmc series of k230.

Ah, my apologies. I clicked the link and when to look at the most recent
activity and your name was on the patch with the fixes to critical clocks,
I guess I never checked to see if you were also the series author. Sorry
about that! Looks like a v10 went out today anyway, so worked out in the
end anyway ;)

--mwYl45uuJZwgEr0C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaWqn9QAKCRB4tDGHoIJi
0juYAP9tU0kPFQqjpPzJhks9LY3SqdA6+m8IgEA97LBdao1MQQD/TEYdp49VSkb2
YkuQGzjF5KmZ4iquxkU++/LJrmQTHAM=
=hXSE
-----END PGP SIGNATURE-----

--mwYl45uuJZwgEr0C--

