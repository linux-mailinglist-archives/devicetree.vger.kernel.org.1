Return-Path: <devicetree+bounces-275592-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WAFdDd2utGmbrwAAu9opvQ
	(envelope-from <devicetree+bounces-275592-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 01:42:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BCD28B035
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 01:42:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2FED4301FB87
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 00:42:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E135F2741A0;
	Sat, 14 Mar 2026 00:42:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9OTGxea"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB90056472;
	Sat, 14 Mar 2026 00:42:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773448922; cv=none; b=D0EDXz57ITFYeb5YTVknFRzWmXN05P2y0PX5MVz91bZjeb4j/gxmEdDvSxl/ceEUFWD5G8OCzoWyaClqrbdvkAl2SwLY6e1ui2epBmUBa4wgqYz4foT44/EF5nCkYhrQZgbP02ozBKRpbgTa/Vr6CtBEMkPMySxZ+0hO7DRqqiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773448922; c=relaxed/simple;
	bh=NpIW6+avHUeuRL5rtNbePolkZmBWuaSfoHwrvmExauM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oxZmHXPnjy82FniUsjgeBEe7TeI25gyzObmSQziF8B7KHSZpOp4EXM9UMfJXl4FocoFEkp+OlF3OTBM73+lbDSQgX1KGya6xI8HOLvaR5VMOBwmCBILjYNM+ypiMC8/4SCO82IbdSWVK4S+IKutnmW5sR12Xd7RsHLBMIpiywd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9OTGxea; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CB58C19421;
	Sat, 14 Mar 2026 00:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773448922;
	bh=NpIW6+avHUeuRL5rtNbePolkZmBWuaSfoHwrvmExauM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k9OTGxeaHohHVeSl/HI1G5pG9InJARTa6fLCnM+HvoclYVbY0ghCbKLDj5ekxBYZY
	 Vl/c+R8DoIgII2TOasKBtXTERZ+yrZ+0oNSfSkWkRsDNTL0ZWtllbc89KL17swTP9E
	 IGS4nDsGOALcPexQkh37T36NZQqO/KLmM8+6wJ+1f8UZSWzV6nTfwlSwxUvC09FdoM
	 Lw6CRN1gOVQVJcUcK5bGHyywIYhRxY1U2fpqycrtOuk6R4p0PxFA5Xj/EtDCM64OxO
	 incLpA+kBb9eMP2d+zhriTP8uUOzrOe8e/WQhzAqaicWnN4EPASDVWPv7WzCZf9cBb
	 S6JOPOgC/NYGQ==
Date: Fri, 13 Mar 2026 19:42:01 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Richard Zhu <hongxing.zhu@nxp.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] dt-bindings: PCI: snps,dw-pcie: Drop deprecated
 reset-gpio
Message-ID: <20260314004201.GA3741015-robh@kernel.org>
References: <20260312184344.42337-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20260312184344.42337-4-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260312184344.42337-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,pengutronix.de,kernel.org,google.com,gmail.com,synopsys.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	TAGGED_FROM(0.00)[bounces-275592-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,nxp.com:email]
X-Rspamd-Queue-Id: C8BCD28B035
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 07:43:46PM +0100, Krzysztof Kozlowski wrote:
> GPIOs with "gpio" suffix were long time ago deprecated in favor of
> "gpios" and this particular property was documented explicitly as
> deprecated since commit 42694f9f6407 ("dt-bindings: PCI: add
> snps,dw-pcie.yaml") in 2021.
> 
> Linux kernel supports both variants for a long time, thus listing the
> deprecated one is redundant and instead legacy DTS should be updated.
> 
> Acked-by: Richard Zhu <hongxing.zhu@nxp.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---
> 
> I will fix DTS separately, so after applying this patch there will be
> bunch of dtbs_check warnings. That's expected and fine.

Not fine. I only want to see warnings decreasing.

The justification for dropping deprecated properties should be "there 
aren't any more known users (for some amount of time)".

Rob

