Return-Path: <devicetree+bounces-254588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC46D1995C
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:47:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 05A0E300D31C
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 14:47:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6134B2BE03D;
	Tue, 13 Jan 2026 14:47:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+RZ1DOB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D24C289E06;
	Tue, 13 Jan 2026 14:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768315638; cv=none; b=S4zwK+O9+xaGAQ63s+qGVa1piYmAcYNcl/LxDYnbwEWC5IqWksjmwwMgt88oKT4Yi9vmbdC/KTNwm6WnIUPJA9GPPSHVP2SRhmwxYkKDCOuqqH0zhL2HFBQqOq7qoejaNO082gMy45TGp4WTfOWZzawxgK1vNN6Xs6ebzsrfdl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768315638; c=relaxed/simple;
	bh=bmqIQmLkIZkqUem7xNcRewV5DCcMsK6QQXdiFILHQ0E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h1gu3ID388qdmCkQ8ShHAmZ8PdcEAQtOMpFuJkkKNbcfJVALA67pN9KGmO28IvYhDJyZOiEg0a+Xmq+GpMLg6UCx4lDi6wQzUyJprFgA5wZcTESGSAa+pZxcnhsuUhoDFsCmj79p9nbRCrsUKwrzNHSDpacdEKy0PfWyGiiVCfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+RZ1DOB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE765C19422;
	Tue, 13 Jan 2026 14:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768315637;
	bh=bmqIQmLkIZkqUem7xNcRewV5DCcMsK6QQXdiFILHQ0E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t+RZ1DOBedS4sV6A2tN6gPHd2HAtS3KDmwnCtimAkiaVTt473o8qz37Bo/DVVPnzT
	 VLc+zPNuLqjjLEubdOyE4PFduehIXRO6QY301c57hvGI4pI1l4rCR6H+3zU73wo49p
	 sBYgi+JEjlG0pqb0no1Huv9ChlUEBLqI/FcJ3AuqOyIWz5uXFBPZsVCD0pMBjCR0vt
	 PcKFuobxyYU29g1Soos49w40PmXylg1ltjCWxrVhFNGvb1XREdgtQ464zV6j1nhBEe
	 +eyUsNY4HfdfyZm5YgoQ4PDpK6+K6T6f2y6VJ/bIPAmMhy9fT/NqsDzvMb06bXnbXO
	 LwkRMpJy3k9AQ==
Date: Tue, 13 Jan 2026 08:47:16 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Anshul Dalal <anshuld@ti.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>, devicetree@vger.kernel.org,
	Tero Kristo <kristo@kernel.org>, Andrew Davis <afd@ti.com>
Subject: Re: [PATCH v8] dt-bindings: arm: keystone: add boot_* mboxes to
 ti,sci
Message-ID: <176831563605.3742417.8691359583329615033.robh@kernel.org>
References: <20260113-k3_syscon_add_boot_mailboxes-v8-1-d43954527b5d@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260113-k3_syscon_add_boot_mailboxes-v8-1-d43954527b5d@ti.com>


On Tue, 13 Jan 2026 11:08:56 +0530, Anshul Dalal wrote:
> The bootloader on K3 devices makes use of mailboxes as per the ROM spec
> which might be different than one's available to the kernel (firmware
> spec).
> 
> Therefore, this patch adds the missing mailbox entries to the DT binding
> if the matching compatible is ti,am654-sci to represent the mailboxes
> exposed by the hardware during boot for the purpose of loading the
> firmware.
> 
> The newly added mboxes are made optional by keeping minItems as 2 to
> remain compliant with existing device-trees. The new 'notify' channel is
> not supported on all SoCs and is therefore kept at last in the list.
> 
> Signed-off-by: Anshul Dalal <anshuld@ti.com>
> ---
> Changes in v8:
> - Refactored the patch to a simplified diff
> - Link to v7: https://lore.kernel.org/r/20260107-k3_syscon_add_boot_mailboxes-v7-1-d97a943f0a52@ti.com
> 
> Changes in v7:
> - Removed ti,am642-sci compatible
> - Keep examples unchanged
> - Modify ti,am654-sci ordering to ensure compliance with SoCs without a notify channel
> - Link to v6: https://lore.kernel.org/r/20251222-k3_syscon_add_boot_mailboxes-v6-1-b93ada9f1d47@ti.com
> 
> Changes in v6:
> - Added ti,am642-sci compatible to represent SoCs without a "notify" channel
> - Added new examples instead of editing existing ones
> - Link to v5: https://lore.kernel.org/r/20251215-k3_syscon_add_boot_mailboxes-v5-1-5a8fe567fd31@ti.com
> 
> Changes in v5:
> - Added commit description for the optional mailboxes
> - Link to v4: https://lore.kernel.org/r/20251205-k3_syscon_add_boot_mailboxes-v4-1-8e216fb88941@ti.com
> 
> Changes in v4:
> - Make new boot_* mboxes conditional on ti,am654-sci compatible
> - Link to v3: https://lore.kernel.org/r/20251112-k3_syscon_add_boot_mailboxes-v3-1-66155a4236dc@ti.com
> 
> Changes in v3:
> - Drop [1/2] of the last patch series
> - Update existing example with boot_* mailboxes instead of adding a new one
> - Link to v2: https://lore.kernel.org/r/20251112-k3_syscon_add_boot_mailboxes-v2-0-aebc1e47b391@ti.com
> 
> Changes in v2:
> - Remove maxItems entry
> - Remove RFC tag from patch (added by mistake in v1)
> - Document the new mailboxes in mboxes instead of mbox-names
> - Provide example with all the mailboxes set
> - Update commit title to have "ti,sci"
> - Split into two patches
> - Link to v1: https://lore.kernel.org/r/20251111-k3_syscon_add_boot_mailboxes-v1-1-529a27f21076@ti.com
> ---
>  .../devicetree/bindings/arm/keystone/ti,sci.yaml   | 24 ++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


