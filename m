Return-Path: <devicetree+bounces-308580-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KtjtFfJvJ2rVwgIAu9opvQ
	(envelope-from <devicetree+bounces-308580-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 03:44:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D88965BBAC
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 03:44:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="maLp/36p";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308580-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-308580-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BA3CA301C923
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 01:44:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06F75346E75;
	Tue,  9 Jun 2026 01:44:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C243451B0
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 01:44:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780969446; cv=none; b=A7nY3TrhcmFG++UMOjCSckBnjYQ71UdLyKK5/u7OW6MMLvfsgApP8lC2QE50aYE7VW/my2E9upvVVL/lD3IPcD7s6fQteQbldGZtvOzm8fdx5xqd7/ssWX4ylK/MYngwktRMxixtoUiKfqDOgIh4rQUgEwbPE9YoM9F7CgF1mBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780969446; c=relaxed/simple;
	bh=CBMzw92xvpVRycu/da27dfSor6IxM2Il4GgeBRVlGOI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=CK5Eb9KhV69Y3tycRnoLSMuu4zNtEt3oIjgQsVEQBxlqnE1yXWZRIcJxJqMMHAxhPGcgvwz6Sn4+ccJ3XO14japM5R9rfQVQOmEx7bnU6u2IEXrlVLxXPJH6rPNuMJbO6Qeql6lSRRps86P99LFKUb2NuxwmIt4dLRiiZgzAkIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=maLp/36p; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD5DA1F00893;
	Tue,  9 Jun 2026 01:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780969445;
	bh=jhcXYyWBxaXh/Nh7FWzTPB2MUqsmDvaNtQHvddzfwS8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=maLp/36p+notLZ6/EsUYuPZ9p2BySP0Ni1Q/bQ4OpZAJ4jo5H/Hnn+fv/qFrG2/aL
	 wb8ru69BEykVOc+U8YoWB+hSA+gOjJoY4+3CbrY5uWy8l41bqZYdNZ7CsJoV2bf+qd
	 7ofRsYGqhh6q6bRwL6RDoDzClAwjX6vj+MnwczPCLGyRNA5Uxd87o/Btnq3F7A4dAX
	 3aZl21YLieHvpl7pdaxxSPEKxV1Ofmg2CRwMeQTyOZ1n76Sm3DVhspMe3u9Zjy4ak2
	 HU8bu1qa0VzwK5Dz0P5XjHIW46cQB08fFsFtKY5+KNfIEL9OPtHMDZ5TWlcQTB9hDz
	 1wFrq5atuYVNg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 04/11] ASoC: renesas: fsi: Move
 fsi_stream_is_working()
Reply-To: sashiko-reviews@lists.linux.dev
To: phucduc.bui@gmail.com
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260609013107.5995-5-phucduc.bui@gmail.com>
References: <20260609013107.5995-5-phucduc.bui@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 01:44:04 +0000
Message-Id: <20260609014404.AD5DA1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308580-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto];
	FORGED_RECIPIENTS(0.00)[m:phucduc.bui@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:wsa+renesas@sang-engineering.com,m:phucducbui@gmail.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3D88965BBAC

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] `fsi_stream_is_working()` acquires a lock to validate a pointer bu=
t returns a boolean and drops the lock before the caller uses the pointer, =
creating a Time-Of-Check to Time-Of-Use (TOCTOU) race condition that can le=
ad to a NULL pointer dereference.
- [High] Sleepable Common Clock Framework (CCF) APIs are called from within=
 the ALSA PCM atomic trigger path, causing a sleep-in-atomic bug.
--

commit da681410389113931660183bb91da994c3ed66c1
Author: bui duc phuc <phucduc.bui@gmail.com>

    ASoC: renesas: fsi: Move fsi_stream_is_working()

Move fsi_stream_is_working() before fsi_count_fifo_err() to prepare for a
subsequent patch. No functional changes are intended.

>     when handling in-flight IRQ handlers. No functional changwqes intende=
d.

This isn't a bug, but there's a typo (changwqes) in the commit message.

> diff --git a/sound/soc/renesas/fsi.c b/sound/soc/renesas/fsi.c
> index 800ac40f9680d..0bd0e0c8c5a30 100644
> --- a/sound/soc/renesas/fsi.c
> +++ b/sound/soc/renesas/fsi.c

[ ... ]

> @@ -442,6 +442,16 @@ static int fsi_sample2frame(struct fsi_priv *fsi, in=
t samples)
>  	return samples / fsi->chan_num;
>  }
> =20
> +static int fsi_stream_is_working(struct fsi_priv *fsi,
> +				 struct fsi_stream *io)
> +{
> +	struct fsi_master *master =3D fsi_get_master(fsi);
> +
> +	guard(spinlock_irqsave)(&master->lock);
> +
> +	return !!(io->substream && io->substream->runtime);
> +}
> +

[Severity: High]
This isn't a bug introduced by this patch, but does returning a boolean here
create a Time-Of-Check to Time-Of-Use (TOCTOU) race condition?

When fsi_pio_transfer() calls this, it uses the boolean result to locklessly
call fsi_pio_get_area():

sound/soc/renesas/fsi.c:fsi_pio_transfer() {
	...
	if (!fsi_stream_is_working(fsi, io))
		return -EINVAL;
	buf =3D fsi_pio_get_area(fsi, io);
	...
}

fsi_pio_get_area() then directly accesses io->substream->runtime:

sound/soc/renesas/fsi.c:fsi_pio_get_area() {
	...
	struct snd_pcm_runtime *runtime =3D io->substream->runtime;
	...
}

Concurrently, if ALSA invokes fsi_dai_trigger(SNDRV_PCM_TRIGGER_STOP), it
calls fsi_stream_quit() which acquires master->lock and clears the pointer:

sound/soc/renesas/fsi.c:fsi_stream_quit() {
	...
	guard(spinlock_irqsave)(&master->lock);
	...
	io->substream	=3D NULL;
	...
}

If fsi_stream_quit() executes after fsi_stream_is_working() drops the lock
but before fsi_pio_get_area() dereferences io->substream->runtime, could
this result in a NULL pointer dereference?

[Severity: High]
This isn't a bug introduced by this patch, but does the ALSA trigger path
call sleepable clock APIs while in atomic context?

When ALSA invokes the snd_pcm_trigger callback fsi_dai_trigger() on the
SNDRV_PCM_TRIGGER_START path, it executes in atomic context (with the
substream spinlock held and local interrupts disabled).

This calls fsi_hw_startup(), which subsequently triggers fsi_clk_enable():

sound/soc/renesas/fsi.c:fsi_dai_trigger() {
	...
	case SNDRV_PCM_TRIGGER_START:
	...
		if (!ret)
			ret =3D fsi_hw_startup(fsi, io, dai->dev);
	...
}

fsi_hw_startup() then executes:

sound/soc/renesas/fsi.c:fsi_hw_startup() {
	...
	if (fsi_is_clk_master(fsi))
		return fsi_clk_enable(dev, fsi);
	...
}

fsi_clk_enable() calls the driver's dynamic .set_rate callback:

sound/soc/renesas/fsi.c:fsi_clk_enable() {
	...
	ret =3D clock->set_rate(dev, fsi);
	...
}

For example, fsi_clk_set_rate_cpg() invokes clk_set_rate():

sound/soc/renesas/fsi.c:fsi_clk_set_rate_cpg() {
	...
	ret =3D clk_set_rate(ick, best_cout);
	...
}

Since clk_set_rate() acquires the prepare_lock mutex, won't this trigger
a sleep-in-atomic bug or deadlock?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609013107.5995=
-1-phucduc.bui@gmail.com?part=3D4

