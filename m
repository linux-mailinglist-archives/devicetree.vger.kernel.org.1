Return-Path: <devicetree+bounces-307741-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id glhlCu+QJGpf8wEAu9opvQ
	(envelope-from <devicetree+bounces-307741-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 23:28:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB1764E678
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 23:28:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=K0fw+7RL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307741-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307741-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 23A2C30074C6
	for <lists+devicetree@lfdr.de>; Sat,  6 Jun 2026 21:28:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B13F63C553B;
	Sat,  6 Jun 2026 21:28:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D2843C4B72
	for <devicetree@vger.kernel.org>; Sat,  6 Jun 2026 21:28:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780781288; cv=none; b=NYSZF4PbMef2/nQ+bJxBsj/Fipy1tPWJ8g7TyviJjBy43LR6zd/Do+0LItVH3TrAq6pVz0vIwvVa9dnPJNHidqiKcNOUpFOAFkujfoFKvVnnxBZ8JHYpSIbHK3jHoxCZ2YYlOUjGtstFGBGjDeW4ZFtesSbQY5YghSOCyoNpXqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780781288; c=relaxed/simple;
	bh=bRYaG8J91NM2baD8BW/U5F6w74wF+8OGKWf2RJDd47I=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=qBB83Gq4LpT1IJiaSeITuGpU1KiazV5Ql9xMaKILOXNc7SNPa3sUOF2JAooIoiv1dpyQ31S+cTKitcdS5BrCEe8iYWwFJxadgaSe88LI1DP/Htyq7MybuvZ0jpfL8HNjBbDBcQ/7gTsnLX62kKRJOsIk+3ixFhSFgae0+sIBD+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0fw+7RL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECF611F00893;
	Sat,  6 Jun 2026 21:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780781287;
	bh=61rXf7wc+sM9/sNY1AZiqnpIXoTP2+8Tyhs+Jlsqwsw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=K0fw+7RLdX8W0dTw43Glakd8STkfFGEeUo6k/XnHV3DK76Bra1ZiliBvj3rpkiDY3
	 Uec9yKSfcelRfxS8WYwKcneOezJDxGdiocQCtjLihR9w5T1xhbOjNdhhSVjyET80Ve
	 tbIisc2uFyMcGu/HaeO1X42aZBnaUimRyDO6yPSqgt2wVxIeThbMVlFXRgBTOhstrm
	 xV+UpYKV3FMmFaDPhiOuHaWrhphDkLPYxtjcB9oHm36MzMq5AMLvahhP0WfhOb3Yud
	 2mn3BA//LlRgcH/buQxVGyTs7ouscwPgdAN8KSHWeUokO52i7AF2RuPpGIXH49k6Xr
	 n+i27ehhVjZ0A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/5] ASoC: qcom: sc8280xp: Add per-card data
Reply-To: sashiko-reviews@lists.linux.dev
To: "Hongyang Zhao" <hongyang.zhao@thundersoft.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260607-rubikpi-next-20260605-v1-4-7f334e16fea6@thundersoft.com>
References: <20260607-rubikpi-next-20260605-v1-4-7f334e16fea6@thundersoft.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 06 Jun 2026 21:28:06 +0000
Message-Id: <20260606212806.ECF611F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307741-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:hongyang.zhao@thundersoft.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[thundersoft.com:email,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DEB1764E678

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Incorrect DAPM pin mask for 'Mic Jack' in qcs6490_rubikpi3_heads=
et_jack_pins causes microphone detection failure.
--

commit 869054356ad0f6ae035a50e1d5d5e99577638b9b
Author: Hongyang Zhao <hongyang.zhao@thundersoft.com>

ASoC: qcom: sc8280xp: Add per-card data

This commit converts the sc8280xp machine driver match data to a per-card d=
ata
structure to support board-specific MI2S codec requirements. It adds data f=
or
the QCS6490 RubikPi3 and a common headset jack helper.

> diff --git a/sound/soc/qcom/sc8280xp.c b/sound/soc/qcom/sc8280xp.c
> index 7925aa3f63ba0..1ccd7437cc52d 100644
> --- a/sound/soc/qcom/sc8280xp.c
> +++ b/sound/soc/qcom/sc8280xp.c

[ ... ]

> +static struct snd_soc_jack_pin qcs6490_rubikpi3_headset_jack_pins[] =3D {
> +	{
> +		.pin =3D "Mic Jack",
> +		.mask =3D SND_JACK_HEADPHONE,

[Severity: Medium]
Does this mask prevent correct DAPM routing for the microphone? It looks li=
ke
SND_JACK_HEADPHONE is used instead of SND_JACK_MICROPHONE for the Mic Jack =
pin.

> +	},
> +	{
> +		.pin =3D "Headphone Jack",
> +		.mask =3D SND_JACK_HEADPHONE,
> +	},
> +};

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260607-rubikpi-ne=
xt-20260605-v1-0-7f334e16fea6@thundersoft.com?part=3D4

