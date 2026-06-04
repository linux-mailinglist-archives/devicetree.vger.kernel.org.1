Return-Path: <devicetree+bounces-306570-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xsQBJqfiIGp+8wAAu9opvQ
	(envelope-from <devicetree+bounces-306570-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 04:27:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD7763C805
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 04:27:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="IRfP/gM+";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306570-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306570-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9E4723005AF8
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 02:26:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D96A137104C;
	Thu,  4 Jun 2026 02:26:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E9636DA02
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 02:26:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780540002; cv=none; b=UWtMKivDHIWhmmnPyAgK6x4ddaGmBuN7jQfxA3vqW+Fsec2lAbVdr4kXxnPpDV33NLJsKvcHCVEpFDXWYN76ltpSBihz0CLuKPyzUBc1RFFJa+/bT6ofdqGnuX4NLNY2TBqyoF4maWrvZ9aauMPQoWHbL0mmFF3JHEUOmbBCvy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780540002; c=relaxed/simple;
	bh=GV6YaeA17JPDD7CT7xQTOqEoxpS92IPQBwJI7sZ+hbU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=afMDNyDj4s4QKMoDykWKihuVRQ3QMj4q0QkbWXIu4Y+pm6f96jDgWei35/9BTzWZXtc1XOrkuhXicWog89J42PvfR4A+GmfXPdwrylU4ys+deB03qjSBAb0cxfAidRxZkWyvmaRAxj1MxeLabMHhvBT1WNtBsVz62mxKNWr6eDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRfP/gM+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B07331F00893;
	Thu,  4 Jun 2026 02:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780539998;
	bh=84GqsZEeY6R49bx29tbrQ43V9pClusQ6ifHSsV+X8WE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IRfP/gM+H6AihTuYQERib2O9LPih6tG9jUyTAKo7gRFYG89LNRsrn5UbTZ/G2jdZW
	 xOlec9o9SHNuvhEkFEfyc1guHeKFgS6xm6tPPWoa52ubIIhMEQ+gDdMIVxOAanXyz8
	 hsrUvXk6dUJlcUX39OHQhw/jM6gFEDrpcRA6oeSR/GaQHdNIOM4zu4ed4dfl7momWf
	 9iXtH5r+KnYBB3kghdliZFc3Wq1gWLIEku/cbC8f0kRMeEKQuheKqQb1p50imPl0Em
	 fObALKxJP68HrlGQEW8B3Ya4UAFoYNaVNaRB+GY/PzuU9yZxrgb466mj6Po2DclbtW
	 PGh8fbCeOYgzQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 5/7] ASoC: loongson: Add Loongson-2K0300 CTCISZ
 Forever Pi sound card support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Binbin Zhou" <zhoubinbin@loongson.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <1b2fa7b37c354df6ac7b2c1c5f9f3fac2b8af3ff.1780538113.git.zhoubinbin@loongson.cn>
References: <1b2fa7b37c354df6ac7b2c1c5f9f3fac2b8af3ff.1780538113.git.zhoubinbin@loongson.cn>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 02:26:38 +0000
Message-Id: <20260604022638.B07331F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306570-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:zhoubinbin@loongson.cn,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto,loongson.cn:email,smtp.kernel.org:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0FD7763C805

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Uninitialized pointer `codec_dai_name` is used if the required dev=
ice property is missing.
--

commit ca8a45881e3592679d02b8f941222c143f73d4c0
Author: Binbin Zhou <zhoubinbin@loongson.cn>

ASoC: loongson: Add Loongson-2K0300 CTCISZ Forever Pi sound card support

The Loongson-2K0300 audio card uses a different DAI format compared to
existing Loongson platforms. Move the dai_fmt setting from the static DAI
link to runtime hw_params via snd_soc_runtime_set_dai_fmt(), and pass the
correct format through driver match data.

> diff --git a/sound/soc/loongson/loongson_card.c b/sound/soc/loongson/loon=
gson_card.c
> index 7910d5d9ac4ff..9200e8476c1fa 100644
> --- a/sound/soc/loongson/loongson_card.c
> +++ b/sound/soc/loongson/loongson_card.c

[ ... ]

[Severity: High]
This isn't a bug introduced by this patch, but while reviewing this file I
noticed a pre-existing issue in loongson_card_parse_acpi().

Is it possible for the "codec-dai-name" device property to be missing?

In loongson_card_parse_acpi(), codec_dai_name is declared without being
initialized:

	const char *codec_dai_name;
	...
	device_property_read_string(card->dev, "codec-dai-name", &codec_dai_name);

	for (i =3D 0; i < card->num_links; i++) {
		loongson_dai_links[i].platforms->name =3D dev_name(phy_dev);
		loongson_dai_links[i].codecs->name =3D codec_name;
		loongson_dai_links[i].codecs->dai_name =3D codec_dai_name;
	}

If device_property_read_string() returns an error because the property is
missing, codec_dai_name remains uninitialized garbage. This garbage pointer
is then assigned to the global loongson_dai_links[i].codecs->dai_name,
which ASoC core will dereference during component matching.

Could this lead to a kernel panic if the firmware lacks this property? Shou=
ld
the return value of device_property_read_string() be checked or a default
value be provided?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1780538113.gi=
t.zhoubinbin@loongson.cn?part=3D5

