Return-Path: <devicetree+bounces-308119-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MdGAEvOFJmozYAIAu9opvQ
	(envelope-from <devicetree+bounces-308119-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 11:05:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3D36545F4
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 11:05:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VVJbGka8;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308119-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-308119-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4DD3A3025C76
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 08:50:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A3133B0AC7;
	Mon,  8 Jun 2026 08:50:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC9226AF4
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 08:50:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780908619; cv=none; b=PHDu9tUBoIq+noUQg/JgsCRGQ9TgFCeD7bEJHoz5fN9gDqPppLOjEZzFHZ/2HvDVNWpIIl4Hmlb3ynxJw07kalbHFVL+5lJh0ov6Lv6dgjhh+1iFi/cegbnaozUJmlWpec57RotIu3KshCGkeofaFVqv8N7ynSlrRVLN97JqKL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780908619; c=relaxed/simple;
	bh=ewUFH0jvq/z2o0J31Sv+y7Njunwz80bZr/RpLQR3OLA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Wt07ZBm9t1PMYcP6ApVC30yVh+3jFRMFTmx/cRe7Dk+ojsfPlJB9pmYTSrhIkF/Pvi0BrSsQ6IUKqDYU7rQnglWxadxCPcZOQHk3EYKAgPki+DhyRNUHolwdROm0KF+I1d4wnkrLZqxbfRMp9PMyX3mbZyQckA1pvtuv3RCmhGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVJbGka8; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B13D1F00893;
	Mon,  8 Jun 2026 08:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780908617;
	bh=BrAVbFMyLQ4iIl0ye1myDH6DDoIlsy5umMhK1LeKNHA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VVJbGka86HCtvuAne0KtAHhB3gwQQiTDQqygJdOEe3ymQJRNJZACztHJT0yituK+S
	 kfb5itosnzWjrS8vR67y9ql2pb7kLH3PSgTC/siWxIkwB5zS7+Ghkql8vocWUE+vNw
	 /ur6j1H0GpgTglmkMkg+EX0BVXAK081F5FT31o+RyVpnePCkhggDPaNlUOrAMvbmZm
	 FEJD2udr+oNG1ayhSWMJQMDyjhetxetTVJ/uOFxTS1AML7qNt20zAYVWH+7OF0hZW3
	 AHBJyLk4thyAbXd/IEGkj88ZlZWfxRrNzOly+v6sLKI7hGNbzZ0aeNWzOx0CCZhmnZ
	 1tI8M6b2G75ug==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v0 1/7] ASoC: codecs: ES8389: Modify volatile_register
Reply-To: sashiko-reviews@lists.linux.dev
To: "Michael Zhang" <zhangyi@everest-semi.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260608083540.12581-2-zhangyi@everest-semi.com>
References: <20260608083540.12581-2-zhangyi@everest-semi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Jun 2026 08:50:17 +0000
Message-Id: <20260608085017.9B13D1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308119-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:zhangyi@everest-semi.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,everest-semi.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4B3D36545F4

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Incomplete volatile register whitelist in es8389_volatile_register=
 defaults critical configuration registers to volatile, preventing caching =
and causing state loss on system resume.
--

commit 6d3835182ae5a01c7bc864c068b51c95ea47c9c2
Author: Zhang Yi <zhangyi@everest-semi.com>

ASoC: codecs: ES8389: Modify volatile_register

This commit modifies the volatile register handling for the ES8389 codec.
It replaces a simple address range check with a specific whitelist of
registers that should be considered non-volatile.

> diff --git a/sound/soc/codecs/es8389.c b/sound/soc/codecs/es8389.c
> --- a/sound/soc/codecs/es8389.c
> +++ b/sound/soc/codecs/es8389.c

[ ... ]

> @@ -50,10 +50,29 @@ static const char * const es8389_core_supplies[] =3D {
>  static bool es8389_volatile_register(struct device *dev,
>  			unsigned int reg)
>  {
> -	if ((reg  <=3D 0xff))
> -		return true;
> -	else
> +	switch (reg) {
> +	case ES8389_ADC_HPF1:
> +	case ES8389_ADC_HPF2:

[ ... ]

> +	case ES8389_MIX_VOL:
> +	case ES8389_DAC_MIX:
> +	case ES8389_ADC_RESET:
>  		return false;
> +	default:
> +		return true;
> +	}
>  }

[Severity: High]
This is a pre-existing issue, but since you are updating the volatile
register logic here, could this default-to-true behavior cause problems
during system resume?

Critical configuration registers like ES8389_DMIC_EN and ES8389_ADC_MODE
(managed by the 'ADC MUX' user kcontrol), as well as format registers
configured by es8389_set_dai_fmt() (e.g., ES8389_ADC_FORMAT_MUTE and
ES8389_DAC_FORMAT_MUTE), are not explicitly listed in this switch statement.

Because they fall through to this default case, they are marked as
volatile and bypass the regmap cache. When the system resumes from
suspend, regcache_sync() will not restore these registers.

If the codec resets these registers to hardware defaults upon resuming,
won't user-selected mux configurations and DAI formats be permanently
lost, potentially breaking the audio path?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608083540.1258=
1-1-zhangyi@everest-semi.com?part=3D1

