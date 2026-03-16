Return-Path: <devicetree+bounces-275937-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CF9lFbabt2k+TgEAu9opvQ
	(envelope-from <devicetree+bounces-275937-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 06:57:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9FB294E87
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 06:57:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2B62F300E24E
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 05:57:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4717E33A704;
	Mon, 16 Mar 2026 05:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkoNH6xD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234C91F461D;
	Mon, 16 Mar 2026 05:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773640619; cv=none; b=kHdFr3ecfc/NcOWdpuSl1EPZFWL5WZ1FNpExH8U3OW6ZMsaRrx4+MelactWibBQZA1e/S9Y5/+Q7hhhz/vphHwk6CegaE3KADwbbVYRI8jTF3rRpgWWDhazX76prXrNkxEKU+gG6XAX45iZb8pVfoz/eu0h/zfjHuxRgZtI0LF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773640619; c=relaxed/simple;
	bh=SwzpCrbIkDioR1DKJbXddik0hn5OVTncX0rioRVyncQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fc2pJqM/QbFZJFqt4hl4DyeE6PQje8gb3VEUOpxly6EvDmYkYBixip3aVONyURALIImcPRsjn6stVgvbK8lvyKQ277xFS0K5gPZC80N43IUKbWCvAqED1E7suXu/sGrx3CjjXloANde8b+kTu5jvunlWYoGUEb4hxohy5BPf8eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkoNH6xD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EC19C2BC87;
	Mon, 16 Mar 2026 05:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773640618;
	bh=SwzpCrbIkDioR1DKJbXddik0hn5OVTncX0rioRVyncQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZkoNH6xDSyJwuB6aQ+JUOxk62iI7GZNJAuVtawOyb+u09qkWc7gFrZoQe+MG0eB1Y
	 jZg3tAt0oiNARCN7E+4SYySbDBI/RLwxIUSVOzK3VgUx7QLTPAMFcmkcLNyuhVw3+Y
	 A4aw1koC+uWBmBC2z2PRqPMoUYGjBR1+8GqNr/BZi0qc/i26YjDjcDcdDcH/xkBLo0
	 fHBGmYSFqqiirEnMrNuhlNX42SJv9wA7APd3eZfnsXbc7QnVTAaf8B1ro1lxY1yNbT
	 0HO/1spRN11nXNNkQk/6mz3D0qnV++qxnMtH3uAXXCXUWG5wpZP03++q+GeBRSpYe6
	 hEnpjfyeWUKNA==
Date: Mon, 16 Mar 2026 11:26:49 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sherry Sun <sherry.sun@nxp.com>
Cc: hongxing.zhu@nxp.com, l.stach@pengutronix.de, Frank.Li@nxp.com, 
	bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, 
	imx@lists.linux.dev, kernel@pengutronix.de, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V8 03/13] PCI: dwc: Parse Root Port nodes in
 dw_pcie_host_init()
Message-ID: <ay67y5hr7sn5zzugb4swkujao3bvz3puaee4bc6qqr67eyk74t@equoecxosaen>
References: <20260313020823.1592389-1-sherry.sun@nxp.com>
 <20260313020823.1592389-4-sherry.sun@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260313020823.1592389-4-sherry.sun@nxp.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275937-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[nxp.com,pengutronix.de,google.com,kernel.org,gmail.com,lists.linux.dev,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mani@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BB9FB294E87
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 10:08:13AM +0800, Sherry Sun wrote:
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
> index a74339982c24..9608f9fcd1b3 100644
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

Is there an incentive in the -ENOENT error code? Should the API just return 0 if
no ports are found?

- Mani

-- 
மணிவண்ணன் சதாசிவம்

