Return-Path: <devicetree+bounces-315871-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Cg/AC9bFPWqM6QgAu9opvQ
	(envelope-from <devicetree+bounces-315871-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 02:20:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ABAA6C9454
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 02:20:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Qv3z8m6Y;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315871-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-315871-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 54D7B3007204
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 00:20:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4261A23BF9F;
	Fri, 26 Jun 2026 00:20:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD44381AF;
	Fri, 26 Jun 2026 00:20:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782433231; cv=none; b=JrS275epT/H7gxgcPwfBVNr2iFLr3Vw4Qe2IPbxcRX/4ylos3ZTjrUl4Y2ELAulQg9fHVMEiPZ1pAitSIsURtJ8QR4szgEbka3aF8UtpRf0+MUtSzJsak65k4UA/EBFleU8NxvLXNHXzZvczHvNHgck/9y7PaSxFihRVmn9agbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782433231; c=relaxed/simple;
	bh=v5fr+vIiz8BjFMittK1+SrIQQMBoAxeRJLKkzPV0PTw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QotH84BTWlDLp4CYhYCMFOjFmwXL75Vmk4wqDwpn0WhmjlCy7lGm++ph4+gEINUXWYnsw2JijViDYDgHejqoa9tX3OeBRXK2opFFq6CNaA2Ep1OTBY5pF69ytVLIOSoo8jjDdauVihR74M0GfEX4W32R/Tb5KqGUOFvMYdePZZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qv3z8m6Y; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC9AD1F000E9;
	Fri, 26 Jun 2026 00:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782433230;
	bh=3WD32Qx1GuXwGLFqx6bAoZaoz6zR3H83iCclU4QE6V0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Qv3z8m6YUBjyq5P3l/1CXt5sfi8xu6hxnL/RKiIXI6c/yuogShbpBjva4mDeRo3ef
	 FpDTXGVkPLknQL/n7sAakriHgZxubnwDLvuXO8zMsKsoe69Kjp4czke1AwKlAsbiox
	 nO97ysx3m6E1KvJScm307K1cvSBmPpRyKPU3yS1GqgETGWznoFIrVgPLQW4gUTkvOr
	 zO03Z0rb+SnEM3bA1CfEjGcAGS3pnsWpBruC1nJcDOFSrqpfgTUeeQfbL4mdRAQjs5
	 AMA7hnndSKqm7EQ0tqQ/Nb8HsPyq/31ke4bR5+A9nBkdZJobqE8+q2R/8J9zOO9aeS
	 RdbIXdUPLY6ug==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/4] clk: en7523: add support for dedicated PCIe
 PERSTOUT reset
Reply-To: sashiko-reviews@lists.linux.dev
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260625215741.3253212-3-ansuelsmth@gmail.com>
References: <20260625215741.3253212-1-ansuelsmth@gmail.com>
 <20260625215741.3253212-3-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 Jun 2026 00:20:29 +0000
Message-Id: <20260626002029.AC9AD1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ansuelsmth@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-315871-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4ABAA6C9454

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:

New issues:
- [High] Data race between clock enable/disable and reset assert/deassert o=
n the shared PCIC register (0x88).
- [Medium] The reset status callback does not account for inverted reset lo=
gic, reporting incorrect status for PCIC resets.

Pre-existing issues:
- [High] Missing synchronization in the reset controller allows concurrent =
reset operations to corrupt shared reset registers.
- [High] The `en7581_pci_disable` function calls `usleep_range()`, sleeping=
 in an atomic context.
--

commit 82bdae998b98b49b0cf96f540c945b593f30a899
Author: Christian Marangi <ansuelsmth@gmail.com>

clk: en7523: add support for dedicated PCIe PERSTOUT reset

Add support for resetting the PCIe lines with the PERSTOUT reset. These
special reset are controlled by the PCIC register and are specific to each
of the 3 PCIe lines.

Notice that reset logic is inverted for these bit where 0 is assert and 1
deassert. This is intenrally handled in the reset function.

PCI enable/disable are updated to drop PERSTOUT bits in favor dedicated
reset handling.

> diff --git a/drivers/clk/clk-en7523.c b/drivers/clk/clk-en7523.c
> index 1ab0e2eca5d32..a33cf2e1b76f8 100644
> --- a/drivers/clk/clk-en7523.c
> +++ b/drivers/clk/clk-en7523.c
[ ... ]
> @@ -650,9 +654,7 @@ static void en7581_pci_disable(struct clk_hw *hw)
>  	void __iomem *np_base =3D cg->base;
>  	u32 val, mask;
> =20
> -	mask =3D REG_PCI_CONTROL_REFCLK_EN0 | REG_PCI_CONTROL_REFCLK_EN1 |
> -	       REG_PCI_CONTROL_PERSTOUT1 | REG_PCI_CONTROL_PERSTOUT2 |
> -	       REG_PCI_CONTROL_PERSTOUT;
> +	mask =3D REG_PCI_CONTROL_REFCLK_EN0 | REG_PCI_CONTROL_REFCLK_EN1;
>  	val =3D readl(np_base + REG_PCI_CONTROL);
>  	writel(val & ~mask, np_base + REG_PCI_CONTROL);
>  	usleep_range(1000, 2000);

[Severity: High]
This is a pre-existing issue, but the Common Clock Framework calls the
.disable callback with the enable_lock spinlock held and hardware interrupts
disabled.

Does calling usleep_range() here sleep in an atomic context and lead to a b=
ug?

[ ... ]
> @@ -754,14 +756,21 @@ static int en7523_reset_update(struct reset_control=
ler_dev *rcdev,
>  			       unsigned long id, bool assert)
>  {
>  	struct en_rst_data *rst_data =3D container_of(rcdev, struct en_rst_data=
, rcdev);
> -	void __iomem *addr =3D rst_data->base + rst_data->bank_ofs[id / RST_NR_=
PER_BANK];
> +	u32 offset =3D rst_data->bank_ofs[id / RST_NR_PER_BANK];
> +	void __iomem *addr =3D rst_data->base + offset;
> +	bool inverted =3D false;
>  	u32 val;
> =20
> +	/* For PCIC reset logic is inverted, 0:assert 1:deassert*/
> +	if (offset =3D=3D REG_NP_SCU_PCIC)
> +		inverted =3D true;

[Severity: Medium]
It appears en7523_reset_status() wasn't updated to handle the inverted logi=
c:

drivers/clk/clk-en7523.c:en7523_reset_status() {
    ...
    return !!(readl(addr) & BIT(id % RST_NR_PER_BANK));
}

Will callers of reset_control_status() receive incorrect status for these
resets, returning 0 for asserted and 1 for deasserted when querying PCIC
resets?

> +
>  	val =3D readl(addr);
> +	val &=3D ~BIT(id % RST_NR_PER_BANK);
>  	if (assert)
> -		val |=3D BIT(id % RST_NR_PER_BANK);
> +		val |=3D inverted ? 0 : BIT(id % RST_NR_PER_BANK);
>  	else
> -		val &=3D ~BIT(id % RST_NR_PER_BANK);
> +		val |=3D inverted ? BIT(id % RST_NR_PER_BANK) : 0;
>  	writel(val, addr);

[Severity: High]
This is a pre-existing issue, but multiple drivers could concurrently probe=
 or
change power states, causing their reset operations on the same register ba=
nk
to interleave.

Could this lockless read-modify-write operation allow concurrent reset
operations to corrupt the shared reset registers?

[Severity: High]
en7581_pci_enable() modifies REG_PCI_CONTROL using a lockless
read-modify-write:

drivers/clk/clk-en7523.c:en7581_pci_enable() {
    ...
	val =3D readl(np_base + REG_PCI_CONTROL);
	writel(val | mask, np_base + REG_PCI_CONTROL);
    ...
}

If REG_NP_SCU_PCIC and REG_PCI_CONTROL point to the same register, a
concurrent clk_enable() and reset_control_assert() could silently corrupt
each other's bits since they belong to different lock domains.

Will this read-modify-write race with the clock framework?

> =20
>  	return 0;
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260625215741.3253=
212-1-ansuelsmth@gmail.com?part=3D2

