Return-Path: <devicetree+bounces-320555-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id o4hsHUERSmoY+AAAu9opvQ
	(envelope-from <devicetree+bounces-320555-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 10:09:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BD57F7095C1
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 10:09:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jKVWJJBg;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320555-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320555-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C509B3005746
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 08:09:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73F3135DA68;
	Sun,  5 Jul 2026 08:09:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4426F369206
	for <devicetree@vger.kernel.org>; Sun,  5 Jul 2026 08:09:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783238942; cv=none; b=Ae+mGeuvlR8+bDOkyt4WNoIL4b4XtFLbOl181OrJCW1zWLfDDYYy9o7u0D+U5hHY5zDH5uBnv6joK0ZSGzlo1ZRpzAAg6gWE3YuX1BoNdsPrB7mbQBWlip5za8DmhV7lEJe9OXGAuylbpQ/TflyU/xeZlN1cJpqcr1gZ7PBZ8l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783238942; c=relaxed/simple;
	bh=7GONWWBpF9tw8q6WLtt5cVGf5yjrMbE8mcJHNTI++mM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=CQDLLpVz41hNzDFf+lyAC7+kp0Og/n5qKo65VRwu3t4f64m978YBjNc7GrHC3bH5+jiLHByFthaWCINLkZ7nngRvQhcj+r+uXvdzLzZL2GFci2A2GqcQ2ZJ6vAx+rIl9R1mZDuvfpqGIK4R4JKbbA42LMQS7OCVcChowM3L2zzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKVWJJBg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CF541F000E9;
	Sun,  5 Jul 2026 08:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783238940;
	bh=Bm49Kmwpt3bZ2ktWJdVGNo8ZXSv+LvGOuBljF4ICPzk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jKVWJJBgunsIbEZbkWXSBdRvBtUGhkIj3UxM7qdov7mkVRABl5X8ZjukoDPjyqi54
	 Tab4HLuwZ6n9zv9KZ/vtk7vCQDCra/xEwln4AMBsCdEdWt6fueNL3fsvieWj7Vcn4k
	 AxQNciodOUVC78fviXvgaiybqdAtuGi8AJBN/ixWdqxq57z6JiAHKTFuHRLHMZuMkY
	 ktvamc5MdPKR/QFw1XWyixJ4VtW9FKkHZHSksBn1CHwq1jt4X1V8EclXYv1f2UVp/F
	 mbFfsl6bFq7FzhXi+z9LX5Gjl8hf95j1BshzfzQHfvl1IXwMynMLgwD9VNjCJlXENm
	 cvfhqkSo/QFtA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/5] phy: cpcap-usb: Prevent line glitches from
 triggering sysrq
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ivaylo Dimitrov" <ivo.g.dimitrov.75@gmail.com>
Cc: robh@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, conor+dt@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260705075809.1793784-2-ivo.g.dimitrov.75@gmail.com>
References: <20260705075809.1793784-1-ivo.g.dimitrov.75@gmail.com>
 <20260705075809.1793784-2-ivo.g.dimitrov.75@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 05 Jul 2026 08:08:59 +0000
Message-Id: <20260705080900.5CF541F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320555-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ivo.g.dimitrov.75@gmail.com,m:robh@kernel.org,m:olteanv@gmail.com,m:linux-phy@lists.infradead.org,m:conor+dt@kernel.org,m:vkoul@kernel.org,m:devicetree@vger.kernel.org,m:neil.armstrong@linaro.org,m:ivogdimitrov75@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,lists.infradead.org,vger.kernel.org,linaro.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BD57F7095C1

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Modifying system-wide SysRq state from a leaf PHY driver is a seve=
re layer violation, and the implementation fails to disable SysRq in many c=
onfigurations while also overwriting administrative changes.
- [High] Lockless manipulation of the global SysRq state introduces a data =
race that corrupts the input subsystem's handler list, leading to a kernel =
panic.
--

commit 1e47bb3741a2d7707b55cf24510e851f11fad240
Author: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>

phy: cpcap-usb: Prevent line glitches from triggering sysrq

This commit temporarily disables sysrq support when switching between
USB and debug serial port modes to prevent line glitches from
triggering spurious sysrq events.

> diff --git a/drivers/phy/motorola/phy-cpcap-usb.c b/drivers/phy/motorola/=
phy-cpcap-usb.c
> index 7cb020dd3423c..d1c70c7153466 100644
> --- a/drivers/phy/motorola/phy-cpcap-usb.c
> +++ b/drivers/phy/motorola/phy-cpcap-usb.c

[ ... ]

> @@ -413,7 +414,12 @@ static int cpcap_usb_gpio_set_mode(struct cpcap_phy_=
ddata *ddata,
> =20
>  static int cpcap_usb_set_uart_mode(struct cpcap_phy_ddata *ddata)
>  {
> -	int error;
> +	int old_sysrq_mask, error;
> +
> +	/* Disable sysrq to prevent random sysrq events on line glitches */
> +	old_sysrq_mask =3D sysrq_mask();
> +	if (old_sysrq_mask & 1)
> +		sysrq_toggle_support(old_sysrq_mask & ~1);

[Severity: High]
Is it safe to modify the global sysrq state from a leaf PHY driver?
Arbitrarily toggling global SysRq state affects all input devices (keyboard,
network, etc.) system-wide.

Also, checking (old_sysrq_mask & 1) assumes bit 0 is always set when sysrq
is enabled. If the system uses a custom mask without bit 0 (like 0x01b6),
would this fail to disable sysrq and leave the system vulnerable to the
glitch panic?

Additionally, calling sysrq_toggle_support() locklessly from this background
worker path can race with administrative sysctl changes or other drivers.
If this races with another thread calling sysrq_toggle_support(), couldn't
both threads observe that sysrq_on() is false and concurrently call
sysrq_register_handler()?

Since sysrq_register_handler() uses input_register_handler() on a single
statically allocated sysrq_handler, registering it twice would corrupt the
input_handler_list and lead to a crash.

>  	/* Disable lines to prevent glitches from waking up mdm6600 */
>  	error =3D cpcap_usb_gpio_set_mode(ddata, CPCAP_UNKNOWN_DISABLED);

[ ... ]

>  out_err:
> -	dev_err(ddata->dev, "%s failed with %i\n", __func__, error);
> +	if (old_sysrq_mask & 1)
> +		sysrq_toggle_support(old_sysrq_mask);

[Severity: High]
By unconditionally restoring the old mask here, could this accidentally
clobber concurrent administrative changes made via sysctl kernel.sysrq while
the mode switch was happening?

> +
> +	if (error)
> +		dev_err(ddata->dev, "%s failed with %i\n", __func__, error);
> =20
>  	return error;
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260705075809.1793=
784-1-ivo.g.dimitrov.75@gmail.com?part=3D1

