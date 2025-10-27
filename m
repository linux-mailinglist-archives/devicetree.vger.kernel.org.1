Return-Path: <devicetree+bounces-231470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E55C0D671
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:08:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2DEE918939D7
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 12:08:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2A262FF675;
	Mon, 27 Oct 2025 12:07:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxJYWKqx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAB872FE595
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 12:07:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761566867; cv=none; b=fv4wKppVPaEvxZC4ZBd757GX04uy1pZnnEQ0zoj3ugwMcKzXEl67w/+k/c4po6RrtyrtUfxdCGCGCEjHi7S8kUt4K2oiN7EuhLQx5ryZXWv04p7WmuyIU5te1ufcbOuG3bbkhdbJQMGZhk7sDh89iXADVVWqGgI/B1lEc5UXo24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761566867; c=relaxed/simple;
	bh=DY9gNtPBaPxvw/fUF09Z+lcTcoaQyDC8QHcttPUo3ps=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MJJN4nROf1QoOyuDF8Dt5Hoz+seqByU43NrBCn99PWmfmsGaQanqxMOr9H/sttCzIRQifbQ5Uz/w+0pg6t5VTRbPiPs+XnblkHdiCNhctnVhd41SA8V1sJSHZlubHUlR+PdUyQLQkoZk5BTjkyOnrcx1ZPekjOrPCOW/JqDxSmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxJYWKqx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA6AAC4CEF1;
	Mon, 27 Oct 2025 12:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761566867;
	bh=DY9gNtPBaPxvw/fUF09Z+lcTcoaQyDC8QHcttPUo3ps=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nxJYWKqx8CRsPsL5V5XezWu5KjDpfK2lAC4C5atz6nliGnH2i343DtBZLhPIBQ11i
	 RSkeEKWAaag6ImWy9tT4+6H8wtzfEapQiA17vCxDSSfrtknnH7crGPFdnr2Rt9xxNm
	 i3B2cskAmbJsY08/JR/UaolXAYm6CsvgcLDLlflWRO98lasNBeFHLAsV8gnmyGSvX6
	 OLSdSsdr8nGH9YGu0PoeJ8EUptgG9O/GH9IbrMsmiDSBOHVZcEbMlqSqIr8v4dKZ04
	 CqdtVblPor9oNR6Ifq4KlPcAt3FWu4/g1nAv5pOhD6KffYJobvUP06t8xlRD+pQzZC
	 jRzDTzzDI+cPQ==
Date: Mon, 27 Oct 2025 12:07:40 +0000
From: Mark Brown <broonie@kernel.org>
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com, Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Melissa Wen <mwen@igalia.com>,
	=?iso-8859-1?Q?Ma=EDra?= Canal <mcanal@igalia.com>,
	Maxime Ripard <mripard@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Stephen Boyd <sboyd@kernel.org>, kernel-dev@igalia.com,
	kernel-list@raspberrypi.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: broadcom: rpi: Switch to V3D firmware clock
Message-ID: <ad07546f-0c2d-4bc2-b794-755b892c7328@sirena.org.uk>
References: <20251005113816.6721-1-wahrenst@gmx.net>
 <9ebda74e-e700-4fbe-bca5-382f92417a9c@sirena.org.uk>
 <a5e1e279-7e20-458d-a75f-787e0adbc9fe@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0SFa+Q/+kIjXwdsS"
Content-Disposition: inline
In-Reply-To: <a5e1e279-7e20-458d-a75f-787e0adbc9fe@gmx.net>
X-Cookie: How do I get HOME?


--0SFa+Q/+kIjXwdsS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Oct 26, 2025 at 01:40:19AM +0200, Stefan Wahren wrote:
> Am 21.10.25 um 14:09 schrieb Mark Brown:

> > I'm seeing the GPU start to fail probing on the Raspberry Pi 4 in
> > today's pending-fixes:

> > # # v3d fec00000.gpu: probe with driver v3d failed with error -110
> > # not ok 1 +platform:fec00000.gpu

> > which bisects to this commit.  I'm not sure if that's just a preexisting
> > issue which is now being properly detected or if it's an actual issue,
> > I'm not testing the GPU at all so I couldn't tell you if it was actually
> > working.

> can you confirm that this issue is fixed by this commit?

> module: Fix device table module aliases [1]

> [1] - https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20251024&id=9025688bf6d427e553aca911308cd92e92634f51

No.  This is happening in mainline (was originally reported against
pending-fixes) so wasn't affected by all the module breakage, that was
separate.

--0SFa+Q/+kIjXwdsS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmj/YIwACgkQJNaLcl1U
h9DG5Af+MfDiLASB1cei5SUP8kclRnDOSOmedyI6GMwgKQFZMQhhTC2h9Qmjzazc
hz3MzKDlsAe5Khrzy/Fd8gQs3KN2tiLzAP05giUQJltAFrr1TfItUPJnm1xDzmF4
pwJeFEzriYlolTYzTRo2cEHxUsVv71GUUGdueSV79y4seXfkCqsS5WpW8mtUgdRh
NMDUUkFF7Qo05NDNZgKGKYUiODZyzJZY0wcOe4bpmmZTlzUZUNe/uAkLtxLjvsgf
DtP+/fUhmjy4qXJva26y+LsY5+jtErK8Fv2kPlIXr/6QBSTR1kKvlTVJvR2BC8DC
UrROFHORS9qXaPmpvW0YjWJZ00E/YQ==
=CD72
-----END PGP SIGNATURE-----

--0SFa+Q/+kIjXwdsS--

