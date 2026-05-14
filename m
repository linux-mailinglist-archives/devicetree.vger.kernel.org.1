Return-Path: <devicetree+bounces-297279-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YMCPE+ZGBWoqUAIAu9opvQ
	(envelope-from <devicetree+bounces-297279-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 05:52:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E5FC253D679
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 05:52:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CD4ED3022B54
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 03:51:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CE853A7F68;
	Thu, 14 May 2026 03:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMPMIePY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED4B30675F
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 03:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778730717; cv=none; b=XQONdFKaQzjTRMZPvIJ3AoAGeqbNjHRizhSawJmBuxYGf27WrzMbS/USMAxUq2HpG74e2MFvMwnuX7FZCi2G14qGEOCfVOk/dE3Ao+5QycMPi6AvcfPXaGRrelZ2P8rztSPr5ftOsEUAdW478gUjiuwcFwE54iDOGvf0KLBsfMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778730717; c=relaxed/simple;
	bh=cbgOLomp/FJEHFeuPprZbFlc/Xmo1o37Q5h0s+aD5ls=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jOVnHXMlZTmHb9uRJa+eBhpAUTf4JYvAo0kPsCM3DsF6yPTLd5rKqRiCm9c7FrgjNFg6ubStMyY3W1X/4Tol4Iagc0+H3L6qRo7MPPQ+1lYpD+6dickRnkCTkwV6lSq9fPcCCNgEdtIbb7HTc22sZU888G6pR+M+iCq0VyLvm0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMPMIePY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81CEEC2BCB7;
	Thu, 14 May 2026 03:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778730717;
	bh=cbgOLomp/FJEHFeuPprZbFlc/Xmo1o37Q5h0s+aD5ls=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=FMPMIePYrQNcT5cfRAime1vnPsGUNP6Lb9tqRy7DYzKus2xNIGQ7K0+gKo96beQuX
	 v60Ddzt7bCfC/sDdjHJo7qkDpjx7bGvVaH2BpSAcf/A8k0fYuzwaVYmDFP6PoSPx6o
	 rUOvHnuAT5E3hgizUmWoetN8aztRpGmtpWAd0ky5DQKhXlz/WlE0zD+4eq3HxzW/lq
	 xek9LsNNM/d0V1x0PllLEZP/om2QQdCo0jrNlGlxZaeYoSa6a5imLtijHApM7MwiZ4
	 zrKDA5O2aTC77G2UGwp/PCbv+puoIrNuJjECbBVe4lgnYfgNAWPzp0rgzk0okK49RA
	 aHTfF2njREBbQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 09/17] ASoC: simple-amplifier: Introduce support for
 gpio-audio-amp
Reply-To: sashiko-reviews@lists.linux.dev
To: "Herve Codina" <herve.codina@bootlin.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260513081702.317117-10-herve.codina@bootlin.com>
References: <20260513081702.317117-10-herve.codina@bootlin.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 03:51:57 +0000
Message-Id: <20260514035157.81CEEC2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: E5FC253D679
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297279-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,bootlin.com:email,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Mixing of independent stereo audio paths in the DAPM graph due t=
o the use of a single PGA widget.
- [Low] Preprocessor macro `#define SIMPLE_AUDIO_SUPPORT_PGA` is defined in=
side a struct definition.
--

commit d8f2282bd54ac87735c5b891e08ae94ea9bfa366
Author: Herve Codina <herve.codina@bootlin.com>

ASoC: simple-amplifier: Introduce support for gpio-audio-amp

This commit introduces preliminary support for GPIO-driven audio amplifiers.
It adds compatible strings and DAPM tables for both mono and stereo variant=
s.

> diff --git a/sound/soc/codecs/simple-amplifier.c b/sound/soc/codecs/simpl=
e-amplifier.c
> index 3e644c1c26960..1704cdbb7de5d 100644
> --- a/sound/soc/codecs/simple-amplifier.c
> +++ b/sound/soc/codecs/simple-amplifier.c
> @@ -12,6 +13,9 @@
>  #include <sound/soc.h>
> =20
>  struct simple_amp_data {
> +	unsigned int supports;
> +#define SIMPLE_AUDIO_SUPPORT_PGA		BIT(0)
> +

This isn't a bug, but should this macro be defined outside the struct?

Macros are handled by the preprocessor and have file-wide scope, so placing=
 it
inside the struct can be misleading and goes against standard kernel coding
style.

>  	const struct snd_soc_dapm_widget *dapm_widgets;

[ ... ]

> +static const struct snd_soc_dapm_route simple_amp_stereo_pga_dapm_routes=
[] =3D {
> +	{ "PGA", NULL, "INL" },
> +	{ "PGA", NULL, "INR" },
> +	{ "PGA", NULL, "vdd" },
> +	{ "OUTL", NULL, "PGA" },
> +	{ "OUTR", NULL, "PGA" },
> +};

Does this routing mix the independent stereo audio paths?

By routing both INL and INR into a single PGA widget, and then routing that
PGA to both OUTL and OUTR, DAPM will see valid audio paths crossing over
(INL to OUTR, and INR to OUTL).=20

Could this cause incorrect power management behavior where playing audio on
just the left channel keeps the right channel's downstream widgets powered
up unnecessarily?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260513081702.3171=
17-1-herve.codina@bootlin.com?part=3D9

