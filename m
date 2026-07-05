Return-Path: <devicetree+bounces-320750-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3rQxE3K8SmrIGwEAu9opvQ
	(envelope-from <devicetree+bounces-320750-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 22:20:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC2070B505
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 22:20:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="OVzX2F5/";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320750-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-320750-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B72C53005ACF
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 20:20:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DB19369D67;
	Sun,  5 Jul 2026 20:19:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1093E360ECD
	for <devicetree@vger.kernel.org>; Sun,  5 Jul 2026 20:19:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783282798; cv=none; b=T/KQqR6RjafQWvF1Orua8KR0aN5cDbrm2JbDxyWMK6lyKVZy23SQb0EnU6Y9gcmk9bJNJzBTbwcEiUyU83Kyw5saZHar5JHlj9oeMFjWsD8jRSjjJhK9QXT78xdGkj/9LcqYV3njG9e7l5FfscT3k4itnOMYv2JwE1wXHmNghtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783282798; c=relaxed/simple;
	bh=UN33R1RVhFSEKk1t6gRjLHtNaR6S8w/tUUJVc2fLkFo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=I9D2aU6BIN1s4BgBYb3PxZTKfLo23VRdR8kOyOVk7g23D0m02faWsSDygoUZvyHozQj6tFkvHjDAt75AJykkrCHrgrlfXb9TU7XiaFgrKFKYkbhkOrbVoCzxU4/oa8N7t8sSf5oo7qj2ZXXJdkNZKGYQeMW+ylm4SL/U+wR/DI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVzX2F5/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74F541F000E9;
	Sun,  5 Jul 2026 20:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783282796;
	bh=OSUo7TUJOdd2IsP90iCL3fUuMzRszxxifdum8ZkWU68=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OVzX2F5/SVIbVpRknPoNgWwHaYS8HuI8myGO5cYBm1nCF5Bu7RNSVysR1gADxdOjw
	 R9x5rDyj5LdnCTxV+p6T5f5NzV57SUlQ0VDLkJii/zlf0Jhw7AjRqyU+UFxqVU5zhd
	 20jPWRH3uYRg/pWp2feHTUsuGZ4swyBo5Dy/sEVHvwmmjMbumSPUPYuuMX6KBKQQrB
	 Gsb182g/xspX0UKu9xrAm+7P51ifH7g+Sy9dH6wNfc+zWL0meRkppBY91B6FPdbztA
	 D39pQSp3ND0OFFGQPD+WvccMIQu2RcQIcLYD5eyu2UYh6cCmpqRisNg7eXeUs/RHxK
	 8dJpQg1iBxxgQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC 1/6] ASoC: qcom: sdm845: Demystify TDM masks a bit
Reply-To: sashiko-reviews@lists.linux.dev
To: "David Heidelberg" <david@ixit.cz>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260705-pixel3-audio-v1-1-3b66f33859f1@ixit.cz>
References: <20260705-pixel3-audio-v1-0-3b66f33859f1@ixit.cz>
 <20260705-pixel3-audio-v1-1-3b66f33859f1@ixit.cz>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 05 Jul 2026 20:19:56 +0000
Message-Id: <20260705201956.74F541F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320750-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:david@ixit.cz,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ixit.cz:email,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ABC2070B505

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The CPU DAI's capture mask is incorrectly configured to 0x0F (slot=
s 0-3) instead of 0xF0 (slots 4-7), breaking the V/I sense capture path. Th=
e patch exacerbates this by using the playback macro `SPK_TDM_RX_MASK` to c=
onstruct the capture mask, which creates a false semantic link and obfuscat=
es the underlying bug.
--

commit 7636e0a7627a4449334c3af3eda079faca90b76e
Author: David Heidelberg <david@ixit.cz>

ASoC: qcom: sdm845: Demystify TDM masks a bit

This commit updates the hardcoded TDM masks in the sdm845 machine driver
by defining them as bitmasks and utilizing them in the hw_params function.
It aims to describe which bits are used for each RX/TX slot.

> diff --git a/sound/soc/qcom/sdm845.c b/sound/soc/qcom/sdm845.c
> index 0ce9dff4dc525..edd2cc7a1c74f 100644
> --- a/sound/soc/qcom/sdm845.c
> +++ b/sound/soc/qcom/sdm845.c
[ ... ]
> @@ -129,8 +131,10 @@ static int sdm845_tdm_snd_hw_params(struct snd_pcm_s=
ubstream *substream,
>  			goto end;
>  		}
>  	} else {
> -		ret =3D snd_soc_dai_set_tdm_slot(cpu_dai, 0xf, 0,
> -				8, slot_width);
> +		ret =3D snd_soc_dai_set_tdm_slot(cpu_dai,
> +					       SPK_TDM_RX_MASK | BIT(2) |
> +					       BIT(3), 0,
> +					       NUM_TDM_SLOTS, slot_width);

[Severity: High]
This is a pre-existing issue, but does using SPK_TDM_RX_MASK here conflate
the CPU DAI capture mask with the playback RX macros?

Looking at the capture path in sdm845_tdm_snd_hw_params(), the CPU DAI's
capture mask is currently configured to 0x0F (slots 0-3), but the codecs
are configured to transmit on slots 4-7 (mask 0xF0). This mismatch causes
the V/I sense capture path to receive silence.

Since the DSP channel mapping maps channels to slots 0, 4, 8, and 12, an
active mask of 0x0F completely disables slots 4 and 8 on the TDM port.

Could the capture mask be updated to use LEFT_SPK_TDM_TX_MASK and
RIGHT_SPK_TDM_TX_MASK to correctly configure 0xF0, rather than building
0x0F out of the playback mask?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260705-pixel3-aud=
io-v1-0-3b66f33859f1@ixit.cz?part=3D1

