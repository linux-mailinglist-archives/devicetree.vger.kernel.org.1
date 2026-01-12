Return-Path: <devicetree+bounces-253745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3235ED11036
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 08:58:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C70530DDB0C
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 07:56:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97651339853;
	Mon, 12 Jan 2026 07:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="ZtMFcjqL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92B9233A9F7;
	Mon, 12 Jan 2026 07:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768204604; cv=none; b=nM+C3QnykCic4Hgb4hKaCXSl6CWx0R0GpBNFeCXUc4So//8yHyg3dfB1OJoqP1eRrYh3Ok1M4xuZ3B96dcOGdY6Gum8FurIfCQnRMqGlyqSxspgsuyoXHa+SaZmNSB9qe6la0611Gn6v4Y1w5k8oM3r2wiD+dQuhQccRWu9ChP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768204604; c=relaxed/simple;
	bh=LF9hZFrn3ehJahvdlBjA9wkUUmCdM9ZM5HcTk8Jt2d4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k1MFsqKaTi4JtE6m12cWqoM4WUHV92IgiaOIfyM4wWN2eidDBz1KO4hqp3DMZ1LP5JJQb0KVFgHIW1vVAAEceRHlbQDyN5LmBCurjwNJVgnZx4v5D05ph5sWnkzRm3FAg+ANlmsTBF/gd25xwKTPp0YyZpXjHvVGzgoGy5G4ux0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=ZtMFcjqL; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch [83.173.201.248])
	by mail11.truemail.it (Postfix) with ESMTPA id 0E3C81FAAE;
	Mon, 12 Jan 2026 08:56:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1768204600;
	bh=PHCs0iNyflG7x6+oRCtz4NEb6YJJHbVOD9mrmwPAxWA=; h=From:To:Subject;
	b=ZtMFcjqLE2oKc1b2piFxvFBSFhZ2YShLVNxAavEFQ89Q14nmtZiluhyX42oliU+zC
	 efs0sezywO5g1AwEcsa1CDAcDRmFKi2fMG5j3wC3xPk0zafy80891LW33xXLTk7uzh
	 ZHOXXFe7jReWJyvUAITn+3eqoPXKk4T0evYZON6RduaATjTaw4UtnRofeuGb9ZTIPj
	 ZnR+M9vhZeeFZ6gJq7D6XfYoV9wx+tjWtLEHIEPvMh9+PUInewDWZQRtLFV86x6wB7
	 3i35p4wwhSw61CsH4mobf3Bte0g4XVeV3sq7W78hNgFpfrICcr0iw4AQPEEUGiiMdm
	 YShixlWprrFgQ==
Date: Mon, 12 Jan 2026 08:56:36 +0100
From: Francesco Dolcini <francesco@dolcini.it>
To: Francesco Dolcini <francesco@dolcini.it>
Cc: Siddharth Vadapalli <s-vadapalli@ti.com>, trini@konsulko.com,
	u-boot@lists.denx.de, nm@ti.com, vigneshr@ti.com, kristo@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, srk@ti.com
Subject: Re: [PATCH] arm64: dts: ti: k3-*: Replace rgmii-rxid with rgmii-id
 for CPSW ports
Message-ID: <20260112075636.GA105765@francesco-nb>
References: <20251025073802.1790437-1-s-vadapalli@ti.com>
 <20260112074948.GA101138@francesco-nb>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260112074948.GA101138@francesco-nb>

On Mon, Jan 12, 2026 at 08:49:56AM +0100, Francesco Dolcini wrote:
> +Tom +U-Boot ML
> 
> Hello Siddharth,
> 
> On Sat, Oct 25, 2025 at 01:07:59PM +0530, Siddharth Vadapalli wrote:
> > The MAC Ports across all of the CPSW instances (CPSW2G, CPSW3G, CPSW5G and
> > CPSW9G) present in various K3 SoCs only support the 'RGMII-ID' mode. This
> > correction has been implemented/enforced by the updates to:
> > a) Device-Tree binding for CPSW [0]
> > b) Driver for CPSW [1]
> > c) Driver for CPSW MAC Port's GMII [2]
> > 
> > To complete the transition from 'RGMII-RXID' to 'RGMII-ID', update the
> > 'phy-mode' property for all CPSW ports by replacing 'rgmii-rxid' with
> > 'rgmii-id'.
> > 
> > [0]: commit 9b357ea52523 ("dt-bindings: net: ti: k3-am654-cpsw-nuss: update phy-mode in example")
> > [1]: commit ca13b249f291 ("net: ethernet: ti: am65-cpsw: fixup PHY mode for fixed RGMII TX delay")
> > [2]: commit a22d3b0d49d4 ("phy: ti: gmii-sel: Always write the RGMII ID setting")
> 
> What about U-Boot?
> I just noticed this in today U-Boot master:
> 
>   RGMII mode without internal TX delay unsupported; please fix your Device Tree
> 
> and I think this is coming from the DTS update from Linux to U-Boot.
> 
> Can you look into that?

Ok, I think that the issue is that the U-Boot code was updated
correctly, but now we need the v6.19 DT in U-Boot, and as of now we have
6.18 DT.

Tom: are you planning to sync the U-Boot DT to Linux v6.19 before the next
U-Boot release?


Francesco

