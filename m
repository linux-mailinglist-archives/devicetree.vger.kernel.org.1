Return-Path: <devicetree+bounces-320748-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JLAKJQq8Smq0GwEAu9opvQ
	(envelope-from <devicetree+bounces-320748-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 22:18:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D674470B4E1
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 22:18:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jA5Qbvzq;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320748-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320748-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9829C30087AB
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 20:18:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 325E52D77E6;
	Sun,  5 Jul 2026 20:18:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175201DB356
	for <devicetree@vger.kernel.org>; Sun,  5 Jul 2026 20:18:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783282696; cv=none; b=r8YwWN351Pf8WAZggrUOlamm2kasBknnWYZxr8Pa2HT/K387V4daGHJoCqpUOlyIw+hi1tESCrvGAgbp5CpnDO/bl6Gpg/hoLR0549GifVcze6nkM+VzXlf6J35iKCvvNZ0R6jHSsm9L+2kwYE4VxlfVllBw3bmmFghdAPJFCSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783282696; c=relaxed/simple;
	bh=wfSkdbGwIH8FvHYANJzTumUhDocXQKU4Fi+dnfpsh5g=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=AiwS58uYGrZqY4GSMbG0Z7W8pmnW4eTTSjaZ3AEURVJN6Vzil8YVuG4kRS93kl4NPfD+Uzpgheba49LZwYWO9wYZ+2ng023Ps4HYkVAsRSFlB3j9e4jOOmD+R35rVFhOpfCqoifwj07L6/Kr1cCttlF1uVSQLLfu2/2JM6zsICw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jA5Qbvzq; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84F3A1F000E9;
	Sun,  5 Jul 2026 20:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783282694;
	bh=JRXJ+o5Rf6OcrevURysy8lNR+NIKPX3iufytHFiHAF8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jA5QbvzqstqEnll8w+rVNIlPvfRwelgYxM+YSByVUjU2qwyRvBe7rks6GyCwzP0lC
	 tBK+GhMBT96aNx9eLDiRNNMmzijXhUt5cX4kVA90Ii7IOKX+1++l6/MW5GETmCbTHi
	 20i+rqaDeF7EZf4GNd4ow9RAtTOf6veKdLabkdJJG9wCONR94lwL5S5qxWAY0a0WDl
	 +5YMf4/cYjXePwkMAl/RQzyTIXb7QUvUF4KIYJlUvGJqmDZStvk47TbwKoMNH371x+
	 /wxtkfABaK+UrunymDeuD5nweAOSvuzOkeYWLdDmNR/Uuw8QYrKtc3x5zRUKAgdixx
	 4eOgC9GcyFeVg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC 2/6] ASoC: qcom: sdm845: use DSP_A format for TDM
 codec DAIs
Reply-To: sashiko-reviews@lists.linux.dev
To: "David Heidelberg" <david@ixit.cz>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260705-pixel3-audio-v1-2-3b66f33859f1@ixit.cz>
References: <20260705-pixel3-audio-v1-0-3b66f33859f1@ixit.cz>
 <20260705-pixel3-audio-v1-2-3b66f33859f1@ixit.cz>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 05 Jul 2026 20:18:14 +0000
Message-Id: <20260705201814.84F3A1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320748-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:david@ixit.cz,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,ixit.cz:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D674470B4E1

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Missing NULL check on `codec_dai->component->name_prefix` causes a=
 kernel panic if the device tree omits the `sound-name-prefix` property.
--

commit 34e4567f69218c8e1f7099e3d2b65d5ada37de5a
Author: David Heidelberg <david@ixit.cz>

ASoC: qcom: sdm845: use DSP_A format for TDM codec DAIs

This commit modifies sdm845_snd_startup() to use the DSP_A timing format
instead of DSP_B for TDM codec DAIs to match the expected hardware behavior.

> diff --git a/sound/soc/qcom/sdm845.c b/sound/soc/qcom/sdm845.c
> --- a/sound/soc/qcom/sdm845.c
> +++ b/sound/soc/qcom/sdm845.c
> @@ -385,7 +385,7 @@ static int sdm845_snd_startup(struct snd_pcm_substrea=
m *substream)
>  				TDM_BCLK_RATE, SNDRV_PCM_STREAM_PLAYBACK);
>  		}
> =20
> -		codec_dai_fmt |=3D SND_SOC_DAIFMT_IB_NF | SND_SOC_DAIFMT_DSP_B;
> +		codec_dai_fmt |=3D SND_SOC_DAIFMT_IB_NF | SND_SOC_DAIFMT_DSP_A;
> =20
>  		for_each_rtd_codec_dais(rtd, j, codec_dai) {
> =20
>  			if (!strcmp(codec_dai->component->name_prefix,
>  				    "Left")) {

[Severity: High]
This is a pre-existing issue, but can this lead to a NULL pointer dereferen=
ce?

If a codec's device tree node omits the sound-name-prefix property, the ASoC
core sets component->name_prefix to NULL. Passing this directly to strcmp()
will cause a kernel panic during driver startup.

The same pattern appears immediately below this for the "Right" channel
prefix, and also in sdm845_tdm_snd_hw_params(). Should there be a NULL check
added before comparing these prefixes?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260705-pixel3-aud=
io-v1-0-3b66f33859f1@ixit.cz?part=3D2

