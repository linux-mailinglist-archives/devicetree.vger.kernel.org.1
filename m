Return-Path: <devicetree+bounces-308497-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kPUvLp0RJ2qerAIAu9opvQ
	(envelope-from <devicetree+bounces-308497-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 21:01:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D864659F47
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 21:01:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="JWmbUWM/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308497-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308497-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CD48F3071CBF
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 18:49:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4087538D3FD;
	Mon,  8 Jun 2026 18:49:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378F0386C39
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 18:49:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780944547; cv=none; b=RHN6eg7qWfJIfnk7Bqnq8cFK4vF3foE99JxkkKhsVhjSK0DnwV2K/1kFbtjBnwWimKJ56v6sow0cCfFCIJKP0z5QTjo1m6x3/4LjaLNd9JbvLG28XnCbrT9EeBOZtXgtwtFEIcZ3bZVdd6T9alg6x1fCprVB41jL3Y1V0lm8A5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780944547; c=relaxed/simple;
	bh=5C4z95/rtuXSFk2JQ31cDh9rIZibU8Mydc8tSQz3fc4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QTxYR6CSWoGUwBvbWwL/Ll7qf6cO+Qnn3YARzef4SPNk8/nariSctpNMWb8Y8YznUHmMcND4Os4O3pdxVKvHpT9GtOeBtNFmuyogxE8JQ41ESomv+d4BwsGOdkIbNUCb5U1/ZkPJCGVdOOJ1e5um7ALIq9zn2qA4YwAFDomI2t8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JWmbUWM/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF4C11F00893;
	Mon,  8 Jun 2026 18:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780944545;
	bh=YvK11Osbx3Qh4z4Ps3pyW4RMR8yQgV2gTIfp6NJ58IA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JWmbUWM/Z/nd4PlfHMj4hI+dGrXYkqBuFo5EP612S+uWgaqj7BuvOMUdlnVYsqvr6
	 Shc8zCWFKQXv/tbKUyxqG0D7YaOytM5ST+IIWlBuYmGMZavOrnNqmCrwJiJJFEH3F8
	 2hSManTdTIJiWDcBpReaPPIeeDVEKEDQsLe/RXiKnL2r1XAMiVTfGbpMdneBhyGL3n
	 cZWLys3Yh9hj2/kp8zz7xCet5zYAPsJIl0YNbaNOCVPzNKxj1/Bbi+QV3IHNIVJHiZ
	 uIdLrC4H1Zfv4rIfXNdxg4ydmycfkr3GBiH1p8AvZM1cdHmpYQmTX9A5e6LW7v+vEe
	 etlHDsnwKPZfw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 5/5] iio: adc: versal-sysmon: add oversampling
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Salih Erim" <salih.erim@amd.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260608183801.1257051-6-salih.erim@amd.com>
References: <20260608183801.1257051-6-salih.erim@amd.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Jun 2026 18:49:05 +0000
Message-Id: <20260608184905.AF4C11F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308497-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:salih.erim@amd.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,amd.com:email,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2D864659F47

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The oversampling ratio software caches are initialized to 1 with=
out synchronizing with the actual hardware state during probe.
--

commit 3a6a43bb24f0fd6d80e623d9f51baca549ff9147
Author: Salih Erim <salih.erim@amd.com>

iio: adc: versal-sysmon: add oversampling support

This commit adds support for reading and writing the oversampling ratio
through the IIO oversampling_ratio attribute. The hardware supports averagi=
ng
2, 4, 8, or 16 samples, plus a ratio of 1 (no averaging).

> diff --git a/drivers/iio/adc/versal-sysmon-core.c b/drivers/iio/adc/versa=
l-sysmon-core.c
> index 5fbd509089bbd..389a88878115f 100644
> --- a/drivers/iio/adc/versal-sysmon-core.c
> +++ b/drivers/iio/adc/versal-sysmon-core.c

[ ... ]

> @@ -890,6 +1033,8 @@ int sysmon_core_probe(struct device *dev, struct reg=
map *regmap)
> =20
>  	sysmon =3D iio_priv(indio_dev);
>  	sysmon->regmap =3D regmap;
> +	sysmon->temp_oversampling =3D 1;
> +	sysmon->supply_oversampling =3D 1;

[Severity: Medium]
Is it possible that the hardware was already configured with a different
oversampling ratio by the bootloader (FSBL) or retained state across a warm
reboot?=20

The software cache is initialized to 1 here, but no corresponding hardware
synchronization or explicit register initialization occurs before the IIO
device is registered.

If the hardware is actively using averaging (e.g., OSR=3D16), could the IIO
sysfs interface incorrectly report 1, masking the true hardware configurati=
on?
Would it be safer to either enforce this default state on the hardware or r=
ead
the current register values during initialization?

> =20
>  	ret =3D devm_mutex_init(dev, &sysmon->lock);
>  	if (ret)

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608183801.1257=
051-1-salih.erim@amd.com?part=3D5

