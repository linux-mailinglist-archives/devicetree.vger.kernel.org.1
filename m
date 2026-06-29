Return-Path: <devicetree+bounces-316659-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id t/12OzsMQmq4zQkAu9opvQ
	(envelope-from <devicetree+bounces-316659-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 08:10:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 498696D62E1
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 08:10:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316659-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-316659-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F3308300737D
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 06:10:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41E8D1367;
	Mon, 29 Jun 2026 06:10:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFD4175A84;
	Mon, 29 Jun 2026 06:09:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782713401; cv=none; b=mMq6mUczSwQXlmlhv2QAIsqhnYLww1ek4uAO06PpCv742pJBAGFoXlXTM5FevBXoD38+IPjYncvcL8CtzHTVyQmQrjfpUUUVQRLB9EQDQkB24JNiywz/ggdLj9PIk0ZQLHqXlmRsf3hPMf6AnT/7/Rm+bbEJ7z1rjwZGarEUxcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782713401; c=relaxed/simple;
	bh=u6f83vy7cN2Yo1aUHkTDotIKOJfW7xdFX1xt+Pvoj50=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=d8Y76H2AP/gQhwFmaf2DyUxVV26nVa09uN0asQh9ubZD7C9k3NUYoglXdYGA4QmWpEMO3a2/BK9ZMxzkylEeJGCbX0PK3xZ0c/obPAgivHF/VGa5JAANSN7NybSGLmWKz+MJjNJuJf8s0MYlEnR3xLPb1mHKb/eLEyWT8F+01k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A2201F000E9;
	Mon, 29 Jun 2026 06:09:59 +0000 (UTC)
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] PCI: ultrarisc: get and enable DP1000 PCIe clocks
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jia Wang via B4 Relay" <devnull+wangjia.ultrarisc.com@kernel.org>
Cc: conor+dt@kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260629-ultrarisc-pci-clk-v1-2-5ea3308fdab3@ultrarisc.com>
References: <20260629-ultrarisc-pci-clk-v1-0-5ea3308fdab3@ultrarisc.com>
 <20260629-ultrarisc-pci-clk-v1-2-5ea3308fdab3@ultrarisc.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 06:09:59 +0000
Message-Id: <20260629060959.7A2201F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-316659-lists,devicetree=lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ultrarisc.com:email,smtp.kernel.org:mid,sashiko.dev:url];
	FORGED_RECIPIENTS(0.00)[m:devnull+wangjia.ultrarisc.com@kernel.org,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,wangjia.ultrarisc.com,dt];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 498696D62E1

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] If dw_pcie_resume_noirq() fails, the driver disables the clocks, w=
hich will cause a bus fault and kernel crash on the next system suspend whe=
n the DWC core attempts to read the DBI registers.
--

commit 7bdde7bd97edc4ae25c337b51b52e18bb46e6424
Author: Jia Wang <wangjia@ultrarisc.com>

PCI: ultrarisc: get and enable DP1000 PCIe clocks

This commit adds the required core, dbi, and aux clocks for the DP1000 PCIe
controller and enables them before initializing the DesignWare host. It also
manages the clocks across system suspend and resume.

> diff --git a/drivers/pci/controller/dwc/pcie-ultrarisc.c b/drivers/pci/co=
ntroller/dwc/pcie-ultrarisc.c
> index 6ee661ceff67a..74010a86244e7 100644
> --- a/drivers/pci/controller/dwc/pcie-ultrarisc.c
> +++ b/drivers/pci/controller/dwc/pcie-ultrarisc.c
[ ... ]
> @@ -135,16 +174,37 @@ static int ultrarisc_pcie_probe(struct platform_dev=
ice *pdev)
[ ... ]
>  static int ultrarisc_pcie_suspend_noirq(struct device *dev)
>  {
> -	struct dw_pcie *pci =3D dev_get_drvdata(dev);
> +	struct ultrarisc_pcie *ultra =3D dev_get_drvdata(dev);
> +	struct dw_pcie *pci =3D &ultra->pci;
> +	int ret;
> +
> +	ret =3D dw_pcie_suspend_noirq(pci);
> +	if (ret)
> +		return ret;
> =20
> -	return dw_pcie_suspend_noirq(pci);
> +	if (pci->suspended)
> +		clk_bulk_disable_unprepare(ARRAY_SIZE(ultra->clks), ultra->clks);
> +
> +	return 0;
>  }
> =20
>  static int ultrarisc_pcie_resume_noirq(struct device *dev)
>  {
> -	struct dw_pcie *pci =3D dev_get_drvdata(dev);
> +	struct ultrarisc_pcie *ultra =3D dev_get_drvdata(dev);
> +	struct dw_pcie *pci =3D &ultra->pci;
> +	int ret;
> +
> +	if (pci->suspended) {
> +		ret =3D clk_bulk_prepare_enable(ARRAY_SIZE(ultra->clks), ultra->clks);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	ret =3D dw_pcie_resume_noirq(pci);
> +	if (ret && pci->suspended)
> +		clk_bulk_disable_unprepare(ARRAY_SIZE(ultra->clks), ultra->clks);

[Severity: High]
Will this cause a kernel crash on the next system suspend if
dw_pcie_resume_noirq() fails?

If dw_pcie_resume_noirq() fails (for example, due to a link training
timeout), it returns an error but leaves pci->suspended as true. This error
path then disables the clocks.

However, the PM core continues and marks the device as resumed. On the next
system suspend, ultrarisc_pcie_suspend_noirq() will unconditionally call
dw_pcie_suspend_noirq().

Since dw_pcie_suspend_noirq() accesses DBI registers by calling
dw_pcie_link_up(), and the clocks were left disabled, does this read
trigger a synchronous external abort and crash the kernel?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-ultrarisc-=
pci-clk-v1-0-5ea3308fdab3@ultrarisc.com?part=3D2

