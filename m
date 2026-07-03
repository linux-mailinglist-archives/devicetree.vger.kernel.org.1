Return-Path: <devicetree+bounces-320173-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Z2ntL229R2r+eQAAu9opvQ
	(envelope-from <devicetree+bounces-320173-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:47:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A9B70309F
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:47:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ToUy7Syp;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320173-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320173-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BF5153053D23
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 13:43:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF9AB3C13EF;
	Fri,  3 Jul 2026 13:43:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93C81191F98
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 13:43:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783086215; cv=none; b=DlPXGdiX/cig3kXT488+PtzMonN3XSATXF73zIJRrLci0b7YKg1Hj4yR5WLP71GDjdpeNodLjc4MeHTb4QuWRyGLvHGLNc+rIqh4Vktzws1fyxmjEX8qmyk90bVisGrJAfQJQ00wOrcFaqi9i6jORv9xJTNDClIUK5aGHP2Rtfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783086215; c=relaxed/simple;
	bh=d0JLFa2Ec+SURSevaMQw1QzdqrZLDwwebYz9m/fwZ7I=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lFQmF4JCS5glnLWY0FfP+Gss4lDxMifa5teQW1jWxk2xSB5TX64lb7b2bwVU7nILunn9nnpADP7dxA0bgQREZZPqZCnSLq7iHcUrzEe6ye6M13xhlhqluthNqp86Wd+0N4nC1yYoxpsbcr3Y//wYcJS2o7kJrX62XIVo/2/7yR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToUy7Syp; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 323DD1F000E9;
	Fri,  3 Jul 2026 13:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783086214;
	bh=TD2UpW23hBw1CvBP2m6arEvDTMQCX1+4n5fNg3oRkG0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ToUy7SypfQtbILgg+D/t9ULNS3e1QPU8c4Z6/2TOXXybkYzgUO6WR/ZOi+jEf7A3s
	 9mHSmQ2EmasXuRK7I0R2+yrKDZ3rGagsEI0y2+h6lPY4z0Of6UQr+MElWCn+GHQ0O5
	 YhzdILf3lP4GzbNratsojNXSMQMMlVb0Wmm5tML3T2jqY7bFFQnI/DoBToWVO+38lv
	 OJFRsGSOaz/50dIY0XCBi70mJngnV6D+vhVIV5cdUOzVuzjSJJLgygp+lt5OIxFvuv
	 j4Ck23NTEIO92Lzshl0i6SiRHRQ0pvqD2l04vI4UPIHJTPHONlSLSyEP7uW1JK8Bf3
	 TNbVlYI5pwfEQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 07/12] soc: fsl: qe: Handle spurious interrupts
Reply-To: sashiko-reviews@lists.linux.dev
To: "Paul Louvel" <paul.louvel@bootlin.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260703-qe-pic-gpios-v1-7-6c3e706e27dc@bootlin.com>
References: <20260703-qe-pic-gpios-v1-0-6c3e706e27dc@bootlin.com>
 <20260703-qe-pic-gpios-v1-7-6c3e706e27dc@bootlin.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 13:43:33 +0000
Message-Id: <20260703134334.323DD1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320173-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:paul.louvel@bootlin.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,bootlin.com:email,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 34A9B70309F

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Incorrect hardware IRQ mapping due to an off-by-one error when dis=
patching cascade child interrupts, causing out-of-bounds domain access and =
an interrupt storm.
- [High] Calling handle_bad_irq() for spurious cascaded interrupts triggers=
 unconditional critical log spam.
--

commit d12d1fe8292a26f2c055e99fd4c7554f2334dbdf
Author: Paul Louvel <paul.louvel@bootlin.com>

soc: fsl: qe: Handle spurious interrupts

When no interrupt bits are set in the event register, this commit calls
handle_bad_irq() to account for the spurious interrupt before exiting the
cascade handler.

> diff --git a/drivers/soc/fsl/qe/qe_ports_ic.c b/drivers/soc/fsl/qe/qe_por=
ts_ic.c
> index 27b62f4e3afb1..c8b73b0aa2334 100644
> --- a/drivers/soc/fsl/qe/qe_ports_ic.c
> +++ b/drivers/soc/fsl/qe/qe_ports_ic.c
> @@ -77,9 +77,15 @@ static void qepic_cascade(struct irq_desc *desc)
>  	chained_irq_enter(chip, desc);
> =20
>  	event =3D in_be32(data->reg + CEPIER);
> +	if (!event) {
> +		handle_bad_irq(desc);

[Severity: High]
Does this introduction of handle_bad_irq() for spurious interrupts risk cau=
sing
a system hang?

Spurious interrupts can occur naturally under normal workloads due to timing
races or another handler clearing the event register.

When handle_bad_irq() is called, print_irq_desc() and ack_bad_irq() will ru=
n.
On PowerPC architectures, this executes an unconditional
printk(KERN_CRIT "unexpected IRQ trap..."), which could flood the console f=
rom
hard IRQ context and potentially hang the system due to serial console
spinlocks.

Should the cascade handler simply exit without error so the parent can be
safely unmasked?

> +		goto out;
> +	}
> +
>  	for_each_set_bit(bit, &event, 32)
>  		generic_handle_domain_irq(data->host, 32 - bit);

[Severity: High]
Can this hwirq calculation cause out-of-bounds domain access and an interru=
pt
storm?

The calculation 32 - bit maps 0-based bit indexes to a 1-to-32 hwirq range,
instead of the valid 0-to-31 range.

For example, if bit 0 is set, hwirq 32 is passed, and if bit 31 is set, hwi=
rq 1
is passed. Since the correct underlying hardware interrupt's handler and EOI
function are never invoked, its interrupt flag would remain asserted in the
hardware.

Will this result in an unrecoverable interrupt storm on the parent IRQ?

> =20
> +out:
>  	chained_irq_exit(chip, desc);
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703-qe-pic-gpi=
os-v1-0-6c3e706e27dc@bootlin.com?part=3D7

