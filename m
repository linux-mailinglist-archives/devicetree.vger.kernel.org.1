Return-Path: <devicetree+bounces-324950-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id g/pALkH6UmptVwMAu9opvQ
	(envelope-from <devicetree+bounces-324950-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 04:21:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B397438B0
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 04:21:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=DhWcg4qB;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324950-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324950-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD47730166E0
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 02:21:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11D7333065D;
	Sun, 12 Jul 2026 02:21:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC6F63A1DB;
	Sun, 12 Jul 2026 02:21:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783822911; cv=none; b=XseoEVEA2wjfjrqHDuLUzBQrY2MG1V/3VrG7QHwfmxQLtGurmPi65PKuEB3jfhsUSSuRYhT/rsfMEvziqP2qzW7lk3h6Y69FOjGr+IAU6DHOc8v17iCeGs4zCU7NsQn++u/eKYv1Gcss/OFlZ3ac+lGDfLRGPa/jprb6y06o0NY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783822911; c=relaxed/simple;
	bh=mGOWJfWB8wjRg+NrzkP/8QMGFcuBhPzeKMTfb3WKJmE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=of28gwYaqB49INp9IhL6uVEflgkCcsmyzALpxApFi8w6x3JUPNvSgMfjroi9mOxtr50piWJX+W+miSgoVb3ZONgRNEYAItJ/Y3L3ZaQjVP0SBTvtwW7eBnJUPbqsXKaGeYL7otI3qm6FrVjLXkjbIMUV45cWmsoWNPvzk9is31A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DhWcg4qB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67ACE1F000E9;
	Sun, 12 Jul 2026 02:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783822909;
	bh=z/wBy1Dpzce8FYCWwNUYOyzAUxJrJJupQQfugGUHubk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=DhWcg4qBs72ANzygq3fExdxHwNf/4AwEDeDvg5P5v6RExd8C1ox76UG/QciO95SZz
	 YOkRVKSrGvqOfS1W1Dbvbw+6MYOCsGD4IXU8AMazUStU0ch0/oTDiCMohv17t5LFDq
	 8CnFCk+7rumGETOK/uammfHsGR2sKi2ldJ0ExRPAK5PLHF4X7sbzykZYS9tRQzJUug
	 JBInr+4QoQxUftqi2BvYQAx3TY9ehrHrAsFOnMGKhzMfgcnVYtK8lgdYhz+8LsIE1U
	 LIh5f7Y7Jq0jzbwq4YihPStvSdPn4yC/MDnPKg0Hrtuu35S8D8gDw+42lJ0evQcrqM
	 3nlgvMFaTzoyQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 06/10] ARM: s3c: crag6410: use software
 nodes/properties to set up GPIO keys
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Torokhov" <dmitry.torokhov@gmail.com>
Cc: linux-input@vger.kernel.org, dmitry.torokhov@gmail.com, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260711-samsung-kp-v3-6-b2fcaba77aff@gmail.com>
References: <20260711-samsung-kp-v3-0-b2fcaba77aff@gmail.com>
 <20260711-samsung-kp-v3-6-b2fcaba77aff@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Jul 2026 02:21:48 +0000
Message-Id: <20260712022149.67ACE1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324950-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:dmitry.torokhov@gmail.com,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 10B397438B0

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The conversion to software nodes implicitly changes the default deb=
ounce interval for the keys from 0ms to 5ms.
--

--- Patch [6]: [PATCH v3 06/10] ARM: s3c: crag6410: use software nodes/prop=
erties to set up GPIO keys ---
commit 69f758b0d4bf8ffd63c5e52869f8e01a5ad69545
Author: Dmitry Torokhov <dmitry.torokhov@gmail.com>

ARM: s3c: crag6410: use software nodes/properties to set up GPIO keys

This commit switches the gpio-keys device on crag6410 to use software
nodes and properties instead of platform data. This prepares the gpio-keys
driver for the removal of legacy platform data support.

> diff --git a/arch/arm/mach-s3c/mach-crag6410.c b/arch/arm/mach-s3c/mach-c=
rag6410.c
> --- a/arch/arm/mach-s3c/mach-crag6410.c
> +++ b/arch/arm/mach-s3c/mach-crag6410.c
[ ... ]
> -static struct gpio_keys_button crag6410_gpio_keys[] =3D {
> -	[0] =3D {
> -		.code	=3D KEY_SUSPEND,
> -		.gpio	=3D S3C64XX_GPL(10),	/* EINT 18 */
> -		.type	=3D EV_KEY,
> -		.wakeup	=3D 1,
> -		.active_low =3D 1,
> -	},
> -	[1] =3D {
> -		.code	=3D SW_FRONT_PROXIMITY,
> -		.gpio	=3D S3C64XX_GPN(11),	/* EINT 11 */
> -		.type	=3D EV_SW,
> -	},
> -};
[ ... ]
> +static const struct property_entry crag6410_suspend_key_props[] =3D {
> +	PROPERTY_ENTRY_U32("linux,code", KEY_SUSPEND),
> +	PROPERTY_ENTRY_GPIO("gpios",
> +			    SAMSUNG_GPIO_NODE('L'), 10,	/* EINT 18 */
> +			    GPIO_ACTIVE_LOW),
> +	PROPERTY_ENTRY_BOOL("wakeup-source"),
> +	{ }
> +};

[Severity: Low]
Does this conversion implicitly change the debounce interval?

In the old platform data, the debounce interval defaulted to 0 since the
struct field was zero-initialized. By not specifying a "debounce-interval"
property here, won't the gpio-keys fwnode parser apply a 5ms default to this
key?

> +
> +static const struct software_node crag6410_suspend_key_node =3D {
> +	.parent =3D &crag6410_gpio_keys_node,
> +	.properties =3D crag6410_suspend_key_props,
> +};
> +
> +static const struct property_entry crag6410_prox_sw_props[] =3D {
> +	PROPERTY_ENTRY_U32("linux,input-type", EV_SW),
> +	PROPERTY_ENTRY_U32("linux,code", SW_FRONT_PROXIMITY),
> +	PROPERTY_ENTRY_GPIO("gpios",
> +			    SAMSUNG_GPIO_NODE('N'), 11,	/* EINT 11 */
> +			    GPIO_ACTIVE_HIGH),
> +	{ }
> +};

[Severity: Low]
Similarly, does the proximity switch also unintentionally receive a 5ms
debounce interval because the property is omitted here?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260711-samsung-kp=
-v3-0-b2fcaba77aff@gmail.com?part=3D6

