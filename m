Return-Path: <devicetree+bounces-273849-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2DnOJGYIsWnhpwIAu9opvQ
	(envelope-from <devicetree+bounces-273849-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 07:15:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4DB25CB85
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 07:15:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AF54D301AABB
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 06:14:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D54C35CB6B;
	Wed, 11 Mar 2026 06:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ij3sxuVo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D7134753B;
	Wed, 11 Mar 2026 06:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773209697; cv=none; b=Q/hJED5lNUb67bRxAqmBL1G5wSkiIaeeQqW+96AgNApOLmGRvk0qjyTDz0P5y590YRcAoc4liQ42aMBHXdTkpR4ncsravBW7O12+OHXGMbgcQQ5bUDZC7he5MfeM9pxxcilhzTRszvDhU7vVphF3EPe2Zkx/MzO9V+pHhUXitcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773209697; c=relaxed/simple;
	bh=RNjHutLweJBv+ilIk4nPusI2G+/CE0p98vqK8iEvEiM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HWF6ZYwLz1bvb0GYXnFYih6CW+LIYxN6J/kGl3GgGMDOhpEyoZtl2uEhX5E8gD+Y32/yoCM0M1HJQu+fQwYtVN/j74ESUtQ8td1s9S4uspz4sZmjU4XBzLbtvF/ILMrH1TRsaAPlnBRb2dZrXXsKiw5h/ml8YX1bUxhz3mT2ub0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ij3sxuVo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2EF93C4CEF7;
	Wed, 11 Mar 2026 06:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773209696;
	bh=RNjHutLweJBv+ilIk4nPusI2G+/CE0p98vqK8iEvEiM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ij3sxuVogS4Lx2wMQ6QOiLYgJj5FrxBhH+QUCNcpC+c8Iezhp+KNTwODSHeeWdzkl
	 A6EbhCQromXFNs4BMTb2JeUkj947ptR839TqAvw869DmorkSwcj2J9AMmBJPXba6q9
	 89z8tvZqcialaRBU+JiojyguYpfcezsHdL10FKMPlmw3qM3DX+60Q57gWEM0Qj8fQA
	 UzZ59tGTC5t8qBW9aOLch3DNf510YHS2iXInUIY/RRKmNEyRq7DNqZ9Lh1UD1dgp5W
	 77v9iY5d9I/svYoQtpX4GpUDWvvmEnu3dJdBWW6cFBkXcapGVSjJWEkxoiUX60aRQn
	 M5cw1EIeg0zyQ==
Date: Wed, 11 Mar 2026 11:44:41 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Min Lin <linmin@eswincomputing.com>
Cc: zhangsenchuan@eswincomputing.com, bhelgaas@google.com, 
	krzk+dt@kernel.org, conor+dt@kernel.org, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, robh@kernel.org, p.zabel@pengutronix.de, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	christian.bruel@foss.st.com, shradha.t@samsung.com, krishna.chundru@oss.qualcomm.com, 
	thippeswamy.havalige@amd.com, inochiama@gmail.com, Frank.li@nxp.com, ningyu@eswincomputing.com, 
	pinkesh.vaghela@einfochips.com, ouyanghui@eswincomputing.com
Subject: Re: [PATCH v11 2/2] PCI: eic7700: Add Eswin PCIe host controller
 driver
Message-ID: <twvubrxemm7nx2i5p65byehj7y2g43c5esq3go72t6qbsz7yal@dxwvslzvgdc5>
References: <20260227111536.1940-1-zhangsenchuan@eswincomputing.com>
 <20260227111808.1996-1-zhangsenchuan@eswincomputing.com>
 <jd4aszup2peetymesiltqghoptp2w4uuecrsdzkb2cl5vqqfot@m3vh6x4u5t6l>
 <57246067.3de3.19cbd03fc5f.Coremail.linmin@eswincomputing.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <57246067.3de3.19cbd03fc5f.Coremail.linmin@eswincomputing.com>
X-Rspamd-Queue-Id: 9A4DB25CB85
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273849-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[eswincomputing.com,google.com,kernel.org,pengutronix.de,vger.kernel.org,foss.st.com,samsung.com,oss.qualcomm.com,amd.com,gmail.com,nxp.com,einfochips.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mani@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Thu, Mar 05, 2026 at 04:01:20PM +0800, Min Lin wrote:
> Hi Mani,
> 
> Thanks for your kind suggestion and help.
> 
> 
> > -----Original Messages-----
> > From: "Manivannan Sadhasivam" <mani@kernel.org>
> > Send time:Thursday, 05/03/2026 14:07:31
> > To: zhangsenchuan@eswincomputing.com
> > Cc: bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org, robh@kernel.org, p.zabel@pengutronix.de, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, christian.bruel@foss.st.com, shradha.t@samsung.com, krishna.chundru@oss.qualcomm.com, thippeswamy.havalige@amd.com, inochiama@gmail.com, Frank.li@nxp.com, ningyu@eswincomputing.com, linmin@eswincomputing.com, pinkesh.vaghela@einfochips.com, ouyanghui@eswincomputing.com
> > Subject: Re: [PATCH v11 2/2] PCI: eic7700: Add Eswin PCIe host controller driver
> > 
> > On Fri, Feb 27, 2026 at 07:18:08PM +0800, zhangsenchuan@eswincomputing.com wrote:
> > > From: Senchuan Zhang <zhangsenchuan@eswincomputing.com>
> > > 
> > > Add driver for the Eswin EIC7700 PCIe host controller, which is based on
> > > the DesignWare PCIe core, IP revision 5.96a. The PCIe Gen.3 controller
> > > supports a data rate of 8 GT/s and 4 channels, support INTx and MSI
> > > interrupts.
> > > 
> > 
> > Is the driver going to work only for the PCIe RC IP in EIC7700 SoC or for the
> > upcoming Eswin SoCs as well? Just curious because, we don't name drivers based
> > on one SoC name, but by the vendor so that the driver (if compatible) can be
> > used across other SoCs from the vendor.
> > 
> > If it can work across other SoCs, then I can change 'eic7700' to 'eswin', where
> > applicable while applying.
> > 
> 
> This PCIe RC IP in EIC7700 will only be used for EIC7700 SoC. One thing for sure
> is our next SoC will use a higher IP revision of the DesignWare PCIe core.
> In the future, there is no doubt that the use of IP from other manufacturers may
> be considered.
> 
> Based on this, may I ask which name do you think is better, eic7700' or 'eswin'?
> 

I'd suggest going with just 'eswin'. If the future revisions come up with
non-dwc based IPs, we can name them appropriately.

> I found there is a commit on drivers/pci/controller/dwc/pcie-tegra194.c
> It added Tegra234 PCIe support in pcie-tegra194.c
> Is this naming approach no longer recommended?
> 

Yes, that predates my time with host controller drivers. I strongly suggest
naming the drivers based on vendors or family to avoid creating an impression
that the driver only supports one SoC version.

Since you agreed for renaming, I took the liberty to do the change myself and
applied the patches. I also added the maintainers entry. Please take a look at
the commits and confirm if everything is OK:
https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git/log/?h=controller/dwc-eswin

- Mani

-- 
மணிவண்ணன் சதாசிவம்

