Return-Path: <devicetree+bounces-325176-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QQYiB7NSVGqqkgMAu9opvQ
	(envelope-from <devicetree+bounces-325176-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 04:51:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AC990746CDB
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 04:51:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VcPd46Sb;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325176-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325176-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B700C301DBB9
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 02:47:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3427D2C11F3;
	Mon, 13 Jul 2026 02:47:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111B11D89EF;
	Mon, 13 Jul 2026 02:47:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783910849; cv=none; b=Exdjv1rZ5DClwJ+QjKRCiXEpPJfFoFdz/hyUxKlfPopj52YX52NoLOJgLuZkymPE2YxLYJ1uGI2GTgW6B6brqoZlVQiyMujloJYDgXDuxhwUJzPwkKnmriUG37f5tKpNKLELkaA2I6q9PwtKNOd8yk0Qq1WusQryIKvzEdMSwYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783910849; c=relaxed/simple;
	bh=BAUQ6r4R5DOKRofTA390A+7dCpO8yh8bBvFqVyJSkOc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=bJgcIKLZnsMrtk4xaAUdfhuFL0NHPLME7N444OTr4hA3f4RE8B+7BAfxPWC6BByGINx8UTyo5jqXJ7tBmAmkJ3jOe314lJKuAK1LKivZ6QfX68pa6f1bGipJz75jBbFD9FesMdeD4k61rTFMXXiZSnT63aiqcU8r/XvWYdrGPts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VcPd46Sb; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E202D1F000E9;
	Mon, 13 Jul 2026 02:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783910848;
	bh=YC2TrYx1nkj0ciYkMUu+1BFe+T8B1yrLZ+Dbt2cU0vA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VcPd46SbfFYiZoXpJViUKv0I8xJxvRvNlt7wk42yUnTvGqhx/y0fwlQCNHmiUZsc3
	 eh/kKJZi62mNHphP1yeUCmiCBd0fAR7+RhIDYbRpEYtuPIoQfCGUXGYsckoH4mSltp
	 l59tiR2a0PTXk42Q23lvIS6RzkFe3xVtBPuxpvNEw6bCgguZWFi71HSNpbxha5SX4g
	 ehxhcL4Cb4jx6kOWWvgfNIPnEpR/Vw+oyqvWTK/yU+k6wn02UqxLPiIV3kcC8BqDZr
	 IzyDdbb35fhdaIYoi/CL4kYYVWYS+hF4MA8djEbR+BMWY4rsxEiQFRs95uDJ1utKUp
	 i9fdPrPjNaxYw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V6 1/4] PCI: imx6: Move pci_pwrctrl_create_devices() to
 imx_pcie_probe()
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?U2hlcnJ5IFN1biAoT1NTKQ==?= <sherry.sun@oss.nxp.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, linux-pci@vger.kernel.org, Frank.Li@kernel.org, robh@kernel.org
In-Reply-To: <20260713023435.235765-2-sherry.sun@oss.nxp.com>
References: <20260713023435.235765-1-sherry.sun@oss.nxp.com>
 <20260713023435.235765-2-sherry.sun@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 02:47:26 +0000
Message-Id: <20260713024726.E202D1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	TO_EXCESS_BASE64(1.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-325176-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:sherry.sun@oss.nxp.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-pci@vger.kernel.org,m:Frank.Li@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid,nxp.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AC990746CDB

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The return value of `imx_pcie_host_init()` is ignored in `imx_add_=
pcie_ep()`, leading to potential kernel crashes on unpowered hardware acces=
s.
--

--- Patch [1]: [PATCH V6 1/4] PCI: imx6: Move pci_pwrctrl_create_devices() =
to imx_pcie_probe() ---
commit 4f9f6d6edaa61a5318865464b5da909ac26cfe6a
Author: Sherry Sun <sherry.sun@nxp.com>

PCI: imx6: Move pci_pwrctrl_create_devices() to imx_pcie_probe()

Previously, pci_pwrctrl_create_devices() was placed in imx_pcie_host_init(),
which caused it to be called multiple times across suspend/resume cycles.
This patch moves pci_pwrctrl_create_devices() to imx_pcie_probe() so that it
is only called once during probe.

> diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controll=
er/dwc/pci-imx6.c
> index f55a68f60eea9..92f8e4a299e88 100644
> --- a/drivers/pci/controller/dwc/pci-imx6.c
> +++ b/drivers/pci/controller/dwc/pci-imx6.c
[ ... ]
> @@ -1954,11 +1945,15 @@ static int imx_pcie_probe(struct platform_device =
*pdev)
>  	if (ret)
>  		return ret;
> =20
> +	ret =3D pci_pwrctrl_create_devices(dev);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "failed to create pwrctrl devices\n");
> +
>  	pci->use_parent_dt_ranges =3D true;
>  	if (imx_pcie->drvdata->mode =3D=3D DW_PCIE_EP_TYPE) {
>  		ret =3D imx_add_pcie_ep(imx_pcie, pdev);
>  		if (ret < 0)
> -			return ret;
> +			goto err_pwrctrl_destroy;

[Severity: High]
This is a pre-existing issue, but does imx_add_pcie_ep() need to check the
return value of imx_pcie_host_init() here?

Looking at imx_add_pcie_ep(), it calls imx_pcie_host_init(pp) but ignores
the integer error code it returns:

drivers/pci/controller/dwc/pci-imx6.c:imx_add_pcie_ep() {
    ...
    imx_pcie_host_init(pp);
    ep =3D &pci->ep;
    ep->ops =3D &pcie_ep_ops;
    ...
    ret =3D dw_pcie_ep_init(ep);
    if (ret) {
        dev_err(dev, "failed to initialize endpoint\n");
        return ret;
    }
    ...
}

If imx_pcie_host_init() fails to enable a clock or regulator, the hardware
is left unpowered and unclocked.

Since the function proceeds to call dw_pcie_ep_init() which reads and writes
to the controller's DBI registers, could this lead to a synchronous external
abort (bus error) and crash the entire system when it accesses the unclocked
peripheral registers?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713023435.2357=
65-1-sherry.sun@oss.nxp.com?part=3D1

