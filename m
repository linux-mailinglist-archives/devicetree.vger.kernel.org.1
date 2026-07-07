Return-Path: <devicetree+bounces-322225-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id r+XMOVknTWqZvwEAu9opvQ
	(envelope-from <devicetree+bounces-322225-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 18:20:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1436D71DC69
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 18:20:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ApVGy5kR;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322225-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322225-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4EE713084687
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 16:16:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1A2D430303;
	Tue,  7 Jul 2026 16:16:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C4836655C
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 16:16:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783440976; cv=none; b=nq1sxKsR8/pwhobrvslUPxjaE4IaTqk7L7BhnX8ln30eB7eVHTjNuVUm9j4yRoMQi1QJoyXvIVEgLk0Ym65p/3By08uqBy2U5ZIS9e4c6pAfn1WcUup3cKTwuY3h0V1qjAtfUH/OdsC3C+vf8YoRP78jcrKk/y2WhojXUuuPZgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783440976; c=relaxed/simple;
	bh=sRFCfTGmGnQmw3s/XbQnRRoAgtplceGQRyjoGk6BNcQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lIhYO8ExMKbgcDORwGC2ocw+T7pgiPcqLAApFSQSwxXdcaQ4/4zsu1Is13kNa83NEo/NgBwNG4phZdjABGwv8SpS4fN0rWdrJRfOd5j6puKs943mmlQ/jmV83r9J3e/2vkSmTWkNJhLi2oCJqdM8pGI50Hr8gJs//F97fyH9OiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApVGy5kR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07F441F000E9;
	Tue,  7 Jul 2026 16:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783440975;
	bh=UBcdNec82r83N0kIl7XOWMJZBgL/krlJy3adYuhpOvQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ApVGy5kRuDgFDDpcNqVOu1cVo2FcWDbR7oqepLlf6MA0UdnGu63CXRURWAFb+vJcb
	 ClFmOyEpyxzLo6B5v3Q8NujBLxFGlwXrfifP/bCQgK8aE3yrLJL5XKc3i2x2VjARS4
	 CQBMZ03lQX0YDqo5UVyHqQj/Sdjy6stDJvUq8ocE7oc+SuQsObORe2nEyzp87Tq/D4
	 qgnSIzwhhHqESoJdSVX3vjJLDkcCFjk/wbqq4t9FVT3H08JBC9VuCqlUiqo2o5tsZu
	 gtlp83c82BXQCcyvKwuW0ACwq8g1sD4iQN4beQPMSWKcMzJM1f7jzXfCTAQpHQnaSz
	 9ByBHzVBv1PwQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 16/17] iio: ABI: add docs for ad9910 sysfs and
 debugfs entries
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rodrigo Alencar" <rodrigo.alencar@analog.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260707-ad9910-iio-driver-v7-16-a4ec30f63700@analog.com>
References: <20260707-ad9910-iio-driver-v7-0-a4ec30f63700@analog.com>
 <20260707-ad9910-iio-driver-v7-16-a4ec30f63700@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 16:16:14 +0000
Message-Id: <20260707161615.07F441F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322225-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:rodrigo.alencar@analog.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp,analog.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1436D71DC69

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing 'Date:' field in newly added ABI documentation entries.
--

--- Patch [16]: [PATCH v7 16/17] iio: ABI: add docs for ad9910 sysfs and de=
bugfs entries ---
commit 8529d81632ec7eacf5535d07efbbe35354e0d5d9
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>

iio: ABI: add docs for ad9910 sysfs and debugfs entries

Add custom ABI documentation files for the DDS AD9910 with sysfs and
debugfs entries. The sysfs entries control Digital Ramp Generator and OSK
engine parameters, while debugfs attributes are read-only and evaluate
into source channel labels.

> diff --git a/Documentation/ABI/testing/debugfs-iio-ad9910 b/Documentation=
/ABI/testing/debugfs-iio-ad9910
> new file mode 100644
> index 0000000000000..b4a125bc10078
> --- /dev/null
> +++ b/Documentation/ABI/testing/debugfs-iio-ad9910
> @@ -0,0 +1,60 @@
> +What:		/sys/kernel/debug/iio/iio:deviceX/frequency_source
> +KernelVersion:	7.3
> +Contact:	linux-iio@vger.kernel.org

[Severity: Low]
Does this new ABI entry miss the mandatory Date field? The kernel ABI
documentation guidelines in Documentation/ABI/README typically require a
Date field to be present alongside What, KernelVersion, and Contact.

> +Description:
> +		Read-only. Reports the channel label that corresponds to which of the

[ ... ]

> diff --git a/Documentation/ABI/testing/sysfs-bus-iio-frequency-ad9910 b/D=
ocumentation/ABI/testing/sysfs-bus-iio-frequency-ad9910
> new file mode 100644
> index 0000000000000..4e25f538af4ad
> --- /dev/null
> +++ b/Documentation/ABI/testing/sysfs-bus-iio-frequency-ad9910
> @@ -0,0 +1,31 @@
> +What:		/sys/bus/iio/devices/iio:deviceX/out_altcurrentY_dwell_en
> +What:		/sys/bus/iio/devices/iio:deviceX/out_frequencyY_dwell_en
> +What:		/sys/bus/iio/devices/iio:deviceX/out_phaseY_dwell_en
> +KernelVersion:	7.3
> +Contact:	linux-iio@vger.kernel.org

[Severity: Low]
Should these sysfs ABI entries also include a Date field to fully comply
with the standard ABI documentation format?

> +Description:
> +		For a channel that produces parametric sweeps, this attribute controls

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707-ad9910-iio=
-driver-v7-0-a4ec30f63700@analog.com?part=3D16

