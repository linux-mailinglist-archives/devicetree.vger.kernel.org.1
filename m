Return-Path: <devicetree+bounces-312343-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gANCGlD+MGrHaAUAu9opvQ
	(envelope-from <devicetree+bounces-312343-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 09:42:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C163B68CE74
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 09:42:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="gDrwt/Hv";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312343-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312343-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4075131A4528
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 07:37:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C1CA40B6E0;
	Tue, 16 Jun 2026 07:37:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF0EC40B6DD
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 07:37:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781595450; cv=none; b=IalDMRfm6SmjsDcQwTGUGuzyWtgBHmZapfgOHmxO6CnDca9Kj6qdMuYkF6x1IqEE6Z5u+7fusAnauO5Q1xGNNXeXnnmrbH7yMYDUFACXRtHnAroAZWz9ikf6AfThoa2JBxT46yPjTKE0SIHwc6E0sUMQLnLoFGgK7NkW3qrz7zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781595450; c=relaxed/simple;
	bh=HHefqtqBtw2VllwmKz8l6gZ9QtCePvCHwD5VnO+skCw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=LR/Xm/xAh0G20EPO1GluOdfwzcxMLe3k5/asJQ+RrhDR4jNPXhxdf+RDKQTCAgwiXgwK+FwBNvG4dPGYIwPRBFEHvX/76stRbeMkcJwWRC5sWpthWjhcIeRkwYs3+lXLmMrUo8ig42aYe1TNGLIp8m1Gd9IoY1ON3+nkSuDMxfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDrwt/Hv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9BA601F00A3A;
	Tue, 16 Jun 2026 07:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781595448;
	bh=eXjtccLPAfGeShrYROeA5eeXh4S7mtRVbMxYs6aBA8E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gDrwt/HvnaKcM//jfuxjFSdWh1lV/RcyQIspyLQG9bfwjcir7hF2rDkp+kzreCLQ1
	 vWuBp3sUFM/VhCmTY3n0nme/THc5X5xIM4GddyDx5cKPeH/OzI+el9qA/GH5/UgKaU
	 XK4ykCGdCUAJv30GR+yoEbL33C9MjwCCyaoiWBB9xJ36+/qJn4Nu5XZC3d7B1154p1
	 ugULi8wlSYoBhgrj79Irdhpc5lxKyLnTQB22EKZA7T2hwCl0i9ZsgnGA+9iyI3lLND
	 w7gVJH5iU7TxsGBKG4Fl6ePnyt2jVErsG4OvKvk2yRNxEo5cBvBmCgCC6IcbEaMMCY
	 ZW3tjr1mrp+Aw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v5 5/6] iio: osf: add UART transport
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jinseob Kim" <kimjinseob88@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260616072242.3942-6-kimjinseob88@gmail.com>
References: <20260616072242.3942-6-kimjinseob88@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jun 2026 07:37:28 +0000
Message-Id: <20260616073728.9BA601F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312343-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:kimjinseob88@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C163B68CE74

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The frame decoder validates header fields before verifying the fra=
me CRC, returning `-EPROTO` for structural errors and causing the stream pa=
rser to drop unauthenticated payload lengths.
--

commit ca765586fd1687d99b4b8cd4c1d18456513a142b
Author: Jinseob Kim <kimjinseob88@gmail.com>

iio: osf: add UART transport

Add the serdev UART transport and the initial OSF core receive path.
Enable the required vcc regulator with devm_regulator_get_enable()
before opening the UART, keeping power handling limited to the simple
probe-time requirement for this RFC.

> diff --git a/drivers/iio/opensensorfusion/osf_core.c b/drivers/iio/opense=
nsorfusion/osf_core.c
> new file mode 100644
> index 0000000000000..137fb7166febc
> --- /dev/null
> +++ b/drivers/iio/opensensorfusion/osf_core.c
> @@ -0,0 +1,99 @@
[ ... ]
> +int osf_core_receive_frame(struct osf_device *osf, const u8 *buf, size_t=
 len)
> +{
> +	struct osf_frame frame;
> +	size_t frame_len;
> +	int ret;
> +
> +	if (!osf || !buf)
> +		return -EINVAL;
> +
> +	ret =3D osf_protocol_decode_frame(buf, len, &frame, &frame_len);

[Severity: High]
Could this error handling cause a regression where data is lost during pars=
ing?

osf_protocol_decode_frame() validates header fields (like the major version
and header length) before checking the CRC, returning -EPROTO on structural
errors:

drivers/iio/opensensorfusion/osf_protocol.c:osf_protocol_decode_frame() {
    ...
	major =3D buf[4];
	if (major !=3D OSF_PROTOCOL_MAJOR)
		return -EPROTO;

	if (get_unaligned_le16(buf + 6) !=3D OSF_FRAME_HEADER_LEN)
		return -EPROTO;
    ...
}

If -EPROTO is returned here, the stream parser discards the unauthenticated
frame_len number of bytes instead of dropping 1 byte for resynchronization:

drivers/iio/opensensorfusion/osf_stream.c:osf_stream_process() {
    ...
		ret =3D osf_core_receive_frame(stream->osf, stream->buf, frame_len);
		if (ret) {
			if (ret =3D=3D -EBADMSG) {
				stream->stats.bad_crc_frames++;
				stream->stats.dropped_bytes++;
				osf_stream_drop_invalid_head(stream);
			} else {
				osf_stream_discard(stream, frame_len);
			}
    ...
}

Because the CRC wasn't evaluated yet, frame_len is derived from an
unauthenticated payload_len, which could be a large, corrupted value. This
regression might cause the stream parser to skip legitimate frames hidden in
the incoming buffer under noisy conditions.

> +	if (ret)
> +		return ret;
> +
> +	if (frame_len !=3D len)
> +		return -EMSGSIZE;
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260616072242.3942=
-1-kimjinseob88@gmail.com?part=3D5

