Return-Path: <devicetree+bounces-307433-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3cx7MgzPImq/dwEAu9opvQ
	(envelope-from <devicetree+bounces-307433-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 15:28:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4169964888C
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 15:28:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=MaplmJp3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307433-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-307433-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8A8A93054FE8
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 13:20:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62D9040E8EF;
	Fri,  5 Jun 2026 13:20:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3066F40E8E8
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 13:20:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780665603; cv=none; b=RJQLNUk8R6TvZsAoQkd9qmU7opuHNs6tuwgFZ320gsi5BA2ocjNJsCRAw1EWtpReXelFqGIzq/ArahTHE2x24ysfkbOcJifHkX/fMpiz+4ZjXm5MJxOmUalHXJkg0UcLgM2hRvBxOQkAUBZVo8XAs+aVaZRMdG1vh3UpSPJce0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780665603; c=relaxed/simple;
	bh=HE5cLOdLTkkn74dczFDyXyTRhzZlaa/PXwAaGp7vmV0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=CzkkDsHfolgsaAnX6OImPK8yrCbYb+2wmiN4kwWPwMv+mnad04J8t5s8pfRxl5Q/uOPY14QcwH/pb29/7kejp5lbQvGgOc4J1H4KuZp039Aoa5K1Uz8K01DGVbcBZgb67qvF5r5rVtWcSrOHnDB776/OzGCOcyEKYNQwfPFk7XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MaplmJp3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA67A1F00898;
	Fri,  5 Jun 2026 13:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780665602;
	bh=ukZZ62BzyocIAus/TBqkxmLZQTo5eDHe39Yq0OAfEX8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MaplmJp3HOzo/BYbLcCMVPo4gQlCxBGHXLkOu4sThjZF8nebhZRYDHyb3t+4UagmS
	 wGhOt5C6iPPg2coIarmn2CU2bANRG7gqsmz6Pi4av83xAuAeBNwe/GcTpckrHeGOf7
	 2FCGVLXV3eQ51Dk1OKTfzjJe1SxOLn58NdNAUXaRRs5mUB5CVjVmOgkAnSKyFxqg9s
	 THRERk5oILHnbfbhiTkViWXzkNxjZCg/OrL6B8cuzgcrLkEHyZVijFNc+T7mMqtA0O
	 V94tI3KHY2nrNmowI/FfapEBRW9E2unhDrSqS/xEIepnT6JFo5F2E7ZeaFnv8de9J1
	 8puac85DxvWzQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 05/10] ASoC: renesas: fsi: Fix register access from
 in-flight IRQ after shutdown
Reply-To: sashiko-reviews@lists.linux.dev
To: phucduc.bui@gmail.com
Cc: wsa+renesas@sang-engineering.com, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260605121955.105661-6-phucduc.bui@gmail.com>
References: <20260605121955.105661-6-phucduc.bui@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jun 2026 13:20:01 +0000
Message-Id: <20260605132001.DA67A1F00898@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307433-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,smtp.kernel.org:mid];
	FORGED_RECIPIENTS(0.00)[m:phucduc.bui@gmail.com,m:wsa+renesas@sang-engineering.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:phucducbui@gmail.com,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
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
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4169964888C

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [High] The patch fails to completely fix the hardware hang due to imprope=
r ordering with clock shutdown and introduces a Time-Of-Check to Time-Of-Us=
e (TOCTOU) race condition.

Pre-existing issues:
- [High] Potential NULL pointer dereference in `fsi_pointer_update()` if a =
DMA completion callback runs after stream shutdown.
- [High] The driver releases DMA channels in `remove` before unregistering =
the ALSA component, creating a Use-After-Free race condition.
--

commit c264d5f1cdc59e54f0e7191a60f9c8c00661657c
Author: bui duc phuc <phucduc.bui@gmail.com>
ASoC: renesas: fsi: Fix register access from in-flight IRQ after shutdown

This commit attempts to prevent system hangs by adding checks in the
in-flight IRQ handlers to skip hardware access if the stream is no
longer working. It relies on fsi_stream_is_working to detect if the
stream is active before reading or writing registers.

> diff --git a/sound/soc/renesas/fsi.c b/sound/soc/renesas/fsi.c
> index 429c3c9b6ede4..0f350bddeb1d5 100644
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
Does this introduce a time-of-check to time-of-use race condition?

Since fsi_stream_is_working acquires and drops the master lock, an
interrupt can check the status and drop the lock. Before the handler
reads the hardware registers below, another thread could call
fsi_hw_shutdown, disabling the clock and causing a hang.

Additionally, when stopping the stream in fsi_dai_trigger, the hardware
shutdown is called before the substream is cleared:

sound/soc/renesas/fsi.c:fsi_dai_trigger() {
    ...
    fsi_stream_stop(fsi, io);
    if (!ret)
        ret =3D fsi_hw_shutdown(fsi, dai->dev);
    fsi_stream_quit(fsi, io);
    ...
}

Because the clock is disabled before io->substream is cleared, an
in-flight IRQ will still pass the fsi_stream_is_working check
and access the registers.=20

The same ordering issue occurs in __fsi_suspend, where io->substream is
never cleared at all.

>  	u32 ostatus =3D fsi_reg_read(fsi, DOFF_ST);
>  	u32 istatus =3D fsi_reg_read(fsi, DIFF_ST);

[ ... ]

[Severity: High]
This is a pre-existing issue, but is there a potential NULL pointer
dereference in fsi_pointer_update during stream shutdown?

When stopping a DMA stream, fsi_dma_push_start_stop uses
dmaengine_terminate_all, which terminates asynchronously:

sound/soc/renesas/fsi.c:fsi_dma_push_start_stop() {
    ...
    dmaengine_terminate_all(io->chan);
    ...
}

Immediately after, fsi_stream_quit sets io->substream to NULL. If the
DMA callback fsi_dma_complete fires or is still running concurrently
after io->substream is cleared, it will call fsi_pointer_update which
dereferences the pointer without checking:

sound/soc/renesas/fsi.c:fsi_pointer_update() {
    struct snd_pcm_substream *substream =3D io->substream;
    struct snd_pcm_runtime *runtime =3D substream->runtime;
    ...
}

Could this cause a kernel panic if the callback executes after cleanup?


[Severity: High]
This is a pre-existing issue, but does fsi_remove create a use-after-free
race condition by releasing DMA channels before ALSA unregistration?

In fsi_probe, the ALSA component is registered via devres using
devm_snd_soc_register_component, meaning it unregisters automatically
after fsi_remove completes. However, fsi_remove manually destroys
the stream resources:

sound/soc/renesas/fsi.c:fsi_remove() {
    ...
    fsi_stream_remove(&master->fsia);
    fsi_stream_remove(&master->fsib);
    ...
}

Since the ALSA device is still accessible to userspace while the DMA
channels are being freed, an application could trigger audio playback.
If playback is started concurrently, it calls fsi_dma_transfer which
dereferences the freed channel:

sound/soc/renesas/fsi.c:fsi_dma_transfer() {
    ...
    desc =3D dmaengine_prep_dma_cyclic(io->chan, ...);
    ...
    dma_async_issue_pending(io->chan);
}

Could this lead to accessing a freed DMA channel pointer?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605121955.1056=
61-1-phucduc.bui@gmail.com?part=3D5

