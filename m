Return-Path: <devicetree+bounces-6173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B7B7BA1FA
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 17:09:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7506C281D3E
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:09:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3224B30CEF;
	Thu,  5 Oct 2023 15:09:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPvGxVPo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F5730CEC
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 15:09:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05297C433C8;
	Thu,  5 Oct 2023 15:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696518549;
	bh=5YVMBG6JswPWpw0WjpEGMYStxOrvWp+YdPZGxHSzB60=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=hPvGxVPoi3bmo4IgBvP0RsxJoNzqNanBnL7XLsRPatP1wWERT5+V2Yf2EZuj4+uMH
	 LJgqH5n3JHOsByOiMd/bhO/mBlH7xfu/AegztZaA2HC+zHoJFnzPFVfTkzpp8CAzm1
	 FbDQPGD3C8iywGD6p2MOJgO4adX7pI/Eb5U9BL0AtJH8/zTli+0U1vUWW6BGFQRRHd
	 u6r5G0aL706HLTxljz6xFD1uLqqAyoNMidzplDf9M7+33ZWYU2ZX+L7z1W8V5Z9fqo
	 ej1wyjqq9fJajpBh0VvX6owPFKLQZ7mmDZF0HTFtb4ZhaY+bx2d/rz4uPonNc1Cbgz
	 UT/AizHg3tjog==
Date: Thu, 5 Oct 2023 10:09:07 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, jingoohan1@gmail.com,
	gustavo.pimentel@synopsys.com, mani@kernel.org,
	marek.vasut+renesas@gmail.com, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	Serge Semin <fancer.lancer@gmail.com>
Subject: Re: [PATCH v23 13/16] PCI: dwc: rcar-gen4: Add R-Car Gen4 PCIe
 controller support for host mode
Message-ID: <20231005150907.GA746291@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230926122431.3974714-14-yoshihiro.shimoda.uh@renesas.com>

On Tue, Sep 26, 2023 at 09:24:28PM +0900, Yoshihiro Shimoda wrote:
> Add R-Car Gen4 PCIe controller support for host mode.
> 
> This controller is based on Synopsys DesignWare PCIe. However, this
> particular controller has a number of vendor-specific registers, and as
> such, requires initialization code like mode setting and retraining and
> so on.
> 
> [kwilczynski: commit log]
> Link: https://lore.kernel.org/linux-pci/20230825093219.2685912-17-yoshihiro.shimoda.uh@renesas.com
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> Signed-off-by: Krzysztof Wilczyński <kwilczynski@kernel.org>

You should never include a signed-off-by from the person you're
sending the patch *to*; this "Signed-off-by: Krzysztof Wilczyński
<kwilczynski@kernel.org>" should be added by Krzysztof when he applies
it.

Whoever applies this, please s/PCI: dwc:/PCI:/ in this subject and the
"Add endpoint mode support" patch.  No need to include *both* "dwc:"
and "rcar-gen4".

> +config PCIE_RCAR_GEN4_HOST
> +	tristate "Renesas R-Car Gen4 PCIe controller (host mode)"
> +	depends on ARCH_RENESAS || COMPILE_TEST
> +	depends on PCI_MSI
> +	select PCIE_DW_HOST
> +	select PCIE_RCAR_GEN4
> +	help
> +	  Say Y here if you want PCIe controller (host mode) on R-Car Gen4 SoCs.
> +	  To compile this driver as a module, choose M here: the module will be
> +	  called pcie-rcar-gen4.ko. This uses the DesignWare core.

This should be sorted so the menuconfig prompts are in alpha order.

> + * Manually initiate the speed change. Return true if the change succeeded,
> + * false if the change didn't finish within certain periods.

"Return 0 if change succeeded; otherwise -ETIMEDOUT".

No need to repost unless somebody suggests more significant rework;
these can be tweaked when merging.

Thanks a lot for squashing into a single file; that's a major
simplification.

Bjorn

