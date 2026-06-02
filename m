Return-Path: <devicetree+bounces-305821-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gV62Dss4H2qYiwAAu9opvQ
	(envelope-from <devicetree+bounces-305821-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 22:10:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE99631A8F
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 22:10:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="nsN5D/l9";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305821-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305821-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F0863305FC0C
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 20:03:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D1B21F78E6;
	Tue,  2 Jun 2026 20:03:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260452F7EF3;
	Tue,  2 Jun 2026 20:03:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780430610; cv=none; b=eGlKG4Ntl/OC1+NRINR4jGZcBysLX02HUHwSrb7XcKRYoOlhHh3jby39fYXtyvaR1PPbMJIXVDmZlGxwdCC7LS4UXPIKoJtqhPRgBTHuuuFmzQLkcq22Nz2VYlhUqg+VVf6QrmPkLjgR9Q1qBthCBepy1eGBIbIh1TqDe1Nv+qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780430610; c=relaxed/simple;
	bh=2S7zYuZiSnRMdevwHwNSGBWVVVzl2lkrKrqhFLXzNfY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QWXDOnqYcfOgCgPLIgmGEmkl1p63lDCLcysr/J66qn2QmZthSd0OcFajFCFIh3wo5u/z+3LpnwJABvftDAGyh3iACxn0nGira7wLCwpkFtJ88RLpYFPFTmWyRXLo7rWqmFmijP+EG9as8JXhjrG5kc/UPCVaWPcHUgp8cwYIgO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsN5D/l9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 762B21F00893;
	Tue,  2 Jun 2026 20:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780430608;
	bh=B7KAa9FP34L6SmihAuP7NkokXs0YBAGkZg95xTzF05c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nsN5D/l9DE8gsw1NdvPpd+gpAcz2QHGfHxQS9H26qJ25FQzDuVjfthDLioJz7sjte
	 Dl1PiHBH7/wd+SLO8+zTDySkIeC6QOqX7EW29ICWphuaas/USezM3N2dNo2XXJuJ1e
	 QWYUwjsmpfciveUfbjVlyjBbIToAFiNyBnJWClHx9ezbFgVY0ixqfT1gRuM/67X5sf
	 4BjBg6gMaJnHzKSgvrOUx8XuyBFGXpTo9DqENW0o541MRMaMZCi+3CZ6KECv+KSoh/
	 r58bEfoxK5gjRHDnGWc9HIe19MvJDe7C33P/XvCTdSdrn4vREgHVLPXOZJxFCPTCDk
	 p0wEYJl/7AdWg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/4] PCI: rzg3s-host: Use shared reset controls for
 power domain resets
Reply-To: sashiko-reviews@lists.linux.dev
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: linux-pci@vger.kernel.org, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260602195019.1798126-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260602195019.1798126-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 02 Jun 2026 20:03:28 +0000
Message-Id: <20260602200328.762B21F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-305821-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:prabhakar.csengg@gmail.com,m:linux-pci@vger.kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:wsa+renesas@sang-engineering.com,m:prabhakarcsengg@gmail.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
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
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7CE99631A8F

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Chained IRQ handlers are not removed during probe failure or teard=
own, leading to a potential Use-After-Free.
--

commit 8cee5b223d5c91e47fe4df2561360a3e326a556f
Author: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

PCI: rzg3s-host: Use shared reset controls for power domain resets

This commit switches to shared reset controls for PCIe power resets to prep=
are
for RZ/V2H(P) support. Multiple PCIe controllers share the same reset line =
on
this platform, which requires shared ownership of the reset control.

> diff --git a/drivers/pci/controller/pcie-rzg3s-host.c b/drivers/pci/contr=
oller/pcie-rzg3s-host.c
> index d86e7516dcc29..a5192e4b58dfb 100644
> --- a/drivers/pci/controller/pcie-rzg3s-host.c
> +++ b/drivers/pci/controller/pcie-rzg3s-host.c
> @@ -1276,9 +1276,9 @@ static int rzg3s_pcie_resets_prepare_and_get(struct=
 rzg3s_pcie_host *host)
>  	for (i =3D 0; i < data->num_cfg_resets; i++)
>  		host->cfg_resets[i].id =3D data->cfg_resets[i];
> =20
> -	ret =3D devm_reset_control_bulk_get_exclusive(host->dev,
> -						    data->num_power_resets,
> -						    host->power_resets);
> +	ret =3D devm_reset_control_bulk_get_shared(host->dev,
> +						 data->num_power_resets,
> +						 host->power_resets);
>  	if (ret)
>  		return ret;
> =20

[Severity: High]
This is a pre-existing issue, but I noticed a potential use-after-free
with the chained IRQ handlers in this driver during probe failure or teardo=
wn.

In rzg3s_pcie_init_irqdomain(), chained handlers are installed for each INTx
interrupt:

drivers/pci/controller/pcie-rzg3s-host.c:rzg3s_pcie_init_irqdomain() {
	...
	for (i =3D 0; i < PCI_NUM_INTX; i++) {
		...
		irq =3D platform_get_irq_byname(pdev, irq_name);
		if (irq < 0)
			return dev_err_probe(dev, -EINVAL, ...);
	=09
		host->intx_irqs[i] =3D irq;
		irq_set_chained_handler_and_data(irq,
						 rzg3s_pcie_intx_irq_handler,
						 host);
	}
	...
}

If platform_get_irq_byname() fails on a subsequent loop iteration, the
function returns an error without unregistering the already installed
chained handlers.

Additionally, during teardown, rzg3s_pcie_teardown_irqdomain() does not
clear these handlers:

drivers/pci/controller/pcie-rzg3s-host.c:rzg3s_pcie_teardown_irqdomain() {
	if (IS_ENABLED(CONFIG_PCI_MSI))
		rzg3s_pcie_teardown_msi(host);

	irq_domain_remove(host->intx_domain);
}

Because chained handlers are not managed by devres and persist after the
driver unbinds, could an interrupt on these lines cause
rzg3s_pcie_intx_irq_handler() to dereference the freed host pointer?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260602195019.1798=
126-1-prabhakar.mahadev-lad.rj@bp.renesas.com?part=3D2

