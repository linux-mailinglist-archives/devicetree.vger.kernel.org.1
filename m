Return-Path: <devicetree+bounces-89220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9D09407A9
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 07:34:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 25D401C2136F
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 05:34:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1037214600F;
	Tue, 30 Jul 2024 05:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WPvPNAaD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F47E524C
	for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 05:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722317678; cv=none; b=bE7+4SbZfcUi+OfSQ2cAn7tKy/IcsVXCMw8ksvS9MlNxXdWNOPBpmSD+7wsn5/kb3S8WTI1vZuz/xYgvywvzxnyTGuKYkpMU8vs7KT76E6VnjcwjaWa9KRLNf9zHl2/lzytKlwrrd6+G1Fslj8HwXz02/DvZtwAEFyeUu2yPcUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722317678; c=relaxed/simple;
	bh=obTtu8yCGiQzYWEANDtTEneTZnFbPqR/b81jsuwOiSw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TFtMHLFD9YYddylbMxwJil0LDFDYNDmgi6P8rWtCDSe2v1t00bzMNYn/9xCrxDAqhm/j4m0gmd1lJyrPTI4+scIwMRtxhCbJOqdzL2ww2J7/9DFhsAmSP1VmMSahnF8HgWisCoroZh1M+zs0f04qQ+iTYYJ/DEPeka4vj/0/fAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WPvPNAaD; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-70d1d6369acso2630157b3a.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 22:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722317676; x=1722922476; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZXjlho4wBSwHFyzK9bIW7sXp0tOlujxkpVLREffcH/4=;
        b=WPvPNAaDJN3FepcFjqvtdxQhVfg3zIVoP1K3FJ1Nl1wgdsdDSIZNUTBOQuaIXNCk0q
         +IdUFqN75xFveF2vVGyIkYh4YVn3ti9xfxK39bCoKYHYNcYYMPr/hvgWXWiXlnihlWRB
         +OGNvytH7XKs6glNMhBKH9Yfx9zbs+WyIiWuNlTLKfT+E27TRrrh8xXat264KVyAzKDs
         QA2JhL29eUs20pXnh3bUci+FX3CJHsC2myAHuIsUSRv4rwN7qvskhxIw5L0cR1Y1M4TT
         /5cRnPZdJOnAicEJ6L54+xHG0jGctis0UbF2htAUp/15mNmS8yxscCeyL3ah4qddEg2G
         t/2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722317676; x=1722922476;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZXjlho4wBSwHFyzK9bIW7sXp0tOlujxkpVLREffcH/4=;
        b=op/B6jQx+AvFjlS+yEnyEWHx/lsXkt0Ci048mzdPMwZlchDBGt++CvJ/qhBNddWUx6
         wfsqKjwSaAVVB4E/dGyMwqdLQtmV1OKMMH1ZdZ3dhY1cg3GPOVcLyw/4AehdZbRDMNyN
         lB14XxppmP0fcgEgVlQcL3hVXSVhY46Ux9sMFlCgcwWOWgWWWb1satv7HUbKISHgFAKL
         TNmUthssxOpRkEPeZS3EGpmEpCa1fjM74yfWOn5huz/A+cs3l7eg08RyWiRM6DYGVVvj
         mUPYPdzjv6fnqk0s9nVXDcjUiWXCZb8fa3zAc5Uo2wNQeI21ImgqG+89N2thjrCUkeFD
         jiww==
X-Forwarded-Encrypted: i=1; AJvYcCUaW+rzkj6XSZH8vmwKSx8I0Nlh4ty7k1Zq7mzetlAQzhZCi1L+l/kf28Z67IBuhhklJSbw1Xk2a6tC0bH9BC7Wl+K96U/N1fBWmg==
X-Gm-Message-State: AOJu0Yw+XU4BYBIef4wWKW4jgVfM43XYD5V1COof/wOfMMN0SMCW5FOp
	nxThF83GVWBYhES/4g92IDsiVjI5EwT07WNAzX9GxxeSPvIaacHR6EaEPhcECw==
X-Google-Smtp-Source: AGHT+IHjznNzzK5ouDVuu0+4tUv3yUuB+KegUke9hWBS111nZpI7c/Fz88EMH6/f6lI3nkpFPLtS5w==
X-Received: by 2002:a05:6a20:244c:b0:1c4:6b0d:e992 with SMTP id adf61e73a8af0-1c4e47fcc13mr1618470637.22.1722317676457;
        Mon, 29 Jul 2024 22:34:36 -0700 (PDT)
Received: from thinkpad ([220.158.156.247])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7a9f7b7af58sm8169459a12.5.2024.07.29.22.34.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 22:34:36 -0700 (PDT)
Date: Tue, 30 Jul 2024 11:04:25 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Mayank Rana <quic_mrana@quicinc.com>
Cc: will@kernel.org, lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, jingoohan1@gmail.com, cassel@kernel.org,
	yoshihiro.shimoda.uh@renesas.com, s-vadapalli@ti.com,
	u.kleine-koenig@pengutronix.de, dlemoal@kernel.org,
	amishin@t-argos.ru, thierry.reding@gmail.com, jonathanh@nvidia.com,
	Frank.Li@nxp.com, ilpo.jarvinen@linux.intel.com, vidyas@nvidia.com,
	marek.vasut+renesas@gmail.com, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	quic_ramkri@quicinc.com, quic_nkela@quicinc.com,
	quic_shazhuss@quicinc.com, quic_msarkar@quicinc.com,
	quic_nitegupt@quicinc.com
Subject: Re: [PATCH V2 0/7] Add power domain and MSI functionality with PCIe
 host generic ECAM driver
Message-ID: <20240730053425.GB3122@thinkpad>
References: <1721067215-5832-1-git-send-email-quic_mrana@quicinc.com>
 <925d1eca-975f-4eec-bdf8-ca07a892361a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <925d1eca-975f-4eec-bdf8-ca07a892361a@quicinc.com>

On Mon, Jul 29, 2024 at 10:19:45AM -0700, Mayank Rana wrote:
> Hi Bjorn / Mani
> 
> Gentle ping for your review/feedback on this series.
> Thank you.
> 

I was waiting for your reply for my comment [1]. Because that will have
influence on this series.

- Mani

[1] https://lore.kernel.org/linux-pci/20240724095407.GA2347@thinkpad/

> Regards,
> Mayank
> 
> On 7/15/2024 11:13 AM, Mayank Rana wrote:
> > Based on previously received feedback, this patch series adds functionalities
> > with existing PCIe host generic ECAM driver (pci-host-generic.c) to get PCIe
> > host root complex functionality on Qualcomm SA8775P auto platform.
> > 
> > Previously sent RFC patchset to have separate Qualcomm PCIe ECAM platform driver:
> > https://lore.kernel.org/all/d10199df-5fb3-407b-b404-a0a4d067341f@quicinc.com/T/
> > 
> > 1. Interface to allow requesting firmware to manage system resources and performing
> > PCIe Link up (devicetree binding in terms of power domain and runtime PM APIs is used in driver)
> > 2. Performing D3 cold with system suspend and D0 with system resume (usage of GenPD
> > framework based power domain controls these operations)
> > 3. SA8775P is using Synopsys Designware PCIe controller which supports MSI controller.
> > This MSI functionality is used with PCIe host generic driver after splitting existing MSI
> > functionality from pcie-designware-host.c file into pcie-designware-msi.c file.
> > 
> > Below architecture is used on Qualcomm SA8775P auto platform to get ECAM compliant PCIe
> > controller based functionality. Here firmware VM based PCIe driver takes care of resource
> > management and performing PCIe link related handling (D0 and D3cold). Linux VM based PCIe
> > host generic driver uses power domain to request firmware VM to perform these operations
> > using SCMI interface.
> > ----------------
> > 
> > 
> >                                     ┌────────────────────────┐
> >                                     │                        │
> >    ┌──────────────────────┐         │     SHARED MEMORY      │            ┌──────────────────────────┐
> >    │     Firmware VM      │         │                        │            │         Linux VM         │
> >    │ ┌─────────┐          │         │                        │            │    ┌────────────────┐    │
> >    │ │ Drivers │ ┌──────┐ │         │                        │            │    │   PCIE host    │    │
> >    │ │ PCIE PHY◄─┤      │ │         │   ┌────────────────┐   │            │    │  generic driver│    │
> >    │ │         │ │ SCMI │ │         │   │                │   │            │    │                │    │
> >    │ │PCIE CTL │ │      │ ├─────────┼───►    PCIE        ◄───┼─────┐      │    └──┬──────────▲──┘    │
> >    │ │         ├─►Server│ │         │   │    SHMEM       │   │     │      │       │          │       │
> >    │ │Clk, Vreg│ │      │ │         │   │                │   │     │      │    ┌──▼──────────┴──┐    │
> >    │ │GPIO,GDSC│ └─▲──┬─┘ │         │   └────────────────┘   │     └──────┼────┤PCIE SCMI Inst  │    │
> >    │ └─────────┘   │  │   │         │                        │            │    └──▲──────────┬──┘    │
> >    │               │  │   │         │                        │            │       │          │       │
> >    └───────────────┼──┼───┘         │                        │            └───────┼──────────┼───────┘
> >                    │  │             │                        │                    │          │
> >                    │  │             └────────────────────────┘                    │          │
> >                    │  │                                                           │          │
> >                    │  │                                                           │          │
> >                    │  │                                                           │          │
> >                    │  │                                                           │IRQ       │HVC
> >                IRQ │  │HVC                                                        │          │
> >                    │  │                                                           │          │
> >                    │  │                                                           │          │
> >                    │  │                                                           │          │
> > ┌─────────────────┴──▼───────────────────────────────────────────────────────────┴──────────▼──────────────┐
> > │                                                                                                          │
> > │                                                                                                          │
> > │                                      HYPERVISOR                                                          │
> > │                                                                                                          │
> > │                                                                                                          │
> > │                                                                                                          │
> > └──────────────────────────────────────────────────────────────────────────────────────────────────────────┘
> >    ┌─────────────┐    ┌─────────────┐  ┌──────────┐   ┌───────────┐   ┌─────────────┐  ┌────────────┐
> >    │             │    │             │  │          │   │           │   │  PCIE       │  │   PCIE     │
> >    │   CLOCK     │    │   REGULATOR │  │   GPIO   │   │   GDSC    │   │  PHY        │  │ controller │
> >    └─────────────┘    └─────────────┘  └──────────┘   └───────────┘   └─────────────┘  └────────────┘
> > ----------
> > Changes in V2:
> > - Drop new PCIe Qcom ECAM driver, and use existing PCIe designware based MSI functionality
> > - Add power domain based functionality within existing ECAM driver
> > 
> > Tested:
> > - Validated NVME functionality with PCIe0 and PCIe1 on SA8775P-RIDE platform
> > 
> > Mayank Rana (7):
> >    PCI: dwc: Move MSI related code to separate file
> >    PCI: dwc: Add msi_ops to allow DBI based MSI register access
> >    PCI: dwc: Add pcie-designware-msi driver kconfig option
> >    dt-bindings: PCI: host-generic-pci: Add power-domains binding
> >    PCI: host-generic: Add power domain based handling for PCIe controller
> >    dt-bindings: PCI: host-generic-pci: Add snps,dw-pcie-ecam-msi binding
> >    PCI: host-generic: Add dwc MSI based MSI functionality
> > 
> >   .../devicetree/bindings/pci/host-generic-pci.yaml  |  64 +++
> >   drivers/pci/controller/dwc/Kconfig                 |   8 +
> >   drivers/pci/controller/dwc/Makefile                |   1 +
> >   drivers/pci/controller/dwc/pci-keystone.c          |  12 +-
> >   drivers/pci/controller/dwc/pcie-designware-host.c  | 438 ++-------------------
> >   drivers/pci/controller/dwc/pcie-designware-msi.c   | 413 +++++++++++++++++++
> >   drivers/pci/controller/dwc/pcie-designware-msi.h   |  63 +++
> >   drivers/pci/controller/dwc/pcie-designware.c       |   1 +
> >   drivers/pci/controller/dwc/pcie-designware.h       |  26 +-
> >   drivers/pci/controller/dwc/pcie-rcar-gen4.c        |   1 +
> >   drivers/pci/controller/dwc/pcie-tegra194.c         |   5 +-
> >   drivers/pci/controller/pci-host-generic.c          | 127 +++++-
> >   12 files changed, 723 insertions(+), 436 deletions(-)
> >   create mode 100644 drivers/pci/controller/dwc/pcie-designware-msi.c
> >   create mode 100644 drivers/pci/controller/dwc/pcie-designware-msi.h
> > 

-- 
மணிவண்ணன் சதாசிவம்

