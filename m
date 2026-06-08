Return-Path: <devicetree+bounces-308118-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XMylMZKEJmq+XwIAu9opvQ
	(envelope-from <devicetree+bounces-308118-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 11:00:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9648A654500
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 11:00:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Nd8EIqlG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308118-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308118-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DC1E93092D56
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 08:49:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90EAE3AFCFF;
	Mon,  8 Jun 2026 08:49:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C1AB39021A
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 08:49:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780908562; cv=none; b=CzOjeMf8Gk6AwIcBK0Z8lsT7RcSp8c2szzUyl5QwWYrpKV2BJMM0ZCg/oTG7zES3AyZnzuLT2S6pS3VwhJ60VdoDmOFtw7AkV3ySt62C4JKZ8IxbeDZO0I7iasxc5pnGFapeKDF98W/Y3o1zKEeZ5I/0K/rHow+poBvfvNWGUbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780908562; c=relaxed/simple;
	bh=0/w5Bq3SouVm//V5zBcULpXUbvSnvI0uwZfdFDsP2Fc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QtWe4DGOIn+QJiUTVKb0ogl0gRyq1SCMuxtKbLdf/dwOrJhjM0GIryF/BeHH2wNNIlwz2YmXCJJhxwHQ4afusIPf0j7VB1ImIg/fBKXGnXrVdDrWYx3uCMVlRow9XEdqfnAEuCwpK32dLWTGTjEaQzmiewTj90ioYKOX8H7TIoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nd8EIqlG; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED8E81F00893;
	Mon,  8 Jun 2026 08:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780908561;
	bh=uvvCujawDLOmCkA0LMBO0t1SVGM3v7VO6E9jzheQ13w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Nd8EIqlGC7I//u9D6J6OfYwD0ZBaT8QIL9Jt7R6XkPY/jaz+QDmos67QmhOiFmZoa
	 rY0W0o1FIEJm5cNsHpDcLK5RKb0V3j97IODzokRgTcdwo4uytC77Mvy8MggNk6F/tP
	 qpwAZoZbNJ+I8JNLusj9wsIVzVf8nyKDfBuexDrf5Too9gmaniQU25tQ9plewbK/L/
	 27Co0bDqzhzxhlupfwjZiffIifrH0dLrRXV6tplyWvE9RE3xR0u3asAPTHzubs2CEU
	 CKZYqoDJUqgxKMhazFCHGjQ52cnBdeLusRdT2AUuspbmrCfsoWh4LlXZijbQPvWF3E
	 i7ldsC0CPZx3Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v0 5/7] ASoC: codecs: ES8389: Add private members
 related to HPF
Reply-To: sashiko-reviews@lists.linux.dev
To: "Michael Zhang" <zhangyi@everest-semi.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260608083540.12581-6-zhangyi@everest-semi.com>
References: <20260608083540.12581-6-zhangyi@everest-semi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Jun 2026 08:49:20 +0000
Message-Id: <20260608084920.ED8E81F00893@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-308118-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:zhangyi@everest-semi.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,everest-semi.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9648A654500

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing newline `\n` in `dev_dbg` format strings.
--

commit 237c4458de0007d329850d65722e75250d0003bc
Author: Zhang Yi <zhangyi@everest-semi.com>

ASoC: codecs: ES8389: Add private members related to HPF

This commit adds private members related to the High Pass Filter (HPF)
for the ES8389 codec. It introduces device property reads during probe
to configure these values.

> diff --git a/sound/soc/codecs/es8389.c b/sound/soc/codecs/es8389.c
> --- a/sound/soc/codecs/es8389.c
> +++ b/sound/soc/codecs/es8389.c
[ ... ]
> @@ -905,6 +907,18 @@ static int es8389_probe(struct snd_soc_component *co=
mponent)
>  		es8389->mclk_src =3D ES8389_MCLK_SOURCE;
>  	}
> =20
> +	ret =3D device_property_read_u8(component->dev, "everest,hpfl", &es8389=
->hpfl);
> +	if (ret !=3D 0) {
> +		dev_dbg(component->dev, "hpfl return %d", ret);

[Severity: Low]
Is there a missing newline at the end of this dev_dbg format string?

> +		es8389->hpfl =3D ES8389_HPF_DEFAULT;
> +	}
> +
> +	ret =3D device_property_read_u8(component->dev, "everest,hpfr", &es8389=
->hpfr);
> +	if (ret !=3D 0) {
> +		dev_dbg(component->dev, "hpfr return %d", ret);

[Severity: Low]
Does this dev_dbg format string also need a terminating newline?

> +		es8389->hpfr =3D ES8389_HPF_DEFAULT;
> +	}
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608083540.1258=
1-1-zhangyi@everest-semi.com?part=3D5

