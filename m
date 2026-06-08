Return-Path: <devicetree+bounces-308121-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Q34qIbWEJmrPXwIAu9opvQ
	(envelope-from <devicetree+bounces-308121-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 11:00:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DA26F65451D
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 11:00:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=npqbHjuU;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308121-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308121-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 038E930075EA
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 08:51:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9140A3B0ACD;
	Mon,  8 Jun 2026 08:51:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 720233AFD00
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 08:51:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780908706; cv=none; b=ajGNpQnE6ST9O5DB35vudfYNFrsoJTDjBsAgU6KQCHu0dv/G/sDCKILsy1JdcfTkc+tEPT5F4E+3UaPKaJZyvJahy4FGA9GQ78LEAYpmW8h6lkA+QwPq0yFZB99qLyHl8qH3esf0vz2aIEQ8uaaFbAYrabWbw8SVzfni3SGkZxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780908706; c=relaxed/simple;
	bh=ux56/4TJSEmltio+wU6OO1ZxDAesTYA3M4Gd85QD5Ko=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=SkKaVMaKLheQI05ppi+dJeqs9hG6xltpES07WhwkLfwtaNllM+ksUCTKZA0E/Rzn8cFsupSt7ExPXRoXepitrcZ2Xe4I/XnivoCQ+O2F6TeAWn4Uyyy7KpG99Lm2pNnK7DZGUeQ1KErdF+cGwfiEKKk4ooTz4XLAUUKbJCUPKxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npqbHjuU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D359F1F00893;
	Mon,  8 Jun 2026 08:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780908705;
	bh=QnNY1sUhE21CKN9G3VKPijvhS/PQzPpUDrMnDtgZtjs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=npqbHjuUlk0FMxDb+vJsnBJzMFcMubmEGIIwGK6jpnXhy0Usz8kuPE3kBwhX2avCH
	 Q8TNKQeRev2zD0VAE67JGjjnLPPTEQFrBGb2rENgvKincrXXMDTMxNp5A4G8uFZgqt
	 5AUHjaNOgPWFFhPUwJ5XocJAh4g/Jic7oicglvxfzS73va/Maz88iG/rrR8XbjZLUN
	 l1zaVjtYbYy5g5pioMRGzzqjRE+5APkzFuot12vISP4leFb5Kqbh+gboOLKoTjVzgw
	 51bhoN4rJE9sxci0PCYu/BDzWzxZsqbVRxS4ovzDfQjfzbnjxoZOtl+5TcrgMA4hgO
	 MApJU+tm/aikg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v0 3/7] ASoC: codecs: ES8389: Modify the clock table
Reply-To: sashiko-reviews@lists.linux.dev
To: "Michael Zhang" <zhangyi@everest-semi.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260608083540.12581-4-zhangyi@everest-semi.com>
References: <20260608083540.12581-4-zhangyi@everest-semi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Jun 2026 08:51:44 +0000
Message-Id: <20260608085144.D359F1F00893@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-308121-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:zhangyi@everest-semi.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,everest-semi.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DA26F65451D

Thank you for your contribution! Sashiko AI review found 5 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Bitwise logic in get_coeff() incorrectly treats dmic_sel=3D0 and d=
vdd_vol=3D0 as wildcards, shadowing specific clock configurations and break=
ing newly added entries.
- [High] Regulator reference leak on component removal.
- [High] Use of uninitialized memory if regmap_read fails in es8389_pcm_hw_=
params.
- [High] Use of uninitialized memory if regmap_read fails in es8389_resume.
- [High] es8389_pcm_hw_params silently ignores missing clock coefficients.
--

commit a0eb9b57ebbdde5147755b4d72d8594f88569a95
Author: Zhang Yi <zhangyi@everest-semi.com>

ASoC: codecs: ES8389: Modify the clock table

Updated the configuration for certain frequencies in the es8389 codec.

> diff --git a/sound/soc/codecs/es8389.c b/sound/soc/codecs/es8389.c
> index 638eb1f0462ea..cd8284da8c62c 100644
> --- a/sound/soc/codecs/es8389.c
> +++ b/sound/soc/codecs/es8389.c
> @@ -434,52 +434,54 @@ static const struct _coeff_div  coeff_div[] =3D {
[ ... ]
>  	{128, 24576000, 192000, 0x00, 0x50, 0x00, 0xC0, 0x18, 0xC1, 0x81, 0xC0,=
 0x00, 0x8F, 0x7F, 0xBF, 0xC0, 0x3F, 0x7F, 0x80, 0x12, 0xC0, 0x3F, 0xF9, 0x=
3F, 2, 2},
> +	{64, 12288000, 192000, 0x00, 0x41, 0x00, 0xC0, 0x18, 0xC1, 0x80, 0x00, =
0x00, 0x8F, 0x7F, 0xEF, 0xC0, 0x7F, 0x7F, 0x80, 0x12, 0xC0, 0x3F, 0xF9, 0x3=
F, 1, 0},
>  };
> =20
>  static inline int get_coeff(u8 vddd, u8 dmic, int mclk, int rate)

[Severity: High]
This is a pre-existing issue, but modifying this table highlights a bug
in get_coeff() that affects how these entries are matched.

Does the bitwise logic in get_coeff() incorrectly treat dmic_sel=3D0 and
dvdd_vol=3D0 as wildcards?

sound/soc/codecs/es8389.c:get_coeff() {
    ...
    vddd_det |=3D ~(coeff_div[i].dvdd_vol % 2) & 0x01;
    dmic_det |=3D ~(coeff_div[i].dmic_sel % 2) & 0x01;

    if (vddd_det && dmic_det)
        return i;
    ...
}

This unconditionally evaluates to 1 when dmic_sel or dvdd_vol is 0,
turning 0 into a wildcard instead of an exact match. This can shadow
specific clock configurations and render subsequent array entries with the
same rate/mclk unreachable.

[Severity: High]
This is a pre-existing issue, but could we fix a regulator reference leak
on component removal?

In es8389_probe(), regulators are retrieved and manually enabled, but the
corresponding es8389_remove() component teardown function does not disable
them:

sound/soc/codecs/es8389.c:es8389_remove() {
    struct es8389_private *es8389 =3D snd_soc_component_get_drvdata(compone=
nt);
    ...
    regmap_write(es8389->regmap, ES8389_ISO_CTL, 0xC1);
    regmap_write(es8389->regmap, ES8389_PULL_DOWN, 0x00);
}

Does this leak the regulator references when the I2C driver is unbound or
the module is removed?

[Severity: High]
This is a pre-existing issue, but does this code use uninitialized memory
if regmap_read() fails?

sound/soc/codecs/es8389.c:es8389_pcm_hw_params() {
    ...
    regmap_read(es8389->regmap, ES8389_DMIC_EN, &regv);
    dmic_enable =3D regv >> 7 & 0x01;
    ...
}

The return value of regmap_read() is ignored. If the I2C read fails,
regv contains uninitialized stack memory, causing dmic_enable to be randomly
set and potentially leading to invalid clock configurations.

[Severity: High]
This is a pre-existing issue, but does this code use uninitialized memory
if regmap_read() fails upon resuming?

sound/soc/codecs/es8389.c:es8389_resume() {
    ...
    regmap_read(es8389->regmap, ES8389_RESET, &regv);
    regcache_cache_bypass(es8389->regmap, false);

    if (regv =3D=3D 0xff)
    ...
}

Similar to hw_params, if the hardware is unresponsive and the read fails,
regv contains uninitialized stack memory, potentially causing unpredictable
branching.

[Severity: High]
This is a pre-existing issue, but does es8389_pcm_hw_params() silently igno=
re
missing clock coefficients?

sound/soc/codecs/es8389.c:es8389_pcm_hw_params() {
    ...
    } else {
        dev_warn(component->dev, "Clock coefficients do not match");
    }

    return 0;
}

If get_coeff() fails to find a valid clock configuration, this function log=
s a
warning but still returns 0 (success). Can this mislead the ALSA core into
running audio with a misconfigured codec clock tree?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608083540.1258=
1-1-zhangyi@everest-semi.com?part=3D3

