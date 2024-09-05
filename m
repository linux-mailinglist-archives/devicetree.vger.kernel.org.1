Return-Path: <devicetree+bounces-100410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 413E696D869
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 14:25:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DEC0F1F26AF3
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 12:25:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEDC919CC2E;
	Thu,  5 Sep 2024 12:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="zp8p7HP3"
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta1.migadu.com (out-181.mta1.migadu.com [95.215.58.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0A919CCE2
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 12:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725538885; cv=none; b=KPSq/OLKqz/xV6byTxacHu9z6V0jySB9UtvKPbYUqtRFDkYFQ3kNYZDDI9v3s7+M05sZtaAMLVGRK9Ol8DDf0WBFI7ePOsr1EgefV3aTBsX+RzA3WMCSxB0fjrm/YZMvBK6d3srw1G+JY1Ei/ijbLNDg3sGjvZ9KmJ4Yt/1K8Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725538885; c=relaxed/simple;
	bh=a30qVaCjRBhA+CrZpyQ5LQoff0lBw1ghBzVO6+FMHXU=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=aIrpg7E7Z3DAKg/zuiyu2gAJcr7dDcaeVMp+3Sy7ApD4O2kuIau4ULNswyhYoU+3SgVfCKqCR1w1BJbaSFEPxntupny64m7rPiPTYh0jrnfgrzBKt4vHvEegRd0nRndVNbS7OVLWEE5FOPZOPZxPY4gj0UixVjD1PIQiP52Lnd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=zp8p7HP3; arc=none smtp.client-ip=95.215.58.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1725538881;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=m0upCeZNrvDUQnDPHLYGuminqK/9oN+kaTuNQFta8ZQ=;
	b=zp8p7HP3ol+AN7+2w0u8sw3feRS6+EtQvIxCq07dq9Dksj1BTJW2+cqNyFjtKP6ganjaEn
	yRNrdKSMcY/zfUd8lPaFdyuO200HIfl9M0UYYVq+QjhfTeeHWi3ZsXLlJI/TiAsATCV/lL
	veM7whyuJj/XoEN2jpV4SpdNDhvZug15hXJg+oub6sWMNS2+cB/OUt0lAoVp2pFnJ7qL2j
	SqaBjowIo9rVkcQwbGsTr0xQhJHz0c8SGtIc0svjbcOf+GIlorwOBqTw4aNVmdWlAEsRFN
	ylbUhCkexhSvxeUXkNtWjgLL7n/y9GT0QxkzY2rzCRTpBPMhUMgjMPRxu1j2AA==
Content-Type: multipart/signed;
 boundary=2d312f426b36611740239ff3b0c317c3ffbb2d79eaae2fd1cbf4292c25aa;
 micalg=pgp-sha256; protocol="application/pgp-signature"
Date: Thu, 05 Sep 2024 14:21:12 +0200
Message-Id: <D3YCHAOLOU6W.3B8MJYAYWOEGK@cknow.org>
Cc: <heiko@sntech.de>, <linux-arm-kernel@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <conor+dt@kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Add a few aliases to the PineTab2
 dtsi
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Dragan Simic"
 <dsimic@manjaro.org>, <linux-rockchip@lists.infradead.org>
References: <987e68d1c5e9a0cc56d730aec87246aa5ab8ea14.1725535770.git.dsimic@manjaro.org> <c820085c-a4f4-4d03-9df8-733a79e911c0@kernel.org>
In-Reply-To: <c820085c-a4f4-4d03-9df8-733a79e911c0@kernel.org>
X-Migadu-Flow: FLOW_OUT

--2d312f426b36611740239ff3b0c317c3ffbb2d79eaae2fd1cbf4292c25aa
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Thu Sep 5, 2024 at 1:39 PM CEST, Krzysztof Kozlowski wrote:
> On 05/09/2024 13:32, Dragan Simic wrote:
> > Sprinkle a few commonly used aliases onto the PineTab2 dtsi file, to im=
prove
> > its readability a bit, to make it easier to refer to the actual nodes l=
ater,
> > if needed, and to add a bit more detail to some of the labels.
> >=20
> > Suggested-by: Diederik de Haas <didi.debian@cknow.org>
> > Signed-off-by: Dragan Simic <dsimic@manjaro.org>
>
> Unused aliases do not improve readability, so for me this change is
> making code worse without valid reason.

This came forth by a question from me to Dragan about a patch for
another board which doesn't have a charger defined at all (yet).
I actually have that patch (but not the HW) for a while (~1.5 year)
now and I had used `rk817_charger: charger` for that, probably because
I saw that being used everywhere else.

Then I compared it to the PineTab2 and noticed it had only `charger`, so
I asked "What should I use? With or without the alias?"
In this case the inconsistency is causing confusion (with me).

So: What should be used for that other/new board(s)?

Cheers,
  Diederik

--2d312f426b36611740239ff3b0c317c3ffbb2d79eaae2fd1cbf4292c25aa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZtmiOgAKCRDXblvOeH7b
bivAAQChtRQ4JLxi+OzTHCGMxlshCxBB/+x9r0QIrUHdVfc2oAD/W0i0uuf14sm/
WIQpeeE4yYyvBIzmSAeyyCQ1XcoRYgw=
=dEN9
-----END PGP SIGNATURE-----

--2d312f426b36611740239ff3b0c317c3ffbb2d79eaae2fd1cbf4292c25aa--

