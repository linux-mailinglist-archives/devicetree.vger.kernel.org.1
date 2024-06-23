Return-Path: <devicetree+bounces-78876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D7191399A
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 12:43:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E6DC21C208E0
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 10:43:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AAFE12C526;
	Sun, 23 Jun 2024 10:43:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2733563D
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 10:43:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719139398; cv=none; b=T+uUIWtyW2xMULjtygG9EIpcI93AzXfnGwStg2XYTQMpRl0OWfOfK69e+vtlv3usz04m1E33YMuFjhdQ3TnqnqRS/IVKHc8nSUfAtA2DvSPrrlxgrW00SjQlIuwDLAV1hB4SO7yEFhcELjtrs9qYb4MiuzmBybh/+LbGIEcJ5m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719139398; c=relaxed/simple;
	bh=4wfkUv6vQF4+/X466wRdVQ9KNz8K4e6RiePoLEiu5SM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WdNeonK4b+v+njKIHA2c1ESnzOOBCj1bJ00mTRKE0830j/mBT9k0230GD/jFxBT8TESEBTobRwS/6BlwCvyzBi442tAp9ndIrlU3dUp+3UKKutC9G2II0s3eei8wwNhJxofPk2KV9wcYaPB4CkBcK535dqR4xD0tSFgT6ONbFXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875a87.versanet.de ([83.135.90.135] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sLKgY-0007zH-6m; Sun, 23 Jun 2024 12:43:02 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk@kernel.org>, FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add dts for Radxa ROCK Pi E v3.0
Date: Sun, 23 Jun 2024 12:43:00 +0200
Message-ID: <2659620.bgRvk7e4E5@diego>
In-Reply-To: <9941941CA3B1175A+26e42825-e100-44b7-a565-f1a86ca3fff8@radxa.com>
References:
 <20240623075318.80492-1-naoki@radxa.com>
 <8da8e56a-e24f-4b56-9861-df55369c984f@kernel.org>
 <9941941CA3B1175A+26e42825-e100-44b7-a565-f1a86ca3fff8@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

Am Sonntag, 23. Juni 2024, 10:18:58 CEST schrieb FUKAUMI Naoki:
> On 6/23/24 17:07, Krzysztof Kozlowski wrote:
> > On 23/06/2024 09:53, FUKAUMI Naoki wrote:
> >> Radxa ROCK Pi E v3.0 has DDR4 SDRAM instead of DDR3 SDRAM.
> >>
> >> for Linux, this change doesn't make any difference from a device tree
> >> POV. but, for bootloader (U-Boot TPL), it makes a difference.
> > 
> > What difference?
> 
> U-Boot TPL initialize DDR SDRAM.
> 
> https://github.com/RadxaNaoki/u-boot/commit/16d823eb95fe311c82a8ebb31570b59b1c59c43b#diff-03ce6c241f5db74ae87d4d8654bfef5eeb5bc42a9f1ff3cc828b70b3b2ac51d2R4
> https://github.com/RadxaNaoki/u-boot/commit/16d823eb95fe311c82a8ebb31570b59b1c59c43b#diff-31b80303774e7c10b527fb2dbc704b82e6c5ccdc6d53dd4f65861309ce0e7413R4
> 
> there is 1 letter difference, ddr"3" and ddr"4".
> 
> >> bootloader needs a separeted dts for v3, so I add new dts for it.
> >> dtb can be shared between v3 and prior, so I don't touch Makefile.
> > 
> > I don't understand. If you have the same DTB then you do not need second
> > DTS.
> 
> 2nd dts is for bootloader. it's not needed for Linux.

but _what_ is this different dt needed for. If it is unchanged from the
first one, why can't you reference that one in u-boot?

Similar to Krzysztof, I don't see _why_ you need a separate devicetree
at all.


Heiko



