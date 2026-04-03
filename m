Return-Path: <devicetree+bounces-284500-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WFIbNbjsz2lF1wYAu9opvQ
	(envelope-from <devicetree+bounces-284500-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Apr 2026 18:37:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F85739680B
	for <lists+devicetree@lfdr.de>; Fri, 03 Apr 2026 18:37:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 58A3E30B20EA
	for <lists+devicetree@lfdr.de>; Fri,  3 Apr 2026 16:21:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9D743C9EE6;
	Fri,  3 Apr 2026 16:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6Tghiy/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 960EF246BD5;
	Fri,  3 Apr 2026 16:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775233273; cv=none; b=oFpSxkAYfN9JxitdBOcXhG27614dmIJ1i6yLhEI7goQsjIdIjQOY+AX8TnAVUw7beXSntf6C9R4nQaVVD2vUWZ25Lu0uhyip8Lf9Oc/giVmuw+QUoUsZk00QhdrGcqK9dlPzhYsaCQsiKo1a5VKGfhOJoxsjioQn7wQr2MYX95A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775233273; c=relaxed/simple;
	bh=lUkTNzulDtlooVfgkDMb6h1qH+67dzoddlhqIdLFbiM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SM6RQM8hYGu0wy6XpI3tn9R6O4SB8RWAMG3yYteXS1wBO7PClaIsekTw7n92wEBlApHLd3pTScK9F7j26J9xrDpcvgwOMGs5fTL1rfrILU43dgqEtK08lM9kfj+CX3tJB2jEvhn9wILipcwuHBMs3txXJqocIbk9j7BuzCk33gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6Tghiy/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36CE5C4CEF7;
	Fri,  3 Apr 2026 16:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775233273;
	bh=lUkTNzulDtlooVfgkDMb6h1qH+67dzoddlhqIdLFbiM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C6Tghiy/QK+x9O7SpenV2rcmyZSQWQzhRs5PnFYR13Z9wnpj26EKTT+Y9ANcEQh9R
	 xyVdsxtd8w11c32zsZ74dVMAQBaayI5yq6qpRDarKvSU5IkgMCoqBgGAO9SVkiU3G0
	 j+HUBQ3hA/BHlvWb9UDK0USnPy3/YfpF7VxSSYhVMIzj1TUDIDF7rk340YdX/G96as
	 nNHcQhk4RfLpc95WhJ+emUKKtxjBZqBsRNTC6Ne0xhKDA6yJt/eT1+eOb+OAmO+8JS
	 4PeyKHJw/3R/rp/oNNbu1ZMhB5OdR/WpIJ3+B63FVTxiaUuoZ4U6myyjBocha5N2TU
	 At2UpudG9NEiQ==
Date: Fri, 3 Apr 2026 21:50:59 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sherry Sun <sherry.sun@nxp.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	Frank.Li@nxp.com, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, lpieralisi@kernel.org, kwilczynski@kernel.org, 
	bhelgaas@google.com, hongxing.zhu@nxp.com, l.stach@pengutronix.de, 
	imx@lists.linux.dev, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V10 03/13] PCI: dwc: Parse Root Port nodes in
 dw_pcie_host_init()
Message-ID: <xlsfwtcy3wl6nasmx2w2oys6u4bbnvh24qiwr4pf3v5uz523gz@qvhzqfcs5q2c>
References: <20260402095107.205439-1-sherry.sun@nxp.com>
 <20260402095107.205439-4-sherry.sun@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260402095107.205439-4-sherry.sun@nxp.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-284500-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,google.com,lists.linux.dev,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mani@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3F85739680B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 02, 2026 at 05:50:57PM +0800, Sherry Sun wrote:
> Add support for parsing Root Port child nodes in dw_pcie_host_init()
> using pci_host_common_parse_ports(). This allows DWC-based drivers to
> specify Root Port properties (like reset GPIOs) in individual Root Port
> nodes rather than in the host bridge node.
> 
> Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
> ---
>  drivers/pci/controller/dwc/pcie-designware-host.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index da152c31bb2e..f6fca984fb34 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -20,6 +20,7 @@
>  #include <linux/platform_device.h>
>  
>  #include "../../pci.h"
> +#include "../pci-host-common.h"
>  #include "pcie-designware.h"
>  
>  static struct pci_ops dw_pcie_ops;
> @@ -581,6 +582,13 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
>  
>  	pp->bridge = bridge;
>  
> +	/* Parse Root Port nodes if present */
> +	ret = pci_host_common_parse_ports(dev, bridge);
> +	if (ret && ret != -ENOENT) {
> +		dev_err(dev, "Failed to parse Root Port nodes: %d\n", ret);
> +		return ret;

Won't this change break drivers that parse Root Ports on their own? Either you
need to modify them also in this change or call this API from imx6 driver and
let other drivers switch to it in a phased manner.

I perfer the latter.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

