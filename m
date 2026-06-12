Return-Path: <devicetree+bounces-310706-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DTKwE9CqK2qTBgQAu9opvQ
	(envelope-from <devicetree+bounces-310706-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 08:44:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 996E8677001
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 08:44:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=eSlGRjp+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310706-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310706-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7E65431B170E
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 06:43:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CE9D3D8135;
	Fri, 12 Jun 2026 06:43:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0DDE3D79F0
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 06:43:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781246593; cv=none; b=P72//CCUKPDk2kwq3VfmQ7LtKMc1RwBpZwtgGw3W3eISTzJuYmK3OYGlvFL4vQJn7eQBQmduHpjI7XUpqATR+6uAhWgftFaWxf4ekEEk455ULCW9x9wg0X+3EHonkj/gUJVPqiCXyEOXWqIQWhrE7c0cV9kfpsWUlK3o+ve0x3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781246593; c=relaxed/simple;
	bh=QgcsdJ6qMnOdQ94LBHQKdixWtEOOoq2HZBISZ+9SpmU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=s+6vF1iUloQqoBAFLHp3QD9SVBE0y4uYTxDi+vtnDn0N6T93LL/V0Wr4GQLjM2JtxmzMSDuDZ5/udTe5O5DyncuWZMhqG9mpryPhON6UiEA2QKJolRqcg77LxpMWZC7bkH/iyoQQeGWiTNIAJXwO8Y6HzY6XdiETjLq1Xdwxfao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eSlGRjp+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F2801F000E9;
	Fri, 12 Jun 2026 06:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781246592;
	bh=Jt8Uq7HNTTi6GllHQeTQSn2ucjpjbo/GPqNvbcMDeSQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eSlGRjp+rpr72XYUgRDRyAK6J1+eaCdAaA4iof0gVIZSrO5x1NH6FyDLEcpGcuBK5
	 atiwuT0ThiKjKNmHBxwDppau6GG7WSeQNPpgClTdJNw8b3Dnc/Ldtg2Q5/wtXeBE6r
	 AI8vHU6BZW1nB626cW/6/F2gf3O4EaZQ0OGAY6kx+99CGv0yxYnmYPdTx5NXe//sT0
	 ZV10tnk94nin4dhPsfR4+WSANThHL9wlkg/7g+6piN3ksCB/4uYga+QHoxGv6D/7BU
	 6RAg2ZSYwTNlBEVVjQG2FQ6qjHCujyAHOYXQvTWSriIWCotsNdiWRRr7oDBNE9zS9I
	 o1bPMGGqBGOkg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/7] gpu: host1x: Add Tegra264 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mikko Perttunen" <mperttunen@nvidia.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260612-t264-host1x-v1-4-8d934987de67@nvidia.com>
References: <20260612-t264-host1x-v1-4-8d934987de67@nvidia.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 06:43:11 +0000
Message-Id: <20260612064312.2F2801F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-310706-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid,nvidia.com:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mperttunen@nvidia.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 996E8677001

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The macro `HOST1X_UCLASS_INDOFF_RWN_READ_V` is missing due to a cop=
y-paste error that instead incorrectly duplicates the definition of `HOST1X=
_UCLASS_INDOFF_INDROFFSET_F(v)`.
--

commit bc3ed2efd3fa7eeadce14ecd91452f9ad7d9471e
Author: Santosh BS <santoshb@nvidia.com>

gpu: host1x: Add Tegra264 support

Add device data and chip headers for Tegra264.

> diff --git a/drivers/gpu/host1x/hw/hw_host1x10_uclass.h b/drivers/gpu/hos=
t1x/hw/hw_host1x10_uclass.h
> new file mode 100644
> index 0000000000000..abe83e67fa837
> --- /dev/null
> +++ b/drivers/gpu/host1x/hw/hw_host1x10_uclass.h

[ ... ]

> +static inline u32 host1x_uclass_indoff_indroffset_f(u32 v)
> +{
> +	return (v & 0xffff) << 2;
> +}
> +#define HOST1X_UCLASS_INDOFF_INDROFFSET_F(v) \
> +	host1x_uclass_indoff_indroffset_f(v)
> +static inline u32 host1x_uclass_indoff_rwn_read_v(void)
> +{
> +	return 1;
> +}
> +#define HOST1X_UCLASS_INDOFF_INDROFFSET_F(v) \
> +	host1x_uclass_indoff_indroffset_f(v)

[Severity: Low]
This isn't a bug, but it looks like HOST1X_UCLASS_INDOFF_INDROFFSET_F is
accidentally duplicated here instead of defining the macro wrapper
HOST1X_UCLASS_INDOFF_RWN_READ_V for host1x_uclass_indoff_rwn_read_v.

> +static inline u32 host1x_uclass_load_syncpt_payload_32_r(void)
> +{
> +	return 0x4e;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612-t264-host1=
x-v1-0-8d934987de67@nvidia.com?part=3D4

