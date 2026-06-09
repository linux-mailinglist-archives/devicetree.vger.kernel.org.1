Return-Path: <devicetree+bounces-309244-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SDG8MRhJKGpsBgMAu9opvQ
	(envelope-from <devicetree+bounces-309244-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 19:10:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D2A662C92
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 19:10:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JDhDi4K3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309244-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309244-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B2B7F30D9671
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 16:43:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49962427A0C;
	Tue,  9 Jun 2026 16:43:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412A63FBB4E
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 16:43:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781023402; cv=none; b=qnJvsSYfhlwHgEaoQ3vFQRQHfKNXgU4zeugZ0R0TddkZmGxL8o9p3dqBeOE4elNpdnHDrhSWAo7q3nBpEV1OkaERNEvLOngrwdd9YpCiaWy5Ala7IPoYJn9rogonS7bWH6n3Gy0e1D9J1OPnXDdBax5dXWFYa2t2dPupYf6L7JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781023402; c=relaxed/simple;
	bh=s4b6LKTDbBvwZ8cPN/Mr22GRS1I7mat/njKu7GutF0Y=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=kqeNhaK9gKPMbZOWYNZC+3XG/+qZ7JDH5UVKpv28Y6tDqxOxoqoBIX1NWGpmVmzsuVAMoipxGxmrOt7U2bo/eI4cOWLPAAHgTrlKMSqJ/P6dlpC2lN4KEvaG6xphpsMK7F5ilN13CkgAu6vB3pvGD2VQ0xB4Em3x6+b8rj9iOHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDhDi4K3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0BAD1F00893;
	Tue,  9 Jun 2026 16:43:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781023400;
	bh=FVh4/SMEcltsFEymo5lmzo6gXUb6OmXfL6j1CKXyR/Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JDhDi4K3MvHorPOe6uR79qJb+K2nPFReJTbmxnFbDxE7tjRKxNHpxV650LyI9QpnF
	 QW0Hs85eFLknnpOk6COJTu+vkb2unu2nKnWvAWeGrb6pc1IAe95WnO5u2Wo56hpEuX
	 259HG0saYjoaJO5icXSpaH5TLjfSnePmZ8kNJ4OlKgYcHD3yT6e2jvwhM8vv7nzAuX
	 7STAND3iqvASz7NIoDR1Jq7lGGIDdA5tLsT/0t0FPQ1VJRFl18W0GR3GbdwjLfgBZE
	 HOA2M/+0VLAt9ff7SCuQgKwyjkCX85wQmqurFWYpASTp8HfwHMcbLYbnfQiEH534BC
	 zxtXKvbdzooiA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 11/15] ASoC: qcom: sm8250: add support for
 LPI_MI2S_RX_0 and LPI_MI2S_TX_3
Reply-To: sashiko-reviews@lists.linux.dev
To: "Richard Acayan" <mailingradian@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260609162255.31074-12-mailingradian@gmail.com>
References: <20260609162255.31074-12-mailingradian@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 16:43:20 +0000
Message-Id: <20260609164320.B0BAD1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309244-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:mailingradian@gmail.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 24D2A662C92

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Hardware clock leak: MI2S sysclks are enabled on startup but never=
 disabled on shutdown
--

commit d56ecb81f1a498d069991569b37a6e2d484e4d23
Author: Richard Acayan <mailingradian@gmail.com>

ASoC: qcom: sm8250: add support for LPI_MI2S_RX_0 and LPI_MI2S_TX_3

This commit adds support for the LPI_MI2S_RX_0 and LPI_MI2S_TX_3 ports to
the sm8250 machine driver. It configures the DAI formats and sets the
sysclk for these new ports in the startup callback.

> diff --git a/sound/soc/qcom/sm8250.c b/sound/soc/qcom/sm8250.c
> index f193d0ba63d00..1952c599e004f 100644
> --- a/sound/soc/qcom/sm8250.c
> +++ b/sound/soc/qcom/sm8250.c
> @@ -112,6 +112,22 @@ static int sm8250_snd_startup(struct snd_pcm_substre=
am *substream)
>  		snd_soc_dai_set_fmt(cpu_dai, fmt);
>  		snd_soc_dai_set_fmt(codec_dai, codec_dai_fmt);
>  		break;
> +	case LPI_MI2S_RX_0:
> +		codec_dai_fmt |=3D SND_SOC_DAIFMT_NB_NF | SND_SOC_DAIFMT_I2S;
> +		snd_soc_dai_set_sysclk(cpu_dai,
> +			Q6AFE_LPASS_CLK_ID_INT0_MI2S_IBIT,
> +			MI2S_BCLK_RATE, SNDRV_PCM_STREAM_PLAYBACK);

[Severity: High]
This is a pre-existing issue, but does this code leak the hardware clock?

The machine driver enables the DSP MI2S IBIT clocks via
snd_soc_dai_set_sysclk() during stream startup, which sends an
AFE_PARAM_ID_CLOCK_SET command to the DSP.

However, looking at the rest of the driver, the associated .shutdown
callback (qcom_snd_sdw_shutdown) is specific to SoundWire and ignores
MI2S DAIs.

Because there is no matching logic to call snd_soc_dai_set_sysclk() with
a 0 frequency on stream close, will the DSP clock remain permanently
enabled after the first playback and prevent the DSP and SoC from
entering deep sleep states?

> +		snd_soc_dai_set_fmt(cpu_dai, fmt);
> +		snd_soc_dai_set_fmt(codec_dai, codec_dai_fmt);
> +		break;

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609162255.3107=
4-1-mailingradian@gmail.com?part=3D11

