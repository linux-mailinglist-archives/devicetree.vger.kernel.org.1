Return-Path: <devicetree+bounces-190481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CA7AEBDD8
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 18:52:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B5C57646ACF
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 16:52:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09D342E9EBE;
	Fri, 27 Jun 2025 16:52:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="kSjCkU4w"
X-Original-To: devicetree@vger.kernel.org
Received: from out-177.mta1.migadu.com (out-177.mta1.migadu.com [95.215.58.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C95C22E9746
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 16:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751043151; cv=none; b=GVYmkPIMquNI8aWbSYZgTJCPtubDndm2U2CUrsnBl3EpxOjulcrRLn34fm0EFMWhRh1Do12G2MCl58mFk5PcgbW2Ld1RY9blm6MItCZ4KLKT6++OhI3vper92vcHJISOKnP+DoSQ1h85EXxDLH4sJcX4bYaiN6UrlaDUWXwCfzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751043151; c=relaxed/simple;
	bh=TvVhlkSBQgA8D8CdZgP7NPU7n2uqpjHVluJFfZDjn6E=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=tGGv+ThwOlaJzVC3r9EVQWyschNfoK0OsJSTquinFp31wWNXDNDI+BR56OGR6vdY2Q951M7qrR/8alChPqkcqPydjrsfXSNyFvvLixUPTWqf2GFYtDXTYQkE9AI9nwUDgiVlSliMUsyPyxKFU1XePXghE9KpMeUrb5yyTqIPjaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=kSjCkU4w; arc=none smtp.client-ip=95.215.58.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1751043147;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=tGcjuL2slpWhzqeNUJrDqbaR1n+v8Pj6UenPCqATS+g=;
	b=kSjCkU4w5siXqHmivmcrSVGuVOGanuQatBxL5wL6DA7gbq3/cV4Iz+Lt3bjWGA0ajFitZH
	ZRcTzfoYnXJ0J3gb2FPrM45P9fvqLHjTdZ/VimZ1zl+Q+SdJ5VO/nb6tSqEpcpZUsaMXye
	U7Nt1zsLU/xbGHw+WBxhPQciMCe9RWu+1+OrLxi9/DSI/PTsOJkpuXuU5j6bqqD4jpq8Xg
	rDN5lZNB/Di8qrpx5Q2LGyE6E4WLg9f7qhYJNyJnER2rRgoQWPR8wSfVKN/+svwCDu6JuR
	xMCpyS+wRGTW8Dt9OA6SezudNoWmpTMbdgPKnT0TPs1QsBZQ8faG6pFn5ouD6g==
Content-Type: multipart/signed;
 boundary=96f61c01bf8107678ee9012b3e19c12962b79f2f2124dfe2dc8bdea55bc2;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Fri, 27 Jun 2025 18:52:08 +0200
Message-Id: <DAXGZG0DEKS2.7RLXKSDO0C9T@cknow.org>
To: "Quentin Schulz" <quentin.schulz@cherry.de>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
Cc: "Dragan Simic" <dsimic@manjaro.org>, "Johan Jonker" <jbx6244@gmail.com>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/8] arm64: dts: rockchip: Refactor DSI nodes on rk3399
 boards
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
References: <20250627152645.740981-1-didi.debian@cknow.org>
 <20250627152645.740981-3-didi.debian@cknow.org>
 <b1c789bf-1369-42ec-8bb3-d7a45c92abf0@cherry.de>
In-Reply-To: <b1c789bf-1369-42ec-8bb3-d7a45c92abf0@cherry.de>
X-Migadu-Flow: FLOW_OUT

--96f61c01bf8107678ee9012b3e19c12962b79f2f2124dfe2dc8bdea55bc2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Quentin,

Thanks for taking a look.

On Fri Jun 27, 2025 at 6:10 PM CEST, Quentin Schulz wrote:
> On 6/27/25 5:16 PM, Diederik de Haas wrote:
>> The #address-cells and #size-cells properties are not useful on the DSI
>> controller nodes; they are only useful/required on ports and panel(s).
>> So remove them from the controller node and add them where actually
>> needed on the various rk3399 based boards.
>>=20
>> Next to that, there were several (exact) redefinitions of nodes which
>> are already present in rk3399-base.dtsi to add a mipi_out endpoint.
>> Simplify that by referencing the mipi_out phandle and add the endpoint
>> to that, which allows the removeal of the ports redefinition.
>>=20
>> And fix 1 instance where the mipi_out referenced node was not sorted
>> correctly.
>>=20
>> This fixes the following DTB validation warnings:
>>=20
>>    unnecessary #address-cells/#size-cells without "ranges",
>>    "dma-ranges" or child "reg" property
>>=20
>
> Too many unrelated changes in this commit, please split into multiple=20
> commits.
>
> I could identify:
>
> - moving address-cells/size-cells from SoC.dtsi to board dts(i)s,
> - reordering properties to better match DT coding style=20
> https://www.kernel.org/doc/html/latest/devicetree/bindings/dts-coding-sty=
le.html#order-of-properties-in-device-node
> - use phandle to directly access ports,
> - reorder DT node to better match DT coding style=20
> https://www.kernel.org/doc/html/latest/devicetree/bindings/dts-coding-sty=
le.html#order-of-nodes

I initially had it as several commits, but that resulted in (f.e.) 1
issue being fixed, but 1 (or more) others would pop up.
Those were then fixed in follow-up commits, but I assumed I'd get Rob's
bot screaming at me for introducing new warnings (first).

And as they all relate(d) to fixing the dsi node, I then choose to
combine them (but still separated by SoC).
IMO there are several ways to organize the commits and each would have
their pros and cons, so I 'settled' for this arrangement.

So I prefer to wait for other people's opinion first before reorganizing
the commits again (if there's a different consensus).

> The change for RK3399 Puma Haikou Video Demo DTSO is fine for me.

Thanks :)

Cheers,
  Diederik

--96f61c01bf8107678ee9012b3e19c12962b79f2f2124dfe2dc8bdea55bc2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaF7MRAAKCRDXblvOeH7b
bvDfAP9WGhpdcQcQ06Wxrsu8JLAg+fmJPYyjmIUtlZTFnFqf1AEAx9/kmKAqTewV
XzVG0YMlKfLnQS0bh46/FwKpZg/SlAc=
=EA9N
-----END PGP SIGNATURE-----

--96f61c01bf8107678ee9012b3e19c12962b79f2f2124dfe2dc8bdea55bc2--

