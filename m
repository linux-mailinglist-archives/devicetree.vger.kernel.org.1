Return-Path: <devicetree+bounces-308581-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wMN3MptwJ2pIwwIAu9opvQ
	(envelope-from <devicetree+bounces-308581-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 03:47:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2092B65BBED
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 03:47:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=PzIyHxFb;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308581-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308581-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EF40E3008798
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 01:46:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CC9E23507B;
	Tue,  9 Jun 2026 01:46:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5CD19E992
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 01:46:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780969573; cv=none; b=Pb0GsOuCzLn+BHLZCvm/zNEwrugsS52XmLOOGkVoqo8sXn8plAT7Ortr0BZuVzHL+mvVVJrZJ0wPeR2EdlmKz1/k4glfEAP3S6Rhc7EpEsB2cvy6UK40V6COxIRZhjGldgKcDni3bGG/HHcSsmCf6ppoAFBViaF8fVNKh7NoAV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780969573; c=relaxed/simple;
	bh=89Hypw7FFuvTIVQTg/MjyZRTAcpLQeEncGfhe+/kvwU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Ozw6JjNFg31XN0XkISL36cuOVSibvgAUybzv8BOv0uzku7N6Ug0dbj/u2br4G4PsVdPIYwOW0dFTFlYQHHXbQXhEIDdbKv2f2Kn9v9p3UXIq4okoIbvvZz7YdAmgkC2esMZTXiEyfL1HZ3ADSTgMWzt97/QdvdBKsfG3ZJDgKRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PzIyHxFb; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0AE71F00893;
	Tue,  9 Jun 2026 01:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780969572;
	bh=RGYFRZBm595P8mcG2gfKgy7K9HZZdIO51PGscrrB8Yg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PzIyHxFb4Bb0zgyZN+H9A4PdKT1EyWvfKdENFjFmPN8/9keDu3+7VnTBePm9TBm3G
	 jh/aYkdD2fyum4fB211vCFJ4OWLjVKiv/RBPk+EofRW3fTGrT4ST3zL99jL1Tvig3S
	 Um5zb7+Jw/Y5OV7ufASkj/VfB97HzU1sfYBObIOLmMI/abtjZWLAxNG2ce8jGA4U+X
	 iwccZlpG82um52vO6FjD8lalIevhEeEHzOny4IZXujCcjZV21xn6iIxaWACWz4HrSr
	 vfJuQNoIiYJlVcy6vsRfPVRRmGEcgcl5TCfh7JgXPbi0GCttpy+TBEsx7xgaab95WX
	 f3+xeeVt6Qxew==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 06/11] ASoC: renesas: fsi: Move fsi_clk_init()
Reply-To: sashiko-reviews@lists.linux.dev
To: phucduc.bui@gmail.com
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260609013107.5995-7-phucduc.bui@gmail.com>
References: <20260609013107.5995-7-phucduc.bui@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 01:46:11 +0000
Message-Id: <20260609014611.C0AE71F00893@smtp.kernel.org>
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
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-308581-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:phucduc.bui@gmail.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:wsa+renesas@sang-engineering.com,m:phucducbui@gmail.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2092B65BBED

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] A TOCTOU race condition in `fsi_stream_is_working()` allows concur=
rent stream shutdown, leading to hardware accesses while clocks are gated a=
nd NULL pointer dereferences.
--

commit 2a7ff11c2bbdedadae9c569f5a5fb36f784c525a
Author: bui duc phuc <phucduc.bui@gmail.com>

ASoC: renesas: fsi: Move fsi_clk_init()
   =20
Move fsi_clk_init() after set_rate() functions to prepare for subsequent
refactoring.

> diff --git a/sound/soc/renesas/fsi.c b/sound/soc/renesas/fsi.c
> index 3e3c6fd7c56b8..1df7dc0143630 100644
> --- a/sound/soc/renesas/fsi.c
> +++ b/sound/soc/renesas/fsi.c

[ ... ]

> @@ -1034,6 +970,70 @@ static int fsi_clk_set_rate_cpg(struct device *dev,
>  	return ret;
>  }
> =20
> +static int fsi_clk_init(struct device *dev,

[Severity: High]
This isn't a bug introduced by this patch, but while reviewing the clock
handling in this file, does fsi_stream_is_working() have a TOCTOU race
condition that allows concurrent stream shutdown?

It appears that fsi_stream_is_working() acquires and immediately releases
master->lock before returning a boolean. Concurrently, an ALSA
SNDRV_PCM_TRIGGER_STOP on another CPU can call fsi_stream_quit(), which
acquires the lock, sets io->substream =3D NULL, and releases it. This can be
followed by fsi_hw_shutdown() disabling the hardware clocks.

Because the lock is dropped in fsi_stream_is_working(), can an in-flight
fsi_interrupt() on CPU 0 evaluate the check as true, after which CPU 1
processes the STOP trigger, zeroes the substream pointer, and gates the
clocks?

CPU 0 could then proceed to access hardware registers while clocks are
disabled:

sound/soc/renesas/fsi.c:fsi_count_fifo_err() {
	if (!fsi_stream_is_working(fsi, &fsi->playback) &&
	    !fsi_stream_is_working(fsi, &fsi->capture))
		return;

	u32 ostatus =3D fsi_reg_read(fsi, DOFF_ST);
	...
}

Would this cause a system hang due to hardware access while clocks are
gated?

Additionally, in fsi_pio_transfer(), could this same TOCTOU race allow
execution to reach fsi_pio_get_area(), which unconditionally dereferences
io->substream->runtime?

sound/soc/renesas/fsi.c:fsi_pio_transfer() {
	if (!fsi_stream_is_working(fsi, io))
		return -EINVAL;

	buf =3D fsi_pio_get_area(fsi, io);
	...
}

sound/soc/renesas/fsi.c:fsi_pio_get_area() {
	struct snd_pcm_runtime *runtime =3D io->substream->runtime;

	return runtime->dma_area + ...
}

Could this result in a NULL pointer dereference if io->substream was
zeroed? This seems to be an issue that was only partially addressed by the
earlier commit "ASoC: renesas: fsi: Fix register access from in-flight IRQ
after shutdown".

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609013107.5995=
-1-phucduc.bui@gmail.com?part=3D6

