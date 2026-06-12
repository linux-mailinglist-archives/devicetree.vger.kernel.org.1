Return-Path: <devicetree+bounces-310737-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VQN5MR24K2qZCwQAu9opvQ
	(envelope-from <devicetree+bounces-310737-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:41:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3B1677550
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:41:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IfF1Qlsg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310737-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310737-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8C34934EF2CB
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 07:35:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D84CD3DD866;
	Fri, 12 Jun 2026 07:35:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF1E3093DD;
	Fri, 12 Jun 2026 07:35:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781249704; cv=none; b=qrHW1GUfRnILztAMm2P4W93cfH+ZKDl2wRP/h1UcGEemSXmhkln4NofiatuZh4C8XUhhjqZgMUwuskXTRMu2dg1ZONWJ5FVuMa9b2ORcADw/nn0ixWG3Knull/gQDvb6sGjN7q26inrQ3Npjt9q5THHLizfsFU92D0QvKB7BJ58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781249704; c=relaxed/simple;
	bh=c3kL5s24IjZdqNAkEyQW8HyKyNN1XCWHZ6SiVE5iauw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=LTF4i9Ub40WdTPP90G2jtBLos7eCD5bhDmErDxQSVvl2kc9M3jLL3ghr/j6SHOSZlzO3GTbDdC7Y9snJv0h4cPqc1Mw/cAtwWHXWQxOCMBV5pTyEUYGyIZfQlu/7EocZX3WmY1mO+bOkI7S/V44YZoMUI8KdDQst2wmVKgjWPac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IfF1Qlsg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B73E1F000E9;
	Fri, 12 Jun 2026 07:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781249703;
	bh=PqFUaAzicDXnwo7BPdGxRkhbTJrXlB/E2E1lcj0+JVw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IfF1QlsgGQq1cn0kNxMyAFxZi1A8x2OF0eaeVdIWeaM67Y8NkMiHHRLG3AmLid3OM
	 kypCljJNN2flhxrOpjoZeqK5AKIqttVUBAjbqj1uLICUiTF08LU0Oz6I/PEKIf3yl0
	 FLjEOcfw5SDJzUBStpcjmPUpkWbmWmJCk0sgDFopEiBblToQ1x+Hx0KpTZh4Kq/wJR
	 /9BoYkS/+2KkLY8cfDSfNTOceYqOx5hlw7Ht2nCjospi6LwD3kfxyNeW27gyBL3fLr
	 XYOYi6iKwxj6cSjgWPAAUIJBtUD0hYf0A4TKG4rpao9tLsBh8AKMq6h2mKFJLNuwsH
	 tuG5cedAuMrcQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 7/9] Input: cap11xx - refactor code for better
 CAP1114 support.
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jun Yan" <jerrysteve1101@gmail.com>
Cc: dmitry.torokhov@gmail.com, linux-input@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260612072237.1177304-8-jerrysteve1101@gmail.com>
References: <20260612072237.1177304-8-jerrysteve1101@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 07:35:02 +0000
Message-Id: <20260612073503.1B73E1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jerrysteve1101@gmail.com,m:dmitry.torokhov@gmail.com,m:linux-input@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-310737-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1B3B1677550

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The input device is registered and exposed to userspace before its=
 threaded IRQ handler is requested, creating a race window where events cou=
ld be lost or unhandled.
--

commit d2a53f68ed5e5f2311cb5dfaea4bd95be2449ab4
Author: Jun Yan <jerrysteve1101@gmail.com>

Input: cap11xx - refactor code for better CAP1114 support.

Extend cap11xx_hw_model structure to support CAP1114 with
different register offsets and hardware characteristics.

> diff --git a/drivers/input/keyboard/cap11xx.c b/drivers/input/keyboard/ca=
p11xx.c
> index 75746a8a22332..d45bb231d7a1f 100644
> --- a/drivers/input/keyboard/cap11xx.c
> +++ b/drivers/input/keyboard/cap11xx.c
[ ... ]
> @@ -554,41 +564,64 @@ static int cap11xx_i2c_probe(struct i2c_client *i2c=
_client)
>  }

[Severity: High]
This isn't a bug introduced by this patch, but looking at cap11xx_i2c_probe=
(),
the input device is registered and exposed to userspace before its threaded
IRQ handler is requested:

	error =3D input_register_device(priv->idev);
	if (error)
		return error;

	error =3D devm_request_threaded_irq(dev, i2c_client->irq,
					  NULL, cap11xx_thread_func,
					  IRQF_ONESHOT, dev_name(dev), priv);

Since input_register_device() makes the device visible to userspace, proces=
ses
like udev can immediately open the device. This invokes cap11xx_input_open()
and wakes the hardware from deep sleep.

If a hardware interrupt occurs before devm_request_threaded_irq() registers
the handler, could this unhandled interrupt cause an interrupt storm? The
kernel might then disable the IRQ line ('nobody cared'), rendering the touch
controller permanently inoperable until the module is reloaded or the system
reboots.

Should the IRQ handler be requested before the device is registered?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612072237.1177=
304-1-jerrysteve1101@gmail.com?part=3D7

