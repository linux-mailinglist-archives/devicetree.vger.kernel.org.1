Return-Path: <devicetree+bounces-317306-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id A8akDN7vQmpNJAoAu9opvQ
	(envelope-from <devicetree+bounces-317306-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 00:21:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4F56DF059
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 00:21:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ccC3wqPh;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317306-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-317306-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8D2AF3013B4D
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 22:21:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 965FA385D7E;
	Mon, 29 Jun 2026 22:21:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B29E360745;
	Mon, 29 Jun 2026 22:21:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782771675; cv=none; b=QXdyueCe4FJjnkDCNxmfH8n9rtQmr7XQZpsg8YRth2YRpPiYRgdEB+ju9XmhUJ5R+4KkTV0EfxaLIfqZ3Lf+I37kRzCZiRfzyOc+fR7dy64mS59S85+xKY5btVAZEBLlB7BAM5ygky/U8//7u585TE92Gb0dFRCQqH1U26Vfy7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782771675; c=relaxed/simple;
	bh=vJnoCaWTPT5xd6uLm7HEfSvKlcGNu1JUa1Obj3dCiew=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=VfXphR0+n7BN6EeSbSKnt+4M50I6Xktat0s/miCR9sBc0eFFobpLHfSr9JCwNvlwy/rNwN1OqjC9j3vQclU3GiZ8leTXLuHxhSKymmVY7eaUi1K7nzIM1JylBQCtd8Fll4+KVFTR937HmX0KkJZBxlOpInPYKvGLgyKN/qwr7vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccC3wqPh; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 920291F000E9;
	Mon, 29 Jun 2026 22:21:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782771674;
	bh=gPtk+R7hLbrzKwryL4yoz52Zwx61GiteIgNbDnfqves=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ccC3wqPht1SR1YWYU88cksUS9ZANDqpn8YOeISu4nV+DDtmt8QDI6PDlPKfzlXsFc
	 S5hvfjFyNk0gqimLVXz9MWrKAx/pIJpoawzSlySQr4WN1T9bfCau/YlS1+rUoaWUBP
	 zs4lbsILAQ8d0Qg/A1hvrFQWDSxqjhgFFaRQanB40KKbyMZpEuN1zNEz1n0BtFMFvr
	 SdKt1WBXCZWQm4/Ji3Qg+MFZvlg7CKOs+Q0hDnjCCIT1qmCs/MehM5Nvzi2Kiy9p3r
	 I+i1WF04fvjAvkK5xaxDV4vsaplyMiJFI06GJC84X2rctSuWUMjDCloJi6rRKCzH4+
	 C9sGrIndaIkDw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 3/4] PCI: rzg3s-host: Prepare System Controller
 handling for multiple controllers
Reply-To: sashiko-reviews@lists.linux.dev
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: wsa+renesas@sang-engineering.com, robh@kernel.org, linux-pci@vger.kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260629220932.861445-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260629220932.861445-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20260629220932.861445-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 22:21:13 +0000
Message-Id: <20260629222113.920291F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-317306-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:prabhakar.csengg@gmail.com,m:wsa+renesas@sang-engineering.com,m:robh@kernel.org,m:linux-pci@vger.kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:prabhakarcsengg@gmail.com,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8D4F56DF059

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Failure to clear chained IRQ handlers in the error path leads to a=
 Use-After-Free of the `host` structure.
--

commit 9d15bfaf7ab0514922ec90d6892801c1f1eeb157
Author: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

PCI: rzg3s-host: Prepare System Controller handling for multiple controllers

This commit prepares the RZ/G3S PCIe driver to support multiple PCIe
controllers by extending the System Controller (SYSC) information storage.
It introduces an array of sysc_info structures indexed by a new controller
ID field. Existing single-controller SoCs remain functionally unchanged.

> diff --git a/drivers/pci/controller/pcie-rzg3s-host.c b/drivers/pci/contr=
oller/pcie-rzg3s-host.c
> index cca2617f29157..03d79e98c9c99 100644
> --- a/drivers/pci/controller/pcie-rzg3s-host.c
> +++ b/drivers/pci/controller/pcie-rzg3s-host.c
[ ... ]
> @@ -1699,7 +1713,7 @@ static int rzg3s_pcie_probe(struct platform_device =
*pdev)
>  		return -ENOMEM;
> =20
>  	sysc =3D host->sysc;
> -	sysc->info =3D &host->data->sysc_info;
> +	sysc->info =3D &host->data->sysc_info[host->controller_id];

[Severity: High]
This is a pre-existing issue, but I noticed a potential memory safety conce=
rn
in the error handling path of rzg3s_pcie_probe().

If probe fails later and executes the error path, it calls
rzg3s_pcie_teardown_irqdomain(). Looking at rzg3s_pcie_teardown_irqdomain(),
it executes:

    irq_domain_remove(host->intx_domain);

However, it does not appear to clear the chained interrupt handlers.

Because the host structure is allocated via devm_pci_alloc_host_bridge(),
it will be automatically freed when the probe fails.

Could this leave a dangling pointer in the parent interrupt controller,
resulting in a use-after-free if the hardware triggers
rzg3s_pcie_intx_irq_handler() after the teardown?

> =20
>  	host->axi =3D devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(host->axi))

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629220932.8614=
45-1-prabhakar.mahadev-lad.rj@bp.renesas.com?part=3D3

