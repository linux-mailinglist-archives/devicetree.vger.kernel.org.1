Return-Path: <devicetree+bounces-150405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F04CA42005
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 14:12:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 688981647E9
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 13:12:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65E5523BD02;
	Mon, 24 Feb 2025 13:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c94feaQF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4F3A23373F
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 13:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740402744; cv=none; b=cIX+uCu/Z0nZg0w52YXoamZrfqKZqFZAr9Jqf0uJqfUuyNVLqS5T1Onwtr4f0+/ZuxUFK6Ts4lSg44XzJt5Nv2qCIdqV2T7SyEBbfeTB63NzVyrDTI6DqkbdaxfyDzv2kOnJaUZjcsYCMkgSO6sarD9QIaJ8KfKuewRgPRYXDNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740402744; c=relaxed/simple;
	bh=4JJCr+hzIcHgx1zZ7pN1MHsI83h/HIKz+kxxuG1tyKk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fdHgy7LWRNsfrN3RVJ8A8OnSN2B5g48yfFnvWBc42bY3XfjIPXir7OwfMtBCbhF3UI1sw2k3ltYVeTFMvL9Kv/PP5+3AgAPmVZfAmlyA0UcMusCL456EJwBK0VA2Q/A6THwhB+zK/6S6Iv1v3azdOy+H14y4VmNfcqBZz3fIFno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c94feaQF; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-220ecbdb4c2so3709745ad.3
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 05:12:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740402742; x=1741007542; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6xivWvjfsx4I7sb2/boiuXVtJjYaejU6ywHPFZw0QHc=;
        b=c94feaQFf8WwknSRZs0SmPCTm/VOOOW9D+Ic8JV/6P4SnqGxc4FZG8fgj+dH0WaBmh
         2k/gYF1a++k8zp4qcsQBVZy24KSbMZLAvaMRQugEoNtdlNjCD3zsYQ6A1zr1wHKCis6r
         z5TprjXkctYCeafDE3CUGPCGdfW11DFH/CX1CRpTLmJ2HQVjnS1eSK+1AajN60wqXLyD
         M9nwImEBgheuYIUzcLAR+nX3kuvIaOhtbTeCuj8puWTxnTCukUfc83SjbnCk4vWOGGcH
         xHaiFugFyL4QSWdBQFw6uCCF0TCAHUgfLrQAuLlfEutoDpVB2ifhUSSjRryeYu14lTMI
         HMNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740402742; x=1741007542;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6xivWvjfsx4I7sb2/boiuXVtJjYaejU6ywHPFZw0QHc=;
        b=krPOGM6d5hLJ6L2bqFMPgQrlwqW1r+bF0qLGKJG9wHZVi45P8aUGwr605+VZkXwK/g
         lxci+k3eyNbxio/ztW0f83VEq0XpwxT8UaFcZUold2bKxJOOav813KGkV52+53Qtov/U
         N7ICIlxa/F1R60CZCHFheUOr2zxDR0Om/+6OzaKKL82rAyFaqfY+sRdV1XaHvZ2qHHoH
         LtUNO03J+sNUxkrH1Z037OX5CnTLehHuRKcVj/TPWNF0KLQWwRvf5lrpP/lH95bnvVyr
         JsAcVFlo6hRBtqO58YBGrVNzmk0CPhrLI48GoSPAJNzdbpuQS88r+mI5yl5jkKom+TN0
         QGpg==
X-Forwarded-Encrypted: i=1; AJvYcCU6NiIWknVKdleVxMkFaUNXAA5usjsF0yQREMkiB0e+1DGZX0t5v4J3dYTtQb+HWNzH2w0xte+DUwKC@vger.kernel.org
X-Gm-Message-State: AOJu0Yzw3jpvLYDvvecZyoyie6OLtZFip3gMqg/+XOWzddsiBEGAoXZW
	DvfV3o2I6W2GKPtU4xMnOKQ/xcvCDzCiki/Ovphr1AV2z9+DNiNREGfJh9Zz5A==
X-Gm-Gg: ASbGncsDUyFEA0CKbv/aOMMSasPF3ZPvy5iiyYGEMV2lQpHXNBdQ+MnkzfYX+/gExnX
	Eh5LUSSXrHI258TlHED3mhiPYOzIJZhpV5SIrYU/rees0zlgW5jCoMoqyQZ85sDlwfa6xaBpn+u
	uqkReBQXRJcIZjLyp4nS3W/kFD8iSjz9928+lBVKqeLDKALp49E4VddaLuNuS3whH9NQ4FY5XQo
	zdpXmBgHLuIqm3W5C0Si4wd+Go2beflwD421KF/NekwhbyxoxZCT+DXQMypmdGm+sI/NomkgGBg
	tvJMBjBqCwtRCBYv8FwXvnvAWZ/0Su3TAZYW
X-Google-Smtp-Source: AGHT+IH66tyyeq6a6srxXBnhCf5MfUJnzgVf0ncZyII3wiL8V1nQJMP3kqGHxIeAsJESjLWajBiwzQ==
X-Received: by 2002:a05:6a00:4b54:b0:732:6217:8c69 with SMTP id d2e1a72fcca58-73426c94ad6mr24845216b3a.3.1740402741835;
        Mon, 24 Feb 2025 05:12:21 -0800 (PST)
Received: from thinkpad ([36.255.17.202])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-adcc6fb20f8sm16951931a12.37.2025.02.24.05.12.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2025 05:12:21 -0800 (PST)
Date: Mon, 24 Feb 2025 18:42:15 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: "Havalige, Thippeswamy" <thippeswamy.havalige@amd.com>
Cc: "bhelgaas@google.com" <bhelgaas@google.com>,
	"lpieralisi@kernel.org" <lpieralisi@kernel.org>,
	"kw@linux.com" <kw@linux.com>, "robh@kernel.org" <robh@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"Simek, Michal" <michal.simek@amd.com>,
	"Gogada, Bharat Kumar" <bharat.kumar.gogada@amd.com>,
	"jingoohan1@gmail.com" <jingoohan1@gmail.com>
Subject: Re: [PATCH v14 3/3] PCI: amd-mdb: Add AMD MDB Root Port driver
Message-ID: <20250224131215.slcrh3czyl27zhya@thinkpad>
References: <20250224073117.767210-1-thippeswamy.havalige@amd.com>
 <20250224073117.767210-4-thippeswamy.havalige@amd.com>
 <20250224093024.q4vx2lygrc2swu3h@thinkpad>
 <SN7PR12MB720127D150CABEECA4A436358BC02@SN7PR12MB7201.namprd12.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <SN7PR12MB720127D150CABEECA4A436358BC02@SN7PR12MB7201.namprd12.prod.outlook.com>

On Mon, Feb 24, 2025 at 11:05:19AM +0000, Havalige, Thippeswamy wrote:

[...]

> > +#define AMD_MDB_TLP_IR_STATUS_MISC		0x4C0
> > +#define AMD_MDB_TLP_IR_MASK_MISC		0x4C4
> > +#define AMD_MDB_TLP_IR_ENABLE_MISC		0x4C8
> > +#define AMD_MDB_TLP_IR_DISABLE_MISC		0x4CC
> > +
> > +#define AMD_MDB_TLP_PCIE_INTX_MASK	GENMASK(23, 16)
> > +
> > +#define AMD_MDB_PCIE_INTR_INTX_ASSERT(x)	BIT((x) * 2)
> 
> How does these values correspond to the AMD_MDB_TLP_PCIE_INTX_MASK? These values could be: 0, 2, 4, and 6 corresponding to: 0b01010101? Looks wierd.

I don't know if it is your mailer issue or your workflow. Looks like my review
comments are copy pasted here. So it becomes harder to distinguish between my
previous comments and your replies.

Please fix it.

> Thank you for reviewing, Yes in register status/Enable/Disable register bits are laid in this way.
> 
> > +
> > +/* Interrupt registers definitions */
> > +#define AMD_MDB_PCIE_INTR_CMPL_TIMEOUT		15
> > +#define AMD_MDB_PCIE_INTR_INTX			16
> > +#define AMD_MDB_PCIE_INTR_PM_PME_RCVD		24
> 
> 
> > +static inline u32 pcie_read(struct amd_mdb_pcie *pcie, u32 reg) {
> > +	return readl_relaxed(pcie->slcr + reg); }
> 
> I think I already commented on these helpers. Please get rid of them. I don't see any value in this new driver. Moreover, 'inline' keywords are not required.
> Thanks for the review. While I agree to remove the 'inline', I would like pcie_read/pcie_write APIs. Could you please clarify the reason for explicitly removing pcie_read/pcie_write here?
> If I remove the pcie_read/pcie_write, it will require changes in multiple places throughout the code."

What value does the helper really add? It just wraps the {readl/writel}_relaxed
calls. Plus it hides which kind of I/O accessors are used. So I don't see a
value in keeping them.

> 
> > +
> > +static inline void pcie_write(struct amd_mdb_pcie *pcie,
> > +			      u32 val, u32 reg)
> > +{
> > +	writel_relaxed(val, pcie->slcr + reg); }
> > +
> > +static const struct irq_domain_ops amd_intx_domain_ops = {
> > +	.map = amd_mdb_pcie_intx_map,
> > +};
> > +
> > +static irqreturn_t dw_pcie_rp_intx_flow(int irq, void *args)
> 
> What does the _flow suffix mean?
> Thanks for reviewing, The _flow suffix in the function name dw_pcie_rp_intx_flow indicates that the function handles the flow or processing related to interrupt handling for the PCIe root port's INTx interrupts through generic_handle_domain_irq.
> 

(Please wrap your replies to 80 column width)

So it is the regular interrupt handler. I don't see a necessity to add the _flow
suffix.

> > +{
> > +	struct amd_mdb_pcie *pcie = args;
> > +	unsigned long val;
> > +	int i, int_status;
> > +
> > +	val = pcie_read(pcie, AMD_MDB_TLP_IR_STATUS_MISC);
> 
> You don't need port->lock here?
> Thank you for reviewing. In this case, I'm simply reading the status of the INTX register bits without modifying any registers.
> Since no shared resources are being updated or accessed concurrently, there’s no need for a lock here.
> 

What if the handler and mask/unmask functions are executed in different CPUs?
Sharing the same register without lock feels nervous. Locking principle is that
you would lock both read as well as write.

> 
> > +	int_status = FIELD_GET(AMD_MDB_TLP_PCIE_INTX_MASK, val);
> 
> You don't need to ack/clear the IRQ?
> - Thank you for reviewing, Thank you for reviewing. In this case, I am using IRQ domains, and the generic_handle_domain_irq function will invoke the necessary irq_mask and irq_unmask operations internally, which will take care of clearing the IRQ.
> 

Ok.

> > +
> > +	for (i = 0; i < PCI_NUM_INTX; i++) {
> > +		if (int_status & AMD_MDB_PCIE_INTR_INTX_ASSERT(i))
> > +			generic_handle_domain_irq(pcie->intx_domain, i);
> > +	}
> > +
> > +	return IRQ_HANDLED;
> > +}
> > +
> > +static void amd_mdb_event_irq_mask(struct irq_data *d) {
> > +	struct amd_mdb_pcie *pcie = irq_data_get_irq_chip_data(d);
> > +	struct dw_pcie *pci = &pcie->pci;
> > +	struct dw_pcie_rp *port = &pci->pp;
> > +	u32 val;
> > +
> > +	raw_spin_lock(&port->lock);
> > +	val = pcie_read(pcie, AMD_MDB_TLP_IR_STATUS_MISC);
> 
> This register is accessed in the IRQ handler also. So don't you need raw_spin_lock_irq{save/restore}? 
> - Thank you for reviewing, In handler I am just reading the status & calling this irq_mask/irq_unmask API's I don't need to have save/restore spin_lock_irq's here.
> 

Same as above.

> > +	val &= ~BIT(d->hwirq);
> > +	pcie_write(pcie, val, AMD_MDB_TLP_IR_STATUS_MISC);
> > +	raw_spin_unlock(&port->lock);
> > +}
> > +

[...]

> > +	for (i = 0; i < ARRAY_SIZE(intr_cause); i++) {
> > +		if (!intr_cause[i].str)
> > +			continue;
> > +		irq = irq_create_mapping(pcie->mdb_domain, i);
> > +		if (!irq) {
> > +			dev_err(dev, "Failed to map mdb domain interrupt\n");
> > +			return -ENOMEM;
> > +		}
> > +		err = devm_request_irq(dev, irq, amd_mdb_pcie_intr_handler,
> > +				       IRQF_SHARED | IRQF_NO_THREAD,
> > +				       intr_cause[i].sym, pcie);
> 
> Aren't these IRQs just part of a single IRQ? I'm wondering why do you need to represent them individually instead of having a single IRQ handler.
> 
> Btw, you are not disposing these IRQs anywhere. Especially in error paths.
> Thank you for reviewing. This code is based on the work authored by Marc Zyngier and Bjorn during the development of our CPM drivers, and it follows the same design principles. The individual IRQ handling is consistent with that approach.
> For reference, you can review the driver here: pcie-xilinx-cpm.c. All of your comments have been incorporated into this driver as requested.
> 

Ok for the separate IRQ question. But you still need to dispose the IRQs in
error path.

> > +		if (err) {
> > +			dev_err(dev, "Failed to request IRQ %d\n", irq);
> > +			return err;
> > +		}
> > +	}
> > +
> > +	pcie->intx_irq = irq_create_mapping(pcie->mdb_domain,
> > +					    AMD_MDB_PCIE_INTR_INTX);
> > +	if (!pcie->intx_irq) {
> > +		dev_err(dev, "Failed to map INTx interrupt\n");
> > +		return -ENXIO;
> > +	}
> > +
> > +	err = devm_request_irq(dev, pcie->intx_irq,
> > +			       dw_pcie_rp_intx_flow,
> > +			       IRQF_SHARED | IRQF_NO_THREAD, NULL, pcie);
> > +	if (err) {
> > +		dev_err(dev, "Failed to request INTx IRQ %d\n", irq);
> > +		return err;
> > +	}
> > +
> > +	/* Plug the main event handler */
> > +	err = devm_request_irq(dev, pp->irq, amd_mdb_pcie_event_flow,
> > +			       IRQF_SHARED | IRQF_NO_THREAD, "amd_mdb pcie_irq",
> 
> Why is this a SHARED IRQ?
> Thank you for reviewing. The IRQ is shared because all the events, errors, and INTx interrupts are routed through the same IRQ line, so multiple handlers need to be able to respond to the same interrupt.

IIUC, you have a single handler for this IRQ and that handler is invoking other
handlers (for events, INTx etc...). So I don't see how this IRQ is shared.

Shared IRQ is only required if multiple handlers are sharing the same IRQ line.
But that is not the case here afaics.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

