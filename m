Return-Path: <devicetree+bounces-304316-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uAhbJZOYGWrVxggAu9opvQ
	(envelope-from <devicetree+bounces-304316-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 15:45:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1338C603077
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 15:45:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 11DD630A4B10
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 13:40:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62D3733B945;
	Fri, 29 May 2026 13:40:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jp/L14il"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486DC33F58B
	for <devicetree@vger.kernel.org>; Fri, 29 May 2026 13:40:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780062042; cv=none; b=NMR/x6N/bbjtLVt3au1cHLLg33Pa5XV320JSH87D3Hldxvtg9gJIKDRkJ11NMiilDdrzIAGaVmO2JogT3Q96NbgtkUrhtmr3VETuRYP7a7PgB6E6KkxUM90k+NYlWFd2wd5H2r4EPmxqg2PnRfO+KTZyb4WdzVBj4C5dmvWMxoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780062042; c=relaxed/simple;
	bh=YLaWpsDaLvm6fpfvLcGewkjwO+KSx3f2MF7Pq/vUrkw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=MLLaqZKjpNXNR0Zpo/V/1Q58z0nWxQDbBZYUDHTcBZWoWFJiPh3lc5xbhby8MbZv7LA6NJ2Dj8tkcd1n8i6vIYzWAFYDZR/GxwqQfaqJvlJIRtUyIeI1YqwYhSMf84TZA/wvMxwHAlQG2hCCr9CJphhY+oJYAFGiKdpRsUg28XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jp/L14il; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE7F41F00898;
	Fri, 29 May 2026 13:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780062040;
	bh=EXc6/yrH+COvsIvgtLMdFGUgmX1ou+wQMgEePQ4xBFc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Jp/L14iloacRugNDyYtCOWbDUbV1UiGzH6lqzfEZwYaA8AYg5h43sITisxl3j3vSy
	 NktNBCfRfLsJPHeNzxUDRC/u4absE7hw7m9A0iZMsnruu2I8kzf2UUhiHohYIp+ClH
	 F5h8kZKGjZSvR9+lD+4fl+hxcBXH4EEpaHWolHKCvAXR7Jz/2yz4uP0VLhyrfzrps+
	 8t7TrpPLf/Aw5BZ9VbWl/XyFBIedAzfwGh/VuCiRZICNZ3eybOIOWGacxCF+KH+qMv
	 1ECwG6HbeeHcelGlhW/VM/UNq+cqn0uJuA6ywWIijWPOY98QgGDSw25LxUG7yodS6G
	 IYazhW7YikE2A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v3 5/6] iio: osf: add UART serdev transport
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jinseob Kim" <kimjinseob88@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260529121005.1470-6-kimjinseob88@gmail.com>
References: <20260529121005.1470-6-kimjinseob88@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 29 May 2026 13:40:39 +0000
Message-Id: <20260529134040.AE7F41F00898@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-304316-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Queue-Id: 1338C603077
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Build failure due to access of non-existent `reserved` field in `st=
ruct osf_device_status`.
--

commit 63140b0b3643f374150f5ac89882047f831e521f
Author: Jinseob Kim <kimjinseob88@gmail.com>

iio: osf: add UART serdev transport

Register the OSF serdev driver and pass received bytes into the OSF0 stream
parser.

> diff --git a/drivers/iio/opensensorfusion/osf_core.c b/drivers/iio/opense=
nsorfusion/osf_core.c
> new file mode 100644
> index 0000000000000..c867b315865d2
> --- /dev/null
> +++ b/drivers/iio/opensensorfusion/osf_core.c
[ ... ]
> +static int osf_core_validate_device_status(const struct osf_frame *frame)
> +{
> +	struct osf_device_status status;
> +	int ret;
> +
> +	ret =3D osf_protocol_decode_device_status(frame, &status);
> +	if (ret)
> +		return ret;
> +
> +	if (status.reserved)

[Severity: Low]
Does struct osf_device_status contain a reserved field?

Looking at osf_protocol_decode_device_status(), the struct appears to only
contain uptime_s, status_flags, error_flags, and dropped_frames.

This causes a compilation error (error: 'struct osf_device_status' has no
member named 'reserved') when building this patch.

While I noticed this function is replaced and the invalid check is removed
later in the series by the patch "iio: osf: register IIO devices from
capabilities", each patch in a series should ideally compile independently =
to
preserve git bisect functionality.

> +		return -EPROTO;
> +
> +	return 0;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260529121005.1470=
-1-kimjinseob88@gmail.com?part=3D5

