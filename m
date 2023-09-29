Return-Path: <devicetree+bounces-4702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CAED07B37E4
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 18:27:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id D10991C20936
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 16:27:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E89586589C;
	Fri, 29 Sep 2023 16:27:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9BCD521DA
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 16:27:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 241F2C433C8;
	Fri, 29 Sep 2023 16:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696004824;
	bh=0vOdoPGe6FGUXb1FbgkvgqLix0R6bNbYbMX5bpwVOVE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=hRzXKTBynfi8SaWpOUj/xUbiqi+Ob5J2eZ9NTd7li8/2pDE+5YMbPl74V8Jso0asq
	 ianFhBheqcagIVnJ3cnesU1TcBJCbcWNhRA0Jm9sWV1uffLOuojwkNM0i5nTEotiSW
	 wHpHZ4W0TY1i7Qkx2+HCSRyE2YStYW9voziJ0aNT0FJEbY2ZKle40uY8Eri3DpgeQ8
	 cFdldoUNEJEd3iZ/V/ee5+zqHxfACrtswudJ3qS9J4D6iC/OW7dMgwXZDNNosgNsYd
	 0d1TbqymfviC18KxIy/WyKyJsQGBTQcjP8F3IbEX2gseLaalk3T6bTzVxsgK2mzQT7
	 OCGpQ5W0LyRUg==
Date: Fri, 29 Sep 2023 11:27:02 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Lizhi Hou <lizhi.hou@amd.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, herve.codina@bootlin.com,
	Jonathan.Cameron@huawei.com, bhelgaas@google.com, robh@kernel.org
Subject: Re: [PATCH v1 2/2] PCI: of_property: Fix uninitialized variable when
 of_irq_parse_raw() failed
Message-ID: <20230929162702.GA511467@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1695919631-7661-2-git-send-email-lizhi.hou@amd.com>

On Thu, Sep 28, 2023 at 09:47:11AM -0700, Lizhi Hou wrote:
> In function of_pci_prop_intr_map(), addr_sz[i] will be uninitialized if
> of_irq_parse_raw() returns failure. Add addr_sz array initialization. And
> when parsing irq failed, skip generating interrupt-map pair for the pin.

Would you mind splitting this into two?  It sounds like it fixes two
problems: (1) using uninitialized addr_sz[] and (2) skip generating
interrupt-map pair.

There's also something going on with the pci_swizzle_interrupt_pin()
change; maybe that should be a third patch so you can explain what's
going on there?

IIUC this is actually a *v2* (not a v1), since you posted it
previously as
https://lore.kernel.org/r/1694801287-17217-2-git-send-email-lizhi.hou@amd.com
so the next round should be labeled v3.

> Fixes: 407d1a51921e ("PCI: Create device tree node for bridge")
> Reported-by: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
> Closes: https://lore.kernel.org/all/20230911154856.000076c3@Huawei.com/
> Reviewed-by: Herve Codina <herve.codina@bootlin.com>
> Signed-off-by: Lizhi Hou <lizhi.hou@amd.com>
> ---
>  drivers/pci/of_property.c | 25 ++++++++++++++++++-------
>  1 file changed, 18 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/pci/of_property.c b/drivers/pci/of_property.c
> index 710ec35ba4a1..c2c7334152bc 100644
> --- a/drivers/pci/of_property.c
> +++ b/drivers/pci/of_property.c
> @@ -186,8 +186,8 @@ static int of_pci_prop_interrupts(struct pci_dev *pdev,
>  static int of_pci_prop_intr_map(struct pci_dev *pdev, struct of_changeset *ocs,
>  				struct device_node *np)
>  {
> +	u32 i, addr_sz[OF_PCI_MAX_INT_PIN] = { 0 }, map_sz = 0;
>  	struct of_phandle_args out_irq[OF_PCI_MAX_INT_PIN];
> -	u32 i, addr_sz[OF_PCI_MAX_INT_PIN], map_sz = 0;
>  	__be32 laddr[OF_PCI_ADDRESS_CELLS] = { 0 };
>  	u32 int_map_mask[] = { 0xffff00, 0, 0, 7 };
>  	struct device_node *pnode;
> @@ -213,33 +213,44 @@ static int of_pci_prop_intr_map(struct pci_dev *pdev, struct of_changeset *ocs,
>  		out_irq[i].args[0] = pin;
>  		ret = of_irq_parse_raw(laddr, &out_irq[i]);
>  		if (ret) {
> -			pci_err(pdev, "parse irq %d failed, ret %d", pin, ret);
> +			out_irq[i].np = NULL;
> +			pci_dbg(pdev, "parse irq %d failed, ret %d", pin, ret);
>  			continue;
>  		}
> -		ret = of_property_read_u32(out_irq[i].np, "#address-cells",
> -					   &addr_sz[i]);
> -		if (ret)
> -			addr_sz[i] = 0;
> +		of_property_read_u32(out_irq[i].np, "#address-cells",
> +				     &addr_sz[i]);
>  	}
>  
>  	list_for_each_entry(child, &pdev->subordinate->devices, bus_list) {
>  		for (pin = 1; pin <= OF_PCI_MAX_INT_PIN; pin++) {
>  			i = pci_swizzle_interrupt_pin(child, pin) - 1;
> +			if (!out_irq[i].np)
> +				continue;
>  			map_sz += 5 + addr_sz[i] + out_irq[i].args_count;
>  		}
>  	}
>  
> +	/*
> +	 * Parsing interrupt failed for all pins. In this case, it does not
> +	 * need to generate interrupt-map property.
> +	 */
> +	if (!map_sz)
> +		return 0;
> +
>  	int_map = kcalloc(map_sz, sizeof(u32), GFP_KERNEL);
>  	mapp = int_map;
>  
>  	list_for_each_entry(child, &pdev->subordinate->devices, bus_list) {
>  		for (pin = 1; pin <= OF_PCI_MAX_INT_PIN; pin++) {
> +			i = pci_swizzle_interrupt_pin(child, pin) - 1;
> +			if (!out_irq[i].np)
> +				continue;
> +
>  			*mapp = (child->bus->number << 16) |
>  				(child->devfn << 8);
>  			mapp += OF_PCI_ADDRESS_CELLS;
>  			*mapp = pin;
>  			mapp++;
> -			i = pci_swizzle_interrupt_pin(child, pin) - 1;
>  			*mapp = out_irq[i].np->phandle;
>  			mapp++;
>  			if (addr_sz[i]) {
> -- 
> 2.34.1
> 

