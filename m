Return-Path: <devicetree+bounces-320168-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wDKQHY++R2pHegAAu9opvQ
	(envelope-from <devicetree+bounces-320168-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:52:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6284870313A
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:52:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IjGkwVEm;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320168-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320168-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 777643074E2F
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 13:39:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3124C37C916;
	Fri,  3 Jul 2026 13:37:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E6A21CC59
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 13:37:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783085841; cv=none; b=MCCdH38dUS0tqZbO5X4P+itlLGMMhKNHmKs+jPvK0srCkNDt7cqwFNH6uOR8cHbyEkdq54/i3C5vl1TMVYmz4NxKGkTGlE751pO3KnCZjNB/XcbOoMp+4CVeeBO+fNkS7LqtISKkMvBQBzhqbf0sZZqNeWBCTFYfNUNx9QZsVwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783085841; c=relaxed/simple;
	bh=8c04k3aH/EBIcfcZkh5zgjIRFujBuWvoSkYjVr1EG2I=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=N8H4ubZOQanINZFPmgMnhs1c+64/ArlErEYDnHfa8Tladw6GA0vGbTfieQb8TiAN7MGRVjTuov1Z/TDET2ApXQtnBAkbGipl0JZKC45zzqIRZzsVZ+/o7TIzHN4JagR+6ByNXAyiOR/zt9VUoSLYxEmAZmaWHDSS5yO4V6oh+jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjGkwVEm; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7ADCC1F000E9;
	Fri,  3 Jul 2026 13:37:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783085839;
	bh=yLa4Rz2Uzg6jwMfEkISucVeOTImn4JVgXgN4R14Bhp8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IjGkwVEm8M9ximN64UpVjLhAlNnKXNBX1zU3QZfYb5HFbggWoyw8WtQvbAiIn601n
	 /X79DiU5aIhsgJ5ruwtfD8iJG3ZEGGVnlTwQnP0tMcE6BjMA5gnuJzpoJad5OdHTO3
	 0mcLPzSWha/EP6vMKzRclVLEQp/91jztFVuMSmGatuHS3E/Ydb4cBhwRmgr8i2c4sG
	 nyp558CUVUOwjtG5Eorychz/1E0dgvhhHW78TjR5i1tM2n4RebagxEqMWmiMB3cBdV
	 gLcmtOwHbKOmW0Agg1jsD9fQbzhZt5vDhkydPQB0UfV7vTQR28IQVD4xfXhpIymcmY
	 GYzamint1V/EA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 06/12] soc: fsl: qe: Iterate over all pending interrupts
 in cascade handler
Reply-To: sashiko-reviews@lists.linux.dev
To: "Paul Louvel" <paul.louvel@bootlin.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260703-qe-pic-gpios-v1-6-6c3e706e27dc@bootlin.com>
References: <20260703-qe-pic-gpios-v1-0-6c3e706e27dc@bootlin.com>
 <20260703-qe-pic-gpios-v1-6-6c3e706e27dc@bootlin.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 13:37:17 +0000
Message-Id: <20260703133719.7ADCC1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320168-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:paul.louvel@bootlin.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6284870313A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Off-by-one error in hardware IRQ calculation causes out-of-bounds =
domain resolution and misrouted/dropped interrupts.
--

commit 151384fe21d3660403f9ea1eecce7c7057939a64
Author: Paul Louvel <paul.louvel@bootlin.com>

soc: fsl: qe: Iterate over all pending interrupts in cascade handler

This commit updates the chained interrupt handler for the QE PIC to process
all pending interrupts in a single run. It replaces a single-interrupt read
using ffs() with a loop over all set bits in the event register.

> diff --git a/drivers/soc/fsl/qe/qe_ports_ic.c b/drivers/soc/fsl/qe/qe_por=
ts_ic.c
> index 3bca116fd2f5e..27b62f4e3afb1 100644
> --- a/drivers/soc/fsl/qe/qe_ports_ic.c
> +++ b/drivers/soc/fsl/qe/qe_ports_ic.c
[ ... ]
> @@ -67,25 +68,17 @@ static struct irq_chip qepic =3D {
[ ... ]
> -static int qepic_get_irq(struct irq_desc *desc)
> -{
> -	struct qepic_data *data =3D irq_desc_get_handler_data(desc);
> -	u32 event =3D in_be32(data->reg + CEPIER);
> -
> -	if (!event)
> -		return -1;
> -
> -	return 32 - ffs(event);
> -}
> -
>  static void qepic_cascade(struct irq_desc *desc)
>  {
>  	struct qepic_data *data =3D irq_desc_get_handler_data(desc);
>  	struct irq_chip *chip =3D irq_desc_get_chip(desc);
> +	unsigned long event, bit;
> =20
>  	chained_irq_enter(chip, desc);
> =20
> -	generic_handle_domain_irq(data->host, qepic_get_irq(desc));
> +	event =3D in_be32(data->reg + CEPIER);
> +	for_each_set_bit(bit, &event, 32)
> +		generic_handle_domain_irq(data->host, 32 - bit);

[Severity: High]
Will this calculation map to the correct hardware IRQ?

The original qepic_get_irq() code used ffs(event), which is 1-indexed and
returns a value from 1 to 32. With for_each_set_bit(), the bit variable is
0-indexed and returns a value from 0 to 31.

Because bit is 0-indexed, if bit 0 is set, the new calculation evaluates to
32 - 0 =3D 32, which is out of bounds for the 0-31 hwirq range. All other m=
apped
interrupts appear to be shifted by +1.

Could this result in misrouted interrupts and leave the actual pending hard=
ware
interrupt unserviced? If the interrupt is not cleared, would it cause an
interrupt storm as soon as the parent IRQ handler exits and unmasks it?

Should this subtraction be 31 - bit instead?

> =20
>  	chained_irq_exit(chip, desc);
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703-qe-pic-gpi=
os-v1-0-6c3e706e27dc@bootlin.com?part=3D6

