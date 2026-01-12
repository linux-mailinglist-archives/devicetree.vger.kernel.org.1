Return-Path: <devicetree+bounces-253740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4418AD10F5E
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 08:50:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B4E023004297
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 07:50:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75894319859;
	Mon, 12 Jan 2026 07:49:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="DDox4Q85"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A862334361;
	Mon, 12 Jan 2026 07:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768204199; cv=none; b=lkcUr/KIy2IKibzE7RLKHsJ3S0WVcv+K9DLzBGAH6A78ZZzpo84KNXxwiyEI4eXCSqj6Ofxa8+eIA4Q1Zd1PsOUkUJhi+sVR/VgHnbEOyMAE2UzjVYKYvye9AFDjydhSWWc3PD50MhAr9G2iJ8wbfzJKKGk1JTBqRf1AkTaFgwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768204199; c=relaxed/simple;
	bh=35E2lJeCMa9UFi8AD8XWW+m652wpd3JL9R4zRrSg4FQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HvgbmxukZAnLnkliXrjJUjwW8yv7/JL2CU/urMYJ4VPJrYgXH7ZeG5K3FZmQH4a3iHA5dDv0Y2NAxICvEoBNhAQ8aJk/0raesnMYDjETEYRiaLVrqIVju1Wo2ScMXsg5yosUI3pHR0Dwhg1d9Wp43DU8Basgy3UPzrYaUqC6Q8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=DDox4Q85; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch [83.173.201.248])
	by mail11.truemail.it (Postfix) with ESMTPA id 4F3BB1F93B;
	Mon, 12 Jan 2026 08:49:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1768204192;
	bh=mu3A6Fj4SLA5ywv0bviGzdNIFATxYiX/NAbD4mBo3Vo=; h=From:To:Subject;
	b=DDox4Q85Gt21ueXl5K2plK+Wm41XkJYxRzHZ5NaDAGeXqcC1Kn4MOcc0DPDiACYkP
	 Uk27tFma73dUK0LLVNbXC8jR5XQUuwBHFiqvQ2Y69jUbE9ciJG850d7t86MHpo0s+W
	 aMa6SVmGk9smzn94/9qUMm0urveISGVYY6Iw1MdHockzOeZBIRRcDyR9OKrMy+Xd9U
	 z9UPgJkzyDNOGAQW248qbFNwymNbHqWNha9BnODNX736kneqCGGF60duYZXH7vr/Vu
	 eqeXr1ps/knO5zF0pyezs2tYdYWvHLbh6DJIPNGw80cy3c+evyH6fuIZomfnncsDeV
	 IGG/7pRDmFeWg==
Date: Mon, 12 Jan 2026 08:49:48 +0100
From: Francesco Dolcini <francesco@dolcini.it>
To: Siddharth Vadapalli <s-vadapalli@ti.com>, trini@konsulko.com,
	u-boot@lists.denx.de
Cc: nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	srk@ti.com
Subject: Re: [PATCH] arm64: dts: ti: k3-*: Replace rgmii-rxid with rgmii-id
 for CPSW ports
Message-ID: <20260112074948.GA101138@francesco-nb>
References: <20251025073802.1790437-1-s-vadapalli@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251025073802.1790437-1-s-vadapalli@ti.com>

+Tom +U-Boot ML

Hello Siddharth,

On Sat, Oct 25, 2025 at 01:07:59PM +0530, Siddharth Vadapalli wrote:
> The MAC Ports across all of the CPSW instances (CPSW2G, CPSW3G, CPSW5G and
> CPSW9G) present in various K3 SoCs only support the 'RGMII-ID' mode. This
> correction has been implemented/enforced by the updates to:
> a) Device-Tree binding for CPSW [0]
> b) Driver for CPSW [1]
> c) Driver for CPSW MAC Port's GMII [2]
> 
> To complete the transition from 'RGMII-RXID' to 'RGMII-ID', update the
> 'phy-mode' property for all CPSW ports by replacing 'rgmii-rxid' with
> 'rgmii-id'.
> 
> [0]: commit 9b357ea52523 ("dt-bindings: net: ti: k3-am654-cpsw-nuss: update phy-mode in example")
> [1]: commit ca13b249f291 ("net: ethernet: ti: am65-cpsw: fixup PHY mode for fixed RGMII TX delay")
> [2]: commit a22d3b0d49d4 ("phy: ti: gmii-sel: Always write the RGMII ID setting")

What about U-Boot?
I just noticed this in today U-Boot master:

  RGMII mode without internal TX delay unsupported; please fix your Device Tree

and I think this is coming from the DTS update from Linux to U-Boot.

Can you look into that?

Francesco


