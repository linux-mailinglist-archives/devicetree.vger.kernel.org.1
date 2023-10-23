Return-Path: <devicetree+bounces-11028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA387D3D83
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 19:26:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 624342814C3
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 17:26:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63DB91CABA;
	Mon, 23 Oct 2023 17:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVhuiS5S"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4807411720
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:26:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FCECC433C8;
	Mon, 23 Oct 2023 17:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698082002;
	bh=UXLXOgLp4A7hZSNzIK7YG2ywhifFJfdLP5yoj/6tdrs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=MVhuiS5S5OGjc7iMqaJUucGRWk4Q85x8n/ufPVBEs+RF0WIWIjoLpdt1T2APwV01q
	 VCo2J/NdLK99dyyEX4dTHL7OIZb9LSuUAmDCs0SWnyIS3IfDcYH4f2UiEJ9/BUUadX
	 KCy74KHesFjb9mv6wcLt/npGb9xJ68yNCd9U74LGzuLPoFwxrcLTj8ErLjOyoHmrVq
	 psk59i8ZuWtk6t95JrxLulyX+vwnNna+FBrmnk1iD1TQWBSJDzILtxhj/t5WH36vG6
	 sdoZJ8CKa9C8EuHp9kovonQCBq2KbtKeLbtJ7n08/oUMLfKsmAXad1BI6+5dNyv9ov
	 JwMtMnYDI2fNQ==
Date: Mon, 23 Oct 2023 12:26:40 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: "Havalige, Thippeswamy" <thippeswamy.havalige@amd.com>
Cc: "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"bhelgaas@google.com" <bhelgaas@google.com>,
	"lpieralisi@kernel.org" <lpieralisi@kernel.org>,
	"kw@linux.com" <kw@linux.com>, "robh@kernel.org" <robh@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"Simek, Michal" <michal.simek@amd.com>,
	"Gogada, Bharat Kumar" <bharat.kumar.gogada@amd.com>
Subject: Re: [PATCH v5 RESEND 0/4] increase ecam size value to discover 256
 buses during
Message-ID: <20231023172530.GA1602129@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SN7PR12MB7201A57631FB1E0FB60A9BC08BDBA@SN7PR12MB7201.namprd12.prod.outlook.com>

On Fri, Oct 20, 2023 at 10:35:46AM +0000, Havalige, Thippeswamy wrote:
> Hi Bjorn,
> 
> Can you please provide an update on this patch series.

As with your Xilinx XDMA Soft IP series, I hope to get this merged for
v6.7.

Would you take a quick look at patchwork here:
https://patchwork.kernel.org/project/linux-pci/list/?submitter=207519
to make sure that everything you're waiting on is listed there?

I cleaned out things that appeared to be older versions of the
"Increase ECAM size" and the "Add support for Xilinx XDMA Soft IP"
series, but the subject lines didn't always match exactly, so it's
possible I incorrectly marked something as "superseded".

Bjorn

> > -----Original Message-----
> > From: Thippeswamy Havalige <thippeswamy.havalige@amd.com>
> > Sent: Monday, October 16, 2023 10:41 AM
> > To: linux-pci@vger.kernel.org; devicetree@vger.kernel.org; linux-
> > kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org
> > Cc: bhelgaas@google.com; lpieralisi@kernel.org; kw@linux.com;
> > robh@kernel.org; krzysztof.kozlowski+dt@linaro.org; colnor+dt@kernel.org;
> > Havalige, Thippeswamy <thippeswamy.havalige@amd.com>; Simek, Michal
> > <michal.simek@amd.com>; Gogada, Bharat Kumar
> > <bharat.kumar.gogada@amd.com>
> > Subject: [PATCH v5 RESEND 0/4] increase ecam size value to discover 256
> > buses during
> > 
> > Current driver is supports up to 16 buses. The following code fixes to support
> > up to 256 buses.
> > 
> > update "NWL_ECAM_VALUE_DEFAULT " to 16  can access up to 256MB ECAM
> > region to detect 256 buses.
> > 
> > Update ecam size to 256MB in device tree binding example.
> > 
> > Remove unwanted code.
> > 
> > Thippeswamy Havalige (4):
> >   PCI: xilinx-nwl: Remove unnecessary code which updates primary,
> >     secondary and sub-ordinate bus numbers
> >   dt-bindings: PCI: xilinx-nwl: Modify ECAM size in example
> >   PCI: xilinx-nwl: Rename ECAM size default macro
> >   PCI: xilinx-nwl: Increase ECAM size to accommodate 256 buses
> > 
> >  .../devicetree/bindings/pci/xlnx,nwl-pcie.yaml |  2 +-
> >  drivers/pci/controller/pcie-xilinx-nwl.c       | 18 +++---------------
> >  2 files changed, 4 insertions(+), 16 deletions(-)
> > 
> > --
> > 2.25.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

