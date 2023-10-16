Return-Path: <devicetree+bounces-9050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 769B57CB59A
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 23:48:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1559DB20EDC
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 21:48:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DBFD381BB;
	Mon, 16 Oct 2023 21:48:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+ric6N2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5106327732
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 21:48:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB4BCC433CA;
	Mon, 16 Oct 2023 21:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697492908;
	bh=xmUchrdBa511fTg4ejYwrhmgta3bscCkkCA28jOMO24=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=b+ric6N2xWGyn2oE1pzkDnM6Olyd8pkRLzilhqgqOGJ+pMCuBul4DZyF9Qt0crYHA
	 OVG0jepWdGVMNwwQSXsOrgnBMzFBQAta7dLTHKpKRrMclcdpC8pXLtQGWHlpsKL08z
	 bQVgOiudY5oukcP34Eegb2i1nol/OlUWhW40erTabV0gyi2uYTSjCN5XMyK2XGoJEi
	 H9LrACaA/R1aWC3g7amFAz6SIdynX38NicjmJc78d5r5pNOFM7L6a3zEeQ26umSn7t
	 PYa/Rs6JYFWW/wKp0d9qzUKGLArEheyZVgNcuR+ov91o7vbULlyQCFqpxM+faLrvI8
	 RX6NlR1AxOXGQ==
Date: Mon, 16 Oct 2023 16:48:26 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, jingoohan1@gmail.com,
	gustavo.pimentel@synopsys.com, mani@kernel.org,
	marek.vasut+renesas@gmail.com, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Ravi Gunasekaran <r-gunasekaran@ti.com>,
	Sriramakrishnan <srk@ti.com>, Serge Semin <fancer.lancer@gmail.com>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v24 08/16] PCI: dwc: Disable two BARs to avoid
 unnecessary memory assignment
Message-ID: <20231016214826.GA1226689@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231011071423.249458-9-yoshihiro.shimoda.uh@renesas.com>

[+cc Siddharth, Ravi, Sriramakrishnan]

On Wed, Oct 11, 2023 at 04:14:15PM +0900, Yoshihiro Shimoda wrote:
> According to the section 3.5.7.2 "RC Mode" in DWC PCIe Dual Mode
> Rev.5.20a, we should disable two BARs to avoid unnecessary memory
> assignment during device enumeration. Otherwise, Renesas R-Car Gen4
> PCIe controllers cannot work correctly in host mode.
> 
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
>  drivers/pci/controller/dwc/pcie-designware-host.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index a7170fd0e847..56cc7ff6d508 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -737,6 +737,14 @@ int dw_pcie_setup_rc(struct dw_pcie_rp *pp)
>  	u32 val, ctrl, num_ctrls;
>  	int ret;
>  
> +	/*
> +	 * According to the section 3.5.7.2 "RC Mode" in DWC PCIe Dual Mode
> +	 * Rev.5.20a, we should disable two BARs to avoid unnecessary memory
> +	 * assignment during device enumeration.
> +	 */
> +	dw_pcie_writel_dbi2(pci, PCI_BASE_ADDRESS_0, 0x0);
> +	dw_pcie_writel_dbi2(pci, PCI_BASE_ADDRESS_1, 0x0);

I cc'd Siddharth and others because they are working on a Keystone
issue with MSI-X that requires BAR0; see
https://lore.kernel.org/r/20231011123451.34827-1-s-vadapalli@ti.com 

I assume any DWC controller that uses MSI-X would require BAR0 or BAR1
for the MSI-X Table.

I don't have any of the DWC specs and don't know whether any
controllers use MSI-X, so just heads up in case they do.  This patch
was recently merged and will appear in v6.7.

Bjorn

