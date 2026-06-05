Return-Path: <devicetree+bounces-307425-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id k8FwLJDJImrJdgEAu9opvQ
	(envelope-from <devicetree+bounces-307425-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 15:05:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2621B648616
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 15:05:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ivq0qz4T;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307425-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307425-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ED2DE303ADD0
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 12:52:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2474B3B5846;
	Fri,  5 Jun 2026 12:52:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13642352C5C
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 12:52:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780663925; cv=none; b=tGoj2O9enaxqNaUcpbkn3igdmM9PoRqaaEP/UfMXTe6QQM8G3zGnfwyC3z0NwPgOwTfBfH+m2/1jB+QqUGB6FtLbF5bpO9LqPTW3FcmBfcT9ko2Koo/YzbZsfeK83LHnkXb97ICpbh5w7+vZT3/HAcMZtKR8C0LEgF2kw/+L1Bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780663925; c=relaxed/simple;
	bh=96pFmrgaNQH3UlzOr07+asmgIR8B8Sw+PoarIdiQFNI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=gSkV2BM34/Y/piUV8I27wa8vZPzbk+e/DGD1i01oCeEgF5LkJFFfnvtt/oiukIYLU3+X14Y4e77Tb1OVREg1j956Zw3Kxj5tMZujkJDGtI78JrOTyXn4G/T5Jib6kKeHZKLqH4k0Cg2z90ccQZvcxrBo9VHfEsIDdsQ574YrmuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivq0qz4T; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B0EB1F00893;
	Fri,  5 Jun 2026 12:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780663923;
	bh=UuVZCzIRkfU+/imwCYRHnM8SSkPKT1tmArsMiix5+f0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ivq0qz4T79MF7iMXz/ZrKRZVaXijdjk0yJvgTdWl0Zcc/Xr2EkpS85rOfikTD5qqU
	 VbbHZF2W1AREhJU2MOD3FaNyyKNiDBxFH6ukg54zwVUgfpV6p0sUNp6vZneT2UKe3F
	 fPEC6kNy9r1cnmCKqk3WNqN8k+nj7ZvF2q3IWOv+6t6c0S3eMytuzKZFiicw10+ifH
	 Ye1G2D3efUFw4jCHzy4TCM49GZrcfupOhtwsEerr+3IcEcIjun2veUyPDxlh5btID3
	 xoPIPkZmu+uoaguFUNxLf5swNYcnPk1nmz04x4jcSLzgAPxT3OAiMQBD0S57yWc0FG
	 XCsZjmmMkVQww==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 03/10] ASoC: renesas: fsi: Fix trigger stop ordering
Reply-To: sashiko-reviews@lists.linux.dev
To: phucduc.bui@gmail.com
Cc: devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260605121955.105661-4-phucduc.bui@gmail.com>
References: <20260605121955.105661-4-phucduc.bui@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jun 2026 12:52:02 +0000
Message-Id: <20260605125203.6B0EB1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307425-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp];
	FORGED_RECIPIENTS(0.00)[m:phucduc.bui@gmail.com,m:devicetree@vger.kernel.org,m:wsa+renesas@sang-engineering.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:phucducbui@gmail.com,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
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
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2621B648616

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Asynchronous background task (DMA completion or hardirq) races wit=
h stream teardown, causing a lockless access and NULL pointer dereference.
- [High] The driver calls clk_set_rate() and clk_set_parent() from the ALSA=
 trigger callback, which runs in atomic context with spinlocks held.
--

commit d41629e308808a974831ffabbba6ec2a77dd96e8
Author: bui duc phuc <phucduc.bui@gmail.com>

ASoC: renesas: fsi: Fix trigger stop ordering
   =20
Call fsi_stream_stop() before fsi_hw_shutdown(). This matches the existing
order in the suspend path.
This change ensures all register accesses during stream shutdown are fully
completed before disabling the clocks.

> diff --git a/sound/soc/renesas/fsi.c b/sound/soc/renesas/fsi.c
> index 8cbd7acc26f49..94ab2e4908108 100644
> --- a/sound/soc/renesas/fsi.c
> +++ b/sound/soc/renesas/fsi.c
> @@ -1586,9 +1586,9 @@ static int fsi_dai_trigger(struct snd_pcm_substream=
 *substream, int cmd,
>  			ret =3D fsi_stream_transfer(io);
>  		break;

[Severity: High]
This is a pre-existing issue, but does fsi_dai_trigger() call sleepable
clock functions while holding an atomic spinlock?

The ALSA core invokes the fsi_dai_trigger() callback in atomic context with
the PCM stream spinlock held.

During SNDRV_PCM_TRIGGER_START (handled earlier in this function), it calls
fsi_hw_startup() which enables the clock via fsi_clk_enable(). This
eventually invokes the clock's set_rate function (like fsi_clk_set_rate_cpg=
()
or fsi_clk_set_rate_external()) and calls clk_set_rate() and/or
clk_set_parent().

Under the Common Clock Framework, clk_set_rate() and clk_set_parent() acqui=
re
the global prepare_lock mutex, which can sleep.

Can this trigger a "scheduling while atomic" bug or deadlock?

>  	case SNDRV_PCM_TRIGGER_STOP:
> +		fsi_stream_stop(fsi, io);
>  		if (!ret)
>  			ret =3D fsi_hw_shutdown(fsi, dai->dev);
> -		fsi_stream_stop(fsi, io);
>  		fsi_stream_quit(fsi, io);

[Severity: High]
This is also a pre-existing issue, but does this teardown sequence race with
asynchronous DMA completion?

When fsi_stream_stop() invokes dmaengine_terminate_all(), it is an
asynchronous operation and doesn't wait for pending callbacks like
fsi_dma_complete() to finish.

Immediately after this, fsi_stream_quit() executes and sets
io->substream =3D NULL.

If fsi_dma_complete() runs concurrently on another CPU, it could execute
fsi_pointer_update() which directly dereferences io->substream->runtime
without a NULL check:

fsi_pointer_update() {
    struct snd_pcm_substream *substream =3D io->substream;
    struct snd_pcm_runtime *runtime =3D substream->runtime; // NULL derefer=
ence
    ...
}

A similar race exists in the PIO path where fsi_pio_transfer() checks
fsi_stream_is_working() under lock, but drops it before accessing
io->substream in fsi_pio_get_area().

Could this lead to a kernel panic?

>  		break;
>  	}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605121955.1056=
61-1-phucduc.bui@gmail.com?part=3D3

