Return-Path: <devicetree+bounces-290108-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IAH2KeaQ62k+OQAAu9opvQ
	(envelope-from <devicetree+bounces-290108-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 17:48:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 63054460FBD
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 17:48:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 54488300682D
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 15:48:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E7E933ADBA;
	Fri, 24 Apr 2026 15:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvt6DYW+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7603346B2;
	Fri, 24 Apr 2026 15:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777045726; cv=none; b=fwRPtVu64Gvn9tNp9rAL1iAzhVblUpdiGIhNaC6NrF492wtAnJV1Tsq7n+8NOJNHkE28kBhIgyWS7/Yja9DW3uff1WYUejNmcnr9nHaC6iWboM4+TXqg18y+uM2c8uMeBK+HTlJBRh8SXGBct0A/+kVQoDz2AeMSzPIGbM7lEnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777045726; c=relaxed/simple;
	bh=1bd5yN/luy9YkAJvQuYF0+kGyC+cd6+REpkOCFHCOjQ=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=bGzuPRcnRsIttHKvfZsklOIvryYbAKNL2VEHSNYyqaKDtx0SEIZhAwGNw1a01V5Z+nCNVjs+rz33K4gsYbYdyFbLZUAk89yDXi/6ekODHhSrahe/RlCor1JZcDU9o84p0H5LSBGVnkzt6Tdzot8HckCaj62DYqqRUwxN9wnE5yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvt6DYW+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7D83C19425;
	Fri, 24 Apr 2026 15:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777045726;
	bh=1bd5yN/luy9YkAJvQuYF0+kGyC+cd6+REpkOCFHCOjQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=dvt6DYW+/fnANRyeyhbuA7p+IKhOXR7475hwmkkAWV70C/S1LMAaRZQ/Qvpnb6gL6
	 30MsZFKfIgw71uwHXQcMvAwBz7DCXIxJJkArSKRmcTexM9oZA09Fw4eS0MSzz3CQyI
	 0ba0w57UAVN4Z2JHZfUAkhrAEGuyH9m+57OJQuyekF0AAzYFbC4d8sgX/oq1Fdvuao
	 5Uch0HdTSHHH3s7vO/CLRulnpA9q9JhLK+aW2hyfWXELh9yFMAl3YM1+IdBeQAtCEU
	 0gPsgiEZxlJZdBf1SJeTcAEA6Ydosgsb3LvPKhHkAbtAgHa8JMXfyBL1WwCn9syLaz
	 xRulrJ26F+f7Q==
Date: Fri, 24 Apr 2026 10:48:44 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Mahesh Vaidya <mahesh.vaidya@altera.com>
Cc: joyce.ooi@intel.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
	mani@kernel.org, robh@kernel.org, bhelgaas@google.com,
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	subhransu.sekhar.prusty@altera.com, dinguyen@kernel.org
Subject: Re: [PATCH 3/3] PCI: altera: add Agilex 5 support
Message-ID: <20260424154844.GA8514@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260424094913.522123-4-mahesh.vaidya@altera.com>
X-Rspamd-Queue-Id: 63054460FBD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-290108-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[helgaas@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]

Adjust subject lines of both patches to match previous style
(capitalize first word, e.g.,

  PCI: altera: Add ...

On Fri, Apr 24, 2026 at 02:49:13AM -0700, Mahesh Vaidya wrote:
> Add PCIe root port controller support for the Agilex 5 (V4) family
> of SoC FPGAs.

> +++ b/drivers/pci/controller/pcie-altera.c
> @@ -12,6 +12,8 @@
>  #include <linux/irqchip/chained_irq.h>
>  #include <linux/irqdomain.h>
>  #include <linux/init.h>
> +#include <linux/bitfield.h>
> +#include <linux/iopoll.h>

Alphabetize these to match existing style.

> +static void aglx5_isr(struct irq_desc *desc)
> +{
> +	struct irq_chip *chip = irq_desc_get_chip(desc);
> +	struct altera_pcie *pcie;
> +	struct device *dev;
> +	u32 status = 0;
> +	int ret;
> +
> +	chained_irq_enter(chip, desc);
> +	pcie = irq_desc_get_handler_data(desc);
> +	dev = &pcie->pdev->dev;
> +
> +	ret = aglx5_indirect_readl(pcie, pcie->pcie_data->port_irq_status_offset, &status);

Existing code fits in 80 columns, would be nice if this and a few more
below did too.

