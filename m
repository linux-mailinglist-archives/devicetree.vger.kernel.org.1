Return-Path: <devicetree+bounces-298873-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJtkOq6LCWpXewQAu9opvQ
	(envelope-from <devicetree+bounces-298873-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 11:34:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF74560484
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 11:34:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 00CD33003EE9
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 09:34:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9785D2FFDD5;
	Sun, 17 May 2026 09:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTjrrVHi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74721405C5C
	for <devicetree@vger.kernel.org>; Sun, 17 May 2026 09:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779010476; cv=none; b=EgsSXgGuGHRbrDwaICE0SogHFeGwYEPQDEowOTF/jPr4db1wJUZv8M+iQ08x5yI51pYLStqHivVMhBMDiAiPWYZZqtRlfUisg+M7W9tU6vYoJE/ztYYWe1cp+z+lyUqF/BSn5fSEPVV4Q6tUbObrYCaePtWfZvO8zg8/TiJASMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779010476; c=relaxed/simple;
	bh=Xn+HuhgkijlNKq+gMrwaMN6oA3ihL74g2ggGQ8VIing=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=nBO3U3QIqR04/4SXVI2i9Ni4rpDQfRfX8WFg4CQuAORZjqcgrlDTuC693JrQAjZAfq1HNwWG/8S/N1YbYpMQsJDZYeiTuR7CNW6ijZuBhiZnF14/W483vsj+jv7OoxdWJBQ/RWV2NlzuvqQA1upl3KkGxPEf6tsqzNsdm+OfeAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTjrrVHi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAA2DC2BCB0;
	Sun, 17 May 2026 09:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779010476;
	bh=Xn+HuhgkijlNKq+gMrwaMN6oA3ihL74g2ggGQ8VIing=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=fTjrrVHi/TH1Y5OXf4zzSPvEZXc9G3lxwM7cbqlt2thZdPsuSXnZgdn9OIz+5G5RU
	 X2o3nEExgmhoYrl4TT5k8ZzEAtzDjP6zILAh4+m6Cpm9Eee48wbETFuH3/2GLF8vzF
	 F1T0dxKLESc9nFbfUCKvRvSDDwEGgszJjuPimsWt+h6krrSiDRA+23ODBA074VXUBU
	 5118dQjYmUDwLZEGcpFujnQ5fW/oj5puEwP9E1cwAiUVrZTPE60vDShwgmOiPcWHmX
	 g+MhIWnBZPnBBTIUqFoZq0N6oKSizLUWqmHvHGC+BDLnPMzhMzr0PNs3lpbuND6z2+
	 LrPCq0xQs7Yxg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 02/12] iio: kstrtox: add local
 _parse_integer_limit_init() helper
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rodrigo Alencar via B4 Relay" <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260517-adf41513-iio-driver-v13-2-bb6e134a360f@analog.com>
References: <20260517-adf41513-iio-driver-v13-2-bb6e134a360f@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 17 May 2026 09:34:35 +0000
Message-Id: <20260517093435.CAA2DC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 4BF74560484
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298873-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,analog.com:email,smtp.kernel.org:mid]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Removal of a critical safety warning from the `_parse_integer_li=
mit` documentation creates a trap for out-of-bounds memory access.
- [Low] Incorrect subsystem prefix 'iio:' for a core library patch.
--

commit 3edc3198f402bbf5139ee03843cbee9aeeecb619
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>

iio: kstrtox: add local _parse_integer_limit_init() helper

This patch introduces _parse_integer_limit_init() to accept an initial
accumulated value for parsing 64-bit integers. It updates
_parse_integer_limit() to use this new helper with an initial value of 0,
and reorganizes its documentation.

> iio: kstrtox: add local _parse_integer_limit_init() helper

This isn't a bug, but since this patch modifies lib/kstrtox.c, which is a c=
ore
library file, should the prefix be "lib:" or "lib/kstrtox:" instead of "iio=
:"?

> diff --git a/lib/kstrtox.c b/lib/kstrtox.c
> index 97be2a39f5371..0705461f51c04 100644
> --- a/lib/kstrtox.c
> +++ b/lib/kstrtox.c

[ ... ]

> -/*
> - * Convert non-negative integer string representation in explicitly give=
n radix
> - * to an integer. A maximum of max_chars characters will be converted.
> - *
> - * Return number of characters consumed maybe or-ed with overflow bit.
> - * If overflow occurs, result integer (incorrect) is still returned.
> - *
> - * Don't you dare use this function.
> - */
> -noinline
> -unsigned int _parse_integer_limit(const char *s, unsigned int base, unsi=
gned long long *p,
> -				  size_t max_chars)

[ ... ]

> +/**
> + * _parse_integer_limit() - Convert integer string representation to an =
integer
> + *			    limiting the number of characters parsed.
> + * @s: The start of the string.
> + * @base: The number base to use.
> + * @p: Where to write the result of the conversion.
> + * @max_chars: Maximum amount of characters to consume.
> + *
> + * Convert non-negative integer string representation in explicitly give=
n radix
> + * to an integer. A maximum of max_chars characters will be converted.
> + *
> + * Return: Number of characters consumed maybe or-ed with overflow bit.
> + *	   If overflow occurs, result integer (incorrect) is still returned.
> + */
> +noinline
> +unsigned int _parse_integer_limit(const char *s, unsigned int base,
> +				  unsigned long long *p, size_t max_chars)

Is it safe to remove the "Don't you dare use this function." warning?

Since this function returns the number of consumed characters bitwise-ORed =
with
the KSTRTOX_OVERFLOW flag, turning the comment into standard kernel-doc for=
mat
makes it look like an inviting API.

If a developer uses this and directly advances a pointer by the return value
without masking the overflow bit, could an integer overflow during parsing =
cause
the pointer to jump out-of-bounds?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260517-adf41513-i=
io-driver-v13-0-bb6e134a360f@analog.com?part=3D2

