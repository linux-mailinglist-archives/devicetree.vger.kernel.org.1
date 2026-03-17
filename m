Return-Path: <devicetree+bounces-276598-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GB/lBpsmuWm1sQEAu9opvQ
	(envelope-from <devicetree+bounces-276598-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 11:02:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 931B92A76CC
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 11:01:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E6E2A3050A37
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:58:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 578BF391500;
	Tue, 17 Mar 2026 09:58:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGrHGe6v"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BB635CB80;
	Tue, 17 Mar 2026 09:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773741508; cv=none; b=jd2ZcECJDggFC+EsjR3jRyP6RMUf8+DTQTonr2w51+nx7hl0BVrKfSAlu1WkQqUjgAdi3bEafYLOkbyZGjkfy49WSNyfAf3ll5nLJiZ+Vja7pfdVg0XiP9u4lvw8uWUZtDBheGTu2IHKlznjtVorK3TGGKTRt92qiDNtuHioDnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773741508; c=relaxed/simple;
	bh=rchBqbaOIKv5oV3MU7BS8XXeDEb35evaTjYmNTF+LAw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qde0FLFMfKPWrODtoXlWeTp3nvg350i5jh4+n1qT+0Ma4zagmj+7K4xVPTIkfJCc5+1syseqxH+1S0YE9DKr2WV4y79fR+tcpSku1de/Omyi7Cz2pprSvS1uYr2tGSwtQPyBG7RCMHFt4E7hodY7yI8k0qFVGyijOvHhldrDNFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGrHGe6v; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FA2CC4CEF7;
	Tue, 17 Mar 2026 09:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773741507;
	bh=rchBqbaOIKv5oV3MU7BS8XXeDEb35evaTjYmNTF+LAw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JGrHGe6vr+idGi9l2EdsRoQIuTJraMun6x4OV1mBRtJvS7IRHJruIFnlbvYi1W9Eq
	 ShdbAcxJFz5NHFUVm24V3XhElGwxX7FHWFpZGkzSpnZjApCqpB6sMyFEYziS6LhWX0
	 zPIcnEOtsUpSteOlR42LG2yUzfpr1vlW64ejsFBWUP62w37NmhJQMlCkOdBWmCaFM7
	 QFlKgGbfnSN88kzLQvm4zOzTRDktnLzsIw3HKphdHhhkJDOpvECboVDbqT9Pm3fxq/
	 i9QTgd8ldobadY/7S1GKB7VHqPFG/yRW/N6DA9z2xOBB8pFzPhxXYO/0y4IV8Bu+4w
	 I+TUEORAaE/wQ==
Date: Tue, 17 Mar 2026 15:28:18 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sherry Sun <sherry.sun@nxp.com>
Cc: Hongxing Zhu <hongxing.zhu@nxp.com>, 
	"l.stach@pengutronix.de" <l.stach@pengutronix.de>, Frank Li <frank.li@nxp.com>, 
	"bhelgaas@google.com" <bhelgaas@google.com>, "lpieralisi@kernel.org" <lpieralisi@kernel.org>, 
	"kwilczynski@kernel.org" <kwilczynski@kernel.org>, "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, 
	"imx@lists.linux.dev" <imx@lists.linux.dev>, "kernel@pengutronix.de" <kernel@pengutronix.de>, 
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH V8 03/13] PCI: dwc: Parse Root Port nodes in
 dw_pcie_host_init()
Message-ID: <dcl3bdljrdzgeaybrg3dc5uaxkebkjns7pajix6mxxftao5g4m@vm3ywyyp4ujh>
References: <20260313020823.1592389-1-sherry.sun@nxp.com>
 <20260313020823.1592389-4-sherry.sun@nxp.com>
 <ay67y5hr7sn5zzugb4swkujao3bvz3puaee4bc6qqr67eyk74t@equoecxosaen>
 <VI0PR04MB12114EC2939CCC6D0696685B49241A@VI0PR04MB12114.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <VI0PR04MB12114EC2939CCC6D0696685B49241A@VI0PR04MB12114.eurprd04.prod.outlook.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276598-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[nxp.com:query timed out];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_COUNT_THREE(0.00)[4];
	ASN_FAIL(0.00)[1.2.3.5.c.f.2.1.0.0.0.0.0.0.0.0.b.d.0.0.1.0.0.e.a.0.c.3.0.0.6.2.asn6.rspamd.com:query timed out];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mani@kernel.org,devicetree@vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,pengutronix.de,google.com,kernel.org,gmail.com,lists.linux.dev,vger.kernel.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[sherry.sun.nxp.com:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email]
X-Rspamd-Queue-Id: 931B92A76CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 09:04:51AM +0000, Sherry Sun wrote:
> > Subject: Re: [PATCH V8 03/13] PCI: dwc: Parse Root Port nodes in
> > dw_pcie_host_init()
> > 
> > On Fri, Mar 13, 2026 at 10:08:13AM +0800, Sherry Sun wrote:
> > > Add support for parsing Root Port child nodes in dw_pcie_host_init()
> > > using pci_host_common_parse_ports(). This allows DWC-based drivers to
> > > specify Root Port properties (like reset GPIOs) in individual Root
> > > Port nodes rather than in the host bridge node.
> > >
> > > Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
> > > ---
> > >  drivers/pci/controller/dwc/pcie-designware-host.c | 8 ++++++++
> > >  1 file changed, 8 insertions(+)
> > >
> > > diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c
> > > b/drivers/pci/controller/dwc/pcie-designware-host.c
> > > index a74339982c24..9608f9fcd1b3 100644
> > > --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> > > +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> > > @@ -20,6 +20,7 @@
> > >  #include <linux/platform_device.h>
> > >
> > >  #include "../../pci.h"
> > > +#include "../pci-host-common.h"
> > >  #include "pcie-designware.h"
> > >
> > >  static struct pci_ops dw_pcie_ops;
> > > @@ -581,6 +582,13 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
> > >
> > >  	pp->bridge = bridge;
> > >
> > > +	/* Parse Root Port nodes if present */
> > > +	ret = pci_host_common_parse_ports(dev, bridge);
> > > +	if (ret && ret != -ENOENT) {
> > 
> > Is there an incentive in the -ENOENT error code? Should the API just return 0
> > if no ports are found?
> > 
> 
> Hi Mani,
> 
> Since devm_fwnode_gpiod_get() is called within pci_host_common_parse_ports(),
> devm_fwnode_gpiod_get() will return -ENOENT if no GPIO found. That means we
> need to check and handle the -ENOENT error anyway, we can either handle it internally
> in pci_host_common_parse_ports() or in the upper caller. 
> 
> If we hide -ENOENT inside pci_host_common_parse_ports() and always return 0, we
> lose this distinction, the caller can no longer tell the difference between "not found" and
> "found and parsed successfully". This might be useful that different callers might want to
> handle differently.
> 
> The current pattern is also consistent with some other optional resource APIs in the
> kernel (e.g., devm_regulator_get_optional()), where -ENOENT is returned and the caller
> decides how to handle it.
> 

Sure. But since the current callers are not making use of it, I thought of just
returning 0. It fine with me to leave it as is.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

