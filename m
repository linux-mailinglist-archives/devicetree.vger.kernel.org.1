Return-Path: <devicetree+bounces-9329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF7C7CCB70
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 20:58:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8A2911F234B2
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 18:58:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AC7B45F6F;
	Tue, 17 Oct 2023 18:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LtMvWFB6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC42EBE
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 18:58:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1A62C433C7;
	Tue, 17 Oct 2023 18:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697569124;
	bh=I7ohmi65uQeeHi+q8OxHvV9tPLbOqsZA6Zcod8ZtanE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=LtMvWFB68gL2J6yHp6z7HATP3h23h0FLyMf3P0VlpvogQZxdaW4JkDSb4C91hzCdg
	 WLNuQniwTIf3UWPvN3oC6XvJWsvwTAlCB2A+Dn1JJSQ22eJp4EWxroMRh9wAtH3wPr
	 DQZqn7YqI9wvL4TLGeOcJTSGFVu8VjMyT81gN/URW2VN9g7QU6yQPnPVfDM61ObG3t
	 uIhALT0TR552jJZx47xrfXIa5XuKt8gBYA1CuPRUYlJZbsbKG2VG/EEQOYKCeYjX3r
	 AnnL3sjKJzq8UZ4XwQgUhz5VlCJlJIVS2xcT6sYsXRhqV94a920DoYMSCLC3J9n1Vp
	 V1mCQM/GUZjBA==
Date: Tue, 17 Oct 2023 13:58:41 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, jingoohan1@gmail.com,
	gustavo.pimentel@synopsys.com, mani@kernel.org,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	marek.vasut+renesas@gmail.com, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v24 08/16] PCI: dwc: Disable two BARs to avoid
 unnecessary memory assignment
Message-ID: <20231017185841.GA1323534@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a85158a0-858c-43c3-b64a-c09de72a50f9@samsung.com>

On Tue, Oct 17, 2023 at 11:19:21AM +0200, Marek Szyprowski wrote:
> Dear All,
> 
> On 11.10.2023 09:14, Yoshihiro Shimoda wrote:
> > According to the section 3.5.7.2 "RC Mode" in DWC PCIe Dual Mode
> > Rev.5.20a, we should disable two BARs to avoid unnecessary memory
> > assignment during device enumeration. Otherwise, Renesas R-Car Gen4
> > PCIe controllers cannot work correctly in host mode.
> >
> > Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> 
> This patch landed in today's linux-next 20231017 as commit e308528cac3e 
> ("PCI: dwc: Disable two BARs to avoid unnecessary memory assignment"). 
> Unfortunately it causes the following kernel panic on Samsung 
> Exynos5433-based TM2e board:

I dropped the pci/controller/rcar branch for today until we resolve
this.

If you want to reorder the series like this:

  PCI: Add T_PVPERL macro
  PCI: dwc: Add dw_pcie_link_set_max_link_width()
  PCI: dwc: Add missing PCI_EXP_LNKCAP_MLW handling
  PCI: tegra194: Drop PCI_EXP_LNKSTA_NLW setting

  PCI: dwc: endpoint: Add multiple PFs support for dbi2
  PCI: dwc: Add EDMA_UNROLL capability flag
  PCI: dwc: Expose dw_pcie_ep_exit() to module
  PCI: dwc: endpoint: Introduce .pre_init() and .deinit()
  PCI: dwc: Disable two BARs to avoid unnecessary memory assignment
  dt-bindings: PCI: dwc: Update maxItems of reg and reg-names
  dt-bindings: PCI: renesas: Add R-Car Gen4 PCIe Host
  dt-bindings: PCI: renesas: Add R-Car Gen4 PCIe Endpoint
  PCI: rcar-gen4: Add R-Car Gen4 PCIe controller support for host mode
  PCI: rcar-gen4: Add endpoint mode support
  MAINTAINERS: Update PCI DRIVER FOR RENESAS R-CAR for R-Car Gen4
  misc: pci_endpoint_test: Add Device ID for R-Car S4-8 PCIe controller

I think the first four patches could be applied because they're useful
regardless of R-Car support.

The rest are only needed for R-Car, and it seems like we should apply
them all together as soon as this regression is solved.

Bjorn

