Return-Path: <devicetree+bounces-317967-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jNnOJx/1Q2qCmAoAu9opvQ
	(envelope-from <devicetree+bounces-317967-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 18:55:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8987E6E6A9C
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 18:55:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=GamnOAMS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317967-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-317967-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 873D93006D6E
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 16:55:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7959B3D75C2;
	Tue, 30 Jun 2026 16:55:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095E23D1A98;
	Tue, 30 Jun 2026 16:55:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782838553; cv=none; b=ZzgY6JPW3tBR+L9Nz8V+t6pSMOJCyLKuNXe9U4tOejUYsbS/Wb8ZO3mlq5wwG8BVG6/wlshnawKlQGOQS5qH5mjmVEPGQgXnephdLS5nQIGFWEzbgOMk1feYLVNqYkOSGPtB4KmIEbF66xqLhM4d+toLFsHSmD4X7o6wCKxnOpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782838553; c=relaxed/simple;
	bh=fHlFHjU0c55Boz5pd8uRtO/qEV47L19UREnVVGrF9EI=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=k2NC9gjjQEpkx2Z+mDw866DudDOLmOiEbsUw/nBYoVikY5iYlwSArgEftTRlhrScSkAdpnr6DzcGFTIgy4yMtvbugByj7We2grDX1SAvSFwp1cf2HMkMNrHdDzILsoOcxnIipsjY/ECa+Hmso5zhcrQuLDnHO0r41f5ZHDDmylI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GamnOAMS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74EB61F000E9;
	Tue, 30 Jun 2026 16:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782838551;
	bh=8uS8oGbiqczIxMFIgdQAplGoTNGYPeylhRRrbx8HxkM=;
	h=Date:From:To:Cc:Subject:In-Reply-To;
	b=GamnOAMSy3laosM9nAyqWeifl2dU/D1Yzsa1HyjhgNsx7kolXwQbtmdmNQbhJIAxv
	 rAbZR3Pfh6Xw4IGps1x1lbZJdAlrSozsYDMKhmrxcjqamVpsMc7AVk8/VFDm1796jL
	 AVtSYbILWTTrBZJ7JikJJU91juT212RWGsiybarVwyIVNedZflCfMgkk8LAkDjrMvn
	 Qha/iWDjzFnsm9bggiIrtk0BBsDCVx0G56VgTAPFCyl/rX1Vh7C1AHM4WEIz1vEC3L
	 JQbI+UpJh3P1sxeV22vBm46xQsPnJ+3RSRCn4fPu8fiso1ngMRzrj4uKwf62+AQMlX
	 gWtqoyyCf/8nQ==
Date: Tue, 30 Jun 2026 11:55:50 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: wangjia@ultrarisc.com
Cc: Xincheng Zhang <zhangxincheng@ultrarisc.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] PCI: ultrarisc: get and enable DP1000 PCIe clocks
Message-ID: <20260630165550.GA131410@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260629-ultrarisc-pci-clk-v1-2-5ea3308fdab3@ultrarisc.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wangjia@ultrarisc.com,m:zhangxincheng@ultrarisc.com,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:robh@kernel.org,m:bhelgaas@google.com,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER(0.00)[helgaas@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-317967-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[helgaas@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,bhelgaas:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8987E6E6A9C

On Mon, Jun 29, 2026 at 01:59:51PM +0800, Jia Wang via B4 Relay wrote:
> From: Jia Wang <wangjia@ultrarisc.com>
> 
> Add the required core, dbi, and aux clocks for the DP1000 PCIe
> controller and enable them before initializing the DesignWare host.

> +static int ultrarisc_pcie_init_clks(struct ultrarisc_pcie *ultra)
> +{
> +	struct device *dev = ultra->pci.dev;
> +	int ret;
> +
> +	ultra->clks[0].id = "core";
> +	ultra->clks[1].id = "dbi";
> +	ultra->clks[2].id = "aux";
> +
> +	ret = devm_clk_bulk_get(dev, ARRAY_SIZE(ultra->clks), ultra->clks);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Failed to get clocks\n");

This would be the first use of devm_clk_bulk_get() in drivers/pci.
There are several users of devm_clk_bulk_get_all(), which looks pretty
similar.  Unless there's a specific reason to use devm_clk_bulk_get(),
could this use devm_clk_bulk_get_all() instead?

