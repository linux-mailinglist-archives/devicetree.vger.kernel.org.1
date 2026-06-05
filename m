Return-Path: <devicetree+bounces-307436-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wyY0AF/QImrsdwEAu9opvQ
	(envelope-from <devicetree+bounces-307436-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 15:34:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E8B6488E7
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 15:34:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=nQ03DGO9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307436-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307436-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C6D77301BF7D
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 13:32:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 642C823E358;
	Fri,  5 Jun 2026 13:32:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D00E1EB1AA
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 13:32:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780666373; cv=none; b=GNevc1jC/Gk0AxH5erxR7gv+ekmSD6rC+cVqUwEg0lXrwfYAapIIJaVuUzNPkIMncr7dK7n4CeENsfOPD+W3q68a+iW5cV8XY9VNqWeEMN1DHqCEO46sdNijTqUk4GrTCzHWFkVAXekafEkR/AF4SrWaRBjYBLtBjXs/aWj91KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780666373; c=relaxed/simple;
	bh=y4UyHgL8uYHp6lQsJofrpUyLUrh94JNYk6G7H8G5GPs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=j6gzdH0RB6aBFNUkjz9eMvczS/h0OTVSpWO0jdyY4NzOVFBJ4Up1eb+/rdrlM313kkupF0BvrLD84u0Og6KR64tYMVwOfzJOZIQbe37PNm1ciqWA+V5Ad/860eewPdGPnNqqZkAvtWAKXj01vjcaDJXZ30yTeNmE4OwQY4uoUsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQ03DGO9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B50121F00893;
	Fri,  5 Jun 2026 13:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780666372;
	bh=L7FxRwOvsbBXNNR9+ucZyirewKSJ09X4RO3PruAVxCM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nQ03DGO9wtRd/q9Ao69L1qykFyrhyiFBEJxsTaX1jqS5swGypckgCMeMoBV/rK9li
	 pbUb80zMtnb0aKe+otkSq9MdBfO1AQHPUDM5L8lPduB+LJX+bd8sIB9fiW983pGY42
	 AAgIVOmZZi5iK+YBlJWtiVaA2zVnWk7bh4RDK9mnfLp6SpiGGO+SGheAY7rLl4OXUC
	 /cri/sdPVJNGKD6OuNvX15b/c3syk+WHHWUtokOq+ENemZv6AU8NxClkyEWEpn0ToY
	 01aV9CideecTKO0cjg8TSDPYOZ005G0qGyeZjpkCqJi6d29kd0QLAO7HghfbkYR6v6
	 fDci6DFZ+z1ww==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 06/10] ASoC: renesas: fsi: Move fsi_clk_init()
Reply-To: sashiko-reviews@lists.linux.dev
To: phucduc.bui@gmail.com
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, wsa+renesas@sang-engineering.com, robh@kernel.org
In-Reply-To: <20260605121955.105661-7-phucduc.bui@gmail.com>
References: <20260605121955.105661-7-phucduc.bui@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jun 2026 13:32:51 +0000
Message-Id: <20260605133251.B50121F00893@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307436-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_RECIPIENTS(0.00)[m:phucduc.bui@gmail.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:wsa+renesas@sang-engineering.com,m:robh@kernel.org,m:phucducbui@gmail.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 50E8B6488E7

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The newly introduced `fsi_stream_is_working()` function creates a =
Time-of-Check to Time-of-Use (TOCTOU) race condition because it drops the l=
ock before returning.
- [High] The patchset attempts to prevent system hangs from in-flight IRQs =
when clocks are disabled, but fails because the interrupt handler still unc=
onditionally accesses hardware registers before any stream status checks.
--

commit 9e7d9a809265c034ddb9794125d27b1e46ac61db
Author: bui duc phuc <phucduc.bui@gmail.com>

ASoC: renesas: fsi: Move fsi_clk_init()

This patch moves the fsi_clk_init() function after set_rate() functions to
prepare for subsequent refactoring.

> diff --git a/sound/soc/renesas/fsi.c b/sound/soc/renesas/fsi.c
> index 0f350bddeb1d5..43e6772c06d5d 100644
> --- a/sound/soc/renesas/fsi.c
> +++ b/sound/soc/renesas/fsi.c

[ ... ]

While reviewing this patch, I noticed a couple of pre-existing issues in
this file.

sound/soc/renesas/fsi.c:fsi_stream_is_working()
{
	struct fsi_master *master =3D fsi_get_master(fsi);

	guard(spinlock_irqsave)(&master->lock);

	return !!(io->substream && io->substream->runtime);
}

[Severity: High]
This isn't a bug introduced by this patch, but does this function introduce=
 a
Time-of-Check to Time-of-Use (TOCTOU) race condition?

The fsi_stream_is_working() function checks if io->substream is active
while holding master->lock, but immediately drops the lock using a scoped
guard before returning.

In the interrupt handler, fsi_count_fifo_err() and fsi_irq_clear_status()
call this function and proceed to read hardware registers without holding a=
ny
locks if it returns true:

sound/soc/renesas/fsi.c:fsi_count_fifo_err()
{
	if (!fsi_stream_is_working(fsi, &fsi->playback) &&
	    !fsi_stream_is_working(fsi, &fsi->capture))
		return;

	u32 ostatus =3D fsi_reg_read(fsi, DOFF_ST);
	...
}

If a concurrent SNDRV_PCM_TRIGGER_STOP on another CPU executes
fsi_hw_shutdown() (which disables the SPU clock) right after
fsi_stream_is_working() returns true but before the register accesses,
can this lead to a fatal system hang when the interrupt handler accesses
registers with the disabled clock?

[ ... ]

sound/soc/renesas/fsi.c:fsi_interrupt()
{
	struct fsi_master *master =3D data;
	u32 int_st =3D fsi_irq_get_status(master);

	/* clear irq status */
	fsi_master_mask_set(master, SOFT_RST, IR, 0);
	...
}

[Severity: High]
This isn't a bug introduced by this patch, but does the interrupt handler
unconditionally access hardware registers before any stream status checks?

The commit message for a previous patch claims that the IRQ handler will
return immediately if no streams are active. However, fsi_interrupt()
unconditionally calls fsi_irq_get_status() and fsi_master_mask_set() at
the very beginning of the function, before any stream checks are performed.

These functions read and write the INT_ST and SOFT_RST registers, which
sit behind the SPU bus. If an in-flight IRQ executes after the SPU clock has
been disabled, will these initial register accesses immediately hang the
system, completely bypassing the downstream fsi_stream_is_working() checks?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605121955.1056=
61-1-phucduc.bui@gmail.com?part=3D6

