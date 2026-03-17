Return-Path: <devicetree+bounces-276596-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKacFnUluWnnsgEAu9opvQ
	(envelope-from <devicetree+bounces-276596-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:57:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D22362A75CB
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:57:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9C0FE30A04C7
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:51:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9360B39F184;
	Tue, 17 Mar 2026 09:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ha8QE+Ud"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F14E39D6D9;
	Tue, 17 Mar 2026 09:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773741109; cv=none; b=OJauw4gxyzCTnZG3fzSmd2VeZ8uSfUXTPK4u+6k6fUC114BlcKs35d971pFzTcfOA4Uovoyu6mrPFgFeHdiF2YAMESVtNxr5VjTLHuU9ezFfG/M1JziYaqoH9F7klkPTnQuhb01kuoYJkojHFy9aSPBD/63FCZggVFd+zbvh+4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773741109; c=relaxed/simple;
	bh=W4rqPAGiPdWhHdqkaOUtyPkT2EFCuB+axFUZQ7OJ0ZE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UsboLDrsQQ9LZKwPu5g8bzvqGdx4XHQaHdAyEhBDXr1FhfGpCBVpNG4WniF/Qnp3eRzwjBUfQNONBRSF9aJekuRWmkxi/DdAVkNLEdL+Dee85pMdVZd0Tynk3ZKOgHMYAYhDtCgdVzWVaJB5eg8z+h/hO6gwyhDOROAzpSWyiLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ha8QE+Ud; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D22CC2BC9E;
	Tue, 17 Mar 2026 09:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773741109;
	bh=W4rqPAGiPdWhHdqkaOUtyPkT2EFCuB+axFUZQ7OJ0ZE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ha8QE+UdWSw8GUOLiNyX2cQ8Be5CWzNFqrVUYgj/Vs42nM5OOjjUYOne7ALhut8WH
	 hBbGciXNbDOsDYpPj4R20XKAqk8+Q38GXr5npNwCI8Cto+Aga64OYwXJD5Smww1v9i
	 cAZ//3XOFJdX7CV70sJAqs8W8DLlIy+3ejMZJfu3hNSuYGwrC3e79rqVBesxRyodCk
	 oTgxXLrx+ZV/WWJJ2vAPCbe7lyMJelaRM0I39m3jwtMPx1VTDSE9tG3E3r+2n6RgIt
	 Db77QMsVrbUvUZhvzhgqqGql9EPV5sMaONErtE5iB6vfb9i0KNo/OcMJnLLstW6KmI
	 gRRZ/UmNYd6eg==
Date: Tue, 17 Mar 2026 15:21:39 +0530
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
Subject: Re: [PATCH V8 02/13] PCI: host-generic: Add common helpers for
 parsing Root Port properties
Message-ID: <vixlrnt3a2mohavjbchth52sweq3syxlkps6dr45yj2uhkbgb5@kznmvy5kjygo>
References: <20260313020823.1592389-1-sherry.sun@nxp.com>
 <20260313020823.1592389-3-sherry.sun@nxp.com>
 <phrbp7ypfsilv75dh723l5hekjfm7hn7wetihibjqgix7czyyf@rq3sgaqsvu2s>
 <VI0PR04MB121147739ABAB0F3D5F402ED89241A@VI0PR04MB12114.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <VI0PR04MB121147739ABAB0F3D5F402ED89241A@VI0PR04MB12114.eurprd04.prod.outlook.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276596-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[nxp.com,pengutronix.de,google.com,kernel.org,gmail.com,lists.linux.dev,vger.kernel.org,lists.infradead.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mani@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D22362A75CB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 08:01:28AM +0000, Sherry Sun wrote:
> 
> > On Fri, Mar 13, 2026 at 10:08:12AM +0800, Sherry Sun wrote:
> > > Introduce generic helper functions to parse Root Port device tree
> > > nodes and extract common properties like reset GPIOs. This allows
> > > multiple PCI host controller drivers to share the same parsing logic.
> > >
> > > Define struct pci_host_port to hold common Root Port properties
> > > (currently only reset GPIO descriptor) and add
> > > pci_host_common_parse_ports() to parse Root Port nodes from device
> > tree.
> > >
> > > Also add the 'ports' list to struct pci_host_bridge for better
> > > maintain parsed Root Port information.
> > >
> > > Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
> > > ---
> > >  drivers/pci/controller/pci-host-common.c | 78
> > > ++++++++++++++++++++++++  drivers/pci/controller/pci-host-common.h |
> > 15 +++++
> > >  drivers/pci/probe.c                      |  1 +
> > >  include/linux/pci.h                      |  1 +
> > >  4 files changed, 95 insertions(+)
> > >
> > > diff --git a/drivers/pci/controller/pci-host-common.c
> > > b/drivers/pci/controller/pci-host-common.c
> > > index d6258c1cffe5..2f012cf80463 100644
> > > --- a/drivers/pci/controller/pci-host-common.c
> > > +++ b/drivers/pci/controller/pci-host-common.c
> > > @@ -9,6 +9,7 @@
> > >
> > >  #include <linux/kernel.h>
> > >  #include <linux/module.h>
> > > +#include <linux/gpio/consumer.h>
> > >  #include <linux/of.h>
> > >  #include <linux/of_address.h>
> > >  #include <linux/of_pci.h>
> > > @@ -17,6 +18,83 @@
> > >
> > >  #include "pci-host-common.h"
> > >
> > > +/**
> > > + * pci_host_common_delete_ports - Cleanup function for port list
> > > + * @data: Pointer to the port list head  */ static void
> > > +pci_host_common_delete_ports(void *data) {
> > > +	struct list_head *ports = data;
> > > +	struct pci_host_port *port, *tmp;
> > > +
> > > +	list_for_each_entry_safe(port, tmp, ports, list)
> > > +		list_del(&port->list);
> > > +}
> > > +
> > > +/**
> > > + * pci_host_common_parse_port - Parse a single Root Port node
> > > + * @dev: Device pointer
> > > + * @bridge: PCI host bridge
> > > + * @node: Device tree node of the Root Port
> > > + *
> > > + * Returns: 0 on success, negative error code on failure  */ static
> > > +int pci_host_common_parse_port(struct device *dev,
> > > +				      struct pci_host_bridge *bridge,
> > > +				      struct device_node *node)
> > > +{
> > > +	struct pci_host_port *port;
> > > +	struct gpio_desc *reset;
> > > +
> > > +	reset = devm_fwnode_gpiod_get(dev, of_fwnode_handle(node),
> > > +				      "reset", GPIOD_ASIS, "PERST#");
> > > +	if (IS_ERR(reset))
> > > +		return PTR_ERR(reset);
> > > +
> > > +	port = devm_kzalloc(dev, sizeof(*port), GFP_KERNEL);
> > > +	if (!port)
> > > +		return -ENOMEM;
> > > +
> > > +	port->reset = reset;
> > > +	INIT_LIST_HEAD(&port->list);
> > > +	list_add_tail(&port->list, &bridge->ports);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +/**
> > > + * pci_host_common_parse_ports - Parse Root Port nodes from device
> > > +tree
> > > + * @dev: Device pointer
> > > + * @bridge: PCI host bridge
> > > + *
> > > + * This function iterates through child nodes of the host bridge and
> > > +parses
> > > + * Root Port properties (currently only reset GPIO).
> > > + *
> > > + * Returns: 0 on success, -ENOENT if no ports found, other negative
> > > +error codes
> > > + * on failure
> > > + */
> > > +int pci_host_common_parse_ports(struct device *dev, struct
> > > +pci_host_bridge *bridge) {
> > > +	int ret = -ENOENT;
> > > +	int err;
> > > +
> > > +	for_each_available_child_of_node_scoped(dev->of_node, of_port) {
> > > +		if (!of_node_is_type(of_port, "pci"))
> > > +			continue;
> > > +		ret = pci_host_common_parse_port(dev, bridge, of_port);
> > > +		if (ret)
> > > +			return ret;
> > > +	}
> > > +
> > 
> > I think you should just do:
> > 
> > 	if (ret)
> > 		return ret;
> > 
> > and get rid of 'err'.
> 
> Hi Mani, do you mean the following method?
> 
> int pci_host_common_parse_ports(struct device *dev, struct pci_host_bridge *bridge)
> {
>     int ret = -ENOENT;
> 
>     for_each_available_child_of_node_scoped(dev->of_node, of_port) {
>         if (!of_node_is_type(of_port, "pci"))
>             continue;
>         ret = pci_host_common_parse_port(dev, bridge, of_port);
>         if (ret)
>             return ret;
>     }
> 
>     if (ret)
>         return ret;
> 
>     ret = devm_add_action_or_reset(dev, pci_host_common_delete_ports,
>                        &bridge->ports);

Here, you can do 'return devm_add_action_or_reset()'

- Mani

-- 
மணிவண்ணன் சதாசிவம்

