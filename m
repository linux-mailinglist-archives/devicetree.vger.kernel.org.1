Return-Path: <devicetree+bounces-308122-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XmxmKOOEJmrWXwIAu9opvQ
	(envelope-from <devicetree+bounces-308122-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 11:01:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F39D5654526
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 11:01:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WFyXPG53;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308122-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308122-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4597E30086F4
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 08:52:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82E5C3B1035;
	Mon,  8 Jun 2026 08:52:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 760D13AFD00
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 08:52:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780908762; cv=none; b=h374Hu/L5biLXUqp49LiOMKEYQz9yGsl/8P4MrTn7GpyOBsweUpdTj/GiRae/U/HKqcNpmUkD6zZbfAQznjPZlsmJL/AnYd9jpFCJpjXZrzvikL6eXubHBRmTHX3I8XPA5OXZOkmW/imT8r6/nVTjbsgABhaPLcSVvBYcTA0QK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780908762; c=relaxed/simple;
	bh=7D56YVzupes1l2eMfafcEDXYnNUkfLa3tMJd9k7Dm6I=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=HPr87++/nyp7tFnxTn69elMmLtzd1cRqvA2Z663h14NPYXN2T9c8BeM3QORjTeExoqPJuhTRIxFZaX1SdyYN6snMWpXUokBylNLuG9X7P1hAvk+sdziH5WO5SPU0utmFlvA5pksvSoyER+2ZjsDVAywnrnMcU9QOPhu3rwN6WZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFyXPG53; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F04621F00893;
	Mon,  8 Jun 2026 08:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780908761;
	bh=oxYzuTvd7PrmVR3TrdeVPnHquVAvACj3FjIdSoBEvjY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WFyXPG53qRl2arIaB3fbAh9wX+hoRje1STbHfvrH3BgZ7XIIAFRLNdKV0KNpSc1iD
	 Mq1AI2h8y3Fl9M+Q5MKFtpKMWW7BJBXoLgsgmRvccHAnCORRNZyQLbg9GfSLGeMGWc
	 vZ+/10oP1tUoUc3pd0+2ck4AxmWclz8LA/SLudQYfxf0h5WALfXKnwk7fvP3FDBiDN
	 5hxb4pP/SvgrJZBQWneoHglwRASN2Sfin32kfjBxPWMve/v3XZjKeZ7o3QwFgrO3LS
	 hGW8txIKis9dl6foXYpnKirW6p1hG2mgUek9uEtqLLtyUQgk8Cz55EqLPhGashSwS+
	 9iMX1KHsn4quw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v0 2/7] ASoC: codecs: ES8389: Fix the issue about
 mclk_src
Reply-To: sashiko-reviews@lists.linux.dev
To: "Michael Zhang" <zhangyi@everest-semi.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260608083540.12581-3-zhangyi@everest-semi.com>
References: <20260608083540.12581-3-zhangyi@everest-semi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Jun 2026 08:52:40 +0000
Message-Id: <20260608085240.F04621F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308122-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:zhangyi@everest-semi.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,everest-semi.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F39D5654526

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Devicetree ABI Breakage and Hardware Leak in mclk_src Evaluation
--

commit 901f3e10a3b9643fed9b6bed617589331a04275d
Author: Zhang Yi <zhangyi@everest-semi.com>

ASoC: codecs: ES8389: Fix the issue about mclk_src

This commit addresses an issue with incorrect modifications to the mclk_src
configuration by updating the bitmask logic and hardware register definitio=
ns.

> diff --git a/sound/soc/codecs/es8389.c b/sound/soc/codecs/es8389.c
> index 9c816491648c7..638eb1f0462ea 100644
> --- a/sound/soc/codecs/es8389.c
> +++ b/sound/soc/codecs/es8389.c
> @@ -609,7 +609,7 @@ static int es8389_pcm_hw_params(struct snd_pcm_substr=
eam *substream,
> =20
>  	if (es8389->mclk_src =3D=3D ES8389_SCLK_PIN) {

[Severity: High]
Does this change break the devicetree ABI?

In es8389_probe(), the driver reads the "everest,mclk-src" devicetree prope=
rty
directly into the es8389->mclk_src variable:

sound/soc/codecs/es8389.c:es8389_probe() {
    ...
    ret =3D device_property_read_u8(component->dev, "everest,mclk-src",=20
                                  &es8389->mclk_src);
    ...
}

Since ES8389_SCLK_PIN is redefined below as (1 << 6), any existing device
trees using logical values like <0> or <1> will fail this equality check.
This will silently bypass the SCLK configuration and break audio functional=
ity,
unless device tree authors now populate the property with the raw hardware
bitmask <64>.

>  		regmap_update_bits(es8389->regmap, ES8389_MASTER_CLK,
> -					ES8389_MCLK_SOURCE, es8389->mclk_src);
> +					ES8389_MCLK_MASK, es8389->mclk_src);
>  		es8389->sysclk =3D params_channels(params) * params_width(params) * pa=
rams_rate(params);
>  	}

[ ... ]

> diff --git a/sound/soc/codecs/es8389.h b/sound/soc/codecs/es8389.h
> index d21e72f876a60..13ce241774dc8 100644
> --- a/sound/soc/codecs/es8389.h
> +++ b/sound/soc/codecs/es8389.h
> @@ -116,9 +116,10 @@
>  #define ES8389_TDM_SLOT               (0x70 << 0)
>  #define ES8389_TDM_SHIFT              4
> =20
> -#define ES8389_MCLK_SOURCE            (1 << 6)
> -#define ES8389_MCLK_PIN               (1 << 6)
> -#define ES8389_SCLK_PIN               (0 << 6)
> +#define ES8389_MCLK_MASK              (3 << 6)
> +#define ES8389_MCLK_SOURCE            (0 << 6)
> +#define ES8389_MCLK_PIN               (0 << 6)
> +#define ES8389_SCLK_PIN               (1 << 6)

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608083540.1258=
1-1-zhangyi@everest-semi.com?part=3D2

