Return-Path: <devicetree+bounces-322981-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cnxjAh5oTmpgMAIAu9opvQ
	(envelope-from <devicetree+bounces-322981-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 17:09:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF10727C5E
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 17:09:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hPSv2IOy;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322981-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322981-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 603713046F40
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 15:08:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 044194C9011;
	Wed,  8 Jul 2026 15:00:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3BD44C9006
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 15:00:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783522818; cv=none; b=Zloeh59Wt5DW1AqrLSzVUVpjX6DOQeQw8OBVvRMd1kL+9g19WhIyyczbi2DuAAaXC4c1sAxCIFIQKM0stjfyvwtk7LVPuu999VK1WQfc0Xs+/y8G7dWsmDZf8ZIfuTyIqCdAQK88Px++sCNlwYhWyXgfgWIJVkr1zBvCzgY7bAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783522818; c=relaxed/simple;
	bh=UOkz27SejflpcepUGYTfScN4p9BqQvyzMO6NtrHoBAk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QzTO+BQ/AyBuc7lGmg/ZJbrt4aU2ICHlFWxwfhYMoCxR2WKaSkkHwEuzj86nLSgXomohVsZjK3jAN+/3Yoe98UmZ9XCwBzbOysoqIhjcEf/Ee5bddvE1xeEn1XAXzfiJf/8Gwj9bHE9jhxSV3S52mTWH6RYoZiZpwPu+Jkg+2sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPSv2IOy; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A1151F000E9;
	Wed,  8 Jul 2026 15:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783522817;
	bh=GD4RXuNJUnP5h6+EQlzc5CyZODkSxBqu467rYxACtmo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hPSv2IOyppasLDsBiEd+Vhlnf4+xBlNM+bX9skP3JBD/E5A/Y4A1n32K/WZsZdeFd
	 hmVBpvRRbfdOi7VF2jSHgtRbHO9fY/c2ZbctNhCenumlJuzy9gxYRj2VWQsB0trtDS
	 QM2s+RSdjt7cV0jd52qBfGfMFEFP4yZKzBV9WolU+G2P/DS46X9z0AHiFemtgTzXX1
	 d6smGwf9xpt6AxaulgbFIorpfFSFTRYLFyOssfSZKxpXFyaEFAVxxnGbHEys6gH/01
	 N1wVaQwb9CCfs9uBxLiOzhXtsrtdUMC0aSZul0VLageKPO65LrAWPrDYqw/NZEKhid
	 3TO4yhyDquMQA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 03/20] media: imx355: Remove duplicated registers
 from the mode tables
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dave Stevenson" <dave.stevenson@raspberrypi.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260708-media-imx355-v3-3-9df386a623d7@raspberrypi.com>
References: <20260708-media-imx355-v3-0-9df386a623d7@raspberrypi.com>
 <20260708-media-imx355-v3-3-9df386a623d7@raspberrypi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 15:00:16 +0000
Message-Id: <20260708150017.3A1151F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322981-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dave.stevenson@raspberrypi.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url,raspberrypi.com:email,smtp.kernel.org:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9EF10727C5E

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Runtime PM Double Power-Off on probe error path.
--

--- Patch [3]: [PATCH v3 03/20] media: imx355: Remove duplicated registers =
from the mode tables ---
commit 149de34debabe64c5c7c327e825451e79b0feb6c
Author: Dave Stevenson <dave.stevenson@raspberrypi.com>

media: imx355: Remove duplicated registers from the mode tables

A large number of registers are identical within all the modes.
Move those to imx355_global_regs.

> diff --git a/drivers/media/i2c/imx355.c b/drivers/media/i2c/imx355.c
> index ad9a9464175b1..4eaccd9e90f10 100644
> --- a/drivers/media/i2c/imx355.c
> +++ b/drivers/media/i2c/imx355.c
[ ... ]

[Severity: High]
This is a pre-existing issue, but I noticed a potential problem in the
error handling path of imx355_probe():

drivers/media/i2c/imx355.c:imx355_probe() {
    ...
	pm_runtime_set_active(imx355->dev);
	pm_runtime_enable(imx355->dev);
	pm_runtime_idle(imx355->dev);

	ret =3D v4l2_async_register_subdev_sensor(&imx355->sd);
	if (ret < 0)
		goto error_media_entity_runtime_pm;
    ...
error_media_entity_runtime_pm:
	pm_runtime_disable(imx355->dev);
	pm_runtime_set_suspended(imx355->dev);
	media_entity_cleanup(&imx355->sd.entity);

error_handler_free:
	v4l2_ctrl_handler_free(imx355->sd.ctrl_handler);

error_power_off:
	imx355_power_off(imx355->dev);
    ...
}

Does this code call imx355_power_off() a second time on the error path?

If v4l2_async_register_subdev_sensor() fails, the code jumps to
error_media_entity_runtime_pm. Earlier in the probe, pm_runtime_idle() was
called, which synchronously suspends the device by invoking imx355_power_of=
f().

The error handler then disables runtime PM and falls through to error_power=
_off,
where it explicitly calls imx355_power_off() again.

Could this double-disabling of regulators and clocks cause reference count
underflows and trigger kernel WARNs (which might panic the system with
panic_on_warn)?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-media-imx3=
55-v3-0-9df386a623d7@raspberrypi.com?part=3D3

