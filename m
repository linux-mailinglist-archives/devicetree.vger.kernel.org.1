Return-Path: <devicetree+bounces-86044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0E39323CA
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 12:20:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D0856284EE0
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 10:20:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C3911991CA;
	Tue, 16 Jul 2024 10:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j8j9wOGo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E20F71991BE
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 10:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721125210; cv=none; b=G/bGrD80VxPwCg105lzVkS9P990QOOajDON0+torAAldHknn82+rwRrYNkpam20+DvNmxOnDDScUPQbMtbvQqsdNgkRy19LAMSVrAeM/ZAvY7Zfrcou/3J/RmcA+nHEovA2uWNh6/FLRq80RIYwGmPceslU+Plt6mDRBzh+XOvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721125210; c=relaxed/simple;
	bh=fpBGbCyhd772qcFb498tGT8nDnPB0drFxt8PUU3Fn/I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L7pc8Bg49LkZ7lRyS081/+QCgVZQTfT440ws313D22FQluBdop/NJllr3U9NEFhuft+1ARkF0wP0FgZN+7WVDhuUiRCv+tbmlW1lTfCysLXJxXAPjJyLT5IXmY99zVmcygJArqwrMwHAgHxjI3r/hIRae5a3XdxJjTYlQegZtbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j8j9wOGo; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-2c98b22638bso3707399a91.1
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 03:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721125208; x=1721730008; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=D+ol9qghEAKP5PzeXFlIx+5EzD/KmRIHav75fqb24zE=;
        b=j8j9wOGodFTXIbUL2kSwiayGcRIXUgD4tzOHilnZgKFJG5jNXsOjJvKqeiSskshRs5
         sn6apw3dVwPMLS4zHzXcac5vKmxradqV3H67xWP/4m8fmLdil08FZkHT/CpcvrqMLPxm
         GKHW0ACPbsyVVFU1jIF+HXC0rYixS/o9VTw28sTDatDv/adl59hvThzoOTphPZtaOuwA
         wxQTvTkx5HmxQZGkpcCnAqE6qs0MexLfER264/gXhcupb0RIn7Rj79tOtFRVa1nqk4jP
         mtr0ieAQjM7h09u3NfzDjwQefD+8UVNU0xINtwj7fOKwyA0v5T5JMPtyIoLyWuilpYO6
         d7BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721125208; x=1721730008;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D+ol9qghEAKP5PzeXFlIx+5EzD/KmRIHav75fqb24zE=;
        b=go0RM5+yoOLCStxEMnm2F8CCsIV2wgk9ZLQEOuskHbBznV4Vj1SrdcD21UrhzAHzNZ
         xHI+bNGG5UA4PiR7qzebqt3ocTIGnxRbv45RQI2WyW6Y7QSxL3TXDHh7Czq5ng1gh097
         gVFS3PNBwDF8iDjSM0qUYnrOGE6GPyxxRzWyqVOmSU2q4x5b0YiG/177JwpxYFRTiE9x
         scwTYzQr9o6VUniTXYPsoZVOra/PN37KH07NSyDRhQvGJ6KRG3TcTFqcc9T0iffmC+lX
         uGvcQstpyRu7tLgoHlzxLwP+zodTdm4ZANIVEJiRDO+v2dxXiDaos4bX31fGirzRQuqU
         zVIA==
X-Forwarded-Encrypted: i=1; AJvYcCXYVtz7NLNEzzJayXDriH3fTabgmWUSBF1AxaYTadx03Y3iVXzF4jqXd04+e3QZ4O7ftGB87kFSSxMdRWFrfxPPpVWy97JgDoTgzw==
X-Gm-Message-State: AOJu0YwZNzB3b666fAwfO8YCJduqksf5lPELTctKMwiKhYjqKKc4vfNI
	bZzSKlUq1iLPTFzqkqeOomsBKjwsgMuAQzVm4jyPPz4jb/a+0GQS/L42zn35iw==
X-Google-Smtp-Source: AGHT+IGupWa3ROtnkyEzp23i/w3DYfSyvrtmr9ayct2cPDFjJpWs4HnKGVa0ZLEWtcIFzwRkSYamKg==
X-Received: by 2002:a17:90b:516:b0:2c9:36bf:ba6f with SMTP id 98e67ed59e1d1-2cb37dcaf25mr2162210a91.3.1721125208072;
        Tue, 16 Jul 2024 03:20:08 -0700 (PDT)
Received: from thinkpad ([220.158.156.207])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cacd704f8csm7902347a91.56.2024.07.16.03.20.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 03:20:07 -0700 (PDT)
Date: Tue, 16 Jul 2024 15:50:02 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: neil.armstrong@linaro.org
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-pci@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 13/14] PCI: qcom: Simulate PCIe hotplug using 'global'
 interrupt
Message-ID: <20240716102002.GL3446@thinkpad>
References: <20240715-pci-qcom-hotplug-v1-0-5f3765cc873a@linaro.org>
 <20240715-pci-qcom-hotplug-v1-13-5f3765cc873a@linaro.org>
 <5f0a751a-f1b9-4cb5-af31-624c08833b10@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5f0a751a-f1b9-4cb5-af31-624c08833b10@linaro.org>

On Tue, Jul 16, 2024 at 10:40:55AM +0200, neil.armstrong@linaro.org wrote:
> On 15/07/2024 19:33, Manivannan Sadhasivam via B4 Relay wrote:
> > From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > 
> > Historically, Qcom PCIe RC controllers lack standard hotplug support. So
> > when an endpoint is attached to the SoC, users have to rescan the bus
> > manually to enumerate the device. But this can be avoided by simulating the
> > PCIe hotplug using Qcom specific way.
> > 
> > Qcom PCIe RC controllers are capable of generating the 'global' SPI
> > interrupt to the host CPUs. The device driver can use this event to
> > identify events such as PCIe link specific events, safety events etc...
> > 
> > One such event is the PCIe Link up event generated when an endpoint is
> > detected on the bus and the Link is 'up'. This event can be used to
> > simulate the PCIe hotplug in the Qcom SoCs.
> > 
> > So add support for capturing the PCIe Link up event using the 'global'
> > interrupt in the driver. Once the Link up event is received, the bus
> > underneath the host bridge is scanned to enumerate PCIe endpoint devices,
> > thus simulating hotplug.
> > 
> > All of the Qcom SoCs have only one rootport per controller instance. So
> > only a single 'Link up' event is generated for the PCIe controller.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >   drivers/pci/controller/dwc/pcie-qcom.c | 55 ++++++++++++++++++++++++++++++++++
> >   1 file changed, 55 insertions(+)
> > 
> > diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> > index 0180edf3310e..38ed411d2052 100644
> > --- a/drivers/pci/controller/dwc/pcie-qcom.c
> > +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> > @@ -50,6 +50,9 @@
> >   #define PARF_AXI_MSTR_WR_ADDR_HALT_V2		0x1a8
> >   #define PARF_Q2A_FLUSH				0x1ac
> >   #define PARF_LTSSM				0x1b0
> > +#define PARF_INT_ALL_STATUS			0x224
> > +#define PARF_INT_ALL_CLEAR			0x228
> > +#define PARF_INT_ALL_MASK			0x22c
> >   #define PARF_SID_OFFSET				0x234
> >   #define PARF_BDF_TRANSLATE_CFG			0x24c
> >   #define PARF_SLV_ADDR_SPACE_SIZE		0x358
> > @@ -121,6 +124,9 @@
> >   /* PARF_LTSSM register fields */
> >   #define LTSSM_EN				BIT(8)
> > +/* PARF_INT_ALL_{STATUS/CLEAR/MASK} register fields */
> > +#define PARF_INT_ALL_LINK_UP			BIT(13)
> > +
> >   /* PARF_NO_SNOOP_OVERIDE register fields */
> >   #define WR_NO_SNOOP_OVERIDE_EN			BIT(1)
> >   #define RD_NO_SNOOP_OVERIDE_EN			BIT(3)
> > @@ -260,6 +266,7 @@ struct qcom_pcie {
> >   	struct icc_path *icc_cpu;
> >   	const struct qcom_pcie_cfg *cfg;
> >   	struct dentry *debugfs;
> > +	int global_irq;
> 
> I think you can drop this, the irq number is no more needed after probe
> 
> >   	bool suspended;
> >   };
> > @@ -1488,6 +1495,29 @@ static void qcom_pcie_init_debugfs(struct qcom_pcie *pcie)
> >   				    qcom_pcie_link_transition_count);
> >   }
> > +static irqreturn_t qcom_pcie_global_irq_thread(int irq, void *data)
> > +{
> > +	struct qcom_pcie *pcie = data;
> > +	struct dw_pcie_rp *pp = &pcie->pci->pp;
> > +	struct device *dev = pcie->pci->dev;
> > +	u32 status = readl_relaxed(pcie->parf + PARF_INT_ALL_STATUS);
> > +
> > +	writel_relaxed(status, pcie->parf + PARF_INT_ALL_CLEAR);
> > +
> > +	if (FIELD_GET(PARF_INT_ALL_LINK_UP, status)) {
> > +		dev_dbg(dev, "Received Link up event. Starting enumeration!\n");
> > +		/* Rescan the bus to enumerate endpoint devices */
> > +		pci_lock_rescan_remove();
> > +		pci_rescan_bus(pp->bridge->bus);
> > +		pci_unlock_rescan_remove();
> > +	} else {
> > +		dev_err(dev, "Received unknown event. INT_STATUS: 0x%08x\n",
> > +			status);
> 
> Can this happen ? perhaps dev_warn_once instead ?
> 

I did see one such issue that went unreported and ended by taking some debug
cycles. But dev_warn_once() makes sense.

> > +	}
> > +
> > +	return IRQ_HANDLED;
> > +}
> > +
> >   static int qcom_pcie_probe(struct platform_device *pdev)
> >   {
> >   	const struct qcom_pcie_cfg *pcie_cfg;
> > @@ -1498,6 +1528,7 @@ static int qcom_pcie_probe(struct platform_device *pdev)
> >   	struct dw_pcie_rp *pp;
> >   	struct resource *res;
> >   	struct dw_pcie *pci;
> > +	char *name;
> >   	int ret;
> >   	pcie_cfg = of_device_get_match_data(dev);
> > @@ -1617,6 +1648,28 @@ static int qcom_pcie_probe(struct platform_device *pdev)
> >   		goto err_phy_exit;
> >   	}
> > +	name = devm_kasprintf(dev, GFP_KERNEL, "qcom_pcie_global_irq%d",
> > +			      pci_domain_nr(pp->bridge->bus));
> > +	if (!name) {
> > +		ret = -ENOMEM;
> > +		goto err_host_deinit;
> > +	}
> > +
> > +	pcie->global_irq = platform_get_irq_byname_optional(pdev, "global");
> > +	if (pcie->global_irq > 0) {
> > +		ret = devm_request_threaded_irq(&pdev->dev, pcie->global_irq,
> > +						NULL,
> > +						qcom_pcie_global_irq_thread,
> > +						IRQF_ONESHOT, name, pcie);
> > +		if (ret) {
> > +			dev_err_probe(&pdev->dev, ret,
> > +				      "Failed to request Global IRQ\n");
> > +			goto err_host_deinit;
> > +		}
> > +
> > +		writel_relaxed(PARF_INT_ALL_LINK_UP, pcie->parf + PARF_INT_ALL_MASK);
> 
> Is this available on all PCIe RC core versions ?
> perhaps this should be moved into a callback of ops_1_9_0 for now ?
> 

This register should be available on all version afaik. Even if it is not on
some legacy ones, it can be moved later if required (once the dts for those
platforms start defining 'global' interrupt).

- Mani

-- 
மணிவண்ணன் சதாசிவம்

