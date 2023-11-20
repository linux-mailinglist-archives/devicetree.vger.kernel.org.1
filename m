Return-Path: <devicetree+bounces-17260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE257F1C48
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 19:23:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3B2481C20EC7
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 18:23:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27CDB30338;
	Mon, 20 Nov 2023 18:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6e+CUPF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C63130326
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 18:23:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3CA3EC433C7;
	Mon, 20 Nov 2023 18:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700504629;
	bh=eglYaIQ/qtU51O7/Tl79eYRTbxeBJ9UX1J/7CgEKMp8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=o6e+CUPFOXvGngNNWHM9X1PLe9PzMUguk0FCo6af1DPRNJ0p+OepiuLwS7AR5KlZ2
	 eakxW+7UEsZuUod6rTu0DKOh7tcfLE6bXTYE1iw3n/kMBFk0UbajUZeu6GoDKN4M3t
	 VKhbtXzLK8ghNFU2I80Ncclrv5FKPKqgNxX/uI8+GAcwxlrDTuCohrSL3cZXDsgQcM
	 wfpZhvWCvQUwMyN5tVCbMHPHMO22NWWBh9SCrOW4Rm9IAgoZ21fzobRc2A7iGXkhlt
	 Y8PjAxr6YZq527RKNFptB80cmQq4RqGgqe6c29UD1Rf03Dz1U8hq9rxNYpyS2+eb3Q
	 eYQMD4+/wUcjg==
Date: Mon, 20 Nov 2023 12:23:47 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Minda Chen <minda.chen@starfivetech.com>
Cc: Conor Dooley <conor@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh+dt@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-pci@vger.kernel.org,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mason Huo <mason.huo@starfivetech.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Kevin Xie <kevin.xie@starfivetech.com>
Subject: Re: [PATCH v11 19/20] PCI: starfive: Add JH7110 PCIe controller
Message-ID: <20231120182347.GA207554@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3c69c1b5-7183-4d34-9689-27cd126a4f4c@starfivetech.com>

On Mon, Nov 20, 2023 at 06:07:31PM +0800, Minda Chen wrote:
> On 2023/11/15 19:49, Minda Chen wrote:
> > Add StarFive JH7110 SoC PCIe controller platform driver codes, JH7110
> > with PLDA host PCIe core.
> ...

> > --- a/drivers/pci/pci.h
> > +++ b/drivers/pci/pci.h
> > @@ -22,6 +22,13 @@
> >   */
> >  #define PCIE_PME_TO_L2_TIMEOUT_US	10000
> >  
> > +/*
> > + * PCIe r6.0, sec 6.6.1, <Conventional Reset>
> > + * Requires a minimum waiting of 100ms before sending a configuration
> > + * request to the device.
> > + */
> > +#define PCIE_BEFORE_CONFIG_REQUEST_WAIT_MS	100
> > +
> >  extern const unsigned char pcie_link_speed[];
> >  extern bool pci_early_dump;
> >  
> Hi Bjorn
>   I have not checked this carefully.
>   I think the change of pci.h should be moved to a indepent patch.
>   Could you approve this? Kevin will commit a new patch for this.
>   Next version I will remove this change. 

Yes, I think it makes sense to add that #define in a separate patch.

Please trim out the unnecessary context; there's no need for readers
to scroll through the entire driver to get to the useful part, which
is just the last dozen lines or so.

Bjorn

