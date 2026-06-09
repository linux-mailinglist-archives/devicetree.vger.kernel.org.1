Return-Path: <devicetree+bounces-308780-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YOTHLObBJ2qe1gIAu9opvQ
	(envelope-from <devicetree+bounces-308780-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 09:33:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B0365D40E
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 09:33:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="eLMed/q/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308780-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308780-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E1084304FBC4
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 07:32:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFF5F3DC84C;
	Tue,  9 Jun 2026 07:32:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD0853DBD7C
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 07:32:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780990369; cv=none; b=GZYqKmbYer5keEH0dXdcnJBqeT3Bz/wk9BcwXX/qkns9ddW+KWXO7Y4hwS9MbLeOifWDhUplKnjwNPMfhJMuswXP2XhhcY15qMxUIV9AIr26NNokKpOv9xKkBYmDNh6XTdzWNgdoMr+ZjE9eShoG9DZ7tYRjNscwoNuPg1JyP3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780990369; c=relaxed/simple;
	bh=QYCQraenKeKZAmS/OlxirfIbYAFnYofRaln7q07UgBs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=BIxzqexRq3RZfiHSGQJvXTWd3pYYq+4Msj6HTjpC4jbPj+hFdsu4o7Ue1vnG7IPpLCUUTzBgwxxAbyFkYCv9g/6cmKabHRo/iqZMueX24IKtipfmbmPMcosAxuJMrI1QIjLS317bQJwkR7j596xeBHPU/UDBsuZB3sGG/6AhgXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLMed/q/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C460C1F00899;
	Tue,  9 Jun 2026 07:32:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780990368;
	bh=ActeARb4WLUJ+AsOjhBGGCVWK/T77bjTAcjrJNTPI9E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eLMed/q/Nu5CRUd4wIlVDM273mMht4d5+2J1YnMPfi/Ypp+naRiNhQoitN4/R0U9z
	 s2dYU1taGiv86MpGdyIJCHHQE7Df6vnICc+UB11LvR6T1MwOfYHpRHA0NZDWElbTjM
	 vnFl54IeW/5hE5uGEiYxyqA198eI1nLh/t/rlLJ/cl4pr+987gbxAI04hltc1Rog9w
	 aQgYpQ6bkQtQAAOPdgmkunlGxZZVfFbC17nsF26qb70aO+VCNY6IVtyvs6Adkxo2q1
	 Srms6NtBtnuBrjUDPtTBCbeX/n3VttSYmUe3jtWjh+fVkolKxWFNohas/aCflKOcC1
	 eV/DHPOyYAVjw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/7] ASoC: codecs: ES8389: Modify volatile_register
Reply-To: sashiko-reviews@lists.linux.dev
To: "Zhang Yi" <zhangyi@everest-semi.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260609071732.20939-2-zhangyi@everest-semi.com>
References: <20260609071732.20939-2-zhangyi@everest-semi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 07:32:47 +0000
Message-Id: <20260609073247.C460C1F00899@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308780-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:zhangyi@everest-semi.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 54B0365D40E

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Critical configuration registers are incorrectly marked as volatil=
e, causing permanent state loss on suspend/resume.
- [High] Failure to check the return value of `regmap_read` leads to branch=
ing on and evaluating uninitialized stack variables.
--

commit 963a77368701e6888ce20ffbda8712f190e260d3
Author: Zhang Yi <zhangyi@everest-semi.com>

ASoC: codecs: ES8389: Modify volatile_register

This patch updates the es8389_volatile_register function to explicitly mark
certain registers as non-volatile, falling back to treating others as
volatile. It also adjusts the timing of when regcache_cache_bypass is
disabled in the es8389_resume function.

> diff --git a/sound/soc/codecs/es8389.c b/sound/soc/codecs/es8389.c
> index 449d9574b03a8..be7a36f17083f 100644
> --- a/sound/soc/codecs/es8389.c
> +++ b/sound/soc/codecs/es8389.c
> @@ -50,10 +50,29 @@ static const char * const es8389_core_supplies[] =3D {
>  static bool es8389_volatile_register(struct device *dev,
>  			unsigned int reg)
>  {
> -	if ((reg  <=3D 0xff))
> -		return true;
> -	else
> +	switch (reg) {
> +	case ES8389_ADCL_VOL:
> +	case ES8389_ADCR_VOL:
> +	case ES8389_MIC1_GAIN:
> +	case ES8389_MIC2_GAIN:
> +	case ES8389_DACL_VOL:
> +	case ES8389_DACR_VOL:
> +	case ES8389_ALC_ON:
> +	case ES8389_ALC_CTL:
> +	case ES8389_ALC_TARGET:
> +	case ES8389_ALC_GAIN:
> +	case ES8389_ADC_MUTE:
> +	case ES8389_OSR_VOL:
> +	case ES8389_DAC_INV:
> +	case ES8389_MIX_VOL:
> +	case ES8389_DAC_MIX:
> +	case ES8389_ADC_RESET:
> +	case ES8389_ADC_MODE:
> +	case ES8389_DMIC_EN:
>  		return false;
> +	default:
> +		return true;
> +	}
>  }

[Severity: High]
This is a pre-existing issue, but does defaulting to true for all other
registers omit key configuration registers from the cache?

Because volatile registers are skipped by regcache_sync() during resume,
registers such as ES8389_MASTER_MODE, TDM settings, and clock dividers will
not be restored if they are treated as volatile. Could this break the audio
formatting and cause playback or capture to fail after a suspend and resume
cycle?

[ ... ]

> @@ -861,13 +880,13 @@ static int es8389_resume(struct snd_soc_component *=
component)
>  	regcache_cache_only(es8389->regmap, false);
>  	regcache_cache_bypass(es8389->regmap, true);
>  	regmap_read(es8389->regmap, ES8389_RESET, &regv);
> -	regcache_cache_bypass(es8389->regmap, false);
> =20
>  	if (regv =3D=3D 0xff)

[Severity: High]
This is a pre-existing issue, but does the lack of a return value check on
regmap_read() leave regv uninitialized if the I2C read fails?

If the read fails, evaluating the uninitialized stack variable regv will
unpredictably dictate whether a full hardware initialization is performed.

This same pattern appears to exist in other places as well:

sound/soc/codecs/es8389.c:es8389_init() {
    ...
    regmap_read(es8389->regmap, ES8389_MAX_REGISTER, &reg);
    es8389->version =3D reg;
    ...
}

and

sound/soc/codecs/es8389.c:es8389_mute() {
    ...
    regmap_read(es8389->regmap, ES8389_CSM_STATE1, &regv);
    if (regv !=3D ES8389_STATE_ON) {
    ...
}

Could these lead to inconsistent hardware states or silent audio failures?

>  		es8389_init(component);
>  	else
>  		es8389_set_bias_level(component, SND_SOC_BIAS_ON);
> =20
> +	regcache_cache_bypass(es8389->regmap, false);
>  	regcache_sync(es8389->regmap);
> =20
>  	return 0;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609071732.2093=
9-1-zhangyi@everest-semi.com?part=3D1

