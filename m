Return-Path: <devicetree+bounces-310894-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id larNMDnxK2rOIAQAu9opvQ
	(envelope-from <devicetree+bounces-310894-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 13:44:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 656A36790EB
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 13:44:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jM2PKxP3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310894-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310894-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A17B631A4AC7
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 11:41:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD9573EAC72;
	Fri, 12 Jun 2026 11:41:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B92913E92B0
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 11:41:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781264463; cv=none; b=cwOrwJ/FzR3vgM1j3X3B2lEkrGA1n2bfGMrcIwnIhhQX4iJFv3fVDqcEyDEWJgevpdkTPV22Ec6oAAqjkbCJWbmcOJx4fmmCCKTWgO0LP6XOGKW29zHCYnRLvwcoMhHIac78qRQkO7obFrHRatj01+qOl9AAA30CNj9SIAGfz3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781264463; c=relaxed/simple;
	bh=OjexcKXcNomyfFQfRiOaCgOOzrWTZ8efKeIcGJNLE0Y=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=nYrTu9IVg2Xp14DqpxlZ0A7F2VMqO9pwn3fkjJQW7Oo/JyW2Z3vwQrDolMFRtiOc8PLvT4vXKVlB98rGKwkcifhdou945Uz7eTi33gcPAOcjjR7E1DfrcUxa//HSvcHElgy4XVJhRH8rQVktcHaCSrCnD/87niShoLkDhpT1sXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jM2PKxP3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1697A1F00A3A;
	Fri, 12 Jun 2026 11:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781264462;
	bh=dq7RfP6GXcj+LvatFMrY/oTCV+SoRKi7cDYyZlTFaGE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jM2PKxP3zdapIbTy5z4ASK+INFKfi8bfXB6NzTphE+NQqplUi5kyMxomnnlW7j/Mi
	 rU9RcF77wQsTD3rrxvG56VsJjWgkzrO0L6FcCtFFwrUZU2ebieCHevZMTkzJuMIB6J
	 LuV27UGD8T3BlR7oITKyNZI9MzDC4BtXRWke2Sc2C6icO0iZeqJXrV8M+QDeF0Xz8/
	 RtBoYL55esDYLzQWUJz9ziX4huB/Sbs//wq+3MjlQxLbU86LGGRu0uCUSOp+8Mt8Qm
	 cA7qAipvxPJwcjaWdARHk5QWIn3I387xSevfZ1jrmJFS0EHSS6rJ9GwO6vx3YW2ypn
	 kqQ/e/kUU12Iw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 5/9] mfd: p3h2x4x: Add driver for NXP P3H2x4x i3c
 hub and on-die regulator
Reply-To: sashiko-reviews@lists.linux.dev
To: "Lakshay Piplani" <lakshay.piplani@nxp.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, linux-i3c@lists.infradead.org, Frank.Li@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260612111816.3688240-6-lakshay.piplani@nxp.com>
References: <20260612111816.3688240-6-lakshay.piplani@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 11:41:01 +0000
Message-Id: <20260612114102.1697A1F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-310894-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lakshay.piplani@nxp.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-i3c@lists.infradead.org,m:Frank.Li@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 656A36790EB

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The driver incorrectly binds to any generic I3C hub device on the =
bus.
- [Low] The driver bypasses the I3C subsystem abstraction by including <lin=
ux/i3c/master.h> instead of <linux/i3c/device.h>.
--

commit 3682ca3c66e35b06e88823e8081c57b3ea1d4084
Author: Aman Kumar Pandey <aman.kumarpandey@nxp.com>

mfd: p3h2x4x: Add driver for NXP P3H2x4x i3c hub and on-die regulator

Add core MFD support for the NXP P3H2x4x (P3H2440/P3H2441/P3H2840/P3H2841)
family of multiport I3C hub devices. These devices connect to a host via
I3C/I2C/SMBus and expose multiple downstream target ports.

> diff --git a/drivers/mfd/p3h2840.c b/drivers/mfd/p3h2840.c
> new file mode 100644
> index 0000000000000..0a80992d6250a
> --- /dev/null
> +++ b/drivers/mfd/p3h2840.c
> @@ -0,0 +1,119 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2025-2026 NXP
> + * P3H2X4X i3c hub and regulator device.
> + */
> +
> +#include <linux/i2c.h>
> +#include <linux/i3c/master.h>

[Severity: Low]
Does this include bypass the I3C subsystem abstraction? By including the
master header, the driver has access to the internal definition of
struct i3c_device. Should this include <linux/i3c/device.h> instead?

[ ... ]

> +static int p3h2x4x_device_probe_i3c(struct i3c_device *i3cdev)
> +{
> +	struct p3h2x4x_dev *ddata;
> +	int ret;
> +
> +	ddata =3D devm_kzalloc(&i3cdev->dev, sizeof(*ddata), GFP_KERNEL);

[Severity: Low]
This directly accesses the internal dev field of struct i3c_device. Should
this use i3cdev_to_dev(i3cdev) to obtain the underlying struct device point=
er
to maintain API boundaries?

[ ... ]

> +static const struct i3c_device_id p3h2x4x_i3c_ids[] =3D {
> +	I3C_CLASS(I3C_DCR_HUB, NULL),
> +	{ /* sentinel */ },
> +};

[Severity: High]
Will this driver inappropriately bind to any generic I3C hub device on the
bus?

Using I3C_CLASS(I3C_DCR_HUB, NULL) instructs the subsystem to match any
device that advertises the generic Hub DCR (194), without filtering by
vendor or part ID.

Because the probe function doesn't verify the Manufacturer ID, it seems this
could eagerly bind to third-party hubs and attempt NXP-specific register
operations on them.

Should this use I3C_DEVICE(I3C_VENDOR_NXP, ...) to exclusively match the
supported NXP devices instead of the generic hub class?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612111816.3688=
240-1-lakshay.piplani@nxp.com?part=3D5

