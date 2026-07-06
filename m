Return-Path: <devicetree+bounces-321047-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KTtwFfl/S2q2SQEAu9opvQ
	(envelope-from <devicetree+bounces-321047-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 12:14:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AD50C70EFAB
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 12:14:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="PD7GOF/G";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321047-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321047-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9719A3026AE8
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 10:13:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB33E395AFA;
	Mon,  6 Jul 2026 10:07:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAA0C414A20;
	Mon,  6 Jul 2026 10:07:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783332467; cv=none; b=V8KbvJvYMdI40tAZTey1Kn6gcbq4lxukEz7bmcCZh/G9UFqxdMgztLWXjv5QYMTl9fUraK4gt2wUAyjBXPxvohV4DHa49j7mQtRF4yZ0rHGWXsUqQQ4kxhjARH7OgDCuYYi7GxPFzrYQB4Z0fcxXIYDGirfIsfD3W+VBV1oGRJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783332467; c=relaxed/simple;
	bh=RXwotVSOBOVVPLWpJBEVkvD//ARG/Rkl0v7rpiHlU5g=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=fD76IWlNmba6bojOB6a/GAqUzFT9E9GgYNx1c8itYU+dYhU1t1yXflI+otu24WwAfBGm4t8phtCHo0ZXXZK0bW6xZlgenmQ/7IrS8u/zQvpMgQVCePVirhJYWZU0Zw6xfr7rY4FAKRHQria8i/Jjc1iODcTjHjaKSs963ipQLgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PD7GOF/G; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1673F1F000E9;
	Mon,  6 Jul 2026 10:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783332466;
	bh=uaMzdQqQ0jsFmyVFQRpXSI4JHyZWvSMVh2Ab6S0Xb2s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PD7GOF/GZZ83Yjaj0qtIyPAovYi7fKoms3cExAPxCd/bx7DBBHxoJTyVhrMrnJ5sp
	 RGuKXZ/s/X25ZpJc8dJs16Jruu+lt81FwxNAcl8P1twxG0XIu+7YHEwy8KLL26WHoW
	 jeFTT593v23Xs62wTkDaDn45VRadmkRBhkfA+tmg5/3Wpkthj09erCdelBf/Ww3FQ0
	 cGXhKO2exbxDTH7endpDkZUyreuSja90/uRSF699QnS+Ly2AoBfUY0O2uXxuL2bgWa
	 xIBxA5BnjMrn8FcBZHO1OcOQGz+EZpLbn9woJ2W69QL0Bcl0QC661uTA6ejr95jofF
	 WVwcMykUbuk2g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/3] PCI: ultrarisc: allow DP1000 driver to build as
 module
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jia Wang" <wangjia@ultrarisc.com>
Cc: linux-pci@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260706-ultrarisc-pci-clk-v2-3-2f3fb6fba66b@ultrarisc.com>
References: <20260706-ultrarisc-pci-clk-v2-0-2f3fb6fba66b@ultrarisc.com>
 <20260706-ultrarisc-pci-clk-v2-3-2f3fb6fba66b@ultrarisc.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 10:07:45 +0000
Message-Id: <20260706100746.1673F1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-321047-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,smtp.kernel.org:mid];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wangjia@ultrarisc.com,m:linux-pci@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AD50C70EFAB

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Missing `.remove` callback leaves the PCI root bus registered, cau=
sing a use-after-free on module unload.
--

commit 14ef8e08324f6393567996c3e1dc0b2cadbcfc0a
Author: Jia Wang <wangjia@ultrarisc.com>

PCI: ultrarisc: allow DP1000 driver to build as module

This commit changes the driver registration from builtin_platform_driver()
to module_platform_driver(). This allows the driver to be built and
dynamically loaded or unloaded as a kernel module.

> diff --git a/drivers/pci/controller/dwc/pcie-ultrarisc.c b/drivers/pci/co=
ntroller/dwc/pcie-ultrarisc.c
> --- a/drivers/pci/controller/dwc/pcie-ultrarisc.c
> +++ b/drivers/pci/controller/dwc/pcie-ultrarisc.c
> @@ -225,7 +225,7 @@ static struct platform_driver ultrarisc_pcie_driver =
=3D {
>  	},
>  	.probe =3D ultrarisc_pcie_probe,
>  };
> -builtin_platform_driver(ultrarisc_pcie_driver);
> +module_platform_driver(ultrarisc_pcie_driver);

[Severity: High]
By switching to module_platform_driver(), this driver can now be unloaded
dynamically. However, since ultrarisc_pcie_driver lacks a .remove callback,
will unloading the module leave the active PCI root bus, IRQ domains, and
child devices registered?

If devres automatically frees the struct ultrarisc_pcie memory and unmaps
MMIO registers on module unload while the PCI subsystem still retains
pointers to them, could this result in a use-after-free and kernel panic
during subsequent PCI config space accesses?

> =20
>  MODULE_DESCRIPTION("UltraRISC DP1000 DWC PCIe host controller");
>  MODULE_LICENSE("GPL");

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706-ultrarisc-=
pci-clk-v2-0-2f3fb6fba66b@ultrarisc.com?part=3D3

