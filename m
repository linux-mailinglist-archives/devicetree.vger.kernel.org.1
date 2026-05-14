Return-Path: <devicetree+bounces-297329-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id TsNQHgZqBWo+WwIAu9opvQ
	(envelope-from <devicetree+bounces-297329-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 08:21:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D0553E3FF
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 08:21:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 633E8300EF4A
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 06:21:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E73B839FCCF;
	Thu, 14 May 2026 06:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEbYvU/D"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42AC33F5B9
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 06:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778739715; cv=none; b=PI/Mi32TnpKtSb2G9Iw6NDHcmVwLHlUBeczsNdv1iPiaI55S6PRLxbZC5Tz2gf9Da+W3PeLa0eQFv/J51m8LNlMS4x6jBsnFl1iANF4YTUEnRA4lGkVki3kZQFTOeqJpW0mAKVLtB158PT/pzkGNaktPdSVRcfq3X1dYKjl+O/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778739715; c=relaxed/simple;
	bh=itITcp4EqBK0cCzJvgaxuDSEUU3vvT0bZJOvY7aRzy8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uIR2O0g8Z7wWRe7vA+bvi6IoY5ZLS0YTluKIut7f/wKVtijC0wWzjRrkZIm5uIGZHxwaeP4hJc4T3qqPbStMmz3GIXnMSoJgD7m+kfQgc99+YrJwf5uiU4HSmTYSl6422OgdJOl6pYe3Mw2LM8DZGHxY+7yh4EOpxZEmooyLx+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEbYvU/D; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E206C2BCB7;
	Thu, 14 May 2026 06:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778739715;
	bh=itITcp4EqBK0cCzJvgaxuDSEUU3vvT0bZJOvY7aRzy8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=oEbYvU/DWfvaPaZwiW3mzRJc02dxhuQoSH+iA1sDxWLwXIOL+zIC2jqq227UhukqQ
	 sHEh1S12necYLhdHVumL7z6cOSCxCXT72xkjbbE8iTPp2w1SIBubonEYQSMpX9N878
	 UZEH1fCmXNMHj3jbxLLnKMkINJ8+S1H5iOC8G9o0oGz5vdJQzTekWzZwfPEAQwv+3H
	 Oz3Y188Gfs9wb1LsSskz2E4LY/mG2NcAh4Uo4/+NyVXZKxMhdUFxPS5KAgXMKzxjtR
	 rQnk6pJdNVry0kVkd5eLWTDqiKrfsjNMasH7PhhnzTN4WQRiRYdI9lJIRtl9+F+bpE
	 GGQDrw9SuLPKQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RESEND v7 2/3] riscv: clocksource: Add readq options to
 clocksource mmio
Reply-To: sashiko-reviews@lists.linux.dev
To: "Aleksa Paunovic via B4 Relay" <devnull+aleksa.paunovic.htecgroup.com@kernel.org>
Cc: krzk+dt@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260513-riscv-time-mmio-v7-2-f8925ffc226b@htecgroup.com>
References: <20260513-riscv-time-mmio-v7-2-f8925ffc226b@htecgroup.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 06:21:54 +0000
Message-Id: <20260514062155.4E206C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: A7D0553E3FF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297329-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,aleksa.paunovic.htecgroup.com,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Using `readq_relaxed()` to read a live 64-bit clocksource counter =
is racy and unsafe on 32-bit systems, leading to torn reads and broken time=
keeping.
--

commit 21048c9043069be78a033341f4f13739837c7833
Author: Aleksa Paunovic <aleksa.paunovic@htecgroup.com>

riscv: clocksource: Add readq options to clocksource mmio

This commit adds generic read functions for 64-bit memory-mapped
clocksources covering both up and down counters.

> diff --git a/drivers/clocksource/mmio.c b/drivers/clocksource/mmio.c
> index 9de7515318312..6329d8ce2c091 100644
> --- a/drivers/clocksource/mmio.c
> +++ b/drivers/clocksource/mmio.c
[ ... ]
> @@ -17,6 +17,20 @@ static inline struct clocksource_mmio *to_mmio_clksrc(=
struct clocksource *c)
>  	return container_of(c, struct clocksource_mmio, clksrc);
>  }
> =20
> +#if defined(readq_relaxed)

Is it safe to use readq_relaxed() directly for a live 64-bit clocksource
counter on 32-bit systems?

readq_relaxed() is not guaranteed to be atomic on 32-bit platforms. For
example, 32-bit SuperH implements __raw_readq as *(volatile u64 *), which
results in two separate 32-bit memory accesses. Other 32-bit platforms
might define it via <linux/io-64-nonatomic-lo-hi.h>.

> +
> +u64 clocksource_mmio_readq_up(struct clocksource *c)
> +{
> +	return (u64)readq_relaxed(to_mmio_clksrc(c)->reg);

If the lower 32 bits of the live hardware counter roll over between the two
32-bit reads, will the resulting 64-bit value be severely corrupted (torn)?

To safely support 64-bit MMIO clocksources on 32-bit platforms, a software
retry loop is typically used. Otherwise, shouldn't the generic functions be
strictly guarded by #ifdef CONFIG_64BIT to prevent accidental usage on
32-bit systems, rather than just #if defined(readq_relaxed)?

> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260513-riscv-time=
-mmio-v7-0-f8925ffc226b@htecgroup.com?part=3D2

