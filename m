Return-Path: <devicetree+bounces-309004-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Fw23CG0BKGpv7AIAu9opvQ
	(envelope-from <devicetree+bounces-309004-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 14:05:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F20665FD5F
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 14:05:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=oh8YU1Q5;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309004-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309004-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EF07A3014293
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 12:01:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2525040BCB7;
	Tue,  9 Jun 2026 12:01:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1030F3546C3
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 12:01:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781006488; cv=none; b=TrV3Adl88NPFCGJxGjSl4f1xrLP20+Sva90JrGhPdQFsSsiJS7233bW/uGqA0A2WySe3ZWaRnhoc+qqC8+OZtBLum3zxb+LnBbQ3zDqNscnLo3L2u6jdY/PkZ9se3I8bmxRfO3GisAjJwHwfdNpZoR8ayqWYD/wmgS92I5owdM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781006488; c=relaxed/simple;
	bh=20E4jlDgRHmL8VjI6o84T0Vsa704YAzLsh2SAUlBpGM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=T1lYMhmnUNluPh1hBkg1TyvIRcEKEMYQ0hXL8I8jifvelqHSUlsBrj5vvV7k+zZzjhof5utmJd21NORz+XXMF+asWabrCUGhyWlLTErZD9Jrw142bHkYxF4z1PQsrmhbTUHqrfIoU909Y7jDspO0DnkjScWXCVPmHuaREV9CPVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oh8YU1Q5; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 451E41F00898;
	Tue,  9 Jun 2026 12:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781006486;
	bh=pB99YzbAehabNUC1Kop/AANyI7ouF40y05SIuLsoefI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oh8YU1Q55YHH7uUD7m6y2pe2dbK2MsmN6qZ8AL20+z4XYenP+ftY+IfpubKblabU6
	 zvZinV5Q5WOmpzx3p+XP5Zd13lL4Xvd7Mvzk0gvHMPPk0sByFrSeoJ8A0UuPu5QyCs
	 YnSpXHxhBkHpXPOJbY1t6bOrXjiQciLlBRkHhD91YQNuIYIxJMWYruhrnmQH8N7acr
	 lcuyQM6221z3JtZGOgc/nJyKjenjgWHfLJ5d3KFoEnEkWKTVpaLe+BbEK1MbJOtD63
	 LZm8HG1zr19nuASaxiQrow7ojgJS/h7HV7H/7DnZzP/5gr+gjtoBYiHRFveBqWVllU
	 hwM3hznSNmrDg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 03/11] ASoC: renesas: fsi: Fix trigger stop ordering
Reply-To: sashiko-reviews@lists.linux.dev
To: phucduc.bui@gmail.com
Cc: wsa+renesas@sang-engineering.com, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260609113836.45079-4-phucduc.bui@gmail.com>
References: <20260609113836.45079-4-phucduc.bui@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 12:01:25 +0000
Message-Id: <20260609120126.451E41F00898@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-309004-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:phucduc.bui@gmail.com,m:wsa+renesas@sang-engineering.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:phucducbui@gmail.com,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
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
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6F20665FD5F

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Pre-existing data race in fsi_clk_enable() leads to premature cloc=
k disabling (bus hang) and breaks full-duplex operation.
- [High] Missing IRQ and DMA synchronization during stream shutdown leads t=
o TOCTOU NULL pointer dereferences and hardware bus hangs.
--

commit b345d93585828cc07f1537860417394b58877fa1
Author: bui duc phuc <phucduc.bui@gmail.com>

ASoC: renesas: fsi: Fix trigger stop ordering

This patch changes the trigger stop ordering by calling fsi_stream_stop()
before fsi_hw_shutdown(). This ensures that the sequence matches the
existing order in the suspend path.

> This change ensures all register accesses during stream shutdown are fully
> completed before disabling the clocks.

[Severity: High]
This isn't a bug introduced by this patch, but is this statement accurate
without synchronization?

Without synchronize_irq() and dmaengine_terminate_sync() in the shutdown
sequence, an in-flight fsi_interrupt() or fsi_dma_complete() could run
concurrently.

If an in-flight interrupt handler accesses FSI registers after
fsi_hw_shutdown() disables the hardware clocks, could this trigger an
asynchronous bus hang?

> diff --git a/sound/soc/renesas/fsi.c b/sound/soc/renesas/fsi.c
> index 8cbd7acc26f49..800ac40f9680d 100644
> --- a/sound/soc/renesas/fsi.c
> +++ b/sound/soc/renesas/fsi.c
> @@ -1586,10 +1586,10 @@ static int fsi_dai_trigger(struct snd_pcm_substre=
am *substream, int cmd,
>  			ret =3D fsi_stream_transfer(io);
>  		break;
>  	case SNDRV_PCM_TRIGGER_STOP:
> -		if (!ret)
> -			ret =3D fsi_hw_shutdown(fsi, dai->dev);
>  		fsi_stream_stop(fsi, io);
>  		fsi_stream_quit(fsi, io);

[Severity: High]
This is a pre-existing issue, but does fsi_stream_quit() introduce a race
with in-flight interrupts?

Because fsi_stream_quit() sets io->substream =3D NULL, could concurrent
execution cause NULL pointer dereferences in fsi_pio_get_area() or
fsi_pointer_update(), which dereference io->substream without validation?

> +		if (!ret)
> +			ret =3D fsi_hw_shutdown(fsi, dai->dev);

[Severity: High]
This is also a pre-existing issue, but does fsi_hw_shutdown() have a race
condition when managing the clocks?

fsi_hw_shutdown() could run concurrently with fsi_hw_startup() since ALSA
permits concurrent SNDRV_PCM_TRIGGER_START calls for playback and capture
on the same DAI.

Looking at fsi_clk_enable() and fsi_clk_disable() which are called from
these paths:

sound/soc/renesas/fsi.c:fsi_clk_enable() {
    ...
    int ret =3D -EINVAL;
    ...
    if (0 =3D=3D clock->count) {
        // ...
        clock->count++;
    }
    return ret;
}

sound/soc/renesas/fsi.c:fsi_clk_disable() {
    ...
    if (1 =3D=3D clock->count--) {
    ...
}

Could a lost update on the lockless clock->count variable lead to
prematurely disabling the clock when the first stream stops, turning off
FSI clocks while the second stream is still actively accessing registers?

Additionally, fsi_clk_enable() initializes ret to -EINVAL. If a second
stream tries to start (clock->count !=3D 0), doesn't it unconditionally
return -EINVAL, breaking full-duplex operation?

>  		break;
>  	}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609113836.4507=
9-1-phucduc.bui@gmail.com?part=3D3

