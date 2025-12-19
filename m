Return-Path: <devicetree+bounces-248195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C2080CCFCAE
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 13:30:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AC65730C1B49
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 12:26:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DC8632863A;
	Fri, 19 Dec 2025 12:19:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07689328618;
	Fri, 19 Dec 2025 12:19:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766146753; cv=none; b=S0jBtp6a2KZN+b+cQ/Ygb/mM+1iBmMpaYNITV9FaicFsto6GP4CPGmRPkBrMWbBfWf7rmbv1d3WivA8Q3U1zn4P02fnzb4/wE8QG0iIAxXimFsYHJ9qNyPodAPZWUKmZR4E+IHHuro5h6Mv1WBBJPI7729Ylt0vvnnr3w55KrC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766146753; c=relaxed/simple;
	bh=oKq6aL7d4EFtNYjveKmf5F4EQih2qPejJvSHa0JzOh0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IgHYdFYCwlB8LexgLDXkmQbDT65DJ1UT5tkoribtwO5Hzd+Q1WDbuAW4i1QfFzZNjuQy0h7ps18IHxNxeQNWjV9dN8diKFb4+RVvqE3Wsh4/PovvQoDgElFejLvTX+QGZxqQGjaIZe8clmboL+P0q7bDn/AOWjBYYJTlGcruQCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
Received: from localhost (unknown [116.232.18.222])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dlan)
	by smtp.gentoo.org (Postfix) with ESMTPSA id E3D7E34101D;
	Fri, 19 Dec 2025 12:19:09 +0000 (UTC)
Date: Fri, 19 Dec 2025 20:19:01 +0800
From: Yixun Lan <dlan@gentoo.org>
To: Alex Elder <elder@riscstar.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	vkoul@kernel.org, kishon@kernel.org, ziyao@disroot.org,
	aurelien@aurel32.net, johannes@erdfelt.com, pjw@kernel.org,
	palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
	p.zabel@pengutronix.de, guodong@riscstar.com,
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
	spacemit@lists.linux.dev, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 0/5] Introduce SpacemiT K1 PCIe phy support
Message-ID: <20251219121901-GYB1958363@gentoo.org>
References: <20251218151235.454997-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251218151235.454997-1-elder@riscstar.com>

Hi Vinod,
 Could you take a look of this series? I suppose patch 1-3 should go via
the generic phy tree, for patch 3, it's already got Neil's R-y [1] which
Alex should collect the tag..
 the Changelog for previous versions are also dropped.. which is bad

Link: https://lore.kernel.org/all/ba532f8d-a452-40e5-af46-b58b89f70a92@linaro.org/ [1]

On 09:12 Thu 18 Dec     , Alex Elder wrote:
> This series introduces a PHY driver to support PCIe on the SpacemiT K1
> SoC.  The PCIe controller implementation is derived from a Synopsys
> DesignWare PCIe IP.  The PHY driver supports one combination PCIe/USB
> PHY as well as two PCIe-only PHYs.  The combo PHY port uses one PCIe
> lane, and the other two ports each have two lanes.  All PCIe ports
> operate at 5 GT/second.
> 
> The PCIe PHYs must be configured using a value that can only be
> determined using the combo PHY, operating in PCIe mode.  To allow
> that PHY to be used for USB, the needed calibration step is performed
> by the PHY driver automatically at probe time.  Once this step is done,
> the PHY can be used for either PCIe or USB.
> 
> The PCIe controller driver that was included in earlier versions of
> this series has already been accepted upstream:
>   a812b09a6b599 ("dt-bindings: pci: spacemit: Introduce PCIe host
> 		  controller")
>   ff64e078e45fa ("PCI: spacemit: Add SpacemiT PCIe host driver")
> However this series still includes devicetree patches to enable the
> PCIe controller (along with the PHYs).
> 
> The patches that remain in version 7 of this series are unchanged;
> they are simply rebased on top of Linux v6.19-rc1.  The first two
> patches are the DT bindings for the PCIe and combo PCIe/USB PHY.
> The third is the PHY driver, and the last two are devicetree updates
> to enable the PCIe controller and PHYs.
> 
> 					-Alex
> 
> Alex Elder (5):
>   dt-bindings: phy: spacemit: Add SpacemiT PCIe/combo PHY
>   dt-bindings: phy: spacemit: Introduce PCIe PHY
>   phy: spacemit: Introduce PCIe/combo PHY
>   riscv: dts: spacemit: Add a PCIe regulator
>   riscv: dts: spacemit: PCIe and PHY-related updates
> 
anyway, for this series, I've also tested on bananapi with nvme card, so

Tested-by: Yixun Lan <dlan@gentoo.org>

-- 
Yixun Lan (dlan)

