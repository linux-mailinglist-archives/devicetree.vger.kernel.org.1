Return-Path: <devicetree+bounces-307428-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Rf2DNYnJImrHdgEAu9opvQ
	(envelope-from <devicetree+bounces-307428-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 15:05:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB1864860F
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 15:05:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=i7OAxivN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307428-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-307428-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A5A31300916F
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 13:05:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDA6E3E5596;
	Fri,  5 Jun 2026 13:05:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BE063B14C2
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 13:05:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780664701; cv=none; b=inZs+Vt+WXeZRio0q1l2ioX4iY69nBEe8hIX3UyDU0xWwOjopikP+JUPp8OhTeD4QV5conJOlHQjibOPNHUh/6h35NPjqGX26mrNzpwpjIi6zztBcpTDiN/1aDflopNycNbezP3C4x58Emhccy8XK7Ern8+NhqufX1NMHLs5fqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780664701; c=relaxed/simple;
	bh=K0FEm4R8kmiDdX61jNdR/21EBJ40qCFoptKLikkE2fk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=DSMtfa0CpbxdVKkBX7KnfTglOZMoaQUdLKaOyyWYoac4ZnibSmKWHVzTt3VdKP1VNmEvgcTn3IQctivm2K2ISF2c4DQ93qtGEv/vxJNI5gvJJbALQ760PaCXoGE2Ys+2rXw/QXWTBLRxRczmSKjoFwVmo5RbaxImKnXPiPX/k0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7OAxivN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46DB11F00893;
	Fri,  5 Jun 2026 13:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780664700;
	bh=/GodnUQQx7uUtG2VDyFkzePowyjR7EJVUWg7jyx9itU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=i7OAxivNwpYyMnpUJUWmZzbH48/PE4+N89guXEcAQcSozMdsMew6Av9BBocSGhuHK
	 zKeuqjxzVlR0hXToPA347Q4trfco/d5gWWFl3QLPV+pDeL3s1S5RyWqU/pEynNhLg4
	 CIp2D/9tkuYbIQ2l6gxpn082w2zqhEv90YH+vsgEhBOzDXxghUm4krg3Y/lURRnW+j
	 kzZjbNcpFcSMWcqYWjg8aVs2+7HmNbqq0BEE1M2q7kpDujZlMO7INyPcvBh5bvwz6i
	 aWlbmWUBI6xU5v84GMThDMIQ3iWppQcEYLJSeX+3HFI2QihoE3mUXM4R+N5NqZuFJK
	 wzl2z+wxXRjlg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 04/10] ASoC: renesas: fsi: Move
 fsi_stream_is_working()
Reply-To: sashiko-reviews@lists.linux.dev
To: phucduc.bui@gmail.com
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260605121955.105661-5-phucduc.bui@gmail.com>
References: <20260605121955.105661-5-phucduc.bui@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jun 2026 13:04:59 +0000
Message-Id: <20260605130500.46DB11F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307428-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url,vger.kernel.org:from_smtp];
	FORGED_RECIPIENTS(0.00)[m:phucduc.bui@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:wsa+renesas@sang-engineering.com,m:phucducbui@gmail.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7FB1864860F

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Time-of-check to time-of-use (TOCTOU) race condition in `fsi_strea=
m_is_working()` leading to a potential NULL pointer dereference or disabled=
-clock hardware access.
- [High] Asynchronous DMA callbacks (`fsi_dma_complete()`) can execute afte=
r hardware clocks are disabled or the stream is stopped, leading to a syste=
m hang or NULL pointer dereference.
--

commit 4ad703aa1dde6474675b4563473c933ef82894b5
Author: bui duc phuc <phucduc.bui@gmail.com>

ASoC: renesas: fsi: Move fsi_stream_is_working()

Move fsi_stream_is_working() before fsi_count_fifo_err().

> This prepares for a subsequent patch that needs to check stream status
> when handling in-flight IRQ handlers. No functional changwqes intended.

[Severity: Low]
This isn't a bug, but there is a typo (changwqes) in the commit message.

> diff --git a/sound/soc/renesas/fsi.c b/sound/soc/renesas/fsi.c
> index 94ab2e4908108..429c3c9b6ede4 100644
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
This isn't a bug introduced by this patch, but is a pre-existing flaw that
invalidates logic added later in the series.

Can this Time-of-Check to Time-of-Use (TOCTOU) race condition lead to a
NULL pointer dereference?

fsi_stream_is_working() acquires master->lock, checks if io->substream is
valid, and then releases the lock. In callers like fsi_pio_transfer(), this
boolean result allows the code to proceed and unconditionally dereference
io->substream via fsi_pio_get_area():

    if (!fsi_stream_is_working(fsi, io))
        return -EINVAL;
    buf =3D fsi_pio_get_area(fsi, io);

If fsi_stream_quit() runs concurrently on another CPU during
SNDRV_PCM_TRIGGER_STOP, it sets io->substream =3D NULL under the lock. Since
the FSI IRQ handler does not hold any stream locks during this path, could
an in-flight fsi_pio_transfer() pass the working check, get preempted while
another CPU clears the pointer, and then dereference NULL?

Additionally, does this invalidate the fix added later in the series for
register access from in-flight IRQs? Since fsi_stream_quit() is called after
fsi_hw_shutdown() in the trigger sequence, io->substream is still non-NULL
when the clocks are disabled. Will this cause fsi_stream_is_working() to
erroneously return true and allow fatal clock-disabled register reads?


[Severity: High]
This is also a pre-existing issue, but involves the broader shutdown sequen=
ce
that this series modifies.

Can asynchronous DMA callbacks execute after hardware clocks are disabled or
the stream is stopped, leading to a system hang or NULL pointer dereference?

During SNDRV_PCM_TRIGGER_STOP, fsi_dma_push_start_stop() uses
dmaengine_terminate_all(), which does not synchronously wait for in-flight
DMA callbacks to finish. Immediately after, the driver calls
fsi_hw_shutdown() (disabling the SPU clock) and fsi_stream_quit() (clearing
io->substream).

If a pending fsi_dma_complete() callback executes after fsi_hw_shutdown(),
it unconditionally calls fsi_pointer_update(), which dereferences
io->substream:

    fsi_pointer_update(io, io->period_samples);
    fsi_count_fifo_err(fsi);

If fsi_stream_quit() has already executed, does this cause a NULL pointer
panic?

If the callback executes between shutdown and quit, it continues to
fsi_count_fifo_err() which reads DOFF_ST and DIFF_ST registers. Because
the SPU clock has already been disabled by fsi_hw_shutdown(), will accessing
these registers cause a synchronous external abort and hang the system?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605121955.1056=
61-1-phucduc.bui@gmail.com?part=3D4

