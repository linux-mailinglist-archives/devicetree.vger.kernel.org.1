Return-Path: <devicetree+bounces-308622-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 82dqFf+DJ2rTyQIAu9opvQ
	(envelope-from <devicetree+bounces-308622-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 05:09:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FC565BFC0
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 05:09:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=FFmfDmUK;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308622-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-308622-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 44BCA301C9F5
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 03:09:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2050363C63;
	Tue,  9 Jun 2026 03:09:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0B2364EA6
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 03:09:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780974584; cv=none; b=UBsGqvF1I3+Xawrs27TG7MzbW7cBwIzhqHwfridBhA9f6NVzfGM6hLhYFaOqmuT6yeaf/yCHtscjIOWRrPNjmGrwpFegB/Ne5zoTIfIgK77J/HH1S0/HWKk4jtVG1Pk8hT4XoaFevy8k3JQFHI8c9a7joMy9GF7152urs8/u/9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780974584; c=relaxed/simple;
	bh=IuQY2+WyWx3xZNvypzKrJR0Au+9E6Pt+p1GhhKLi2iY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=RGS8KJZYMdl0jhFNXTF4OUvvhgNyjZxNE3+hm4C4UMwHaNw3mEtbTdld5fQ8C86moMp6VFvFKT51/HWI17BGS3HchhcQINSSlKgb5UmAiv5oJRn3ozzZ5DBaEqAnen7pdn6/OA+hK0ubGAlQ+uiOvhkFdnON9bJ0Y+yA9cR+9YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFmfDmUK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5705C1F00893;
	Tue,  9 Jun 2026 03:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780974579;
	bh=ynVS00Px/aIVFOa7rjML0Bn9v0C2s3fphiaGV/RauEI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=FFmfDmUKZpd82ASwUj5tUEnLPxrkuDR1zBmFtFzFiVy1WXFI/RW6Yd22XYNLSnEqa
	 P5LnC8ohEMx86LF11RWgUyUQ4i/OqKmGwqzQwc7n5Jhw5u/awnQdvlPkX6fzttIf8D
	 yux1Gne9xswS9kCfdt6/fhvHIDOZ4tbHGHgS/zhkpXhM21360lXrMddFDSZTu9q3ik
	 Dcd7ExHrp/AVXyDpu7oJNX87B0dGjeL8A8RNjl1OS+db6fzaNtL3lmKjzu33ulkT8S
	 JSqECsDKLw6LygJHJmhpqZxkfK9371wxQ3XCi6QBoEn/DrY++J0vMxIUY9/NjSWWL5
	 36/tqiqpr4U0Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/7] ASoC: codecs: ES8389: Modify the clock table
Reply-To: sashiko-reviews@lists.linux.dev
To: "Zhang Yi" <zhangyi@everest-semi.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260609025605.16945-4-zhangyi@everest-semi.com>
References: <20260609025605.16945-4-zhangyi@everest-semi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 03:09:38 +0000
Message-Id: <20260609030939.5705C1F00893@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-308622-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:zhangyi@everest-semi.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,everest-semi.com:email,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 44FC565BFC0

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [Medium] Newly added coefficient row for `mclk=3D12288000`, `rate=3D19200=
0` is artificially restricted to a single voltage.

Pre-existing issues:
- [High] Modulo arithmetic bug in `get_coeff()` causes `0` to act as a wild=
card, rendering specific configuration rows unreachable.
- [High] Silent failure in `es8389_pcm_hw_params()` when clock coefficients=
 are not found.
--

commit d6630cad628ca425c2d2879ffc7997f87b417d34
Author: Zhang Yi <zhangyi@everest-semi.com>

    ASoC: codecs: ES8389: Modify the clock table
   =20
    Updated the configuration for certain frequencies

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

[Severity: Medium]
Is it intentional to restrict this new row to dvdd_vol=3D1 and dmic_sel=3D0=
, rather
than using the wildcard values (2, 2) like the other 192000Hz row?

According to the logic in get_coeff(), dvdd_vol=3D1 strictly requires vddd=
=3D1
(ES8389_3V3). If the device is running on 1.8V (vddd=3D0), get_coeff() will
reject this row and return -EINVAL. Could this break 192kHz playback on 1.8V
systems?

>  };
> =20
>  static inline int get_coeff(u8 vddd, u8 dmic, int mclk, int rate)

[Severity: High]
This is a pre-existing issue, but does the bitwise and modulo arithmetic he=
re
unintentionally cause 0 to act as a wildcard?

In get_coeff():

	vddd_det |=3D ~(coeff_div[i].dvdd_vol % 2) & 0x01;
	dmic_det |=3D ~(coeff_div[i].dmic_sel % 2) & 0x01;

Because 0 % 2 =3D=3D 0, the expression ~0 & 1 evaluates to 1. This means an=
y row
with dmic_sel =3D=3D 0 or dvdd_vol =3D=3D 0 acts as a wildcard and matches =
regardless
of the actual requested dmic or vddd values.

For configurations where a 0 row precedes a 1 row for the same frequency, l=
ike:

	{50, 400000, 8000, ..., 2, 0},
	{50, 400000, 8000, ..., 2, 1},

get_coeff() will always return the first row (the 0 configuration), making =
the
second row completely unreachable and preventing correct hardware setup when
dmic=3D1 is requested.

[Severity: High]
This is also a pre-existing issue, but when get_coeff() fails to find a
matching row and returns -EINVAL, es8389_pcm_hw_params() does not propagate=
 the
error:

	coeff =3D get_coeff(es8389->vddd, dmic_enable, es8389->sysclk, params_rate=
(params));
	if (coeff >=3D 0) {
		regmap_write(...);
		...
	} else {
		dev_warn(component->dev, "Clock coefficients do not match");
	}

	return 0;

Returning 0 causes ALSA to continue preparing and triggering the PCM stream
without configuring the codec hardware properly. Could this lead to undefin=
ed
behavior or silent audio failures?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609025605.1694=
5-1-zhangyi@everest-semi.com?part=3D3

