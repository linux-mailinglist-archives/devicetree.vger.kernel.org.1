Return-Path: <devicetree+bounces-307569-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id i+FQGXZxI2oNuAEAu9opvQ
	(envelope-from <devicetree+bounces-307569-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 03:01:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7970A64C108
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 03:01:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=imF50CW0;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307569-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-307569-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3BD0E301B330
	for <lists+devicetree@lfdr.de>; Sat,  6 Jun 2026 01:01:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE08423D7F4;
	Sat,  6 Jun 2026 01:01:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BD9F234994;
	Sat,  6 Jun 2026 01:01:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780707688; cv=none; b=MunP8gdKEfD8DlOzaOWsxmUVssfrGBIQ1QFoJsbMlX3cRKgdXls3pJF+1JF546r6QT+cquPTEDtBFRi9mkdy/H4zi84WxMMW3yjJXCwgjrMPOWQoHKbdKJ86Nk8C9FuV7CcJ0iv3uRWP77MN/ouvy9yP7WXE0hgiLY52BKxGBVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780707688; c=relaxed/simple;
	bh=V1KzJFEcnbwVL6q2o0gGXvKS+qYnCubIpWx7qFlctU4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Qk9Il/KuvQgkMHF5sSIOdJ59JN+exJuMPUCkSbWMo5RIWy0roUzIcnIF+gd6DXJgHAfdpwGGPNXlSy1YeeircBS9cIhn62YkG3J6h+VHJ3vqjyUR8v0fPVjoNOuyfQXK6QQqO+dTTI3t9U9TM4tOqilNRwv/e8ZZYcnOsYI2tQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imF50CW0; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1484A1F00899;
	Sat,  6 Jun 2026 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780707687;
	bh=6I/4FpwPpQ0csdu04ya3rx1sT88+Aeo67Yd/d83OPQo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=imF50CW06CSg1PQ1syu5S5xONwjljoabVrQITvibnOJfVPK4fIPT2cNT9iW+DWL4C
	 9/36uXW+ZjuMomtO8YLWesLfqkx9A5pXYI5TWvcB0TakZi1tLqmUHWAZ0I37odWXPu
	 +9RjjsLxey2LJGwzzk7z/HdH6gkDDswNkYU9fYRa0rdCTDiiV0piSTW2ZdjFDYmxa9
	 6cyLYlWe9DyAjRH9AJaIKH4PsTOr229aKS+rEj4/W7Uh94ZkxtlmpxT3wv+Iv/JXjU
	 4+FtkREdw/RDxh0M5BgfYLfoEuAEX125V0bJa05A9cSVIHJlXm+iXNJeN8OFTboz6y
	 7AUMMGhHiTaZg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v2 13/14] net: stmmac: tc956x: add
 TC956x/QPS615 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alex Elder" <elder@riscstar.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, bpf@vger.kernel.org
In-Reply-To: <20260605010022.968612-14-elder@riscstar.com>
References: <20260605010022.968612-14-elder@riscstar.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 06 Jun 2026 01:01:26 +0000
Message-Id: <20260606010127.1484A1F00899@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp,dgc_info.name:url];
	TAGGED_FROM(0.00)[bounces-307569-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:elder@riscstar.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:bpf@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7970A64C108

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Leaked IRQ mappings and potential Use-After-Free on the probe erro=
r path if IRQ mapping or resource initialization fails.
- [High] Uninitialized stack variables passed to `devm_irq_domain_instantia=
te()` can cause a kernel panic or memory corruption.
- [Low] Invalid Makefile rule referencing a non-existent Kconfig symbol and=
 missing file.
--

commit 55f951da9fbefea49a26410638dbb60af63d2658
Author: Daniel Thompson <daniel@riscstar.com>

net: stmmac: tc956x: add TC956x/QPS615 support

Toshiba TC956x is an Ethernet AVB/TSN bridge and is essentially a small
and highly-specialized SoC. This commit adds a driver for the eMAC/MSIGEN
combination found on these devices.

> diff --git a/drivers/net/ethernet/stmicro/stmmac/Makefile b/drivers/net/e=
thernet/stmicro/stmmac/Makefile
> index a1cea2f57252e..e8e7f95dbe3e8 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/Makefile
> +++ b/drivers/net/ethernet/stmicro/stmmac/Makefile
> @@ -51,4 +51,6 @@ obj-$(CONFIG_STMMAC_PCI)	+=3D stmmac-pci.o
>  obj-$(CONFIG_DWMAC_INTEL)	+=3D dwmac-intel.o
>  obj-$(CONFIG_DWMAC_LOONGSON)	+=3D dwmac-loongson.o
>  obj-$(CONFIG_DWMAC_MOTORCOMM)	+=3D dwmac-motorcomm.o
> +obj-$(CONFIG_TC956X_PCI)	+=3D tc956x-pci.o

[Severity: Low]
Is this line a leftover from a previous iteration? The correct Kconfig
symbol appears to be CONFIG_TOSHIBA_TC956X_PCI, and the source file
tc956x_pci.c was placed in drivers/misc/ rather than the stmmac directory.

> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-tc956x.c b/drivers=
/net/ethernet/stmicro/stmmac/dwmac-tc956x.c
> new file mode 100644
> index 0000000000000..c77585e4a50e6
> --- /dev/null
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-tc956x.c
[ ... ]
> +/* We have one IRQ chip instance with 25 IRQs in its domain */
> +static struct irq_domain *
> +tc956x_msigen_irq_domain_instantiate(struct tc956x_data *td)
> +{
> +	struct irq_domain_chip_generic_info dgc_info;
> +	struct irq_domain_info info;

[Severity: High]
Does this pass uninitialized stack variables to the core IRQ domain subsyst=
em?

These local variables are declared on the stack without zero-initialization.
Since only a subset of their fields are populated before passing them to
devm_irq_domain_instantiate(), fields like info.fwnode and info.parent could
contain arbitrary stack garbage.

If the core IRQ domain subsystem tries to dereference a garbage pointer in
info.fwnode, could it lead to memory corruption or a page fault during prob=
e?

> +
> +	dgc_info.name =3D devm_kasprintf(td->dev, GFP_KERNEL, "tc956x-msigen-%d=
",
> +				       td->auxbus_data->mac_id);
[ ... ]
> +	info.init =3D tc956x_msigen_irq_domain_init;
> +	info.exit =3D tc956x_msigen_irq_domain_exit;
> +
> +	return devm_irq_domain_instantiate(td->dev, &info);
> +}
[ ... ]
> +static int tc956x_stmmac_resources_init(struct tc956x_data *td)
> +{
> +	struct irq_domain *irq_domain =3D td->irq_domain;
> +	struct stmmac_resources *res =3D &td->res;
> +	u32 i;
> +
> +	res->irq =3D irq_create_mapping(irq_domain, HWIRQ_EVENT);
> +	if (!res->irq)
> +		return -EINVAL;
> +
> +	for (i =3D 0; i < td->plat->tx_queues_to_use; i++) {
> +		res->tx_irq[i] =3D irq_create_mapping(irq_domain, HWIRQ_TX0 + i);
> +		if (!res->tx_irq[i])
> +			return -EINVAL;

[Severity: High]
If irq_create_mapping() fails here or in the RX loop below, this returns
an error without unwinding previously successful mappings.=20

When the caller tc956x_dwmac_probe() encounters this error:

tc956x_dwmac_probe() {
    ...
	ret =3D tc956x_stmmac_resources_init(td);
	if (ret) {
		ret =3D dev_err_probe(dev, ret,
				    "failed to initialize stmmac resources\n");
		goto err_put_mdio;
	}
    ...
}

It jumps to err_put_mdio, bypassing tc956x_stmmac_resources_exit() entirely.

Since devres will automatically free the irq_domain on probe failure, will =
the
undisposed mappings cause a kernel warning and leave undisposed irq_desc
structures pointing to the freed domain, leading to a use-after-free?

> +	}
> +
> +	for (i =3D 0; i < td->plat->rx_queues_to_use; i++) {
> +		res->rx_irq[i] =3D irq_create_mapping(irq_domain, HWIRQ_RX0 + i);
> +		if (!res->rx_irq[i])
> +			return -EINVAL;
> +	}
> +
> +	res->addr =3D td->auxbus_data->emac;
> +
> +	return 0;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605010022.9686=
12-1-elder@riscstar.com?part=3D13

