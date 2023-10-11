Return-Path: <devicetree+bounces-7757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDE47C551E
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 15:18:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 63B2B2822CA
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:18:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9718E1F920;
	Wed, 11 Oct 2023 13:18:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tt9tZ9a6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7901F1F182
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 13:18:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01E89C433C8;
	Wed, 11 Oct 2023 13:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697030329;
	bh=TpkqEAAdaRGqCSsk4UACp3j51hhGIHapuocVtbrn9yU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Tt9tZ9a65oyhOCN1LK6TCwHoZRlC/cGk5lvCYBcgcHTqhYGHBc1Hf14fQXRkQRhcX
	 yxVjcNAZTZPejLPUhqKF37BynGQtaZqNWFpYrqqCs/25Dc2lQJMBk/2YoSaiw1q2PD
	 Qh7uqdFTdTGLN+z7RLHieYH2zLE0JXfAcONC0gouhtr63i/+9AUG3kHw7s+xkG1M9P
	 PxAtahOU5C0cUXw5GpQki2yFhc874faeCLeY8XAARQZ7dbhq/IsgRgtCo23hdbDRCq
	 5cNlvxbUTS6n/7u5rQ7Ce/zrrKQ6/VFexrM8SJgobNMl01cgjut100OhZSsTVzuoag
	 Sh5fXkLPA/AbQ==
Date: Wed, 11 Oct 2023 18:48:40 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
Cc: Serge Semin <fancer.lancer@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	lpieralisi@kernel.org, robh@kernel.org, bhelgaas@google.com,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	jingoohan1@gmail.com, gustavo.pimentel@synopsys.com,
	mani@kernel.org, marek.vasut+renesas@gmail.com,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v24 08/16] PCI: dwc: Disable two BARs to avoid
 unnecessary memory assignment
Message-ID: <20231011131840.GB5952@thinkpad>
References: <20231011071423.249458-1-yoshihiro.shimoda.uh@renesas.com>
 <20231011071423.249458-9-yoshihiro.shimoda.uh@renesas.com>
 <abf65z7xxsnd7adkg523mneccudwenvdzcw7jpblafqzvhca5n@lbpsch7ztxsn>
 <20231011130727.GA3722793@rocinante>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231011130727.GA3722793@rocinante>

On Wed, Oct 11, 2023 at 10:07:27PM +0900, Krzysztof Wilczyński wrote:
> Hello,
> 
> [...]
> > > +	/*
> > > +	 * According to the section 3.5.7.2 "RC Mode" in DWC PCIe Dual Mode
> > > +	 * Rev.5.20a,
> > 
> > and 3.5.6.1 "RC mode" in DWC PCIe RC databook v5.20a.
> 
> OK.  I can fix this citation later.
> 
> > > +      ... we should disable two BARs to avoid unnecessary memory
> > > +	 * assignment during device enumeration.
> > > +	 */
> > > +	dw_pcie_writel_dbi2(pci, PCI_BASE_ADDRESS_0, 0x0);
> > > +	dw_pcie_writel_dbi2(pci, PCI_BASE_ADDRESS_1, 0x0);
> > > +
> > 
> > What's the point in doing this
> > 	dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_0, 0x00000004);
> > 	dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_1, 0x00000000);
> >         ...
> >         dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_0, 0);
> > afterward?
> > 
> > I guess if the BARs are disabled there is no need in having them
> > touched. Am I wrong?
> > 
> > BTW I failed to understand why the BARs inits was originally needed:
> > first merging the BAR0 and BAR1 into a single 64-bit BAR, then
> > switching it back to two 32-bit BARs. Moreover here is what prior DW
> > PCIe RC v5.x databooks say about the BARs:
> > 
> > "3.5.6 BAR Details
> > Base Address Registers (Offset: 0x10-x14)
> > The Synopsys core does not implement the optional BARs for the RC
> > product. This is based on the assumption that the RC host probably has
> > registers on some other internal bus and has knowledge and setup
> > access to these registers already."
> > 
> > I am not sure I fully understand what it means, but it seems as DW
> > PCIe cores didn't have anything behind the RC BARs even back then. So
> > it seems to me that the BARs manipulation was the Exinos PCIe host
> > specific, from which driver they are originating - commit 340cba6092c2
> > ("pci: Add PCIe driver for Samsung Exynos").
> 
> Would any of the above be something we need to address before this series
> can be successfully merged?  I am asking if this is a show stopper,
> something we can fix later, or even something I could address once I take
> this series again.
> 
> Thoughts?
> 

If Yoshihiro can confirm that his controller can work without this patch, then
I'd vote for dropping this patch and applying the rest.

This can be submitted later if required.

- Mani

> > * BTW Yoshihiro, I am sorry to see your patchset is still under review...(
> 
> Yes, we need to draw a line somewhere. :)  I am happy to take this series
> so we don't miss another merge window.  We can always fix other bits and
> pieces later and iron out any kinks that might have fallen through the
> cracks, so to speak.
> 
> 	Krzysztof

-- 
மணிவண்ணன் சதாசிவம்

