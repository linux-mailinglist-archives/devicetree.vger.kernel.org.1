Return-Path: <devicetree+bounces-310072-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gPsbMUsrKmobjgMAu9opvQ
	(envelope-from <devicetree+bounces-310072-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 05:28:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BE78766DFAA
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 05:28:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VTx2jRYn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310072-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-310072-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AFD2430BF755
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 03:27:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FC3531326C;
	Thu, 11 Jun 2026 03:27:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A59D25F7B9
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 03:27:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781148428; cv=none; b=OYAWtupyLUp+UbflIH70ZsgcNLMaqHkncKBTg7wEv72N59FJCjG61zxwgtw+V2/u8CEZQuwtXRhkF1DbvjIYiY86wjjT51Rs2/KaiaVss0n4/nvKddHpa4m+zfjuUA9ffmzcEUNBU0Kqst7mfSW8/J59sfewFMhAOG86eHlEvhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781148428; c=relaxed/simple;
	bh=+FHkDzp61GYnIcdniKJXOYzD12xnGU1cMbIwcQImUxI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=i5fwTBAnebOcN16yPF8EEiQ+i/jkvXBfl9UplGCWSvrElE14OImbCaJF5OEIdY1PSgC5OXvujGAXIUqUeLX79ZNoMXc6Ly1RkUMI2bXLjmAOCpA2FXbxkrCHFTxByABBYDTJIEbtsTnSYvFO6iSaZZeb6c3nOdlyUF0YHL9sNZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTx2jRYn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 776561F00893;
	Thu, 11 Jun 2026 03:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781148426;
	bh=l+AE1NZq/8L2WT/KeT0tLP7v6CrJvxifmqEG+ZGHr1Q=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VTx2jRYnRKvaxvOH21V3WcBrnlpTRXxHlmXYIkgpDzOzHJRYKAlD9y+H2DcmqGsgT
	 iDhpe2IpRi6FWQEdBaPU52rjk38gLnoEUzLLCAL2jpNqx4/MlCAvoqyP9FkMW0wdH+
	 9+lXfJOhedLZjxXMwRIpmbgT+dFH9h1qLwQUb64UcTvO6Abs3b2ZLvrelIbW3x7rau
	 X9iODWmcW/gXukM8mdrY20AUxp3Hkiq1P6qaR8CNHzmINUKM4F1Z6tcNHNI41sBtZo
	 xQdWEZu51ZkeiY9C9VU/wwq4cNeZTuuwxkByGQ7ScnuKgngtZbowC5ocWsrvAJpBB3
	 cXO4Nlfhn9nwA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 4/7] ASoC: codecs: ES8389: Modify the clock table
Reply-To: sashiko-reviews@lists.linux.dev
To: "Zhang Yi" <zhangyi@everest-semi.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260611031824.4628-5-zhangyi@everest-semi.com>
References: <20260611031824.4628-5-zhangyi@everest-semi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Jun 2026 03:27:06 +0000
Message-Id: <20260611032706.776561F00893@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310072-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:zhangyi@everest-semi.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BE78766DFAA

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Flawed clock coefficient matching logic makes `dmic_sel =3D 0` and=
 `dvdd_vol =3D 0` act as wildcards, leading to incorrect hardware configura=
tion and dead code.
- [High] Unchecked `regmap_read()` return value leads to the use of uniniti=
alized stack memory for hardware configuration.
--

commit b24373f65176191e8456a8034960817f67429760
Author: Zhang Yi <zhangyi@everest-semi.com>

ASoC: codecs: ES8389: Modify the clock table

Updated the configuration for certain frequencies
If get_coeff does not find a value that matches the condition, return -EINV=
AL

> diff --git a/sound/soc/codecs/es8389.c b/sound/soc/codecs/es8389.c
> index 886069be1535f..647d9d62820e6 100644
> --- a/sound/soc/codecs/es8389.c
> +++ b/sound/soc/codecs/es8389.c
[ ... ]
> @@ -434,52 +434,54 @@ static const struct _coeff_div  coeff_div[] =3D {
[ ... ]
>  	{256, 24576000, 96000, 0x00, 0x40, 0x00, 0xC0, 0x10, 0xC1, 0x80, 0xC0, =
0x00, 0x9F, 0x7F, 0xBF, 0xC0, 0x7F, 0x7F, 0x80, 0x12, 0xC0, 0x35, 0x91, 0x2=
8, 2, 2},
>  	{128, 24576000, 192000, 0x00, 0x50, 0x00, 0xC0, 0x18, 0xC1, 0x81, 0xC0,=
 0x00, 0x8F, 0x7F, 0xBF, 0xC0, 0x3F, 0x7F, 0x80, 0x12, 0xC0, 0x3F, 0xF9, 0x=
3F, 2, 2},
> +	{64, 12288000, 192000, 0x00, 0x41, 0x00, 0xC0, 0x18, 0xC1, 0x80, 0x00, =
0x00, 0x8F, 0x7F, 0xEF, 0xC0, 0x7F, 0x7F, 0x80, 0x12, 0xC0, 0x3F, 0xF9, 0x3=
F, 1, 0},

[Severity: High]
This is a pre-existing issue, but will the wildcard matching logic in
get_coeff() cause this new entry to match incorrectly?

In get_coeff(), the wildcard logic uses modulo 2:

    dmic_det |=3D ~(coeff_div[i].dmic_sel % 2) & 0x01;

For dmic_sel =3D 0, 0 % 2 =3D=3D 0, which forces dmic_det to 1 regardless o=
f the
requested dmic state. This makes 0 behave exactly like the 2 wildcard. As a
result, entries intending to strictly match dmic =3D 0 (such as this newly
added entry) will incorrectly match any DMIC state.

Could this also cause existing entries like `{... 2, 0}` to mask subsequent
`{... 2, 1}` entries, resulting in unreachable dead code and incorrect
hardware coefficients being applied?

>  };
> =20
>  static inline int get_coeff(u8 vddd, u8 dmic, int mclk, int rate)
[ ... ]
> @@ -657,7 +659,8 @@ static int es8389_pcm_hw_params(struct snd_pcm_substr=
eam *substream,
>  		regmap_write(es8389->regmap, ES8389_SYSTEM18, coeff_div[coeff].Reg0x18=
);
>  		regmap_write(es8389->regmap, ES8389_SYSTEM19, coeff_div[coeff].Reg0x19=
);
>  	} else {
> -		dev_warn(component->dev, "Clock coefficients do not match");
> +		dev_err(component->dev, "Clock coefficients do not match");
> +		return -EINVAL;

[Severity: High]
This is a pre-existing issue, but could the lack of error checking on
regmap_read() lead to the use of uninitialized stack memory for hardware
configuration?

Earlier in es8389_pcm_hw_params(), the driver calls regmap_read() without
validating its return value:

    regmap_read(es8389->regmap, ES8389_DMIC_EN, &regv);
    dmic_enable =3D regv >> 7 & 0x01;

If the underlying communication fails, the local variable regv remains
uninitialized. This stack memory is then immediately evaluated when selecti=
ng
coefficients. Could this cause the driver to select and apply random,
non-deterministic clock coefficients to the hardware?

>  	}
> =20
>  	return 0;
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260611031824.4628=
-1-zhangyi@everest-semi.com?part=3D4

