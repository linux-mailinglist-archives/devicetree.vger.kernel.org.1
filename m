Return-Path: <devicetree+bounces-301465-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ILaHM6pOD2r7IwYAu9opvQ
	(envelope-from <devicetree+bounces-301465-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 20:27:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 738F65AB0BE
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 20:27:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2DE333008D44
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 18:27:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BCE13911B2;
	Thu, 21 May 2026 18:27:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7OMyqyr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDF4306742;
	Thu, 21 May 2026 18:27:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779388065; cv=none; b=k3l62aLBLxag2bcgXNbms05udl6PCZ3AVlWsEw57+3k/RZ9gnNNvXolAktI6sLgmzxLJtiR7UYwiyh3bdVqL5x/RcsQ0T79m/jPo3nl2Zni5cDMuD/ytBBx3qXZSUabUFuQ76aZDpv2450XNaAPbZAVg0/w/RJXBQSOBmSUQc5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779388065; c=relaxed/simple;
	bh=Vdg+ieQwOKmXpy7aKU49GLdR81cMZoxKAOCzRNZAzKo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hGfsYaEbMUoWjAmhXl+DzyAnmdr5CYgqQrxsWMcR58AhowHRxUJoW6H8gBOXpuiN80s5pboUb0lwDqxHEGWj5N49Xs3Zk1XnS/TdDGEX6ovFOpItqkWVm8kYmWDdC7rmKEiXIQ/+h1/kBk+woQ7v2IZtyEAtlyn1wkWUPFdjsp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7OMyqyr; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8E3E1F000E9;
	Thu, 21 May 2026 18:27:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779388059;
	bh=Wjtv3duC/6vjKFbaprcJUDyTJT1AtmFW2EbIS1W9hO4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=h7OMyqyrxKh09SAXlPClCTYQ6RHvqOaDlDoRUTunHDj5aBeNVnZx//2hxdIAs0e16
	 WVtQ7+IXjhuEGfia7VfhkV9rweCOj24cHOIw02VN1CbFGanjJCvxO/JmYCe0sPZnho
	 kBd5BXK9WhhHPHeOSAtZsCu6kNROzhn2g2yYUclG6Gp3iDpmqf1sm2B6qFll0LLMrl
	 Sllk59k6XYictSY88oGppIg7OPTKfkswvbJEjtvElK+Axp0VroH4P3NeIU1rZ1JnJm
	 DKzTAPRrI9RoBj4uioawQ/yJ/BCovRbI6dEMIeZ368I3bGOMgOGZFuzbQ4PageCE1l
	 yYSo+3yd36MBQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 3/3] PCI: mediatek: Add support for EcoNet EN7528 SoC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Caleb James DeLisle" <cjd@cjdns.fr>
Cc: conor+dt@kernel.org, robh@kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260521171951.1495781-4-cjd@cjdns.fr>
References: <20260521171951.1495781-4-cjd@cjdns.fr>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 May 2026 18:27:39 +0000
Message-Id: <20260521182739.A8E3E1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cjdns.fr:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-301465-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 738F65AB0BE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] The driver bypasses module export boundaries and locking encapsula=
tion by using IS_BUILTIN() to access unexported PCI core functions and lock=
s.
- [High] Retraining the PCIe link after `pci_host_probe()` causes the link =
to drop while endpoint drivers are actively probing and operating.
- [High] A failure to retrain one root port aborts the entire loop, leaving=
 subsequent ports stuck at Gen1.
--

commit c15a1642adf464e152e3330bafda659a6425825d
Author: Caleb James DeLisle <cjd@cjdns.fr>
Subject: PCI: mediatek: Add support for EcoNet EN7528 SoC

This commit adds support for the PCIe controller present on the EcoNet EN75=
28
and EN751221 SoCs. It includes a quirk to retrain the link to Gen2 after
startup, as some Gen2-capable ports initially start in Gen1 mode.

> diff --git a/drivers/pci/controller/pcie-mediatek.c b/drivers/pci/control=
ler/pcie-mediatek.c
> index c503fbd774d09..30f8070967b82 100644
> --- a/drivers/pci/controller/pcie-mediatek.c
> +++ b/drivers/pci/controller/pcie-mediatek.c
[ ... ]
> +static int mtk_pcie_retrain(struct device *dev, struct pci_host_bridge *=
host)
> +{
> +	struct pci_dev *rp;
> +	int ret =3D -ENOENT;
> +	u16 lnksta =3D 0;
> +	u32 speed;
> +
> +	/* Should already have been warned about during startup_port */
> +	if (!IS_BUILTIN(CONFIG_PCIE_MEDIATEK))
> +		return 0;
> +
> +	guard(rwsem_read)(&pci_bus_sem);

[Severity: High]
Does using IS_BUILTIN() to conditionally access internal locks like pci_bus=
_sem
and unexported functions bypass module export boundaries?

When compiled as a module, does this silently break functionality by
completely skipping the Gen2 link retraining and leaving the ports permanen=
tly
degraded to Gen1?

> +
> +	for_each_pci_bridge(rp, host->bus) {
> +		if (pci_pcie_type(rp) !=3D PCI_EXP_TYPE_ROOT_PORT)
> +			continue;
> +
> +#if IS_BUILTIN(CONFIG_PCIE_MEDIATEK)
> +		ret =3D pcie_retrain_link(rp, true);
> +#endif
> +
> +		if (ret)
> +			return dev_err_probe(&rp->dev, ret,
> +					     "failed to retrain port\n");

[Severity: High]
If pcie_retrain_link() fails for one root port, does returning immediately =
skip
retraining for all remaining root ports on the bus?

Since the caller explicitly ignores the return value of mtk_pcie_retrain(),
should this perhaps just log an error and continue to the next port instead?

> +
> +		pcie_capability_read_word(rp, PCI_EXP_LNKSTA, &lnksta);
> +		speed =3D lnksta & PCI_EXP_LNKSTA_CLS;
> +
> +		pci_info(rp, "link retrained, speed %s\n",
> +			 pci_speed_string(pcie_link_speed[speed]));
> +
> +	}
> +
> +	return 0;
> +}
[ ... ]
> @@ -1159,6 +1298,13 @@ static int mtk_pcie_probe(struct platform_device *=
pdev)
>  	if (err)
>  		goto put_resources;
> =20
> +	/*
> +	 * Ignore error because pci_host_probe() was already called, and in any
> +	 * case it is possible that the port will still work as Gen1.
> +	 */
> +	if (pcie->soc->quirks & MTK_PCIE_RETRAIN)
> +		mtk_pcie_retrain(dev, host);

[Severity: High]
Does retraining the link here cause it to drop while endpoint drivers are
already actively probing?

Because pci_host_probe() enumerates the bus and binds endpoint drivers,
taking the link down immediately after could cause concurrent MMIO or DMA
transactions to fail. Could this also result in endpoint drivers observing
incorrect Gen1 link speeds during their initialization?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260521171951.1495=
781-1-cjd@cjdns.fr?part=3D3

