Return-Path: <devicetree+bounces-314610-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IaGnAMntOWp6zAcAu9opvQ
	(envelope-from <devicetree+bounces-314610-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 04:22:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4DB6B3894
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 04:22:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=PawGDB62;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314610-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314610-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 617A2300362E
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 02:21:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C5D835294E;
	Tue, 23 Jun 2026 02:21:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F279513790B
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 02:21:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782181276; cv=none; b=mevKIClj7PSFKpUIyzjYVimiWEyQGB5h5OKksbuTGaKcjcIdMFulwNxCawFEh3A1u0oBXCXPGtjIrZmbeb0k+F5vSpY/RSCa1AqohtHxOSS6IyUdpJaIuawIil7DV5OuSkMD4Kl6p+a/9NV+8WZpvejh0MA4zB/CKHMEmK/QQjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782181276; c=relaxed/simple;
	bh=pVIYZAtfyA5mJDSrhT8LYInIttQICwgNvVJqf6/s4RY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=SVHIgI0y3IWcLATdkvAWJVG9uExT7z/Mtu89ywG8cmVPW6JX3EByx4EOCDqMldCwXq7JHJbz5SbnIbzSA5HKf60FBYKBJUbXwabQKiC12cTlWddFEczS889XuRjUSRD4SMn+Aln6aXxDBZzCwSJUIYT1/lvmKVILTon84HzMMvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PawGDB62; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C5AB1F000E9;
	Tue, 23 Jun 2026 02:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782181275;
	bh=aEyewWdl4ZO4kxdx9WULP2NDPt7TpgiRPvMkVPxkCd8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PawGDB62KByXn/gXjsA7AMaiVQUd8Og4YdBpgD1iYNoigJY4pp5RmhujPSjd6Sfm0
	 1s0WhvvXjxC9Q3qMkMPn5EHt474JhcoUAU1UCoNbzb9uojG7INuMHz5ywCEOIdGZTl
	 nRnynoRErr9xKb6U8NrmWuJPbX58/N6CTuZkbTgYb/UBzsyZVySqanP264m0UkjogE
	 IeUHP2zPkP5MCsiN31YOFISUrcmDAsyqmaDLKB14T0AzH8F+MBbUo2UrM4FxI5Wglb
	 jJeUAUu6L+vgXy26cM73FkldcBtkhCsZm395uMOfTlhgtAuXUqFzukl9SVL3vz3oTq
	 izLBA6M5Nbo/g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 5/5] iio: adc: versal-sysmon: add oversampling
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Salih Erim" <salih.erim@amd.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260623014036.3865402-6-salih.erim@amd.com>
References: <20260623014036.3865402-1-salih.erim@amd.com>
 <20260623014036.3865402-6-salih.erim@amd.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jun 2026 02:21:14 +0000
Message-Id: <20260623022115.5C5AB1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-314610-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:salih.erim@amd.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3F4DB6B3894

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Missing hardware synchronization for oversampling ratio caches d=
uring initialization.
--

commit 25a143792e9062675e1abe4133ac067208b02232
Author: Salih Erim <salih.erim@amd.com>

iio: adc: versal-sysmon: add oversampling support

Add support for reading and writing the oversampling ratio through the IIO
oversampling_ratio attribute. The hardware supports averaging 2, 4, 8, or 16
samples, plus a ratio of 1 (no averaging).

> diff --git a/drivers/iio/adc/versal-sysmon-core.c b/drivers/iio/adc/versa=
l-sysmon-core.c
> index 8f2c502d9cb6d..1b55d343982ef 100644
> --- a/drivers/iio/adc/versal-sysmon-core.c
> +++ b/drivers/iio/adc/versal-sysmon-core.c
[ ... ]
> @@ -846,6 +999,8 @@ int devm_versal_sysmon_core_probe(struct device *dev,=
 struct regmap *regmap)
> =20
>  	sysmon =3D iio_priv(indio_dev);
>  	sysmon->regmap =3D regmap;
> +	sysmon->temp_oversampling =3D 1;
> +	sysmon->supply_oversampling =3D 1;

[Severity: Medium]
Could this lead to a mismatch between the software cache and the hardware
state if the bootloader or firmware previously configured a non-default
oversampling ratio?

Since the driver initializes temp_oversampling and supply_oversampling to 1
without reading the initial state from the hardware or forcing the hardware
registers to match the defaults, userspace might read an oversampling ratio
of 1 via sysfs while the hardware is actually still actively averaging
multiple samples.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260623014036.3865=
402-1-salih.erim@amd.com?part=3D5

