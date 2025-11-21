Return-Path: <devicetree+bounces-241233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4774BC7B4FD
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 19:24:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E65923A5049
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 18:23:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBE3B2727ED;
	Fri, 21 Nov 2025 18:23:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzP2uVKl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93C351E8320;
	Fri, 21 Nov 2025 18:23:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763749399; cv=none; b=hgW6x/Q1fMv4oMWf0GHviEoz0t51hLnmdr4tTrKkzeiJhbSt9L8cO/Ea+Kq6CWe2gB+nfnRd0Ztjyq5k3Ed11CHTCHybQQlDmWlzeDW+yEQ7Tdqd0TuKjShkjTSxfjIsd5KAX18h6lqHU3pvsH1yeIXkUoJznsnRTujYf+tcBW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763749399; c=relaxed/simple;
	bh=Tn8d1sQwIoOGDV7RJWQSeoi9vVETWpTgHD0F6HgQ/GE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g/a6h0Rrfepr44pWAREQ2S+EWV59otGRJR0W/fsXtwLFQlyBH+/lxQVJXBN83+ELqHHRduXgM16dHB3eXniZN5h+J/P1fAW+QcCWGJ/NzVVsZs7ZThGQ5eyNK0CiPAPVkEdokgioET1D75JCbxmLLVyTpfupmkT6gdJkgC2e+Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzP2uVKl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBCE3C4CEF1;
	Fri, 21 Nov 2025 18:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763749399;
	bh=Tn8d1sQwIoOGDV7RJWQSeoi9vVETWpTgHD0F6HgQ/GE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UzP2uVKl+OdmK3Ca+M7KnMoutuy/g8dKKOTuL4Kwkf/ft6+nVbcZSOZ2K5lYKlPl3
	 JGARAYdiPUeTDqLH4URlt0wUKWeCkNXFdxrbZRJE+Z2yPyvLD9jQq9KdbfZjMClAjn
	 7Xwux1OFDBhcDsysiRX97shXIzrJ2SN0e+ddDTQdpyRxhIx81E3dvrtph4EPaAeL3j
	 +FY88P3A7tHVlVGWfmNz4EVsVGTiZz8avpr4bD0AteB8lXfyQegOAj8ffOOlj5jkUv
	 mKLXbeEP/HAmN46twAAXM32vreq07thlbqHDcVf196CRW6nqqyyOqYPkpt0NrIpCL5
	 vLclLldV9pN+g==
Date: Fri, 21 Nov 2025 19:23:12 +0100
From: Matthias Brugger <matthias.bgg@kernel.org>
To: Hal Feng <hal.feng@starfivetech.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <pjw@kernel.org>,
	Albert Ou <aou@eecs.berkeley.edu>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
	E Shattow <e@freeshell.de>, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/5] Add support for StarFive VisionFive 2 Lite board
Message-ID: <aSCuEJ_Y6gNNpB5M@ziggy.stardust>
References: <20251120082946.109378-1-hal.feng@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251120082946.109378-1-hal.feng@starfivetech.com>

On Thu, Nov 20, 2025 at 04:29:41PM +0800, Hal Feng wrote:
> VisionFive 2 Lite is a mini SBC based on the StarFive JH7110S industrial
> SoC which can run at -40~85 degrees centigrade and up to 1.25GHz.
> 
> Board features:
> - JH7110S SoC
> - 4/8 GiB LPDDR4 DRAM
> - AXP15060 PMIC
> - 40 pin GPIO header
> - 1x USB 3.0 host port
> - 3x USB 2.0 host port
> - 1x M.2 M-Key (size: 2242)
> - 1x MicroSD slot (optional non-removable 64GiB eMMC)
> - 1x QSPI Flash
> - 1x I2C EEPROM
> - 1x 1Gbps Ethernet port
> - SDIO-based Wi-Fi & UART-based Bluetooth
> - 1x HDMI port
> - 1x 2-lane DSI
> - 1x 2-lane CSI
> 
> VisionFive 2 Lite schematics: https://doc-en.rvspace.org/VisionFive2Lite/PDF/VF2_LITE_V1.10_TF_20250818_SCH.pdf
> VisionFive 2 Lite Quick Start Guide: https://doc-en.rvspace.org/VisionFive2Lite/VisionFive2LiteQSG/index.html
> More documents: https://doc-en.rvspace.org/Doc_Center/visionfive_2_lite.html
> 
> Changes since v2:
> - Drop patch 3, 4, 5.
> patch 6:
> - jh7110s-starfive-visionfive-2-lite.dtsi directly includes "jh7110.dtsi"
>   instead of "jh7110s-common.dtsi".
> 
> Changes since v1:
> - Drop patch 1 because it is applied.
> - Rename jh7110.dtsi to jh711x.dtsi.
> - Move the content of jh7110-common.dtsi to the new file
>   jh711x-common.dtsi and move opp table to jh7110-common.dtsi.
> patch 4:
> - Move the uncommon nodes to jh7110-common.dtsi instead of board dts.
> patch 5:
> - Add jh7110s-common.dtsi and include it in jh7110s-starfive-visionfive-2-lite.dtsi.
> 
> Changes since RFC:
> - Add jh7110s compatible to the generic cpufreq driver.
> - Fix the dtbs_check error by adding the missing "enable-gpios" property
>   in jh7110 pcie dt-bindings.
> - Rebase on the latest mainline.
> - Add VisionFive 2 Lite eMMC board device tree and add a common board dtsi
>   for VisionFive 2 Lite variants.
> - Add usb switch pin configuration (GPIO62).
> - Improve the commit messages.
> 
> History:
> v2: https://lore.kernel.org/all/20251107095530.114775-1-hal.feng@starfivetech.com/
> v1: https://lore.kernel.org/all/20251016080054.12484-1-hal.feng@starfivetech.com/
> RFC: https://lore.kernel.org/all/20250821100930.71404-1-hal.feng@starfivetech.com/
> 
> Hal Feng (5):
>   dt-bindings: PCI: starfive,jh7110-pcie: Add enable-gpios property
>   dt-bindings: riscv: Add StarFive JH7110S SoC and VisionFive 2 Lite
>     board
>   riscv: dts: starfive: Add common board dtsi for VisionFive 2 Lite
>     variants
>   riscv: dts: starfive: Add VisionFive 2 Lite board device tree
>   riscv: dts: starfive: Add VisionFive 2 Lite eMMC board device tree
> 
>  .../bindings/pci/starfive,jh7110-pcie.yaml    |   4 +
>  .../devicetree/bindings/riscv/starfive.yaml   |   6 +
>  arch/riscv/boot/dts/starfive/Makefile         |   3 +
>  ...h7110s-starfive-visionfive-2-lite-emmc.dts |  22 +
>  .../jh7110s-starfive-visionfive-2-lite.dts    |  20 +
>  .../jh7110s-starfive-visionfive-2-lite.dtsi   | 691 ++++++++++++++++++
>  6 files changed, 746 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/starfive/jh7110s-starfive-visionfive-2-lite-emmc.dts
>  create mode 100644 arch/riscv/boot/dts/starfive/jh7110s-starfive-visionfive-2-lite.dts
>  create mode 100644 arch/riscv/boot/dts/starfive/jh7110s-starfive-visionfive-2-lite.dtsi
> 
> 
> base-commit: fe4d0dea039f2befb93f27569593ec209843b0f5
> -- 

Tested against v6.18-rc6 together with
fa939a287224d ("dts: starfive: jh7110-common: split out mmc0 reset pins from common into boards")

Tested-by: Matthias Brugger <mbrugger@suse.com>

