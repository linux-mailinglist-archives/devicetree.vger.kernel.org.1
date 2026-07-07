Return-Path: <devicetree+bounces-322024-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lGYMKhb7TGrOswEAu9opvQ
	(envelope-from <devicetree+bounces-322024-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 15:11:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAE771BB81
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 15:11:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bt1UMHum;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322024-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322024-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9B694302E910
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 13:06:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECA72414A05;
	Tue,  7 Jul 2026 13:06:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B183F99ED
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 13:06:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783429610; cv=none; b=k2CQdBBWRpGf9ELV9Nuzqwdo+MRlLBx3x/xKOxMcM2x9G8AjgNUKjMWDR2d96hUomARiQwxlneywV3Xbz3v4lQ+WgMp9+N4xUuvcRJ0T/1hn0B974agXu4lIysZegx26oDhIG+7hgxRz6hqYE/1erxPIvNduxIiALIvvjePVg8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783429610; c=relaxed/simple;
	bh=ROBuOxK4hKNyNrYVb3j8ZCvCOQmubb1DE4EtTr9sbv8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=U5RVfa6gXaMywBYKYCxnsywt5fvJidsGyPj/e3+lyRHFQSPAwBq8cTlFQVnZa/u0WpiThpeSWQwRFjbyziRC7WaoN/s3m8JFG1MHsabJF9YpvIXhUYZoXMt2TDkzyrVexTTEfzJJLKrsibFX15Pii2V4+BhV9ncVkXJCPfsJF7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bt1UMHum; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C16921F000E9;
	Tue,  7 Jul 2026 13:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783429609;
	bh=rziCclHQVYK8+rCetnG1ROiV23yr/xXCyqtuljaBAZE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bt1UMHumXxJMpHnoJx8XTnxiCVAy/BJeLaEWZgS5d1UwUB8IthhQX+IGMO34y6GQq
	 mTZGkuO6G/8xsVqjgWXKREKI4uHsn7j56ltSXFkv+EW6P2xt+jrnaPp7uzog4wlST6
	 YL0t/PslABBlR/GWTLwYj07bmY6x9vDwwW6mL/0IHcYFiGtroxcTPHYMXCrjp8u2kc
	 azfJPHu+8HxSUtIn94ocKFcYGij2RWuGC9Z7rbOoDBmdGW9d8u47xw72reaZp+9a17
	 +BI4qk3NG4DkIPRqA7k4BSzvJ9tSWTt724ByyHBLY5CChJwes08QPIjA9uKA4/qQWR
	 73lRTu7+/r/ow==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v16 4/4] crypto: spacc - Add SPAcc Kconfig and Makefile
Reply-To: sashiko-reviews@lists.linux.dev
To: "Pavitrakumar Managutte" <pavitrakumarm@vayavyalabs.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260707125311.2398031-5-pavitrakumarm@vayavyalabs.com>
References: <20260707125311.2398031-1-pavitrakumarm@vayavyalabs.com>
 <20260707125311.2398031-5-pavitrakumarm@vayavyalabs.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 13:06:48 +0000
Message-Id: <20260707130648.C16921F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322024-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:pavitrakumarm@vayavyalabs.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vayavyalabs.com:email,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0FAE771BB81

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Medium] Hardware tuning and instance configuration parameters are hardco=
ded as compile-time Kconfig options.
- [Medium] Boolean Kconfig option `CRYPTO_DEV_SPACC_HASH` unconditionally s=
elects tristate algorithms, causing kernel bloat.
- [Low] Unused dependency on `CRYPTO_SM3` selected by `CRYPTO_DEV_SPACC_HAS=
H`.
--

--- Patch [4]: [PATCH v16 4/4] crypto: spacc - Add SPAcc Kconfig and Makefi=
le ---
commit cd06e4262110289b96679278cd22ee6ebd1683fa
Author: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>

crypto: spacc - Add SPAcc Kconfig and Makefile

Add Makefile and Kconfig for SPAcc driver.

> diff --git a/drivers/crypto/dwc-spacc/Kconfig b/drivers/crypto/dwc-spacc/=
Kconfig
> new file mode 100644
> index 0000000000000..a9172606d77aa
> --- /dev/null
> +++ b/drivers/crypto/dwc-spacc/Kconfig

[ ... ]

> +if CRYPTO_DEV_SPACC
> +
> +config CRYPTO_DEV_SPACC_HASH
> +	bool "Enable HASH functionality"
> +	default y
> +	select CRYPTO_HASH
> +	select CRYPTO_SHA1
> +	select CRYPTO_MD5
> +	select CRYPTO_SHA256
> +	select CRYPTO_SHA512
> +	select CRYPTO_HMAC
> +	select CRYPTO_SM3

[Severity: Low]
Does this driver actually require CRYPTO_SM3? The spacc_ahash.c frontend do=
es
not appear to include sm3 or hmac(sm3) in its supported hashes, nor does it
seem to use the algorithm for software fallbacks during key preparation.

> +	select CRYPTO_CMAC
> +	select CRYPTO_XCBC
> +	select CRYPTO_AES
> +	select CRYPTO_SM4_GENERIC

[Severity: Medium]
Since CRYPTO_DEV_SPACC_HASH is a bool, if CRYPTO_DEV_SPACC is built as a
module (=3Dm), won't these selects evaluate to =3Dy? This would force all t=
hese
core crypto algorithms to be statically compiled into the vmlinux image,
which might unnecessarily bloat the kernel size for users expecting them
to remain as modules.

[ ... ]

> +config CRYPTO_DEV_SPACC_PRIORITY
> +	int "VSPACC priority value"
> +	range 0 15
> +	default 1
> +	help
> +	  Default arbitration priority weight for this Virtual SPAcc instance.
> +	  Hardware resets this to 1. Higher values means higher priority.
> +
> +config CRYPTO_DEV_SPACC_INTERNAL_COUNTER
> +	int "SPAcc internal counter value"
> +	range 100000 1048575
> +	default 100000
> +	help
> +	  This value configures a hardware watchdog counter in the SPAcc engine.
> +	  The counter starts ticking when a completed cryptographic job is
> +	  sitting in the STATUS FIFO. If the job remains unprocessed for the
> +	  configured duration, an interrupt is triggered to ensure it is servic=
ed.

[Severity: Medium]
Are these hardware tuning parameters appropriate for compile-time Kconfig
options?

In a multiplatform kernel, statically defining the virtual instance arbitra=
tion
priority and watchdog timeout forces all devices using this kernel binary to
share the exact same configuration.

Could these parameters be passed dynamically at runtime via Device Tree,
ACPI, or module parameters to support per-board flexibility?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707125311.2398=
031-1-pavitrakumarm@vayavyalabs.com?part=3D4

