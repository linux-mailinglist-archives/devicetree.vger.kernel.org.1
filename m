Return-Path: <devicetree+bounces-297788-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KOJ3FEcjBmpjfgIAu9opvQ
	(envelope-from <devicetree+bounces-297788-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 21:32:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B1A54662C
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 21:32:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AC4DD3019D3B
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 19:32:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2329330315;
	Thu, 14 May 2026 19:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mlNhsTjD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEF593F4119
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 19:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778787139; cv=none; b=m7XerBpVNk3nMq2CDJXDG1fbF0jBGh5Q5ztj2+n7hZ0jtRkwc8OrETMxIViX3ezKA7BE7OTfdTEcbheFID1ae6y4Uej8VZuy+jHsIdmygTIRTtPIR0dB/Vlgtq7nyiN/W0NKYSOU1XOOTN03aNDOqZ0CiEPIE7k1qdSr6x74WVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778787139; c=relaxed/simple;
	bh=mVEUmPMLoFyUzt3w4/iA1+bNW5IFkgUmRzwvBTbLhtM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uIwITaEDMG/q/yhAKpPYfaMhZmxlbsHv/K+hz9fcusTnZ4XE5MOw+joIo/cNeD3bgPwraFg+PCC4XR76kytKWdbbREP3PaA+yX7Ida/zHBqxky062utv42jKeDeuTi4jNANi4us8zSq6KC3ejuiWgV/QuP74p1v4Zsx5w+I62aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mlNhsTjD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 219B6C2BCB3;
	Thu, 14 May 2026 19:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778787139;
	bh=mVEUmPMLoFyUzt3w4/iA1+bNW5IFkgUmRzwvBTbLhtM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=mlNhsTjDZTlzJ/hP6DTX9eYRbdtgnyPrnjpXLLgPfTceSAPiBB0e1E32ft7Ej+/Nh
	 TjRz7t3dHQHS6Px/PkehWz14GktSg0IXKfeLXn5WlTt900XKC0HuJB7JB7HJfMvXWs
	 elnhWKaAPJgx4GGITuyDDn0ur60UEipXTRu4FZeuiZiJW/CWM6/9OvQBS4s+60T6aS
	 dMuxA3C/vBE34b6/1tM6DPik/nO+Lc6UR3PIKaU2Yrsrf+M9DRGLb+q1MSMHpwi58w
	 5WrAARBuYasy5wdRYWdZFHOqXqSzFSDTDehmDdu6sIjNTIp0d7s3W1rmOMjtMjuvGv
	 FGRLfI3hsL+pA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 4/6] reset: anlogic: add support for Anlogic DR1V90
 resets
Reply-To: sashiko-reviews@lists.linux.dev
To: "Junhui Liu" <junhui.liu@pigmoral.tech>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260514-dr1v90-cru-v5-4-34f3021aab51@pigmoral.tech>
References: <20260514-dr1v90-cru-v5-4-34f3021aab51@pigmoral.tech>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 19:32:18 +0000
Message-Id: <20260514193219.219B6C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: E9B1A54662C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297788-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,pigmoral.tech:email];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] Implicit cast from generic address space `void *` to `void __iomem =
*`.
- [Low] Missing explicit inclusion of `<linux/module.h>`.
--

commit bd68e19d51efda3c5e694cc1c4ab7885341e64b4
Author: Junhui Liu <junhui.liu@pigmoral.tech>

reset: anlogic: add support for Anlogic DR1V90 resets

This commit adds reset controller support for the Anlogic DR1V90 SoC
using an auxiliary device associated with the Clock and Reset Unit (CRU).

> diff --git a/drivers/reset/reset-dr1v90.c b/drivers/reset/reset-dr1v90.c
> new file mode 100644
> index 0000000000000..daa99c797b1af
> --- /dev/null
> +++ b/drivers/reset/reset-dr1v90.c
> @@ -0,0 +1,140 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2026 Junhui Liu <junhui.liu@pigmoral.tech>
> + */
> +
> +#include <linux/auxiliary_bus.h>
> +#include <linux/cleanup.h>
> +#include <linux/device.h>
> +#include <linux/io.h>
> +#include <linux/reset-controller.h>
> +
> +#include <dt-bindings/reset/anlogic,dr1v90-cru.h>

This isn't a bug, but should linux/module.h be explicitly included here?
The driver heavily utilizes macros like MODULE_AUTHOR, MODULE_DESCRIPTION,
and module_auxiliary_driver, but seems to rely on implicit transitive inclu=
sion
from other headers to provide them.=20

[ ... ]

> +static int dr1v90_reset_probe(struct auxiliary_device *adev,
> +			      const struct auxiliary_device_id *id)
> +{
> +	struct dr1v90_reset_controller *rstc;
> +	struct device *dev =3D &adev->dev;
> +
> +	rstc =3D devm_kzalloc(dev, sizeof(*rstc), GFP_KERNEL);
> +	if (!rstc)
> +		return -ENOMEM;
> +
> +	spin_lock_init(&rstc->lock);
> +
> +	rstc->base =3D dev->platform_data;

Will this assignment trigger a Sparse warning? It looks like we are implici=
tly
casting a generic void pointer from dev->platform_data into the void __iomem
pointer at rstc->base.=20

Would an explicit cast using (__force void __iomem *) be appropriate here
to prevent mixing address spaces?

> +	rstc->rcdev.dev =3D dev;
> +	rstc->rcdev.nr_resets =3D ARRAY_SIZE(dr1v90_resets);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260514-dr1v90-cru=
-v5-0-34f3021aab51@pigmoral.tech?part=3D4

