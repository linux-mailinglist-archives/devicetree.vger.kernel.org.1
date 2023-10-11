Return-Path: <devicetree+bounces-7507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ACCA7C48E1
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 06:43:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 39F991C20D36
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 04:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 777B310F0;
	Wed, 11 Oct 2023 04:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DP/yMMsI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596B2811
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 04:43:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A44C4C433C7;
	Wed, 11 Oct 2023 04:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696999423;
	bh=RiUxKKSDAlh2Ofjb6kMNvoJr5jP/M8ygUX6ZJYjZe+E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DP/yMMsI5G4GroWtB4JLU/Mez0UAp0PRbScs6vQdXdCUzRIJvTZEFSbdKQv3RuqhJ
	 mHnZxfEAMlJFe/RBRSPMFO9CTAN+s6Qdl/uA1mMxBXWyNSd9i/DxuKvO3Iimj5SV7T
	 XkbfDV0Tw77qCKdJVPAQhPoMLpuqv7NQA5igkk6/skT+h/r/U677DaSL/T1HP1I5V9
	 fDK7w36L2hQLIHWDgvJTrwbrLwMHSAf+HLcc4KknZ0ltzx+19jEvJUmpVWeKKU0OGb
	 MC1ae3dOPis0i+4to+JvXz7oeiUqbZ9nMYADXkwLvrxHpNrpcWDZohCBZnNnHeBwYp
	 bWtUvhJg9JUIA==
Date: Wed, 11 Oct 2023 10:13:29 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: "lpieralisi@kernel.org" <lpieralisi@kernel.org>,
	"kw@linux.com" <kw@linux.com>, "robh@kernel.org" <robh@kernel.org>,
	"bhelgaas@google.com" <bhelgaas@google.com>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"jingoohan1@gmail.com" <jingoohan1@gmail.com>,
	"gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>,
	"marek.vasut+renesas@gmail.com" <marek.vasut+renesas@gmail.com>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Serge Semin <fancer.lancer@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v21 10/16] dt-bindings: PCI: renesas: Add R-Car Gen4 PCIe
 Host
Message-ID: <20231011044329.GB3508@thinkpad>
References: <20230922065331.3806925-1-yoshihiro.shimoda.uh@renesas.com>
 <20230922065331.3806925-11-yoshihiro.shimoda.uh@renesas.com>
 <20231010112512.GE4884@thinkpad>
 <TYBPR01MB5341AB2F02A1162130DDFC22D8CCA@TYBPR01MB5341.jpnprd01.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <TYBPR01MB5341AB2F02A1162130DDFC22D8CCA@TYBPR01MB5341.jpnprd01.prod.outlook.com>

On Wed, Oct 11, 2023 at 12:54:59AM +0000, Yoshihiro Shimoda wrote:
> Hello Manivannan,
> 
> > From: Manivannan Sadhasivam, Sent: Tuesday, October 10, 2023 8:25 PM
> > To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> > Cc: lpieralisi@kernel.org; kw@linux.com; robh@kernel.org; bhelgaas@google.com; krzysztof.kozlowski+dt@linaro.org;
> > conor+dt@kernel.org; jingoohan1@gmail.com; gustavo.pimentel@synopsys.com; marek.vasut+renesas@gmail.com;
> > linux-pci@vger.kernel.org; devicetree@vger.kernel.org; linux-renesas-soc@vger.kernel.org; Geert Uytterhoeven
> > <geert+renesas@glider.be>; Serge Semin <fancer.lancer@gmail.com>; Conor Dooley <conor.dooley@microchip.com>
> > Subject: Re: [PATCH v21 10/16] dt-bindings: PCI: renesas: Add R-Car Gen4 PCIe Host
> > 
> > On Fri, Sep 22, 2023 at 03:53:25PM +0900, Yoshihiro Shimoda wrote:
> > > Document bindings for Renesas R-Car Gen4 and R-Car S4-8 (R8A779F0)
> > > PCIe host module.
> > >
> > > Link:
> <snip URL>
> > > Link:
> <snip URL>
> > > Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> > > Signed-off-by: Krzysztof Wilczyński <kwilczynski@kernel.org>
> > > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > Reviewed-by: Serge Semin <fancer.lancer@gmail.com>
> > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > > ---
> > >  .../bindings/pci/rcar-gen4-pci-host.yaml      | 127 ++++++++++++++++++
> > >  1 file changed, 127 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/pci/rcar-gen4-pci-host.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/pci/rcar-gen4-pci-host.yaml
> > b/Documentation/devicetree/bindings/pci/rcar-gen4-pci-host.yaml
> > > new file mode 100644
> > > index 000000000000..ffb34339b637
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/pci/rcar-gen4-pci-host.yaml

[...]

> > > +            #interrupt-cells = <1>;
> > > +            interrupt-map-mask = <0 0 0 7>;
> > > +            interrupt-map = <0 0 0 1 &gic GIC_SPI 416 IRQ_TYPE_LEVEL_HIGH>,
> > > +                            <0 0 0 2 &gic GIC_SPI 416 IRQ_TYPE_LEVEL_HIGH>,
> > > +                            <0 0 0 3 &gic GIC_SPI 416 IRQ_TYPE_LEVEL_HIGH>,
> > > +                            <0 0 0 4 &gic GIC_SPI 416 IRQ_TYPE_LEVEL_HIGH>;
> > 
> > I believe these are for legacy INTx interrupts. But you are using the same IRQ
> > number used for MSI above. Can you clarify?
> 
> On the SoC (R-Car S4-8), the same IRQ number is used for both MSI and legacy INTx
> interrupts...
> 

Ok. This seems wierd, but fine with me.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

