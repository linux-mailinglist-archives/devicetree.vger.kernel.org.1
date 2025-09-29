Return-Path: <devicetree+bounces-222408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8FEBA8DF1
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 12:21:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 887B23C2913
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 10:21:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22ED92F25E2;
	Mon, 29 Sep 2025 10:21:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="cdURmXl/"
X-Original-To: devicetree@vger.kernel.org
Received: from out-187.mta1.migadu.com (out-187.mta1.migadu.com [95.215.58.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCB042E9EC8
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 10:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759141265; cv=none; b=IMzCpih0ouBKkQSsY6WdbAb/9fA5I+mPTSmyGpDVCUwE3sTZIk26lz3A1yS+YoID1NouHvmRYZmudtNA3AePD2a0Q7PZIrkBYx3geGlNKNtQDrKJFk2qUvxxVQjcmw/32snvaI7/hYXHete0SMRQAx7RV1cC9+7ulkE4WfNYzxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759141265; c=relaxed/simple;
	bh=PxVvBGTIFVfOXOCTI2eySfATgeawxPuSwniOJ11NmiA=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=ubxzmRT7aDnZgxkd/ynwx0rT4KBbbu0eYI7+m7ek49QPS1y6ksKhz5rsfSkvdM7cA5/j1YpYO9EKJ7r0mep0PhEUFwREu7VPcoZ3HiSgHSR3mI/z2cKK52CSaHL34BgvchM21NHl8Vm0yGddtFzhg3EAwClP6UfAmJQ8BWTI+wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=cdURmXl/; arc=none smtp.client-ip=95.215.58.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1759141249;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Mbhu+qHT9sgoCc33RJBFnXb9kyOGGNiTxZ7rlYKda5M=;
	b=cdURmXl/TEpUnukbrz/vjDzW8vbikibsWOeWapU9jc7K7o1GKhmF04qfRal36aqveOLNF/
	M8HwPQjlWt+CjXISHQBFiC2qITPn1iW0pyF55gm5O+oVkWXUez9Ou3HYumxHkrCsSe4Nj2
	f/Kid8hQx+fp395KB3Wfs+R9PtvnZTAhpW4OaqQx7eU02sffE63RFc0l8TkHOg/35/Bqv2
	Ev6XebOT32IvRsktwont2k9pqN3ARTjhAGtdmp/g+CFVus6FuFgTSd4B0P8+xz1YKnweqN
	BeAH0xaYTLuaYJkYYALOpiFpyr0IoF1i+ACDG8H8xoY3XKzCbpo6XvPhx98U2A==
Content-Type: multipart/signed;
 boundary=ee8eb54230dbf014845d09a9401c721f636de595bbad24edb5099a7626ce;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Mon, 29 Sep 2025 12:20:45 +0200
Message-Id: <DD57IZJQ4FQM.3T5791FLUQ8KQ@cknow.org>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 0/3] arm64: dts: rockchip: introduce LinkEase EasePi
 R1
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Liangbin Lian" <jjm2473@gmail.com>, <robh@kernel.org>,
 <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <heiko@sntech.de>,
 <quentin.schulz@cherry.de>, <kever.yang@rock-chips.com>, <naoki@radxa.com>,
 <honyuenkwun@gmail.com>, <inindev@gmail.com>, <ivan8215145640@gmail.com>,
 <neil.armstrong@linaro.org>, <mani@kernel.org>, <dsimic@manjaro.org>,
 <pbrobinson@gmail.com>, <alchark@gmail.com>, <jbx6244@gmail.com>
References: <20250929065714.27741-1-jjm2473@gmail.com>
In-Reply-To: <20250929065714.27741-1-jjm2473@gmail.com>
X-Migadu-Flow: FLOW_OUT

--ee8eb54230dbf014845d09a9401c721f636de595bbad24edb5099a7626ce
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Mon Sep 29, 2025 at 8:57 AM CEST, Liangbin Lian wrote:
> LinkEase EasePi R1 [1] is a high-performance mini router.
> ...
> [1] https://doc.linkease.com/zh/guide/easepi-r1/hardware.html
>
> Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
> ---
>
> Changes in v2:
> - Change deprecated "rockchip,system-power-controller" to "system-power-c=
ontroller"
> - Link to v1: https://lore.kernel.org/r/20250925055906.83375-1-jjm2473@gm=
ail.com/

You received an Acked-by on patch 1 and 2 in v1 of this patch set.
You're supposed to add that to the next/new version(s) or explain why
you choose not to do that (bc f.e. there was a major change, but that
does not seem applicable to those patches).

Cheers,
  Diederik

> Changes in v3:
> - Fix typo ('status =3D "disable"' -> 'status =3D "disabled"') found by k=
ernel test robot https://lore.kernel.org/all/202509261328.Grjhp029-lkp@inte=
l.com/
> - Link to v2: https://lore.kernel.org/r/20250925092037.13582-1-jjm2473@gm=
ail.com/
>
> ---
>
> Liangbin Lian (3):
>   dt-bindings: vendor-prefixes: Document LinkEase
>   dt-bindings: arm: rockchip: Add LinkEase EasePi R1
>   arm64: dts: rockchip: add LinkEase EasePi R1
>
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3568-easepi-r1.dts    | 692 ++++++++++++++++++
>  4 files changed, 700 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-easepi-r1.dts
>
>
> base-commit: d0ca0df179c4b21e2a6c4a4fb637aa8fa14575cb


--ee8eb54230dbf014845d09a9401c721f636de595bbad24edb5099a7626ce
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaNpdgQAKCRDXblvOeH7b
bom1AQCfTswrFfDluNNV0dFculfDTyDmVKKRZ2crWGkMgZeo3QD+IhxsVqmnFLwb
Y6aWblLbHF2szDiC2O8HwzlysYVA4gY=
=DNJx
-----END PGP SIGNATURE-----

--ee8eb54230dbf014845d09a9401c721f636de595bbad24edb5099a7626ce--

