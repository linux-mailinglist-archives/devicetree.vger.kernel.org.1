Return-Path: <devicetree+bounces-308419-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id D8lECKD6Jmp5pAIAu9opvQ
	(envelope-from <devicetree+bounces-308419-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 19:23:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E09659323
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 19:23:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=dvbRWvcR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308419-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308419-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 042F836BFA1B
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 16:04:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D60EE330B3F;
	Mon,  8 Jun 2026 16:04:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA44A31ED80
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 16:04:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780934648; cv=none; b=DdFiujCeiv78B1G0HJEg+fqalxYQrvjgIYXlmGui1ghaF7ykQqH3Nn6mv0bJszOemRRrQwfAPOcuQS+I7PvRt6IfSNlP+Z15LGbfFx2lssqEgm8H8+CzvJaZcl1HUN4jF7Oe6ffHIwQhMUh4/6IPZUoMJjCymg4MKYdpRbtc1n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780934648; c=relaxed/simple;
	bh=qqR0t8YTQnJGk0KqlccpmoRAFJBMYIepUVpIvVzk6I4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Og2Z6nZywOZbuA3Udh2E7Ep6MMoF9TY+koRhg47kxQ2iAtfHJxNhm2Q5c6E6MHafBwDQFMLyVGQjrKpNKcvr5WJ3jQZh0tA1UKZ3CmugINF+saMta+CotawPrH0i/pYLjjEhlgSS5WSM0Q904SS3BC5rYrrbbtN2JMhSWyyo6j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvbRWvcR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 465C01F00893;
	Mon,  8 Jun 2026 16:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780934647;
	bh=o3876LPd6bnPxXjhb+a85+J/pBX+R7ozQXHAU0j94zI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dvbRWvcRuMuDg37gUZK5xBEg5P40PHHvMqFrsNtqgsCNofA4oM8QhK/jyLeDOj/+B
	 c57SlysYbOMMdI2qBDOuskNCZk9Ls7WQtFQwfcO8ajtlM+Xc5bzRte1jws6DzbYXL8
	 2tg3v8LHsiHlUI2cCm/+uffy0WthFaV0WsxYofeBkqwfSRJXCDOjaDIfRR+iSb2XWb
	 I0g3mcQDJh6VnquImNJEmYATkfx3FU6glQ6PLLOU0beHM6eaaE9LgzEUUHDIes0UCV
	 YrmiAAw1U6pL/Cnif19FjWUnVqQDVM9vPFR8QKsj0P9uhGZb4DOU1Fmb0Derr9KIc1
	 S+eqMNEAERE6g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] iio: temperature: tmp117: add TI TMP119 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Romain Gantois" <romain.gantois@bootlin.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260608-tmp119-v2-2-30c3537d5097@bootlin.com>
References: <20260608-tmp119-v2-2-30c3537d5097@bootlin.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Jun 2026 16:04:06 +0000
Message-Id: <20260608160407.465C01F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308419-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:romain.gantois@bootlin.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 62E09659323

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] TMP119 devices are incorrectly assigned `tmp117_channels_info` d=
uring hardware probe, resulting in the wrong IIO device name.
--

commit 39dc1c3727920cc7af5409c8327a8bd65880f8b8
Author: Wil Stark <wil_stark@keysight.com>

iio: temperature: tmp117: add TI TMP119 support

This commit adds support for the TMP119 temperature sensor. It introduces
the device ID, channel info, and matching data to allow the tmp117 driver
to handle TMP119 devices.

> diff --git a/drivers/iio/temperature/tmp117.c b/drivers/iio/temperature/t=
mp117.c
> index 8972083d903a2..18ad40f3e7361 100644
> --- a/drivers/iio/temperature/tmp117.c
> +++ b/drivers/iio/temperature/tmp117.c

[ ... ]

> @@ -170,6 +177,7 @@ static int tmp117_probe(struct i2c_client *client)
>  		match_data =3D &tmp116_channels_info;
>  		break;
>  	case TMP117_DEVICE_ID:
> +	case TMP119_DEVICE_ID:
>  		match_data =3D &tmp117_channels_info;
>  		break;

[Severity: Medium]
Will this assignment cause TMP119 devices to be registered with the wrong n=
ame?

By falling through to the TMP117_DEVICE_ID case, match_data is assigned to
&tmp117_channels_info rather than the newly added tmp119_channels_info.

As a result, TMP119 devices are exposed to userspace in the IIO subsystem
with the name 'tmp117' instead of 'tmp119'. The new tmp119_channels_info
struct appears to be completely bypassed during the hardware probe unless
identification fails and fallback match data is used.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608-tmp119-v2-=
0-30c3537d5097@bootlin.com?part=3D2

