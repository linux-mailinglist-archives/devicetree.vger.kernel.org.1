Return-Path: <devicetree+bounces-320092-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hxb3C82mR2rbcwAAu9opvQ
	(envelope-from <devicetree+bounces-320092-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 14:10:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C77AB70238E
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 14:10:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gLFZF5E7;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320092-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320092-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 838DE301F32C
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 12:07:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C855D3CE096;
	Fri,  3 Jul 2026 12:07:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99CBF3C3456;
	Fri,  3 Jul 2026 12:07:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783080440; cv=none; b=j2SdkEOZ0qZhpllNIFRqU0sWXeXh0lKdU2w5zWvErBoTA+igasxHK2D/RsOUdL3fpYKuz01tOZ15zJgusvi7aQgGg0Bh4ypuIl1egjnDkOWp14/yV6Pbjk/kLvkvPI2zC/AMVcz14LEiZ3gdo1mhE4CY7OpwqSl5YwvgzUJkeMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783080440; c=relaxed/simple;
	bh=VSQ/6H/MMESdlsc/KkCS1I5sS2XN/8GweViIcKj5zzs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ZXuam/EXrDbxj1cu92p/oxFAybKmicSLA9gUiqKPyl3eiUlTJu+tH8fuI1krNZwmFRl/l+afVNrTgQomwWEy4gkPm1pdDiGFrGZHzdZ7vIDe/6d4Y7XHR9RmMyXa70KGD5AfQUm49XHU4jSABs064nFa1XDm4W+/5nnroubU4DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLFZF5E7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA5101F00A3A;
	Fri,  3 Jul 2026 12:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783080439;
	bh=WTKXMN7fznqWn8wVAyCM4JTOSuAIAOSa2+uK5nnjvxY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gLFZF5E7fJEUxeYbXYmn6O9G2K0la/1TSOO3KZpmi0bl0ymYgp5iH5wwkVL5ude20
	 C2ZJXFAm6VmCqE7wLmV0Cs8LgAcwLR/CBKlhnEmRSYv+BdpLSvrI177Or2mLZE15zW
	 V7HApfrYrO0UxHWkSfD4KZKsXQflWHtSj6mu19rOZvAOKylboShg0GLX1o+dSgYhza
	 eUPR1MiGkN148RI//JfF8EkLH0uXNmCJ0g22oUI6CEoE8ljPuRIs3fyXbT2ZQdAxGL
	 ajfAH7H5av9uismLcp4yjeNiakFklJ5t2wzmv+2usrQSNkSQIGdQDSiYvOy+bO+BCG
	 2ENbCFmurDkzg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/7] HID: i2c-hid-of: skip post-power-on delay if
 already powered on
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chen-Yu Tsai" <wenst@chromium.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, linux-input@vger.kernel.org, dmitry.torokhov@gmail.com
In-Reply-To: <20260703115601.1323491-3-wenst@chromium.org>
References: <20260703115601.1323491-1-wenst@chromium.org>
 <20260703115601.1323491-3-wenst@chromium.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 12:07:17 +0000
Message-Id: <20260703120718.DA5101F00A3A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-320092-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,chromium.org:email,vger.kernel.org:from_smtp,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:linux-input@vger.kernel.org,m:dmitry.torokhov@gmail.com,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C77AB70238E

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Bitwise AND assignment (`&=3D`) between a `bool` and the `int` ret=
urn value of `regulator_is_enabled()` causes pseudo-random evaluation based=
 on the least significant bit (LSB) of the integer, potentially skipping ma=
ndatory delays.
- [High] Skipping the post-power-on delay based solely on the current state=
 of `regulator_is_enabled()` introduces a race condition for devices sharin=
g a power rail.
--

commit 14324865d2e3b5ccaf90d6ff025e907befb17313
Author: Chen-Yu Tsai <wenst@chromium.org>

HID: i2c-hid-of: skip post-power-on delay if already powered on

This patch checks if the regulator supplies for an i2c-hid device are
already enabled during probe. If all supplies are already on, it skips
the post-power-on delay to save boot time.

> diff --git a/drivers/hid/i2c-hid/i2c-hid-of.c b/drivers/hid/i2c-hid/i2c-h=
id-of.c
> --- a/drivers/hid/i2c-hid/i2c-hid-of.c
> +++ b/drivers/hid/i2c-hid/i2c-hid-of.c
> @@ -46,8 +47,12 @@ static int i2c_hid_of_power_up(struct i2chid_ops *ops)
>  {
>  	struct i2c_hid_of *ihid_of =3D container_of(ops, struct i2c_hid_of, ops=
);
>  	struct device *dev =3D &ihid_of->client->dev;
> +	bool supply_was_enabled =3D true;
>  	int ret;
> =20
> +	for (unsigned int i =3D 0; i < ARRAY_SIZE(ihid_of->supplies); i++)
> +		supply_was_enabled &=3D regulator_is_enabled(ihid_of->supplies[i].cons=
umer);

[Severity: High]
Could this bitwise operation cause a regression by inadvertently evaluating
the least significant bit of the return value?

The function regulator_is_enabled() returns an int (positive state, 0, or=20
a negative error). In C, performing a bitwise AND (&=3D) between a bool=20
(promoted to integer 1) and an int isolates the least significant bit.

For example, if regulator_is_enabled() returns a negative error code like=20
-ENODEV (-19), the least significant bit is 1, causing supply_was_enabled=20
to evaluate to true despite the error. If it returns an even positive=20
state like 2, the least significant bit is 0, making it false.

[ ... ]

>  	if (ret) {
>  		dev_warn(dev, "Failed to enable supplies: %d\n", ret);
>  		return ret;
>  	}
> =20
> -	if (ihid_of->post_power_delay_ms)
> +	dev_dbg(dev, "supply was %s.\n", str_on_off(supply_was_enabled));
> +	if (!supply_was_enabled && ihid_of->post_power_delay_ms)
>  		msleep(ihid_of->post_power_delay_ms);

[Severity: High]
Is it safe to skip this delay based solely on whether the regulator is
currently enabled?

If two devices (e.g. a touchscreen and a trackpad) share the same=20
non-always-on regulator and probe asynchronously:

Device 1 starts probing, calls regulator_bulk_enable(), and begins
waiting its post-power delay.

Device 2 concurrently probes in i2c_hid_of_power_up(), sees=20
regulator_is_enabled() is true, and skips its post_power_delay_ms here.

Device 2 would then immediately issue I2C transactions to a newly powered
device that might not have finished initializing, potentially resulting
in NACKs and a probe regression.=20

Does the regulator framework provide a way to ensure the rail has been on
for the required duration, rather than just currently enabled?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703115601.1323=
491-1-wenst@chromium.org?part=3D2

