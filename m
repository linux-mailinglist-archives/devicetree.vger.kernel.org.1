Return-Path: <devicetree+bounces-321654-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id raHwDKxbTGpgjgEAu9opvQ
	(envelope-from <devicetree+bounces-321654-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 03:51:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C3BE9716B11
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 03:51:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=fpu79lxP;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321654-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321654-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 21CE130041C9
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 01:51:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 629B730FF36;
	Tue,  7 Jul 2026 01:51:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470B330E82E
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 01:51:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783389097; cv=none; b=I9UyLYJvbMuKydIhogw0M7AuLJanN1u05QHjbHiDdGa7LaD6HiQFMubL+sOd4JvtHrRPm/OCkACwABru7cRuUSVuFBZene1sABSrdKQLVR5XYIxcP3UsnkjAjkqBSH8AAIKE8uPbJXGf+3RgrBJL2SWa2QOjQnmr13gqsvORlaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783389097; c=relaxed/simple;
	bh=0yEbIxwwzi6hYJkQs0yfoOSqgGVhLjWV8482yVB6kKI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Cwz0FwnalwLiSq7n0yvssgmZmr0rDjLXjjp6yWJCBKiKi8kFvtGnA3tm8qXwJU7xZUcpevPexZwTC6/LBC3Qttn8bOuHZF50A3KFu9Bw9R5sS6yRyizeQBDLpqx7l6BZSGVqzbJbR7Us98qNVLNIiw29KYwuRoqX3EYbMe4CdMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpu79lxP; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B06B1F000E9;
	Tue,  7 Jul 2026 01:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783389095;
	bh=WfJuW/t29eUkmosFwOFDIm82uPp5/+DBZ+zsFQ1+Yfc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fpu79lxPY+myJXLxCfLoViULuXRxy8y0Fgm7x3Io2QardvAAFG12cFMcpwnvR88fs
	 /8T8Ir5aO/AGZi3B7tyhsp2kVCrKKAUbbNcIacY716SIfd6bA7ydcP6br0m9t3wOP/
	 pQiSW+fXdKyJHQZibmVUA2i2QS4RLmVktSLEm81zMDj5t0EvXbb+bsdn01ps3hYpik
	 aZ4sjkO2yWA59cbJdJh+2smVgEm16WkDIHXEHdes2XirfKv2XvwLvX1R7dOcmS83Yb
	 S2y4KocHN8jaJVvL4LG88RWXD26Nn6h9VQYK1Cz3bNvVeYCrzAKk3OYfJ0sTvN3SDT
	 WE0Hi0bckhCDg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 3/5] iio: osf: add protocol decoding
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jinseob Kim" <kimjinseob88@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260707014525.1015-4-kimjinseob88@gmail.com>
References: <20260707014525.1015-1-kimjinseob88@gmail.com>
 <20260707014525.1015-4-kimjinseob88@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 01:51:34 +0000
Message-Id: <20260707015135.1B06B1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-321654-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:kimjinseob88@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C3BE9716B11

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The protocol major version and header reserved fields are not va=
lidated, contradicting the commit message.
--

--- Patch [3]: [PATCH v7 3/5] iio: osf: add protocol decoding ---
commit 4b68faaa805d7ad7aeb0c1d32700ea5abc7cccf2
Author: Jinseob Kim <kimjinseob88@gmail.com>

iio: osf: add protocol decoding

This commit adds helpers for decoding Open Sensor Fusion frame headers and
supported message payloads.

> diff --git a/drivers/iio/opensensorfusion/osf_protocol.c b/drivers/iio/op=
ensensorfusion/osf_protocol.c
> new file mode 100644
> index 0000000000000..b5749525e4c43
> --- /dev/null
> +++ b/drivers/iio/opensensorfusion/osf_protocol.c

[ ... ]

> +int osf_protocol_decode_frame(const u8 *buf, size_t len,
> +			      struct osf_frame *frame, size_t *frame_len)
> +{
> +	u32 expected_crc;
> +	u32 actual_crc;
> +	u32 payload_len;
> +	size_t total_len;

[ ... ]

> +	if (actual_crc !=3D expected_crc)
> +		return -EBADMSG;
> +
> +	frame->protocol_major =3D buf[4];
> +	frame->protocol_minor =3D buf[5];
> +	frame->message_type =3D get_unaligned_le16(buf + 8);
> +	frame->payload_len =3D payload_len;
> +	frame->sequence =3D get_unaligned_le64(buf + 14);
> +	frame->timestamp_us =3D get_unaligned_le64(buf + 22);
> +	frame->flags =3D get_unaligned_le32(buf + 30);
> +	frame->reserved =3D get_unaligned_le32(buf + 34);

[Severity: Medium]
The commit message states: "The decoder validates the OSF0 wire magic,
protocol major version, header length, payload bounds, reserved fields
and CRC..."

Are the protocol major version and reserved fields actually being validated
here in osf_protocol_decode_frame()?

It looks like buf[4] is being assigned directly to frame->protocol_major
without checking it against OSF_PROTOCOL_MAJOR, and the reserved field is
similarly assigned without verifying if it is zero. Could this lead to
compatibility issues if a future protocol major version reuses the same
magic number but alters field semantics?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707014525.1015=
-1-kimjinseob88@gmail.com?part=3D3

