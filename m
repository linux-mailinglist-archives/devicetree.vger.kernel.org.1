Return-Path: <devicetree+bounces-321051-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WQk7ClWAS2rlSQEAu9opvQ
	(envelope-from <devicetree+bounces-321051-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 12:15:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id DC48570F016
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 12:15:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=nJgk3G6H;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321051-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-321051-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B6C91301746B
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 10:14:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22D4C370AE2;
	Mon,  6 Jul 2026 10:11:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F23144211B;
	Mon,  6 Jul 2026 10:11:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783332677; cv=none; b=O0pQHS03cWaYS7JEvFWIjqGBSlp5HVYKdTj6wU2vxOz0VUao3nUkM1mt14OBZNkwMz6n4P/M0HMBhKK0Tg5Sv9byDXdzlRZ9mjH9YtIIhuov13JxZjy9WMeap0pFQ2uonUl80bWRNrYQg0iPcucRau5meRGWR7DEIkHgRRuKD6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783332677; c=relaxed/simple;
	bh=XLJCpIqyZeJR3MaC+rGwOiu/ENSVIjHHPZxnvNPL0Qc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Sz0eueiKyCIrw2TvU7L9xAXSO2NEVK/vhBFRAGjAxpcposSBkzqk4U1utnN48HJTeFYokvwfEba7OUQ0EStOpM59J6TWI6Kc2fKj1U2JgCH+H/y04TqE9RQ2CXRdTWWuKsLeS8syADou9ZIVG77q4VDhnXpeOiNVJHisPnoAYbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJgk3G6H; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 129681F000E9;
	Mon,  6 Jul 2026 10:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783332675;
	bh=MgovdVc4mJn8kTmi6osOtTdAyAEgyLg4UqymjNiprtE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nJgk3G6HsqVGeTknuTvDyn72NCeKEyEOOLvXaR8FcRu+ms1rKjj2wXUOAYgVe0b+m
	 1y51wdj6PP1KorP/8rFd7ic+8ZDmzdlV9YScbLh9ssTttPW5aF39i/VdO/msD9FPwo
	 8h4/H9W18COj9m/KlhqrzkljI2D9S3VW588Nm41EvFoHYTHo6vz8BoiGITB8yU3LWf
	 22bL3U9bbql53twXhAz2CRuQHFHtrfhJnrfneYkhxy5R2d6csA2uY+hFbZL0qTGslx
	 Ijyiyt8K03ZvKHbgMyNhjG1WbjSCBp3TpyF4Z6bzt9X/ESjWrtnP89myIJ1M4Gia54
	 9m7QslAYyUSMw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/3] PCI: ultrarisc: get and enable DP1000 PCIe
 clocks
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jia Wang" <wangjia@ultrarisc.com>
Cc: linux-pci@vger.kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260706-ultrarisc-pci-clk-v2-2-2f3fb6fba66b@ultrarisc.com>
References: <20260706-ultrarisc-pci-clk-v2-0-2f3fb6fba66b@ultrarisc.com>
 <20260706-ultrarisc-pci-clk-v2-2-2f3fb6fba66b@ultrarisc.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 10:11:13 +0000
Message-Id: <20260706101114.129681F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-321051-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wangjia@ultrarisc.com,m:linux-pci@vger.kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DC48570F016

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Unconditional register access in suspend after a prior resume fail=
ure causes kernel panic.
--

commit 91b0a79d0e5b5b1e0d3c9731fd011273f668f0a9
Author: Jia Wang <wangjia@ultrarisc.com>

PCI: ultrarisc: get and enable DP1000 PCIe clocks

Add the required core, dbi, and aux clocks for the DP1000 PCIe
controller and enable them before initializing the DesignWare host.
Also manage the clocks across system suspend and resume.

> diff --git a/drivers/pci/controller/dwc/pcie-ultrarisc.c b/drivers/pci/co=
ntroller/dwc/pcie-ultrarisc.c
> index 6ee661ceff67a..6ed244770d538 100644
> --- a/drivers/pci/controller/dwc/pcie-ultrarisc.c
> +++ b/drivers/pci/controller/dwc/pcie-ultrarisc.c
[ ... ]
> @@ -135,14 +174,31 @@ static int ultrarisc_pcie_probe(struct platform_dev=
ice *pdev)
> =20
>  static int ultrarisc_pcie_suspend_noirq(struct device *dev)
>  {
> -	struct dw_pcie *pci =3D dev_get_drvdata(dev);
> +	struct ultrarisc_pcie *ultra =3D dev_get_drvdata(dev);
> +	struct dw_pcie *pci =3D &ultra->pci;
> +	int ret;
> +
> +	ret =3D dw_pcie_suspend_noirq(pci);

[Severity: High]
What happens here if a previous resume attempt failed to enable the clocks?

Looking at ultrarisc_pcie_resume_noirq() below, if clk_bulk_prepare_enable()
fails, the function returns an error while the clocks remain disabled and
pci->suspended remains true.

If the system then undergoes another suspend cycle, this function will call
dw_pcie_suspend_noirq(), which accesses hardware registers via
dw_pcie_link_up().

Since the clocks are disabled, could this register access cause a bus error
and subsequent kernel panic?

Should we check if the device is already suspended (or if the clocks are
already off) before calling dw_pcie_suspend_noirq()?

> +	if (ret)
> +		return ret;
> +
> +	if (pci->suspended)
> +		clk_bulk_disable_unprepare(ARRAY_SIZE(ultra->clks), ultra->clks);
> =20
> -	return dw_pcie_suspend_noirq(pci);
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
> =20
>  	return dw_pcie_resume_noirq(pci);
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706-ultrarisc-=
pci-clk-v2-0-2f3fb6fba66b@ultrarisc.com?part=3D2

