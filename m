Return-Path: <devicetree+bounces-309991-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OrAFHROqKWqbbgMAu9opvQ
	(envelope-from <devicetree+bounces-309991-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 20:16:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B716D66C338
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 20:16:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="fI+eIH/a";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309991-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309991-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E371132563A0
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:11:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29F84357CF3;
	Wed, 10 Jun 2026 18:11:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB78352F85
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 18:11:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781115088; cv=none; b=bNB5pNsA9C8IPLfrESxKFE8zXDvHVQ4S4HSCxY/KaxHhuD2usE2v9hGK9pAEk9kXHumnnhQUtEaiXut7DTqDZIdgAHCn6TT/kdX/X9SAxnKPVaPtJioXRdDkeCutKMRr4MHytYG8QKekR2W/DkePLuyOsuAlKAmOfeV08R86LWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781115088; c=relaxed/simple;
	bh=nlYeBuilx3W2e8o+NTHLxAY+1E09UKhAVH4FbtO0HH4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=YHht9AFxCYOmWyYN2yHE85YMRjO6bkikkXRIJLY9nbfYgCVz2EqHvkoRmrGoTd4D8stlmm1EbkOZLSOEh/KXFUsEfkbj/ybjB7RaKs9q51m/oYGEO0xXIc7ahmCnRU4V08mfnCPt9Z8CSER2OS3NoB01HKr1pOGRQtTbrSgFXDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fI+eIH/a; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E75A11F00893;
	Wed, 10 Jun 2026 18:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781115086;
	bh=7j5LSjZVBIjEXarCFP2Zz+ZTCzSQfRMDsxFoxQVGNqQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fI+eIH/aP3rZlJyw8QX0SAn9KuJLy+s14vVrUFPBvMIdZ3ZasVWPWqzU0sOoL6cpy
	 mAAHhFdn6Ji56B48H0RK4Rr5x+VKCFCmVUScDlYSEVKp3CL5NGnvJGhW/ewKt55l7Z
	 dv6SdFB7R10Ws+KKjTMTf5/6YQrkRJXWIKwbNOQuSChSjIC5/h05Lt0OY+L6yjDGKF
	 pc4ZxOdas0StYb/8Bxjqv6a7f4X/uorXJLnIPaqXA4b8jRul6DNaCbus2OiQoBNfGu
	 7XOZ8GfeYEqMuqmM67YtT6K1gb83zMn1dqQ9IBg9+GOJ0ygWcj4sdYIWVg7Bpff6AL
	 hQR+06ColpZww==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V11 3/9] iio: imu: inv_icm42607: Add inv_icm42607 Core
 Driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chris Morgan" <macroalpha82@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260610175455.19006-4-macroalpha82@gmail.com>
References: <20260610175455.19006-4-macroalpha82@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 18:11:25 +0000
Message-Id: <20260610181125.E75A11F00893@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309991-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:macroalpha82@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B716D66C338

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Incorrect use of `regcache_sync()` in probe writes to the read-o=
nly WHOAMI register and executes before bus setup.
--

commit 40cc0df3cdc00863249296cfd5a6b946f44cff13
Author: Chris Morgan <macromorgan@hotmail.com>

iio: imu: inv_icm42607: Add inv_icm42607 Core Driver

This commit adds the core component of a new inv_icm42607 driver. It includ=
es
the initial setup functions and full register definitions for the device.

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/i=
io/imu/inv_icm42607/inv_icm42607_core.c
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
[ ... ]
> +static int inv_icm42607_setup(struct inv_icm42607_state *st,
> +			      inv_icm42607_bus_setup inv_icm42607_bus_setup)
> +{
> +	const struct device *dev =3D regmap_get_device(st->map);
> +	unsigned int val;
> +	int ret;
> +
> +	ret =3D regmap_read(st->map, INV_ICM42607_REG_WHOAMI, &val);
> +	if (ret)
> +		return ret;
[ ... ]
> +	/* Sync the regcache again after a reset. */
> +	regcache_mark_dirty(st->map);
> +	ret =3D regcache_sync(st->map);
> +	if (ret)
> +		return ret;

[Severity: Medium]
Will regcache_sync() attempt to write the cached value back to the read-only
WHOAMI register here?

Since WHOAMI is read earlier in this function and is not marked as volatile=
 in
inv_icm42607_regmap_config, its value is cached. Because the regmap_config
lacks a writeable_reg or wr_table definition, regmap assumes all non-volati=
le
registers are writable.

Could this unintended write to a read-only register cause a bus NACK or
unexpected hardware behavior, especially since it occurs before
inv_icm42607_bus_setup() configures bus-specific settings?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610175455.1900=
6-1-macroalpha82@gmail.com?part=3D3

