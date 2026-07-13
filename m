Return-Path: <devicetree+bounces-325794-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jRfJJE5kVWpJnwAAu9opvQ
	(envelope-from <devicetree+bounces-325794-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 00:18:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B0E74F78B
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 00:18:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="R/DEsnzY";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325794-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325794-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 711723037D5A
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 22:18:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8EF038887C;
	Mon, 13 Jul 2026 22:18:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 964293845D3
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 22:18:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783981124; cv=none; b=C3HgoEfL8JaSesYpDw4N5SFfsVuvy7IleZ7dlKb15K9ZH9dywP5k4be0pXikxcnwaIwl4xMPjnke17OiizM3Q3ki1n8UXy/b6LAcDsdyAw4Mhki6OuWgYYnJ5Hi47oOZsSYPjSqx8OrbZGBgx2gH13SUyYgUi0kWQLfla6Ma2sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783981124; c=relaxed/simple;
	bh=HAu9jIF8qOhojgRQy4Ih9DKc6g56paguR89AFj4SEFM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hIsFWjRry/nmyPzXAxOHSOqSNHLA0S3kXYWbN0E4OKUBla0mZA8JBWhDU4un8/e05HesnITIwr3zzpODI2VdROSe8DdDiroKPTJouHln1rKZXWrSPDZKMJ1YokBAXCAYLkFlG7y+SievGH/kjTBWSM9C2VDpQdhkjRYSofw0go4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/DEsnzY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC9741F000E9;
	Mon, 13 Jul 2026 22:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783981123;
	bh=T+cE5D/0CASZiImePFWTAfG470NLvPtBGpnsrSCnheo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=R/DEsnzY+9/TegMOORKjIDF86PuLM0Ca3JWo5LUebqBVuvIv/kPv7wBTNtIwtmdVd
	 n8maSrWuwxjFUvCF35fUSYoZEhYILEYNUrTj5n3dhFa8z97+9O70aQwROagCP3zph2
	 3fJSsW6mh3mQYA+lXaPayuRdbXdwwNGecbbJ2g4aHs7KlknUelEQ4T+xdNbsozbRRl
	 wifCFQyXtfHAZcrP1oC1EzH4nkwyZyLwaOEC+PEi0X+VevW0OTJwtIQJ5CTJMDeyGD
	 y007ndRe3a6tz0HnqlFYhzgQZnsM0Dy4yHLSJ2fSfseusX2PH7COsNwqeDAmHI1vJ/
	 zMNujiAfwyMsA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v16 04/10] iio: imu: inv_icm42607: Add inv_icm42607 Core
 Driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chris Morgan" <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260713215842.69097-5-macroalpha82@gmail.com>
References: <20260713215842.69097-1-macroalpha82@gmail.com>
 <20260713215842.69097-5-macroalpha82@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 22:18:42 +0000
Message-Id: <20260713221842.DC9741F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-325794-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:macroalpha82@gmail.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E3B0E74F78B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Configuration registers `FIFO_CONFIG2` and `FIFO_CONFIG3` are in=
correctly marked as volatile, preventing them from being cached and restore=
d by `regcache_sync()`.
--

--- Patch [4]: [PATCH v16 04/10] iio: imu: inv_icm42607: Add inv_icm42607 C=
ore Driver ---
commit bb558c6dbdd036d405cccb1f326025519297d967
Author: Chris Morgan <macromorgan@hotmail.com>

iio: imu: inv_icm42607: Add inv_icm42607 Core Driver

This commit adds the core component of a new inv_icm42607 driver. It includ=
es
setup functions, register definitions, and the initial functionality necess=
ary
to compile and probe the device over an i2c bus.

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/i=
io/imu/inv_icm42607/inv_icm42607_core.c
> new file mode 100644
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
[ ... ]
> +static bool inv_icm42607_is_volatile_reg(struct device *dev, unsigned in=
t reg)
> +{
> +	switch (reg) {
> +	case INV_ICM42607_REG_MCLK_RDY:
> +	case INV_ICM42607_REG_SIGNAL_PATH_RESET:
> +	case INV_ICM42607_REG_TEMP_DATA1 ... INV_ICM42607_REG_APEX_DATA5:
> +	case INV_ICM42607_REG_APEX_CONFIG0:
> +	case INV_ICM42607_REG_FIFO_CONFIG2 ... INV_ICM42607_REG_FIFO_CONFIG3:

[Severity: Medium]
Should INV_ICM42607_REG_FIFO_CONFIG2 and INV_ICM42607_REG_FIFO_CONFIG3 be
marked as volatile here?

These registers hold the FIFO watermark threshold, which is static
configuration. Marking them as volatile causes any value written to them to
bypass the regmap cache.

If future functionality utilizes these registers, they will not be restored
during a regcache_sync() (such as after a soft reset or resume from
suspend), which would cause the device to lose its watermark configuration.

> +	case INV_ICM42607_REG_FIFO_LOST_PKT0 ... INV_ICM42607_REG_APEX_DATA3:
> +	case INV_ICM42607_REG_INT_STATUS_DRDY:
> +	case INV_ICM42607_REG_INT_STATUS ... INV_ICM42607_REG_FIFO_DATA:
> +		return true;
> +	}
> +
> +	return false;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713215842.6909=
7-1-macroalpha82@gmail.com?part=3D4

