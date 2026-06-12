Return-Path: <devicetree+bounces-310736-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vyd7MIe2K2pnCgQAu9opvQ
	(envelope-from <devicetree+bounces-310736-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:34:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE5667742D
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:34:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=keTRku3O;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310736-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-310736-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 384CB312A687
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 07:32:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B3D7397329;
	Fri, 12 Jun 2026 07:32:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B50D35E93E;
	Fri, 12 Jun 2026 07:32:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781249575; cv=none; b=GBaKO1OUpNpRFMTweCtOOgl3RE9Yk17zD7fX7V4cNpAkqSMEDFYdmjK4V8klcr/hsf3eDzTwpQ8A1ATq5GXBReomKnE6KNPmswp7FcPStZx6Yz4BCS3n3VmF9DkUoU0KsmyYwSXsGs1ak2FfddL+wg1JEXCWNIvFt0iOQGOmZqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781249575; c=relaxed/simple;
	bh=4XBxd/KRQ7Qd8i1wmhcfdV+A48KXvbhF8aFJbuVJock=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=eqKLFhwsuNkllsCuwxqPdpf3r3oQdpykTKX+kB3iHFolhfIld6U1BK6MLsl9B/kC4CsbgM20br9FA/6IwCA23/srusv3b6cSzP4KfYDtXro/GXE8Bya98jI+Gs41UkPBh8LOdeu+p6niyKXa9R3xd3OkjXQyvm93DlZ1XKJAWVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=keTRku3O; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB4401F000E9;
	Fri, 12 Jun 2026 07:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781249574;
	bh=5v2XYBqJTANwPZUEhJS60rlsJrtOqt0kEZWgRxmDUGM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=keTRku3OmHndobrzRDOZYCK/AarriI9OvGP7EI4Qu85AU6xluPkdQ6xMeiOul7+H+
	 BGxp8ldmPyWiLPp5XZk1I9C09M0jUymQLGLK7GDxVsJ15qNOFLz0jF+R0qejN4iyl6
	 XpKVQABkBsyO4n5I7FjZHHvajXMkIbnp8nOPTubJhUS2co5bZwBmR5UcvFhbpy+FHN
	 MDwPva/oJXsCKSXCbfyERbiHOh1eHcCd9qlV/XRzHASbgo9/aU/KH5C7EPJueM8YTp
	 roHHC3ZmiDYqmwpfNcPK3SrzGYpTvinZhX4TWvwwZ2of/CvmjX7bUqy1IdXn9TP4Pi
	 p1GuTlzb48iOQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 5/9] dt-bindings: input: microchip,cap11xx: Add
 reset-gpios property
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jun Yan" <jerrysteve1101@gmail.com>
Cc: robh@kernel.org, dmitry.torokhov@gmail.com, linux-input@vger.kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260612072237.1177304-6-jerrysteve1101@gmail.com>
References: <20260612072237.1177304-6-jerrysteve1101@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 07:32:53 +0000
Message-Id: <20260612073253.AB4401F000E9@smtp.kernel.org>
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
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-310736-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jerrysteve1101@gmail.com,m:robh@kernel.org,m:dmitry.torokhov@gmail.com,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5CE5667742D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The threaded interrupt handler returns IRQ_HANDLED even when it fa=
ils to clear the hardware interrupt due to I2C errors.
--

commit ace8e5621e0baa976a27041614c9c01f25526d5e
Author: Jun Yan <jerrysteve1101@gmail.com>

dt-bindings: input: microchip,cap11xx: Add reset-gpios property

This commit adds support for the optional reset-gpios property to describe
the active-high reset pin for CAP1126 and CAP1188 devices. It restricts
this property to only these variants, as other variants lack a hardware
reset pin.

> drivers/input/keyboard/cap11xx.c:cap11xx_thread_func() {
> ...
> 	ret =3D regmap_update_bits(priv->regmap, CAP11XX_REG_MAIN_CONTROL, 1, 0);
> 	if (ret < 0)
> 		goto out;
>=20
> 	ret =3D regmap_read(priv->regmap, priv->model->sensor_input_reg_base, &s=
tatus);
> 	if (ret < 0)
> 		goto out;
> ...
> out:
> 	return IRQ_HANDLED;
> }

[Severity: High]
This is a pre-existing issue, but does this error path cause an
interrupt storm?

If the I2C operations regmap_update_bits() or regmap_read() fail, the
function jumps to the out label and returns IRQ_HANDLED instead of
returning IRQ_NONE or disabling the IRQ.

Since the IRQ is registered with IRQF_ONESHOT, returning IRQ_HANDLED tells
the IRQ subsystem to unmask the interrupt line. If the interrupt condition
on the hardware was not successfully cleared due to the I2C failure, will
the interrupt immediately fire again?

This could create an infinite loop of threaded IRQ scheduling that bypasses
the kernel's spurious interrupt detector (which requires IRQ_NONE to
trigger), potentially consuming 100% of a CPU core and causing a soft
lockup.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612072237.1177=
304-1-jerrysteve1101@gmail.com?part=3D5

