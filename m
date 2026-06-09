Return-Path: <devicetree+bounces-308626-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7yebHU6GJ2ouygIAu9opvQ
	(envelope-from <devicetree+bounces-308626-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 05:19:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E8E65C036
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 05:19:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WKjwkrRi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308626-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308626-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9A41530179EA
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 03:19:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0573035FF6E;
	Tue,  9 Jun 2026 03:19:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1EB52F7F0C
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 03:19:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780975179; cv=none; b=p9gE9iqiYu07M/hNENt9vHPf3QcqS17B9cwxPBJRyzdelqKjTKcF3QoOLQqdg0NleCthwWMLo5mKO6jCvNOtS+ML0PVDfJYZgI1M2WF2tpFT9lB2BB/nwe0ph672mlr8ROyenQLHUA7P1rmvs6y3rQtszE7dcc9TX9oTKn188JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780975179; c=relaxed/simple;
	bh=EHljuzcyJ8WO8qVqj4CQl8l2dF+l6HEMzVhHJ4H5A14=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QgpudvdoiQ12ScsEPJ5gWpqIDThrwLUb1Au0bmgNGSQc30PD17lYJmO4qsmW00Im6nUJIBVahcWI8m0mifYKaLH62U7NOAGVtiEmfDxzO9sgGOJWeP2+vv8PwgRJ1Mfz7XDjbwVJ9EyBN+H90HTfX17FJ+asoT3q14GnIsTetZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKjwkrRi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97CD81F00893;
	Tue,  9 Jun 2026 03:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780975178;
	bh=UuCA0Tb2wig1byva+kvUdw51YH6+Jutk4PRvWMR0pnM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WKjwkrRiaIXeWkP1Fz3PHNffGHjh8FxHTQ6orRHHIUZR5w4uJddYoyobVDOtsAeke
	 WGxnNKU3SFAQfLTICxb3DaOI5WGbXum3zpuIuM7onckr1XvA/1IT6sZmcPoSi5Evrv
	 v5QmkWzo4ywzQ6Xlv6HIqQsgG4D3+m6E94omeRnGMpSqgPPaMHgJ+tezWtYmvxHhzC
	 XFPQQgDsYldnArKNdz19gB6e1Nx2Sfeweq8jr5hUDlT5ZHI1y8ZfJs+Nse1jfMUeJU
	 fomax1/CQe4L423S9FuDsSLzwG0DP6FBRrQXjrUrCaXTERuBZnWXkTov5g7d8Vx0Hg
	 DN+xIwO6FnM7A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/7] ASoC: codecs: ES8389: Modify the clock table
Reply-To: sashiko-reviews@lists.linux.dev
To: "Zhang Yi" <zhangyi@everest-semi.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260609030623.17404-4-zhangyi@everest-semi.com>
References: <20260609030623.17404-4-zhangyi@everest-semi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 03:19:38 +0000
Message-Id: <20260609031938.97CD81F00893@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-308626-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url,everest-semi.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C4E8E65C036

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The matching logic in `get_coeff()` incorrectly treats `dmic_sel =
=3D=3D 0` and `dvdd_vol =3D=3D 0` as wildcards, causing subsequent specific=
 entries to be shadowed and become unreachable dead code.
- [High] Failure to find valid clock coefficients in the hardware parameter=
s callback only logs a warning but incorrectly returns success, leading to =
invalid hardware states.
- [High] Changing the DAI format dynamically to Slave Mode (`SND_SOC_DAIFMT=
_CBC_CFC`) fails to clear the hardware Master Mode enable bit.
--

commit d0ffd7a30dca1537de1cecec2b6513b14d3c847f
Author: Zhang Yi <zhangyi@everest-semi.com>

ASoC: codecs: ES8389: Modify the clock table

This patch modifies the ES8389 clock configuration table to update several
frequency settings and adds a new entry for the 192000Hz rate.

> diff --git a/sound/soc/codecs/es8389.c b/sound/soc/codecs/es8389.c
> index 7a9d5d42a05d0..6ad0b580068cf 100644
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

[Severity: High]
This is a pre-existing issue, but is it possible this newly added entry
unintentionally acts as a wildcard due to dmic_sel=3D0?

In get_coeff(), wildcard matching is implemented using ~(val % 2) & 0x01. S=
ince
0 % 2 =3D=3D 0, dmic_sel=3D0 will evaluate to 1, causing this entry to matc=
h both 0
and 1 at runtime.

Will this cause subsequent exact-match entries with the same parameters to =
be
shadowed and unreachable?

>  };
> =20
>  static inline int get_coeff(u8 vddd, u8 dmic, int mclk, int rate)

[Severity: High]
This is a pre-existing issue, but should es8389_pcm_hw_params() return an
error code when get_coeff() returns -EINVAL?

sound/soc/codecs/es8389.c:es8389_pcm_hw_params() {
    ...
	coeff =3D get_coeff(es8389->vddd, dmic_enable, es8389->sysclk,
                          params_rate(params));
	if (coeff >=3D 0) {
        ...
	} else {
		dev_warn(component->dev, "Clock coefficients do not match");
	}

	return 0;
}

Returning success to the ALSA framework despite failing to configure the
hardware clocks allows the stream to start in an unconfigured state. Can th=
is
result in broken or silent audio?

[Severity: High]
This is a pre-existing issue, but could dynamically switching to Slave Mode=
 in
es8389_set_dai_fmt() leave the hardware stuck in Master Mode?

sound/soc/codecs/es8389.c:es8389_set_dai_fmt() {
    ...
	case SND_SOC_DAIFMT_CBC_CFC:
		es8389->mastermode =3D 0;
		break;
    ...
}

While the driver updates its internal state to mastermode =3D 0, it appears=
 to
forget to call regmap_update_bits() to clear the ES8389_MASTER_MODE_EN flag.

If a dynamic switch occurs, will the hardware continue to drive the bus clo=
cks
and cause the audio interface to fail?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609030623.1740=
4-1-zhangyi@everest-semi.com?part=3D3

