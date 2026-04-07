Return-Path: <devicetree+bounces-285146-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJj4F8ep1GmkwAcAu9opvQ
	(envelope-from <devicetree+bounces-285146-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 08:52:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B7C3AA7DB
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 08:52:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 554453008C1E
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 06:52:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A32BC38C409;
	Tue,  7 Apr 2026 06:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JMiZJyBS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F3AE38C2C3;
	Tue,  7 Apr 2026 06:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775544772; cv=none; b=moeEZpdaIlHdujo9X6/IdPP+YrElN8i4mnWnEg9QmmvPn3oXaK6bvLKfgHyZXBZVBT1TIp/UB5IVgIMmYHlbTEu8D6EE8X1dj9bHPjEzmmxigNlZ/qfcehDj4HXkvhq7TMIccGXhydxN7wVWr5R4ZbInKwPE+qKk7Xv6SIIrS8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775544772; c=relaxed/simple;
	bh=WGsLWUaefXttIWa4xg//3ucHTQKXOeomFOP2gCuLPaQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fVrUx5+hMHtMaN7TvshdmKplEc0hdh7mWZjr/zHoOx6+h3zleKbHTvTo9Vo660j6EjhDD963VP20qPFpt3MMLx1DIHRVt0VyhmmpOFS56f/qvi+r023/u8dZXW4p9PHuwOWrwRve48gfl5k9ZMEWOAmTzdKgPVwnOzjCeEhfAKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JMiZJyBS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADC4FC19424;
	Tue,  7 Apr 2026 06:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775544772;
	bh=WGsLWUaefXttIWa4xg//3ucHTQKXOeomFOP2gCuLPaQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JMiZJyBS4mIHsbyctppDhmAKIiEAFEcyZzWgxNdB/JZgKoP9I6U0Z0gMuyODk/+0w
	 PJkA8c2thFkCppygUqBiD3WNPgwFWMWK+hSpvwCeR2/VSIZIrTfWurnRMHwap7A/9L
	 uPnBZHFMEbz6ZdDp18rxenqpokrVLSS1txIbHpwjFBzLLTeleOsTn1pfvib8/MO9o3
	 prj50U83P8JLIE+csPT/sFsyhuw2M7qOYO0dup5/FLdVOJJA8Q9Gx6P9uLukSI/rCt
	 eRq5/GdmHiadCfIenQawy4MHHPOHHUib1ZfCgf/J+2uv/51LwA1Gqg8QW5dUgBdhVU
	 wt9wjPX0hjMSw==
Date: Tue, 7 Apr 2026 12:22:42 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sherry Sun <sherry.sun@nxp.com>
Cc: "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	Frank Li <frank.li@nxp.com>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, 
	"kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, 
	"lpieralisi@kernel.org" <lpieralisi@kernel.org>, "kwilczynski@kernel.org" <kwilczynski@kernel.org>, 
	"bhelgaas@google.com" <bhelgaas@google.com>, Hongxing Zhu <hongxing.zhu@nxp.com>, 
	"l.stach@pengutronix.de" <l.stach@pengutronix.de>, "imx@lists.linux.dev" <imx@lists.linux.dev>, 
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH V10 03/13] PCI: dwc: Parse Root Port nodes in
 dw_pcie_host_init()
Message-ID: <gxqcmujdzlzcoawn4rkttasftuyusqtvycu7oagogxaw4yggeo@ww6rjdwbyj2w>
References: <20260402095107.205439-1-sherry.sun@nxp.com>
 <20260402095107.205439-4-sherry.sun@nxp.com>
 <xlsfwtcy3wl6nasmx2w2oys6u4bbnvh24qiwr4pf3v5uz523gz@qvhzqfcs5q2c>
 <VI0PR04MB121147E4D3F9FDC95391C1153925AA@VI0PR04MB12114.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <VI0PR04MB121147E4D3F9FDC95391C1153925AA@VI0PR04MB12114.eurprd04.prod.outlook.com>
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
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-285146-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,google.com,lists.linux.dev,vger.kernel.org,lists.infradead.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mani@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,nxp.com:email]
X-Rspamd-Queue-Id: E7B7C3AA7DB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 07, 2026 at 03:21:30AM +0000, Sherry Sun wrote:
> > On Thu, Apr 02, 2026 at 05:50:57PM +0800, Sherry Sun wrote:
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
> > > index da152c31bb2e..f6fca984fb34 100644
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
> > > +		dev_err(dev, "Failed to parse Root Port nodes: %d\n", ret);
> > > +		return ret;
> > 
> > Won't this change break drivers that parse Root Ports on their own? Either
> > you need to modify them also in this change or call this API from imx6 driver
> > and let other drivers switch to it in a phased manner.
> > 
> > I perfer the latter.
> 
> Hi Mani, sorry I didn't fully get your point here, there are no changes to this part
> V10, for drivers that parse Root Ports on their own, here pci_host_common_parse_ports()
> will return -ENOENT, so nothing break as we discussed this in V8
> https://lore.kernel.org/all/dcl3bdljrdzgeaybrg3dc5uaxkebkjns7pajix6mxxftao5g4m@vm3ywyyp4ujh/.
> 

So if this API gets called first, it will acquire PERST# from the Root Port node
and if the controller drivers try to do the same in their own parsing code,
PERST# request will return -EBUSY and the probe will fail.

On the other hand, if the controller drivers parse PERST# first, this API will
return -EBUSY and will result in probe failure.

Only way to fix this issue would be to call this API from imx6 driver for now
and start migrating other drivers later.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

