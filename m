Return-Path: <devicetree+bounces-308585-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PLZ/G4NzJ2q/xAIAu9opvQ
	(envelope-from <devicetree+bounces-308585-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 03:59:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A50BD65BC64
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 03:59:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bEbKh4IE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308585-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308585-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 514DC3017016
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 01:59:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2370135EDA4;
	Tue,  9 Jun 2026 01:59:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB3FF28980F
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 01:59:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780970368; cv=none; b=MyQ95hR+grvo9fiEMQNkZhr3I0SKoNazHtBVPWZsxFpEVT33gubxQSRON86edg1P5tIKLanjrUebu4iRt+gBZZTnOVx7ODB9XGfJr4/S9w2optpSbI1ZZ6kCC4R2VvWa5+sL2KScuvnjNIxleAvBuROAlrlP8N7a0AmmT6pJ42U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780970368; c=relaxed/simple;
	bh=FNVRvzqPlfgjxqZKLN2A6QXqqO939ten+CcilOcYIis=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QNlghHFHrbsz4sv6QEBB4ZPBXAiQyrv0wU+pbidlScRkfLYa2hPJkWrikvRK3n+h2eCpjVIa7oRMS/kZXPMqnQJGbm2hmujQM3fOidDmt0ASYnLG/+LWN0TZakI7rUAKmgFRchcimzPXWSBG6AEn2TeO2M7uQ3fvNo9/M5N0cZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEbKh4IE; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5112C1F00893;
	Tue,  9 Jun 2026 01:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780970366;
	bh=1GSv1OXwWy+Q9Ol5IQ9xDIylF460DrCqmrU4dV+Hr+A=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bEbKh4IE4NDHrK2v0csA+kxGknjGv/B+E+m/LCM7ng6NzRpYeSQSq/AIoONghS0EQ
	 Wl0dBU4daV1X/gSQeiNW+t02Ngc/sm/7yuMUf5bvK9wNX+6YTt4tTmmrg9P9UqFYep
	 CkLm2AeOdET/JAFNMnNCcv3RSbjiROhvMoyD/3nymgYRMenGJ0NfUaZgCJQTWorDPT
	 zslu7Fv3s2pDSe0U5fs1M4JWlsPx+54mcW8zu62LGK0MOKZ657O+kSQhJRbK1VSgeW
	 k7euZdl5VeZietVDs8rz1UDPJdpqrJuDElIZC6TozeJ0kjHWMMG97bFTT+guKATdLM
	 2sk+AG3cTM4Fw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 05/11] ASoC: renesas: fsi: Fix register access from
 in-flight IRQ after shutdown
Reply-To: sashiko-reviews@lists.linux.dev
To: phucduc.bui@gmail.com
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260609013107.5995-6-phucduc.bui@gmail.com>
References: <20260609013107.5995-6-phucduc.bui@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 01:59:25 +0000
Message-Id: <20260609015926.5112C1F00893@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-308585-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url];
	FORGED_RECIPIENTS(0.00)[m:phucduc.bui@gmail.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:wsa+renesas@sang-engineering.com,m:phucducbui@gmail.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A50BD65BC64

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:

New issues:
- [High] The newly added `fsi_stream_is_working()` checks introduce a Time-=
of-Check to Time-of-Use (TOCTOU) race condition with clock shutdown.

Pre-existing issues:
- [Critical] A pre-existing TOCTOU race condition in PIO transfers causes a=
 NULL pointer dereference because `fsi_stream_is_working()` releases the lo=
ck before `io->substream` is accessed.
- [Critical] The DMA transfer handler lacks a stream active check, leading =
to a fatal NULL pointer dereference if triggered by a shared port interrupt=
 when the stream is stopped.
- [High] The fix fails to add stream activity checks to the PIO data transf=
er paths called earlier in the same IRQ handler, leaving an active path tha=
t still unconditionally triggers system hangs.
--

commit 1b9901efffc6b2d06494ae90af04665e436adbb6
Author: bui duc phuc <phucduc.bui@gmail.com>

ASoC: renesas: fsi: Fix register access from in-flight IRQ after shutdown

This commit attempts to fix system hangs caused by in-flight IRQs accessing
hardware registers after the SPU clock is disabled. It introduces checks
using fsi_stream_is_working() to return early from IRQ handlers if no
streams are active.

> diff --git a/sound/soc/renesas/fsi.c b/sound/soc/renesas/fsi.c
> --- a/sound/soc/renesas/fsi.c
> +++ b/sound/soc/renesas/fsi.c
> @@ -470,6 +470,10 @@ static int fsi_get_current_fifo_samples(struct fsi_p=
riv *fsi,
> =20
>  static void fsi_count_fifo_err(struct fsi_priv *fsi)
>  {
> +	if (!fsi_stream_is_working(fsi, &fsi->playback) &&
> +	    !fsi_stream_is_working(fsi, &fsi->capture))
> +		return;
> +

[Severity: High]
Does this introduce a Time-of-Check to Time-of-Use race condition?

fsi_stream_is_working() acquires and immediately releases master->lock.
If snd_pcm_stop executes concurrently on another CPU right after this check
returns true, it will call fsi_stream_quit() and fsi_hw_shutdown(), setting
substream =3D NULL and disabling the hardware clocks.

Would the interrupted CPU then proceed to access hardware registers
(like fsi_reg_read(fsi, DOFF_ST) below) with the clocks disabled, resulting
in the exact system hang this patch was intended to fix?

[Severity: High]
This is a pre-existing issue, but the patch missed it while attempting
to fix the exact same issue. In fsi_interrupt(), before
fsi_count_fifo_err() is reached, the driver calls fsi_stream_transfer()
which routes to fsi_pio_push() or fsi_pio_pop().

Both functions immediately calculate sample space by calling
fsi_get_current_fifo_samples(), which unconditionally performs bare
register reads before any stream activity check is performed:

fsi_get_current_fifo_samples() {
        ...
        status =3D is_play ?
                fsi_reg_read(fsi, DOFF_ST) :
                fsi_reg_read(fsi, DIFF_ST);
        ...
}

Will an in-flight IRQ therefore access disabled hardware registers during
the PIO transfer phase, bypassing the intended mitigations?

[Severity: Critical]
This is a pre-existing issue, but does a race condition in PIO transfers
cause a NULL pointer dereference because fsi_stream_is_working() releases
the lock before io->substream is accessed?

fsi_pio_transfer() calls fsi_stream_is_working() to ensure the stream is
active. fsi_stream_is_working() safely verifies io->substream under
master->lock but releases the lock immediately.

fsi_pio_transfer() then proceeds to call fsi_pio_get_area() locklessly,
which unconditionally dereferences io->substream->runtime:

fsi_pio_transfer() {
        if (!fsi_stream_is_working(fsi, io))
                return -EINVAL;

        buf =3D fsi_pio_get_area(fsi, io);
        ...
}

fsi_pio_get_area() {
        struct snd_pcm_runtime *runtime =3D io->substream->runtime;
        ...
}

If an ALSA SNDRV_PCM_TRIGGER_STOP command executes fsi_stream_quit()
concurrently on another CPU, setting io->substream =3D NULL, will this
sequence interleave precisely to cause a NULL pointer dereference?

[Severity: Critical]
This is a pre-existing issue, but does the DMA transfer handler lack a
stream active check, leading to a NULL pointer dereference?

When an FSI port is configured with DMA for playback and PIO for capture,
they share the same hardware interrupt line and fsi_interrupt handler.
If the playback stream is stopped, its hardware FIFO remains empty,
continuously asserting the playback data request bit in the shared
int_st register.

The fsi_interrupt handler reads the raw int_st register without applying
software masks and unconditionally routes to fsi_stream_transfer():

fsi_interrupt() {
        ...
        if (int_st & AB_IO(1, AO_SHIFT))
                fsi_stream_transfer(&master->fsia.playback);
        ...
}

The DMA handler fsi_dma_transfer() is invoked without verifying if the
stream is actively working. It immediately calls fsi_get_dai(io->substream).
Since the playback stream is stopped, io->substream is NULL.

Does this result in an immediate NULL pointer dereference in
asoc_substream_to_rtd()?

>  	u32 ostatus =3D fsi_reg_read(fsi, DOFF_ST);
>  	u32 istatus =3D fsi_reg_read(fsi, DIFF_ST);
> =20
> @@ -681,6 +685,10 @@ static void fsi_irq_clear_status(struct fsi_priv *fs=
i)
>  	u32 data =3D 0;
>  	struct fsi_master *master =3D fsi_get_master(fsi);
> =20
> +	if (!fsi_stream_is_working(fsi, &fsi->playback) &&
> +	    !fsi_stream_is_working(fsi, &fsi->capture))
> +		return;
> +

[Severity: High]
Does this also introduce a Time-of-Check to Time-of-Use race condition?

The stream status is checked and the lock is dropped before clearing the
interrupt status locklessly via fsi_core_mask_set(). Could a concurrent
stream stop and clock shutdown occur between the check and the hardware
access, causing a regression?

>  	data |=3D AB_IO(1, fsi_get_port_shift(fsi, &fsi->playback));
>  	data |=3D AB_IO(1, fsi_get_port_shift(fsi, &fsi->capture));

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609013107.5995=
-1-phucduc.bui@gmail.com?part=3D5

