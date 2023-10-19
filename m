Return-Path: <devicetree+bounces-10133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6CC7CFC1E
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 16:09:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3F23DB20DD7
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 14:09:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ED7129D02;
	Thu, 19 Oct 2023 14:09:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuGYIRMN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EE127477
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 14:09:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F280C433C7;
	Thu, 19 Oct 2023 14:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697724558;
	bh=fUU2yQBsdFjq1E6XjHGGe6reCr7dtP65SbDkzgy/1+s=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=JuGYIRMNuTZQuep6Z6n93RnXdEOjJGvvXlyY7c/w+ymB1ZtwtmYNRbrDuIisxRPpI
	 NvKNPqfNaPEaqc/TAJ9+HPUUvpIOpaAPXImY27Cm602lxbUqHrmSP/uzI/hdfsvZyY
	 iQ7nY0bCISb2VC8wxQynGRwgAvdFjg8snwIdT1XpGT600WLqFr1b4G/II2f//iwQPL
	 e+Bz4mmI6GtKmyvKnmIf27C4AjsVAWlHEGU5jE8Vscd26U5tQ19zykSd3KP9i9dsLo
	 HTjJ4hHmCPH9a2jV+ThHfhm3QmBvmeoJaZHv6SLrelhoz9lkp4mYPL/Cc+LlNr7nuN
	 CiC4NYi+8zQNA==
Date: Thu, 19 Oct 2023 09:09:16 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: "lpieralisi@kernel.org" <lpieralisi@kernel.org>,
	"kw@linux.com" <kw@linux.com>, "robh@kernel.org" <robh@kernel.org>,
	"bhelgaas@google.com" <bhelgaas@google.com>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"jingoohan1@gmail.com" <jingoohan1@gmail.com>,
	"gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>,
	"mani@kernel.org" <mani@kernel.org>,
	"marek.vasut+renesas@gmail.com" <marek.vasut+renesas@gmail.com>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Subject: Re: [PATCH v25 00/15] PCI: dwc: rcar-gen4: Add R-Car Gen4 PCIe
 support
Message-ID: <20231019140916.GA1400116@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <TYBPR01MB5341B3E0062E61EE5F2C84D8D8D4A@TYBPR01MB5341.jpnprd01.prod.outlook.com>

On Thu, Oct 19, 2023 at 04:08:52AM +0000, Yoshihiro Shimoda wrote:
> > From: Bjorn Helgaas, Sent: Thursday, October 19, 2023 12:11 PM
> > On Wed, Oct 18, 2023 at 05:56:16PM +0900, Yoshihiro Shimoda wrote:
> > > Add R-Car S4-8 (R-Car Gen4) PCIe controller for both host and endpoint modes.
> > > To support them, modify PCIe DesignWare common codes.
> > >
> > > Changes from v24:
> > >
> <snip URL>
> > >  - Based on the latest pci.git / next branch.
> > >  - Reordering the patches. (This is suggested by Bjorn.)
> > >  - Drop "PCI: dwc: Disable two BARs to avoid unnecessary memory assignment"
> > >    because break other platforms.
> > 
> > Does R-Car Gen4 still work without this patch?
> 
> Yes, R-Car Gen4 still work without this patch because I added this code into
> the patch 12/15 again:
> 
> ---
> +static int rcar_gen4_pcie_host_init(struct dw_pcie_rp *pp)
> +{
> ...
> +	/*
> +	 * According to the section 3.5.7.2 "RC Mode" in DWC PCIe Dual Mode
> +	 * Rev.5.20a and 3.5.6.1 "RC mode" in DWC PCIe RC databook v5.20a, we
> +	 * should disable two BARs to avoid unnecessary memory assignment
> +	 * during device enumeration.
> +	 */
> +	dw_pcie_writel_dbi2(dw, PCI_BASE_ADDRESS_0, 0x0);
> +	dw_pcie_writel_dbi2(dw, PCI_BASE_ADDRESS_1, 0x0);

Great, thanks!

Bjorn

