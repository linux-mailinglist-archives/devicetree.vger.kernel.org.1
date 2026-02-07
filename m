Return-Path: <devicetree+bounces-263643-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPURAB2jh2k2bAQAu9opvQ
	(envelope-from <devicetree+bounces-263643-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 21:39:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7BA107157
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 21:39:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0835D3016929
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 20:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC7E733D50F;
	Sat,  7 Feb 2026 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/7dmOpE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A00A2E5B09;
	Sat,  7 Feb 2026 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770496793; cv=none; b=aulg8pu1NemETkvnzR6uB87MrdzNO/+Z5ISMc7+IMogpnRAhr1zl//ZXgp0qykv01/CcjUjZEaUhYzLvJumbvUro+IHt9aI3O28Uq/pST464rfdEm4NeS2lntjRM89SNxChFuFhmdZA4I4kyxoEq70UCjLBqyuVwZ/y2seodRSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770496793; c=relaxed/simple;
	bh=odWWSwITztt7nX3afWB+g3x/LXnl0CatAdMCnF0MQ1k=;
	h=Content-Type:MIME-Version:In-Reply-To:References:Subject:From:Cc:
	 To:Date:Message-ID; b=CMj23ZFA9yrsgye83m3LVd1v5MmCpHScyDXSByzNdbPgF2/rhIOz4O7WMWC9zQJwWgqmUoaxPEM5XIWfY9Gf0vzf5Tt4C4ZfoOWHSijULZCyigvqw1OwBWL+W/xCSFgkcjhZKaHEKg55hnrT9Q7Jzi4iBvtB1HUZHfHWAjMD4g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/7dmOpE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16230C116D0;
	Sat,  7 Feb 2026 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770496793;
	bh=odWWSwITztt7nX3afWB+g3x/LXnl0CatAdMCnF0MQ1k=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=I/7dmOpEvZcZ1kM6dDwJugYqs1QTgsNsCXu9DRO4OGCBDtk/lvyIyAqqFokD6tuCG
	 6b3hmIFue/b122gJ+xGFWXot61UKnKqnr8OBZHMrGpGaKn1PuvTsqN32VRFny+Wh0x
	 riX0ZthbPl4QyUW8At7j1PVw9A7H20Gp4FHXXQxQ49bU892neyuJBzeno2cVK0wmVM
	 iQCUE/fkekO1bVziAo45ROS9MN2Ii2G2I4CCgFZlv1X4kxsCKMdMCVcgVCdlMxFuNV
	 BCmKBa5fPThPhaafYiKDYZAvD+BEOhscpq3qAd8sur7dyNmwN7VFJGY2DOMwIe0Zyg
	 uQkY9FV3yGYbw==
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260207130256.2832815-2-festevam@gmail.com>
References: <20260207130256.2832815-1-festevam@gmail.com> <20260207130256.2832815-2-festevam@gmail.com>
Subject: Re: [PATCH v2 2/2] clk: rockchip: Add clock controller for the RV1103B
From: Stephen Boyd <sboyd@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, jonas@kwiboo.se, linux-rockchip@lists.infradead.org, Fabio Estevam <festevam@nabladev.com>
To: Fabio Estevam <festevam@gmail.com>
Date: Sat, 07 Feb 2026 10:51:37 -0800
Message-ID: <177049029757.54237.1442431324572093990@localhost.localdomain>
User-Agent: alot/0.12
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263643-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.990];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sboyd@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[localhost.localdomain:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,rock-chips.com:email]
X-Rspamd-Queue-Id: 4D7BA107157
X-Rspamd-Action: no action

Quoting Fabio Estevam (2026-02-07 05:02:56)
> diff --git a/drivers/clk/rockchip/Kconfig b/drivers/clk/rockchip/Kconfig
> index 5cf1e0fd6fb3..3fc91f3c2453 100644
> --- a/drivers/clk/rockchip/Kconfig
> +++ b/drivers/clk/rockchip/Kconfig
> @@ -23,6 +23,13 @@ config CLK_RV110X
>         help
>           Build the driver for RV110x Clock Driver.
> =20
> +config CLK_RV1103B
> +       tristate "Rockchip RV1103B clock controller support"

If this can be a module please make this into a platform driver instead
of using of_iomap() and friends.

> +       depends on ARM || COMPILE_TEST
> +       default y
> +       help
> +         Build the driver for RV1103B Clock Driver.
> +
>  config CLK_RV1126
>         bool "Rockchip RV1126 clock controller support"
>         depends on ARM || COMPILE_TEST
> diff --git a/drivers/clk/rockchip/clk-rv1103b.c b/drivers/clk/rockchip/cl=
k-rv1103b.c
> new file mode 100644
> index 000000000000..7079a105b814
> --- /dev/null
> +++ b/drivers/clk/rockchip/clk-rv1103b.c
> @@ -0,0 +1,667 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2024 Rockchip Electronics Co. Ltd.
> + * Author: Elaine Zhang <zhangqing@rock-chips.com>
> + */
> +
> +#include <linux/clk.h>

Is this include used?

> +#include <linux/clk-provider.h>
> +#include <linux/module.h>

Is this include used?

> +#include <linux/of.h>
> +#include <linux/of_address.h>
> +#include <linux/of_device.h>

Is this include used?

> +#include <linux/regmap.h>

Is this include used?

> +#include <linux/syscore_ops.h>

Is this include used?

> +#include <dt-bindings/clock/rockchip,rv1103b-cru.h>
> +#include "clk.h"

