Return-Path: <devicetree+bounces-158442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8738CA66CCA
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 08:53:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F9344213BC
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 07:49:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6FD61DE4C9;
	Tue, 18 Mar 2025 07:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GKqK1dU7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1151EF375
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 07:46:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742283988; cv=none; b=H2hQrMFZC7fzQhJ1MHzFqN5xCJeuskEXnv/pXoVUqkYs0YAoF7Z0XFCB10PdLCxvugh+I0kA0+6fW8pJzmTyy1JxiKW2DIcllUBQjX2NiR3FFfJT+0Kdl+SL3GkX3f2Mc5BD8H56epkptuBzKLrrl/rg+nLbom/EKDOupXvDzOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742283988; c=relaxed/simple;
	bh=LvywzN1RBsv3mdA4STwvBcFAP/jhi6wX7UwEJ79LVdE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f65N5qEt593xNuAFsu9tKBu8ICGasKRPPOcTr3A5FxbNEjO+eIzCqyWzbTA9HoZIztnn9bAbwp/wLUhQ7HP3aGaKjdJ6NA5kbdUq6iNyI2Ariyv2isBM8frd4oUEUqM6rYyADX6o8uE8uHoEpiMZUFD3bUtgDl6sl6V1xX6uLu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GKqK1dU7; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-22403cbb47fso96378065ad.0
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 00:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742283984; x=1742888784; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/5KVGOst+i3EqYlF+Sx7sAtMWBsKlTUEKDgYGkLY1j4=;
        b=GKqK1dU7X3dkWLgRrNObHATUGX/K3vSyw0fjqLWL5TmdobHQJ4wDYuUIkKjdeQBIz7
         cnNyXy/i0jkH7OaJvd9NvZmYzlz+k25HaiRVM6hxL29FqcDSKZVca5Cc0d/LksSpJ05k
         FWt6CWtqJdMG0YxjoCYRqqx7Zu2yH3xj9/70FX979wmMIMt+zeHOKheEZBQ28jweTck6
         uHDq06s6+q8fsIESdD/9+MnDb/MKlziXHG/7rKSNxKmahxpMchfDB2IOK52X6Qakx5c9
         XdcSg6MJelmtbI+knx+qY33TzEOXm50OKQ+5/NWCxemmbjYl65Kt83IuL9Me2SifS5Hg
         OPpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742283984; x=1742888784;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/5KVGOst+i3EqYlF+Sx7sAtMWBsKlTUEKDgYGkLY1j4=;
        b=o/9Wr+1Tf75Kr3nUN7k4uP7m77AxFO4ouQJDmt0GBsII7J8b72lwK4SgxRCfN675AQ
         RW8WG+1ouU4cgxDFZ9f03QxokdCOfgr1k8zOYX1pMkG0nyHXFVFhjvALLNGg0YOnk6TJ
         aJqYAhvGadbIJ1OTUedEeSDVhqBzUOcOikpfE9P+CYKf7NwvJj45Pe/P2ZXtDBx8Vhws
         fb2ougOCUmI1gGaBUcKg3A0xH4QRW2Rlq2Wrb/Qn2yqmxoWJrEOv/QXPPVvfhDVLSQ+Z
         v12LsHnqkV+Caa8CX4qFCTc8TqP5zB+wrFrJFq9JhzonCodTtoK0B9AlP+N9RgWlwDTH
         vikQ==
X-Forwarded-Encrypted: i=1; AJvYcCUd9XsvT92a0JIbw/HO7fkbipTMLOd9JJyKLOcfQuoVOzsMQfXWsvEaAzUCIsy0I3EkhCpjOUTv2Oog@vger.kernel.org
X-Gm-Message-State: AOJu0YywoiKHVpqIvjsMZuITq1Wx2gd80H5lPQeVpsbd/3scac2MCgd7
	+gLyfAY8Vf5TPkKZJPAh0P5WJl2NFvhqbhYkqme7Nepnl96wAlcq3UgRcLDtYw==
X-Gm-Gg: ASbGncv2437lnsJWL6CEUytMcIkdEq289GfAfM5g09wtFNQKsvUBY6+1dWLDGnqWW0y
	QA61L9p2orQzQqhF5rGG8ZEOUYOw3XZgnJE5MY0RZQFq/rQrN1gBDVF4dLEkJyCTeYJR5cg9j4V
	DzuZIisFEu5LVtJWteMJ8M436IsIzshnYZaXwgHONGyd84/RX2PuS3ZRZldupK1LqAfRH3RdLC6
	OQblY0OwwQmkUgYQnP/Y2/ZQdiDwDwXOOQJQ3cGIjatX0M1V7mmW0Wn8YNRk74OnvN4w94pknoI
	3HWAlQxH54eIvjkJoomteU5DX5IQje5YhGTapWvt5MG8+FiqM0PNNkTvyIU8QmpqhXI=
X-Google-Smtp-Source: AGHT+IGk7Wbvv+p+ljwVovByJjOFoHfppHTP1+cVpoZmuorSMChPEuewTXvxnqB++I9G1ZambQYJAA==
X-Received: by 2002:a05:6a00:2309:b0:736:41ec:aaad with SMTP id d2e1a72fcca58-73722382f9bmr19932531b3a.14.1742283984406;
        Tue, 18 Mar 2025 00:46:24 -0700 (PDT)
Received: from thinkpad ([120.56.195.170])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-737116b3de4sm9153147b3a.179.2025.03.18.00.46.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 00:46:23 -0700 (PDT)
Date: Tue, 18 Mar 2025 13:16:18 +0530
From: "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Lucas Stach <l.stach@pengutronix.de>, Frank Li <Frank.li@nxp.com>,
	Hongxing Zhu <hongxing.zhu@nxp.com>,
	"robh@kernel.org" <robh@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"shawnguo@kernel.org" <shawnguo@kernel.org>,
	"lpieralisi@kernel.org" <lpieralisi@kernel.org>,
	"kw@linux.com" <kw@linux.com>,
	"bhelgaas@google.com" <bhelgaas@google.com>,
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
	"festevam@gmail.com" <festevam@gmail.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"imx@lists.linux.dev" <imx@lists.linux.dev>,
	"kernel@pengutronix.de" <kernel@pengutronix.de>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 2/2] PCI: imx6: Use domain number replace the hardcodes
Message-ID: <20250318074618.tqbnr7nv665fk25n@thinkpad>
References: <b425a7c7a7d6508daf23fe7046864a498029a7ac.camel@pengutronix.de>
 <20250313160648.GA736867@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250313160648.GA736867@bhelgaas>

On Thu, Mar 13, 2025 at 11:06:48AM -0500, Bjorn Helgaas wrote:
> On Thu, Mar 13, 2025 at 09:54:25AM +0100, Lucas Stach wrote:
> > Am Mittwoch, dem 12.03.2025 um 10:22 -0400 schrieb Frank Li:
> > > On Wed, Mar 12, 2025 at 09:28:02AM +0100, Lucas Stach wrote:
> > > > Am Mittwoch, dem 12.03.2025 um 04:05 +0000 schrieb Hongxing Zhu:
> > > > > > -----Original Message-----
> > > > > > From: Bjorn Helgaas <helgaas@kernel.org>
> > > > > > Sent: 2025年3月11日 23:55
> > > > > > To: Hongxing Zhu <hongxing.zhu@nxp.com>
> > > > > > Cc: robh@kernel.org; krzk+dt@kernel.org; conor+dt@kernel.org;
> > > > > > shawnguo@kernel.org; l.stach@pengutronix.de; lpieralisi@kernel.org;
> > > > > > kw@linux.com; manivannan.sadhasivam@linaro.org; bhelgaas@google.com;
> > > > > > s.hauer@pengutronix.de; festevam@gmail.com; devicetree@vger.kernel.org;
> > > > > > linux-pci@vger.kernel.org; imx@lists.linux.dev; kernel@pengutronix.de;
> > > > > > linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> > > > > > Subject: Re: [PATCH v1 2/2] PCI: imx6: Use domain number replace the
> > > > > > hardcodes
> > > > > > 
> > > > > > On Tue, Mar 11, 2025 at 01:11:04AM +0000, Hongxing Zhu wrote:
> > > > > > > > -----Original Message-----
> > > > > > > > From: Bjorn Helgaas <helgaas@kernel.org>
> > > > > > > > Sent: 2025年3月10日 23:11
> > > > > > > > To: Hongxing Zhu <hongxing.zhu@nxp.com>
> > > > > > > > Cc: robh@kernel.org; krzk+dt@kernel.org; conor+dt@kernel.org;
> > > > > > > > shawnguo@kernel.org; l.stach@pengutronix.de; lpieralisi@kernel.org;
> > > > > > > > kw@linux.com; manivannan.sadhasivam@linaro.org;
> > > > > > bhelgaas@google.com;
> > > > > > > > s.hauer@pengutronix.de; festevam@gmail.com;
> > > > > > > > devicetree@vger.kernel.org; linux-pci@vger.kernel.org;
> > > > > > > > imx@lists.linux.dev; kernel@pengutronix.de;
> > > > > > > > linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> > > > > > > > Subject: Re: [PATCH v1 2/2] PCI: imx6: Use domain number replace the
> > > > > > > > hardcodes
> > > > > > > > 
> > > > > > > > On Wed, Feb 26, 2025 at 10:42:56AM +0800, Richard Zhu wrote:
> > > > > > > > > Use the domain number replace the hardcodes to uniquely identify
> > > > > > > > > different controller on i.MX8MQ platforms. No function changes.
> > > > > > > > > 
> > > > > > > > > Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> > > > > > > > > ---
> > > > > > > > >  drivers/pci/controller/dwc/pci-imx6.c | 14 ++++++--------
> > > > > > > > >  1 file changed, 6 insertions(+), 8 deletions(-)
> > > > > > > > > 
> > > > > > > > > diff --git a/drivers/pci/controller/dwc/pci-imx6.c
> > > > > > > > > b/drivers/pci/controller/dwc/pci-imx6.c
> > > > > > > > > index 90ace941090f..ab9ebb783593 100644
> > > > > > > > > --- a/drivers/pci/controller/dwc/pci-imx6.c
> > > > > > > > > +++ b/drivers/pci/controller/dwc/pci-imx6.c
> > > > > > > > > @@ -41,7 +41,6 @@
> > > > > > > > >  #define IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE	BIT(11)
> > > > > > > > >  #define IMX8MQ_GPR_PCIE_VREG_BYPASS		BIT(12)
> > > > > > > > >  #define IMX8MQ_GPR12_PCIE2_CTRL_DEVICE_TYPE	GENMASK(11,
> > > > > > 8)
> > > > > > > > > -#define IMX8MQ_PCIE2_BASE_ADDR			0x33c00000
> > > > > > > > > 
> > > > > > > > >  #define IMX95_PCIE_PHY_GEN_CTRL			0x0
> > > > > > > > >  #define IMX95_PCIE_REF_USE_PAD			BIT(17)
> > > > > > > > > @@ -1474,7 +1473,6 @@ static int imx_pcie_probe(struct
> > > > > > > > > platform_device
> > > > > > > > *pdev)
> > > > > > > > >  	struct dw_pcie *pci;
> > > > > > > > >  	struct imx_pcie *imx_pcie;
> > > > > > > > >  	struct device_node *np;
> > > > > > > > > -	struct resource *dbi_base;
> > > > > > > > >  	struct device_node *node = dev->of_node;
> > > > > > > > >  	int i, ret, req_cnt;
> > > > > > > > >  	u16 val;
> > > > > > > > > @@ -1515,10 +1513,6 @@ static int imx_pcie_probe(struct
> > > > > > > > platform_device *pdev)
> > > > > > > > >  			return PTR_ERR(imx_pcie->phy_base);
> > > > > > > > >  	}
> > > > > > > > > 
> > > > > > > > > -	pci->dbi_base = devm_platform_get_and_ioremap_resource(pdev,
> > > > > > 0,
> > > > > > > > &dbi_base);
> > > > > > > > > -	if (IS_ERR(pci->dbi_base))
> > > > > > > > > -		return PTR_ERR(pci->dbi_base);
> > > > > > > > 
> > > > > > > > This makes me wonder.
> > > > > > > > 
> > > > > > > > IIUC this means that previously we set controller_id to
> > > > > > > > 1 if the first item in devicetree "reg" was 0x33c00000,
> > > > > > > > and now we will set controller_id to 1 if the devicetree
> > > > > > > > "linux,pci-domain" property is 1.  This is good, but I
> > > > > > > > think this new dependency on the correct
> > > > > > > > "linux,pci-domain" in devicetree should be mentioned in
> > > > > > > > the commit log.
> > > > > > > > 
> > > > > > > > My bigger worry is that we no longer set pci->dbi_base
> > > > > > > > at all.  I see that the only use of pci->dbi_base in
> > > > > > > > pci-imx6.c was to determine the controller_id, but this
> > > > > > > > is a DWC-based driver, and the DWC core certainly uses
> > > > > > > > pci->dbi_base.  Are we sure that none of those DWC core
> > > > > > > > paths are important to pci-imx6.c?
> > > > > > >
> > > > > > > Thanks for your concerns.  Don't worry about the
> > > > > > > assignment of pci->dbi_base.  If pci-imx6.c driver doesn't
> > > > > > > set it. DWC core driver would set it when
> > > > > > >  dw_pcie_get_resources() is invoked.
> > > > > > 
> > > > > > Great, thanks!  Maybe we can amend the commit log to mention
> > > > > > that and the new "linux,pci-domain" dependency.
> > > > >
> > > > > How about the following updates of the commit log?
> > > > > 
> > > > > Use the domain number replace the hardcodes to uniquely
> > > > > identify different controller on i.MX8MQ platforms. No
> > > > > function changes.  Please make sure the " linux,pci-domain" is
> > > > > set for i.MX8MQ correctly, since  the controller id is relied
> > > > > on it totally.
> > > > > 
> > > > This breaks running a new kernel on an old DT without the
> > > > linux,pci-domain property, which I'm absolutely no fan of. We
> > > > tried really hard to keep this way around working in the i.MX
> > > > world.
> > > 
> > > 8MQ already add linux,pci-domain since Jan, 2021
> > > 
> > > commit c0b70f05c87f3b09b391027c6f056d0facf331ef
> > > Author: Peng Fan <peng.fan@nxp.com>
> > > Date:   Fri Jan 15 11:26:57 2021 +0800
> > > 
> > > Only missed is pcie-ep side, which have not been used at all boards dts
> > > file in upstream.
> > 
> > I wasn't aware of this. 2021 is quite a while ago, so I suspect that
> > nobody is going to run a new kernel with a DT this old. I retract my
> > objection.
> 
> Sounds good, thanks, Lucas.  We really do want to avoid breaking old
> DTs, so I appreciate your highlighting of it.  Even if we believe none
> of them will break, I think it's worth mentioning the
> 'linux,pci-domain' dependency and the commit that added it to the
> .dtsi in the commit log.
> 

If there is a dependency, then it should be added to the binding. Only that will
ensure that the DTs will have the dependent property present.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

