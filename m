Return-Path: <devicetree+bounces-297796-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CBnVJ+4oBmorfwIAu9opvQ
	(envelope-from <devicetree+bounces-297796-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 21:56:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 083D6546959
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 21:56:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4A9CC3062ABE
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 19:53:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B40433C140E;
	Thu, 14 May 2026 19:53:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVoQ+VbC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 914603C09E2
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 19:53:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778788386; cv=none; b=mu30Gp6aNcIP9375S1MwJQZ9ysqpLD1uG+yS/Zb6PXOgKJizE8oLMPtPJfp41yUGbiVn9IXfcR0kMF626903t/FquE/25Oblsw8HCz1CSr5yjj09TbjWDN6KzEPuzEx+YJDuvcydfljxtJ5xg6JGM5k3jIRpfiCms0TzWToCoJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778788386; c=relaxed/simple;
	bh=pCIZAGABb2k5WNsfnCUjfze4wmC+Pq6qOG3lBsfh1fE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uVNmV7fjrIaEUckz8XKFnyf1axex9IpU+JWmH2RX3ui8hZXeEkokUsfjObxyTR4gvSMw2Odc/87UlmJjJ5h6HpgLukYH8QGzXUYy2z+aX4MetE6Fr9w5+8cnxYyhNW/FgiSvLaLkojlRDmypGhe7hlGWMhzfjCsX/9+syViNQsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVoQ+VbC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4132C2BCB3;
	Thu, 14 May 2026 19:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778788386;
	bh=pCIZAGABb2k5WNsfnCUjfze4wmC+Pq6qOG3lBsfh1fE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=DVoQ+VbCRc9uNCNmwboAyQPujm8Ofz/mrthPxpY2F3S8CG35Lrbnw5zzDuJvj9Xpw
	 QjDx82qXwyExvCw3mBaZ1RUzq6h93lpOWqqE4zNOsiImxkkK0I2VcZ1O2FQwFGlUcV
	 LYqHzHha4yUV2rJMlo84V64ldAZwo3qI0IvfkU3XByfpWtc1bhdhkqL9KqJpnvJEnM
	 fKMvCg5l78T3O4H7vGuODHoCsHbCEoTseqnohtjd+Hrhoy7tDUagfkqIKPUCzEc1r+
	 GwSRhBEB6rqLCYJJM1+lCJUvJS907qVjIW605AAiOgbPG3+amUIx+CAa4PJKUSNjCM
	 fcrbPSzJHrWjw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 3/3] reset: eswin: Add eic7700 HSP reset driver
Reply-To: sashiko-reviews@lists.linux.dev
To: dongxuyang@eswincomputing.com
Cc: robh@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260514114738.1641-1-dongxuyang@eswincomputing.com>
References: <20260514114738.1641-1-dongxuyang@eswincomputing.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 19:53:05 +0000
Message-Id: <20260514195305.C4132C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 083D6546959
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,eswincomputing.com:email];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-297796-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FROM_NO_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing `#include <linux/module.h>` for module macros.
--

commit 08281f0596a764e191cbecfd9dc12b0b51f6730f
Author: Xuyang Dong <dongxuyang@eswincomputing.com>

reset: eswin: Add eic7700 HSP reset driver

This commit adds an auxiliary driver to support the ESWIN EIC7700 high-speed
peripherals system. The reset controller is created using the auxiliary dev=
ice
framework.

> diff --git a/drivers/reset/reset-eic7700-hsp.c b/drivers/reset/reset-eic7=
700-hsp.c
> new file mode 100644
> index 0000000000000..bdd4f5e3d7a76
> --- /dev/null
> +++ b/drivers/reset/reset-eic7700-hsp.c
> @@ -0,0 +1,112 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2026, Beijing ESWIN Computing Technology Co., Ltd..
> + * All rights reserved.
> + *
> + * ESWIN EIC7700 HSP Reset Driver
> + *
> + * Authors: Xuyang Dong <dongxuyang@eswincomputing.com>
> + */
> +
> +#include <linux/auxiliary_bus.h>
> +#include <linux/device.h>
> +#include <linux/regmap.h>
> +#include <linux/reset-controller.h>

This isn't a bug, but should this file explicitly include <linux/module.h>?

The code relies on module-specific macros such as THIS_MODULE,
MODULE_DEVICE_TABLE, MODULE_LICENSE, MODULE_AUTHOR, and MODULE_DESCRIPTION
later in the file. Relying on an implicit include could lead to unexpected
build failures if header dependencies change in the future.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260514114212.903-=
1-dongxuyang@eswincomputing.com?part=3D3

