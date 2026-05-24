Return-Path: <devicetree+bounces-302199-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AaQcD+rHEmow3wYAu9opvQ
	(envelope-from <devicetree+bounces-302199-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 11:42:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B895C1CF5
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 11:42:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9FF2F300B604
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 09:41:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97FC126F2BF;
	Sun, 24 May 2026 09:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QmxOStzd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CECF1FB1
	for <devicetree@vger.kernel.org>; Sun, 24 May 2026 09:41:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779615718; cv=none; b=dFlPu51rl2RJE5B++oa8+gGYkPCJto6OIOKx+NXY7ktOv/2f8CHzqA4QTQtOWjJbLXghVt+uiA9SoyL1ANokP73qYZb/kukZXSBicKyads9Kbhuq8NOjfyi3VMqD0U7o5DRoQKvXvroVO+RQr3RA3hFDprGnDh7ye+h5yPfy1xA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779615718; c=relaxed/simple;
	bh=xHVae84KgPkCPSqEbzuXwq0KRlnsddffK6oq0JltY/A=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ot6WGLXilZgQsS/6GwMWHJe7I2tPI1NART71AC9v1PlS20Zv01VYT2WzmSKO0xCJntQ1nEpH7+UAaddrl/H9GIWZCPrfvu4mdBaUlnNJbK2aleSIRm6cQWcnHlvRhqCiOc5L/ovx5Nah22Thm3Dl1byS8OWQMBvHmVmzza+xSxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QmxOStzd; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7B1E1F000E9;
	Sun, 24 May 2026 09:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779615717;
	bh=RK1CqKtlPOAXmyK5G1x20M/Q/KAo6x9vR6jJmSZIBhc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QmxOStzdKuVWFNnLE8xiQRfFNQVFnhC5TInlESaPZP/ZzfGVKsRyV94QlVH+RxY3M
	 k7JqjI3N/2bV0Bg1AdONNdhVTfECd26v+o8JByQVPsjoCNasvUVWkjxNNf38C+HCBB
	 /GyQZikxQGeLZ2MpTKHeLhiCiJLchiDlFRhJufEBxVkH+BIugJ6xPTfT2bKaew9Bjm
	 b4CyZoJYCISa6phrCGARwn3dGVNRCwlIZ5UOBmfkowCu0vMccILnl4lIShHg0UUNhO
	 +kRdaPyMhxtrYybyLRdc5pu19WJXZxX12Of/xuNbmmT4ltS+ZDZCAqLInsKs9lN1UF
	 hNdEtBYwww3sQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v2 4/7] iio: osf: add stream parser
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jinseob Kim" <kimjinseob88@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260524085312.15369-5-kimjinseob88@gmail.com>
References: <20260524085312.15369-5-kimjinseob88@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 24 May 2026 09:41:56 +0000
Message-Id: <20260524094156.D7B1E1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
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
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302199-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 82B895C1CF5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The 'partial_frames' statistic is incremented erroneously during=
 normal chunked data reception, making the metric artificially spammed and =
useless.
- [Low] The frame is successfully parsed into a stack variable, but the pop=
ulated structure is ignored and completely unused.
--

commit f278438df751263938f58f94af6a218883f9f11f
Author: Jinseob Kim <kimjinseob88@gmail.com>

iio: osf: add stream parser

This commit introduces byte stream assembly and frame synchronization
capabilities for OSF0 frames. It handles buffering, magic sequence matching,
and payload validation before passing frames to the core.

> diff --git a/drivers/iio/opensensorfusion/osf_stream.c b/drivers/iio/open=
sensorfusion/osf_stream.c
> --- /dev/null
> +++ b/drivers/iio/opensensorfusion/osf_stream.c

[ ... ]

> +static int osf_stream_process(struct osf_stream *stream)
> +{
> +	struct osf_frame frame;
> +	size_t decoded_len;
> +	size_t discarded;
> +	size_t frame_len;
> +	u32 payload_len;
> +	int first_err =3D 0;
> +	int ret;
> +
> +	while (stream->len) {
> +		discarded =3D osf_stream_discard_to_magic(stream);

[ ... ]

> +		if (!stream->len)
> +			break;
> +
> +		if (stream->len < OSF_FRAME_HEADER_LEN) {
> +			stream->stats.partial_frames++;

[Severity: Medium]
Is it intentional to increment this statistic during normal chunked data
reception?=20

Since stream data often arrives in partial fragments, breaking here is expe=
cted
behavior while waiting for the rest of the stream. Incrementing an error
counter on every normal yield might spam the metric and make it less useful
for debugging actual issues.

> +			break;
> +		}
> +
> +		if (get_unaligned_le16(stream->buf + 6) !=3D

[ ... ]

> +		frame_len =3D OSF_FRAME_HEADER_LEN + payload_len + OSF_FRAME_CRC_LEN;
> +		if (stream->len < frame_len) {
> +			stream->stats.partial_frames++;

[Severity: Medium]
Similarly, does this falsely increment the partial_frames statistic while
simply waiting for the rest of a valid payload to arrive?

> +			break;
> +		}
> +
> +		ret =3D osf_protocol_decode_frame(stream->buf, frame_len, &frame,
> +						&decoded_len);

[ ... ]

> +		if (decoded_len !=3D frame_len) {
> +			stream->stats.dropped_bytes++;
> +			osf_stream_drop_invalid_head(stream);
> +			if (!first_err)
> +				first_err =3D -EMSGSIZE;
> +			continue;
> +		}
> +
> +		ret =3D osf_core_receive_frame(stream->osf, stream->buf, frame_len);

[Severity: Low]
Does this code need to pass the raw buffer to osf_core_receive_frame()
instead of the parsed struct osf_frame?

The earlier call to osf_protocol_decode_frame() successfully parses the fra=
me
into the stack variable frame, but it appears to go unused. Passing the
already-parsed structure to the core might avoid redundant decoding
inefficiency.

> +		if (ret) {
> +			osf_stream_discard(stream, frame_len);
> +			if (!first_err)
> +				first_err =3D ret;
> +			continue;
> +		}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260524085312.1536=
9-1-kimjinseob88@gmail.com?part=3D4

