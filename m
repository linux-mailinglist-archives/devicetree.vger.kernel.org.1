Return-Path: <devicetree+bounces-254069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC6DD139C4
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 16:22:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7D4913038506
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 15:18:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 589AB2F90C4;
	Mon, 12 Jan 2026 15:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9TJGe1f"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156A92F7AD0;
	Mon, 12 Jan 2026 15:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768231051; cv=none; b=r7WJnDT/eyL9wE/Dwj1WcWFeZpeBArT1AuTzYAXUKycjPuvc5TXfODxZffLwrGk/i9TQ1ig3hGn/QSvlI7lVZxgJX2Lr152zMvRlwvLcA1GA0Aptq84VRsLndaD8AvFkgUxE03xG6iJjjais9ClDqhCYFgHNvnc6PPh7jhU61VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768231051; c=relaxed/simple;
	bh=oeljyyib6Pl18XuDgLYw+CXyCHm8RbZngF2pGgWjgN4=;
	h=From:Date:Content-Type:MIME-Version:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=rjwsnsphGwIV1QZj/ie6yMkd2PGMhJ8ziZCJxrBCGZd3hLFpzV3bnsWobJvhUjzJrHsUiL3N8n4JxqXk2eeILYV/DcIoCGWo9+wWyK8ld2h2pB6Xp5/tb+joujpsZptzqP4MmvR6gGvqyetEkhSOrJ8EZludUEB5aTN+rQDJvd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9TJGe1f; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB475C16AAE;
	Mon, 12 Jan 2026 15:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768231050;
	bh=oeljyyib6Pl18XuDgLYw+CXyCHm8RbZngF2pGgWjgN4=;
	h=From:Date:Cc:To:In-Reply-To:References:Subject:From;
	b=A9TJGe1fGfegv9iMpzDCpYR4GWh065Wv2k8Bx/crHdrnbPIHBRZwNtb6Ex8WEcz69
	 Pz3gxY7LjZIvModEiUTFk8ZSjPAXs4wsh8KcM5UT7gJ1nqSCCZ008yKwHJWhniE65F
	 XRO951zA7/h2jUwXmO9JKdt6r6kyxTXWq+Fvt2PIUDoU9ahQxtae6i5DiWSoQgabNp
	 Jx+/E+MbHIBF8KFbcIT1Rzz2zPJuA27D29HmNTRwV1bPPDc5fWmU5tkqZMPL8Co6A/
	 Fpld+yXzyECkRlP3klOyY4IaFcEgws5SNkZt2E8NWTeJVOKUk3QaQs/xkoosOGFFd4
	 Q8mSL0DVL21BA==
From: Rob Herring <robh@kernel.org>
Date: Mon, 12 Jan 2026 09:17:30 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Cc: devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 SriNavmani A <srinavmani@axiado.com>, openbmc@lists.ozlabs.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Prasad Bolisetty <pbolisetty@axiado.com>, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, Vinod Koul <vkoul@kernel.org>
To: Tzu-Hao Wei <twei@axiado.com>
In-Reply-To: <20260109-axiado-ax3000-add-emmc-phy-driver-support-v1-0-dd43459dbfea@axiado.com>
References: <20260109-axiado-ax3000-add-emmc-phy-driver-support-v1-0-dd43459dbfea@axiado.com>
Message-Id: <176822994353.7723.17700786956910310022.robh@kernel.org>
Subject: Re: [PATCH 0/4] Add eMMC PHY support for Axiado AX3000 SoC


On Fri, 09 Jan 2026 17:43:28 +0800, Tzu-Hao Wei wrote:
> Axiado AX3000 SoC contains Arasan PHY which provides the interface to the
> HS200 eMMC controller.
> 
> This series includes:
> 1. Add bindings for Axiado AX3000 eMMC PHY
> 2. Add Axiado AX3000 eMMC phy driver
> 3. Update MAINTAINERS for the new driver
> 4. Update Axiado AX3000 device tree
> 
> Changes: (The previous version was mixed with Host driver, so I separate
> the PHY driver as a new thread)
> - Fix property order in required section to match properties section
> - Fixed example to use lowercase hex and proper node naming
> - Removed wrapper functions, use readl/writel directly
> - Replaced manual polling loops with read_poll_timeout macro
> - Used devm_platform_ioremap_resource instead of separate calls
> - Removed unnecessary of_match_node check
> - Used dev_err_probe for error reporting
> - Added proper Kconfig dependencies (ARCH_AXIADO || COMPILE_TEST)
> - Fixed various coding style issues
> - Link to previous patches: https://lore.kernel.org/all/20251222-axiado-ax3000-add-emmc-host-driver-support-v1-0-5457d0ebcdb4@axiado.com/
> 
> Signed-off-by: Tzu-Hao Wei <twei@axiado.com>
> ---
> SriNavmani A (3):
>       dt-bindings: phy: axiado,ax3000-emmc-phy: add Axiado eMMC PHY
>       phy: axiado: add Axiado eMMC PHY driver
>       arm64: dts: axiado: Add eMMC PHY node
> 
> Tzu-Hao Wei (1):
>       MAINTAINERS: Add Axiado AX3000 eMMC PHY driver
> 
>  .../bindings/phy/axiado,ax3000-emmc-phy.yaml       |  38 ++++
>  MAINTAINERS                                        |  10 +
>  arch/arm64/boot/dts/axiado/ax3000.dtsi             |   7 +
>  drivers/phy/Kconfig                                |   1 +
>  drivers/phy/Makefile                               |   1 +
>  drivers/phy/axiado/Kconfig                         |  11 ++
>  drivers/phy/axiado/Makefile                        |   1 +
>  drivers/phy/axiado/phy-axiado-emmc.c               | 220 +++++++++++++++++++++
>  8 files changed, 289 insertions(+)
> ---
> base-commit: f0b9d8eb98dfee8d00419aa07543bdc2c1a44fb1
> change-id: 20260108-axiado-ax3000-add-emmc-phy-driver-support-d61aead8f622
> 
> Best regards,
> --
> Tzu-Hao Wei <twei@axiado.com>
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


This patch series was applied (using b4) to base:
 Deps: looking for dependencies matching 4 patch-ids
 Deps: Applying prerequisite patch: [PATCH 1/4] dt-bindings: phy: axiado,ax3000-emmc-phy: add Axiado eMMC PHY
 Deps: Applying prerequisite patch: [PATCH 2/4] phy: axiado: add Axiado eMMC PHY driver
 Deps: Applying prerequisite patch: [PATCH 3/4] MAINTAINERS: Add Axiado AX3000 eMMC PHY driver
 Deps: Applying prerequisite patch: [PATCH 4/4] arm64: dts: axiado: Add eMMC PHY node
 Base: f10c325a345fef0a688a2bcdfab1540d1c924148 (use --merge-base to override)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/axiado/' for 20260109-axiado-ax3000-add-emmc-phy-driver-support-v1-0-dd43459dbfea@axiado.com:

arch/arm64/boot/dts/axiado/ax3000-evk.dtb: /soc/phy@80801c00: failed to match any schema with compatible: ['axiado,ax3000-emmc-phy']






