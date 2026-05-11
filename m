Return-Path: <devicetree+bounces-295861-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGgNJthbAmosrgEAu9opvQ
	(envelope-from <devicetree+bounces-295861-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 00:44:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 360725170F9
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 00:44:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 923B53011351
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 22:44:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65367356765;
	Mon, 11 May 2026 22:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MO2BU2me"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425CD2D7804
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 22:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778539477; cv=none; b=gqfJFhKJDKozvTI3J9JtZg+qKodymqgxnKcSCcrGwsdR2oB6cbl8EFggXy734UTttxgoF4GSCMn/vYxHLBV9anot1OOamor1RTRzjuCAOG833GBj8PDamxagxVwUub20CbQ/9i1frDZFud+2XOH1K1ALRk1D6LxIk5RksU/Vz4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778539477; c=relaxed/simple;
	bh=SkOk3kVhJSOfPEd1GHv54l7m/+JHteaZa8gfqvPDksU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=sU7HFYewVi7tozCNxwCbwMj3QjaDIW8x6tXxKBm+RLmVb8JvUaCGVN1/HrmyvEReX9dXR0IqI7MrUVkRKpebR/bzoLI5lPMyDiXbUMZ7w7i72Q2ccHj23ZmgU66ksI6Wld7uNjM7GZ7IWEWxcwQZwK7je78C9HM7vuy88eY61ZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MO2BU2me; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0B19C2BCB0;
	Mon, 11 May 2026 22:44:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778539476;
	bh=SkOk3kVhJSOfPEd1GHv54l7m/+JHteaZa8gfqvPDksU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=MO2BU2meUObwbd38GPoavD5yY3HHnZuz7QlRJTiByEr/o33XWiOt+pBbIxEuwS/+z
	 CBEJsUV4cuEXQy4bjmlvFr6UNcMqXe5Btf8gGIyHmAvJ+YKAVxE/gwEsORQW8Hnon0
	 Im4D0rzddfXQsITvccRG9hm89LQe1DHn8Xja4l4aOI+nxZuxBzfeRh2tFVBxtrsBcX
	 foNdCA4ZxxKo9uTri7fFlrhtNQz8pt7yqOR06IrcxlayEUVb92JJQTBylF4vnjkYK1
	 gLsXpwhz+MRUXAJaJCkw/Rckam9NuyorKKNVxZ6+bozFrXLNmgjdk1MA+SbcP8pNiF
	 SXruaJBBZff8Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 03/10] ASoC: renesas: fsi: Fix trigger stop ordering
Reply-To: sashiko@lists.linux.dev
To: phucduc.bui@gmail.com
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, wsa+renesas@sang-engineering.com, devicetree@vger.kernel.org
In-Reply-To: <20260510084303.122426-4-phucduc.bui@gmail.com>
References: <20260510084303.122426-4-phucduc.bui@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 11 May 2026 22:44:35 +0000
Message-Id: <20260511224436.A0B19C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 360725170F9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295861-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,lists.linux.dev:replyto];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FROM_NO_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] TOCTOU race and lack of synchronization in stream stopping leads t=
o NULL pointer dereference.
- [High] Teardown asymmetry in `fsi_remove` leads to use-after-free and NUL=
L pointer dereference.
- [High] Lockless read-modify-write on shared FSI port registers causes har=
dware corruption.
- [High] Lockless modifications to shared `clock->count` cause reference co=
unt corruption.
--

commit 7ce4e3deeaefe8e811044e7b0472a2e9a2ae1d64
Author: bui duc phuc <phucduc.bui@gmail.com>

ASoC: renesas: fsi: Fix trigger stop ordering

This commit reorders calls in the stop trigger to execute fsi_stream_stop()
before fsi_hw_shutdown(). It ensures register accesses complete before the
clock is disabled to prevent a system hang.

> diff --git a/sound/soc/renesas/fsi.c b/sound/soc/renesas/fsi.c
> index 8cbd7acc26f49..94ab2e4908108 100644
> --- a/sound/soc/renesas/fsi.c
> +++ b/sound/soc/renesas/fsi.c
> @@ -1586,9 +1586,9 @@ static int fsi_dai_trigger(struct snd_pcm_substream=
 *substream, int cmd,
>  			ret =3D fsi_stream_transfer(io);
>  		break;
>  	case SNDRV_PCM_TRIGGER_STOP:

Playback and capture substreams on the same FSI port share port-level
configuration registers like CKG1, CKG2, and OUT_SEL.

Since the ALSA core serializes triggers at the substream level using
the self_group.lock, playback and capture triggers for the same DAI
can execute concurrently on different CPUs.

Does fsi_hw_startup() perform lockless read-modify-write operations on these
shared registers, and can this lack of exclusion lead to lost writes and
corrupted hardware state?

> +		fsi_stream_stop(fsi, io);

During a stream stop, fsi_stream_stop() disables DMA via
dmaengine_terminate_all() and masks device interrupts, but it does not appe=
ar
to wait for in-flight DMA callbacks or IRQ handlers to finish.

Concurrently, an executing IRQ handler calling fsi_pio_transfer() will
temporarily take master->lock in fsi_stream_is_working(), drop it, and then
locklessly access io->substream->runtime inside fsi_pio_get_area().

Similarly, an asynchronous fsi_dma_complete() callback unconditionally
dereferences io->substream in fsi_pointer_update().

Since there is no dmaengine_terminate_sync() or synchronize_irq(), could
fsi_stream_quit() race with these callbacks and clear io->substream,
resulting in a NULL pointer dereference?

The driver uses managed resources during fsi_probe(), meaning the IRQ handl=
er
and ALSA component are unregistered after fsi_remove() returns. However,
fsi_remove() explicitly tears down the DMA streams via fsi_stream_remove(),
which calls dma_release_channel(io->chan) and sets io->chan to NULL.

Because the ALSA component is still fully registered and active while
fsi_remove() completes, userspace can still trigger ALSA operations.

If a STOP trigger occurs during this window, would calling
dmaengine_terminate_all(io->chan) here cause a NULL pointer dereference?

>  		if (!ret)
>  			ret =3D fsi_hw_shutdown(fsi, dai->dev);

The shared clock state for an FSI port is tracked using clock->count inside
fsi_priv.

Since playback and capture triggers for the same port can execute
concurrently on different CPUs, do fsi_clk_enable() and fsi_clk_disable()
manually modify this counter without holding any lock?

Could concurrent updates to clock->count corrupt the counter, potentially
leaving the peripheral clocks enabled permanently or disabling them while a
stream is still active?

> -		fsi_stream_stop(fsi, io);
>  		fsi_stream_quit(fsi, io);
>  		break;
>  	}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260510084303.1224=
26-1-phucduc.bui@gmail.com?part=3D3

