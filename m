Return-Path: <devicetree+bounces-314872-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LTmJNM+aOmrGBQgAu9opvQ
	(envelope-from <devicetree+bounces-314872-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 16:40:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E4E6B7FAA
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 16:40:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=EObWDw4q;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314872-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314872-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EBBFC301112B
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 14:40:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DB0638D688;
	Tue, 23 Jun 2026 14:40:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76A1B31E84E
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 14:40:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782225613; cv=none; b=owf/W6nKGt4vyhgKdpBz3maLWarrnwW5ZXZbotBFtSZ/aThvyFU9IefFGPoVjdjVK5GZessK3CWs9XBpowRV3KPlRk2rDwO9d4FHBfYhJtA6XCuXmwD4JA9eA1AQqYG+XBFwiptCau0mcbcQ4jZ9rYvj/o4ekYg4KwgRqgh9+0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782225613; c=relaxed/simple;
	bh=ZRH1v71bw4sc5x5WP/NhswuEJeOoOH1TapywiKu8AbQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=oSvbO/VLd9sLho+96vBZy/BCp2d91vESniTQZo18VVry2TgjCvfQWI3aDFQho7C/dOGMJQzPAqWyJ75NH98uzKv7I+SCql2Grnis/R+/Cwd2fHRkuUefqJuuK4czAcV+CEKEJtLkBLKtHsO11x0UTczTx9nfJpzxKAr5szl3lCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EObWDw4q; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6B971F000E9;
	Tue, 23 Jun 2026 14:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782225612;
	bh=dfYWoy5I5yx/jXQPEARaq1u2FfBILHthfWDQJb6cpoY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EObWDw4qAE+uUduJE0tPSvbqx0UmqoKxcmyZE/pDnlYgopGB4U1KpHt9g8Jz3lPM0
	 +PpxxYukPE7rWGgNjqBd2izPN2jbFDXlpzQw06f/AiVzYLbWIxqpC0Sfyx/zHZ5x4o
	 gBjcAlJFckvwJMyo+Gj9/GT6mNyWksIOKcGrRrjJOqi25vlIl0OcfPdzoo8gDorw7A
	 /His8pIz9SEday68v29NQhJovOuFvQQlQgD4roF0npEbc4n5ZkBYSeNS1IuT1dyhX4
	 GzaP5WsI2Uuk8EtC4PYzrJnwBJznyud8lnlUiUvxQNoNltcaARdUBUY4Z3tFEvD5xK
	 O08fRb+y4/vQQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 5/7] soc: aspeed: add host-side PCIe BMC device
 driver
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?R3LDqWdvaXJlIExheWV0?= <gregoire.layet@9elements.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <8746971524bf4186c9a393dab637ad4e27ce4563.1782224059.git.gregoire.layet@9elements.com>
References: <cover.1782224059.git.gregoire.layet@9elements.com>
 <8746971524bf4186c9a393dab637ad4e27ce4563.1782224059.git.gregoire.layet@9elements.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jun 2026 14:40:11 +0000
Message-Id: <20260623144011.E6B971F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-314872-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:gregoire.layet@9elements.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,9elements.com:email,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 27E4E6B7FAA

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Modifying a shared static global array on IRQ allocation fallback =
permanently corrupts the driver state for all subsequent devices and create=
s a data race.
- [High] The driver mishandles `pci_alloc_irq_vectors()` return values, lea=
ding to silent probe successes with invalid IRQs or out-of-bounds vector ac=
cesses that trigger kernel warnings.
- [Medium] Truncation of a 64-bit PCI physical address due to storing it in=
 an `unsigned long` on 32-bit architectures.
--

commit 64de7243e0e8e8cd9ac72d04be5ef937e8143347
Author: Gr=C3=A9goire Layet <gregoire.layet@9elements.com>

soc: aspeed: add host-side PCIe BMC device driver

Add support for VUART over PCIe between BMC and host.
This configures the PCIe and sets up two 8250 compatible VUART ports.

> diff --git a/drivers/soc/aspeed/aspeed-host-bmc-dev.c b/drivers/soc/aspee=
d/aspeed-host-bmc-dev.c
> new file mode 100644
> index 0000000000000..3160b6aedb5b6
> --- /dev/null
> +++ b/drivers/soc/aspeed/aspeed-host-bmc-dev.c
[ ... ]
> +static int vuart_msi_index[2] =3D { 16, 17 };
> +static int vuart_port_addr[2] =3D {0x3f8, 0x2f8};
> +
> +struct aspeed_pci_bmc_dev {
> +	struct device *dev;
> +	kernel_ulong_t driver_data;
> +	int id;
> +
> +	unsigned long message_bar_base;

[Severity: Medium]
Does storing the BAR address in an unsigned long truncate 64-bit physical
addresses on 32-bit architectures with PAE/LPAE?

pci_resource_start() returns a resource_size_t, which could be 64-bit,
potentially leading to incorrect I/O memory mapping here.

> +
> +	struct uart_8250_port uart[2];
> +	int uart_line[2];
> +
> +	int *msi_idx_table;
> +};
> +
> +static void aspeed_pci_setup_irq_resource(struct pci_dev *pdev)
> +{
> +	struct aspeed_pci_bmc_dev *pci_bmc_dev =3D pci_get_drvdata(pdev);
> +
> +	pci_bmc_dev->msi_idx_table =3D vuart_msi_index;
> +
> +	if (pci_alloc_irq_vectors(pdev, 1, BMC_MULTI_MSI, PCI_IRQ_INTX | PCI_IR=
Q_MSI) <=3D 1)

[Severity: High]
Can this condition mishandle partial allocations and negative error codes?

If pci_alloc_irq_vectors() partially succeeds and returns a value between
2 and 16, the <=3D 1 check evaluates to false. This leaves the indices at 16
and 17, but pci_irq_vector() will later trigger a WARN_ON_ONCE out-of-bounds
check in the PCI core when it tries to access index 16.

Additionally, if it fails entirely and returns a negative error, the check
passes, but the probe doesn't abort. Does this result in silently registeri=
ng
the 8250 UART with an invalid IRQ?

> +		/* If pci_alloc fail, set all msi index to the first vector */
> +		memset(pci_bmc_dev->msi_idx_table, 0, sizeof(vuart_msi_index));

[Severity: High]
Does this memset corrupt the driver state for all subsequent instances?

Because pci_bmc_dev->msi_idx_table points directly to the static global arr=
ay
vuart_msi_index, writing zeroes here permanently overwrites the shared arra=
y.

If multiple ASPEED PCI devices are probed, or if the device is probed again
later, will the indices be permanently stuck at 0?

> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1782224059.gi=
t.gregoire.layet@9elements.com?part=3D5

