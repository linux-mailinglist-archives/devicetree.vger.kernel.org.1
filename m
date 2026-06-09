Return-Path: <devicetree+bounces-308627-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3zMJCLuGJ2o5ygIAu9opvQ
	(envelope-from <devicetree+bounces-308627-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 05:21:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B3365C04B
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 05:21:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=UmO1dQhe;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308627-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308627-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DC102301AA5E
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 03:20:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C308367B7C;
	Tue,  9 Jun 2026 03:20:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30415367B6B
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 03:20:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780975251; cv=none; b=WXc3Z/JOymwus4v/VasV8fUG0NR2GiDZiBPJGoHUgUo2GH+nJgK0/owoHe0Vk0q8Zh0SgtnyrTf4hHiTFxjw+b9XdZIS8kFigFb8z6hY5yddsczIvVv1g1K6aQ8x/SUXAvS59wC8Zi609fNDo/lFSeK6zZkt2Qb3Gj06wgUG9cM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780975251; c=relaxed/simple;
	bh=UZ1FqrmcecGrLnNxUghAdsTBNHft2z7EPnqROecYqGc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=A9QSiJgeiNFiLfaRkaTy9K8kzL6Km1LjPWSDLDFnF/s5qeXoVQVc24c4XwJPADlRcEs5jPORTSjPwmoUVetOKkRCkzZCZJSvMLX5LjPeBMKEZ35AdGCioO7NQkVU9fdZCR/dCEgt/ziZHuJ7QptHcxWt02fMUagopn09wUmBDUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmO1dQhe; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D39D1F00893;
	Tue,  9 Jun 2026 03:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780975249;
	bh=rX/wcZjPdfGlyP+46ayhDy4LRNE79mZDVUjY+YQOcF0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UmO1dQhe7XAzoqWbrcKkUpeIgAiyl24gXqFWZK45i3YCwm2pjqnGfvG3ZS3nSwmgZ
	 75r2q+yDrVEAVim/5Ik1tsv7z2KlVGb0gqWP9kGtqo9uV/EY1xnCna7bRpcrgY85UZ
	 D0VGS9LugVmRVAOwSTe4i3Ezzv5u1juaptMUiewQcZgpswrEcTVsN8uBJm1FXnLSWE
	 1TpOcoA+oqjwDQ9a5vDLS84udgj7CMUOz6g2BJ56YBxAtpf8JagwRvcgGaPCSWehNw
	 4Qxqn4dmvy/lIb+Tvj5Hqsm7GXZG6tsMtJd2ih01wvLbBk8v2iKfzRoPOMen/fLjuC
	 QCLg5Vt8Q9BKg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/7] ASoC: codecs: ES8389: Fix the issue about mclk_src
Reply-To: sashiko-reviews@lists.linux.dev
To: "Zhang Yi" <zhangyi@everest-semi.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260609030623.17404-3-zhangyi@everest-semi.com>
References: <20260609030623.17404-3-zhangyi@everest-semi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 03:20:49 +0000
Message-Id: <20260609032049.8D39D1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308627-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url,everest-semi.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 67B3365C04B

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Incorrect BCLK (SCLK) frequency calculation when using SCLK as MCL=
K.
- [High] es8389_set_dai_fmt fails to clear the master mode bit when transit=
ioning to slave mode.
- [High] es8389_pcm_hw_params ignores the error from get_coeff() and return=
s 0 (success).
--

commit d51ce6794a54f470a01270d750f648c145cd7dce
Author: Zhang Yi <zhangyi@everest-semi.com>

ASoC: codecs: ES8389: Fix the issue about mclk_src

This commit fixes an issue with incorrect modifications to the mclk_src
variable. It changes mclk_src to a boolean and reads it using
device_property_read_bool, simplifying the MCLK configuration logic.

> diff --git a/sound/soc/codecs/es8389.c b/sound/soc/codecs/es8389.c
> index 9c816491648c7..7a9d5d42a05d0 100644
> --- a/sound/soc/codecs/es8389.c
> +++ b/sound/soc/codecs/es8389.c
[ ... ]
> @@ -607,9 +607,9 @@ static int es8389_pcm_hw_params(struct snd_pcm_substr=
eam *substream,
>  	regmap_update_bits(es8389->regmap, ES8389_ADC_FORMAT_MUTE, ES8389_DATA_=
LEN_MASK, state);
>  	regmap_update_bits(es8389->regmap, ES8389_DAC_FORMAT_MUTE, ES8389_DATA_=
LEN_MASK, state);
> =20
> -	if (es8389->mclk_src =3D=3D ES8389_SCLK_PIN) {
> +	if (es8389->mclk_src) {
>  		regmap_update_bits(es8389->regmap, ES8389_MASTER_CLK,
> -					ES8389_MCLK_SOURCE, es8389->mclk_src);
> +					ES8389_MCLK_MASK, ES8389_MCLK_FROM_SCLK);
>  		es8389->sysclk =3D params_channels(params) * params_width(params) * pa=
rams_rate(params);

[Severity: High]
This is a pre-existing issue, but does this calculation yield the correct
physical BCLK rate?

Using params_width() returns the logical sample width (e.g., 24 for S24_LE)
instead of the physical wire width, and this ignores TDM slot configuration=
s.

This could result in calculating a lower SCLK frequency than what is
physically driven on the bus, leading to an incorrect sysclk and the wrong
internal clock dividers.

Should this use snd_soc_params_to_bclk(params) instead?


Also in sound/soc/codecs/es8389.c:es8389_set_dai_fmt():

	switch (fmt & SND_SOC_DAIFMT_CLOCK_PROVIDER_MASK) {
	case SND_SOC_DAIFMT_CBC_CFP:
		regmap_update_bits(es8389->regmap, ES8389_MASTER_MODE,
				ES8389_MASTER_MODE_EN, ES8389_MASTER_MODE_EN);
		es8389->mastermode =3D 1;
		break;
	case SND_SOC_DAIFMT_CBC_CFC:
		es8389->mastermode =3D 0;
		break;

[Severity: High]
This is a pre-existing issue, but does the transition to slave mode properly
clear the hardware state?

When SND_SOC_DAIFMT_CBC_CFC is requested, the internal mastermode variable =
is
updated, but it appears ES8389_MASTER_MODE_EN is not cleared in the
ES8389_MASTER_MODE register. If the codec was previously set to master mode,
could this leave it incorrectly operating as a clock provider and cause bus
contention?


Later in sound/soc/codecs/es8389.c:es8389_pcm_hw_params():

	coeff =3D get_coeff(es8389->vddd, dmic_enable, es8389->sysclk, params_rate=
(params));
	if (coeff >=3D 0) {
		...
		regmap_write(es8389->regmap, ES8389_SYSTEM19, coeff_div[coeff].Reg0x19);
	} else {
		dev_warn(component->dev, "Clock coefficients do not match");
	}

	return 0;

[Severity: High]
This is a pre-existing issue, but should this function return an error code
when get_coeff() fails?

Currently, if get_coeff() fails to find a matching configuration, it prints=
 a
warning but unconditionally returns 0. Could this cause the ALSA core to
assume the hardware is correctly configured and proceed to start the stream,
potentially resulting in silent or distorted audio?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609030623.1740=
4-1-zhangyi@everest-semi.com?part=3D2

