Return-Path: <devicetree+bounces-265885-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qOGVMI9Gk2l83AEAu9opvQ
	(envelope-from <devicetree+bounces-265885-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 17:32:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF7A14636B
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 17:32:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 51AE5303639E
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 16:25:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7D1633290B;
	Mon, 16 Feb 2026 16:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqG0+0JJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 829523328FB;
	Mon, 16 Feb 2026 16:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771259147; cv=none; b=IjexlOvrLyu+doGwIgxGdBAjv0IBK23PoTcZZl32x2y0kwgx/LjAaXeQ0uk4oS8xFFiY3gTiIG7qfZ2V1LxryOO0JlCm/EDs9Sf0DAErTTZmZIiFzI3qgZTwIll0tCXkrT6xz0vdk9XvRpRhn6fmRBEhOENypFOMbB5Tnx12pVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771259147; c=relaxed/simple;
	bh=1TdioR8FnQTdDm82rwBeRHYCvAui4kNi9uauXUkTD+M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iWqf3Vcn+lZAEYOiRe+pucfIowE6ijGNXpw2azKsDGnEVCA6fB6FUYPKgU+Px0AlpgEsbx4TvVj9hiNxe91+NNikU3/4SH+KjnczFdX68idStMSoxWL64vDSPSZcdl+NfoFd6p9qSZnaAWN3tk2nKzwyhRr7j0txkVpGqptFSto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqG0+0JJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0DE2C116C6;
	Mon, 16 Feb 2026 16:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771259147;
	bh=1TdioR8FnQTdDm82rwBeRHYCvAui4kNi9uauXUkTD+M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PqG0+0JJIHhN88iFpGAUKzkfebgoZc/5h4WeFN1JyACf0xTLktrs0xynTH6dIHJ7I
	 vgTlxuPl4lrK3dIU52n5LIzA4Stj9FhamImA2Y3HlAy59uvvMLL6AXmXRjBYGxQXxq
	 cYF66/QvXHMzprFWO3oeQ2d6c7/MDSZQEJ8Y0JZiFTBNSFO+NY26mon2CjCR8hEpuQ
	 pxKi95ECxvp3/Vg5ZCDIDqlxEKmk/m7cUpdb0zNftefmzDuKpWFdgEZUwhjFA8Ha1e
	 KASyaP9QtMhMMSXHzjjzA0BaJ2SwFluujuHRk7yhx1wOa/lrrNtkqgeLIqUJE8FeKv
	 ToET9ctbzy70A==
Date: Mon, 16 Feb 2026 21:55:30 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Frank Li <Frank.li@nxp.com>
Cc: Sherry Sun <sherry.sun@nxp.com>, hongxing.zhu@nxp.com, 
	l.stach@pengutronix.de, bhelgaas@google.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	s.hauer@pengutronix.de, festevam@gmail.com, imx@lists.linux.dev, kernel@pengutronix.de, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V5 03/12] PCI: dwc: Allow external allocation of
 pci_host_bridge
Message-ID: <ojqdb7ysx2ktosahpb2mm4uog3oijc7ni7xnz63xjjvy2fdcyg@upmxt7oxv6sr>
References: <20260213040852.3340547-1-sherry.sun@nxp.com>
 <20260213040852.3340547-4-sherry.sun@nxp.com>
 <aY9DSPaTCMhcR8GC@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aY9DSPaTCMhcR8GC@lizhi-Precision-Tower-5810>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265885-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mani@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[nxp.com,pengutronix.de,google.com,kernel.org,gmail.com,lists.linux.dev,vger.kernel.org,lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1EF7A14636B
X-Rspamd-Action: no action

On Fri, Feb 13, 2026 at 10:29:12AM -0500, Frank Li wrote:
> On Fri, Feb 13, 2026 at 12:08:43PM +0800, Sherry Sun wrote:
> > Currently, dw_pcie_host_init() always allocates a new pci_host_bridge
> > structure internally using devm_pci_alloc_host_bridge(). This prevents
> > drivers from pre-allocating the bridge structure when needed.
> >
> > Modify dw_pcie_host_init() to check if pp->bridge is already set. If
> > set, use the pre-allocated bridge instead of allocating a new one. This
> > maintains backward compatibility with existing drivers that don't set
> > pp->bridge, while allowing new drivers to pre-allocate when needed.
> >
> > Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
> > ---
> >  drivers/pci/controller/dwc/pcie-designware-host.c | 12 ++++++++----
> >  1 file changed, 8 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> > index 6ae6189e9b8a..c2de9830e1e9 100644
> > --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> > +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> > @@ -575,11 +575,15 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
> >
> >  	raw_spin_lock_init(&pp->lock);
> >
> > -	bridge = devm_pci_alloc_host_bridge(dev, 0);
> > -	if (!bridge)
> > -		return -ENOMEM;
> > +	if (!pp->bridge) {
> > +		bridge = devm_pci_alloc_host_bridge(dev, 0);
> 
> It'd better call parse port here, or in devm_pci_alloc_host_bridge().
> 

Agree. We should try to avoid calling devm_pci_alloc_host_bridge() from glue
drivers.

- Mani

> If that, needn't check pp->bridge.
> 
> Frank
> > +		if (!bridge)
> > +			return -ENOMEM;
> >
> > -	pp->bridge = bridge;
> > +		pp->bridge = bridge;
> > +	} else {
> > +		bridge = pp->bridge;
> > +	}
> >
> >  	ret = dw_pcie_host_get_resources(pp);
> >  	if (ret)
> > --
> > 2.37.1
> >

-- 
மணிவண்ணன் சதாசிவம்

