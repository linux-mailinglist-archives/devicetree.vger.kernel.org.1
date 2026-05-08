Return-Path: <devicetree+bounces-294742-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wNlaM7hv/mnNqgAAu9opvQ
	(envelope-from <devicetree+bounces-294742-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 01:20:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9554FCB48
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 01:20:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A69033006795
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 23:20:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBBED30BF4F;
	Fri,  8 May 2026 23:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7pKg+Co"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B859E12CD8B
	for <devicetree@vger.kernel.org>; Fri,  8 May 2026 23:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778282420; cv=none; b=tTEwOTHaH3+Y49JF+QFYxwbDjKqOwi9JNLSvXyVFg2TFp3DIoZPAaC6SoKXsRwRfgzM2RP3DDQ24jjKJ5wuvfWAJoL3RA+KTUYULnMHWOFO26boNC/YDew7Qm+45bZMiMJF3unDkaYMZFThBrwne9XY69Eb3SRIc0PkBko1EXWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778282420; c=relaxed/simple;
	bh=ZpX9gSsFT61HAN9jWXKd1sF/9Pt7qOSWD4DBCjrr9vU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=oIgOVVKCjU7UzyATtpzJiWsWYp9jp9lXjnnOdKEDfGGpwspoiUPrJC76uUpYUHusjEucN+Jzs3nzVbZCMC+Y6qQ0PPdllXwWbiBABJILQIfV2fB1RIWz1Vih/WvKVW8WngRtwnksQGjNSW08zrluepaNvQ4AJGMjbVbnBA6QoJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7pKg+Co; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B18B1C2BCB0;
	Fri,  8 May 2026 23:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778282420;
	bh=ZpX9gSsFT61HAN9jWXKd1sF/9Pt7qOSWD4DBCjrr9vU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=e7pKg+Co+2NEW6VTP3Qrx/YPqyU3BRFxQ1CwOSnCrYMlcDfmyWOYJ5HraYd650Ewy
	 S8Eamy0c68B0ABeMuGYBQQodq5K+yPkEcn22/UBvmmMVwsjBx1JW19XM9FXmSqXI3T
	 TEUY2rLhIljmc+5g+a4eQK2lffqO043mTtrk3FpwPJqNdVCq6uIqy/cpcAQrbuda7m
	 j56CecECzTnr8hpxzsUw1IPtN+qBiQ4MhIlgMblxg9skc+BYifPJiLpAo6dwXugydP
	 mwlUB7UpoTPWopZ5NCPtRRTsDXnE8t5gdeqHF0rz7ujZ4Z+Lr9f5jhZwMlrmZzrbxl
	 mlhJ/JcNc5hXA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 01/14] media: iris: Add iris vpu bus support
Reply-To: sashiko@lists.linux.dev
To: "Vishnu Reddy" <busanna.reddy@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260509-glymur-v5-1-7fbb340c5dbd@oss.qualcomm.com>
References: <20260509-glymur-v5-1-7fbb340c5dbd@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 08 May 2026 23:20:18 +0000
Message-Id: <20260508232019.B18B1C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 6C9554FCB48
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
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-294742-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] Missing explicit inclusion of `<linux/slab.h>`.
- [Low] Unchecked return value of `dev_set_name()` obscures memory allocati=
on failures.
--

commit 98f1237fb4e4382526cb267a03ee922744bc30d4
Author: Vikash Garodia <vikash.garodia@oss.qualcomm.com>

media: iris: Add iris vpu bus support

This commit introduces the iris-vpu-bus to create a dynamic child device
for firmware loading, setting up a dedicated IOMMU context with a separate
stream ID.

> diff --git a/drivers/media/platform/qcom/iris/iris_vpu_bus.c b/drivers/me=
dia/platform/qcom/iris/iris_vpu_bus.c
> new file mode 100644
> index 0000000000000..15ba4d9c563e9
> --- /dev/null
> +++ b/drivers/media/platform/qcom/iris/iris_vpu_bus.c
> @@ -0,0 +1,69 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +#include <linux/device.h>
> +#include <linux/iris_vpu_bus.h>
> +#include <linux/of_device.h>

This isn't a bug, but should linux/slab.h be explicitly included here?

The implementation uses slab allocator functions like kzalloc_obj() and
kfree(), and relying on implicit inclusion could lead to build breakages on
different architectures or in future kernel versions.

[ ... ]

> +struct device *create_iris_vpu_bus_device(struct device *parent_device, =
const char *name,
> +					  u64 dma_mask, const u32 *iommu_fid)
> +{
> +	struct device *dev;
> +	int ret;
> +
> +	dev =3D kzalloc_obj(*dev);
> +	if (!dev)
> +		return ERR_PTR(-ENOMEM);
> +
> +	dev->release =3D release_iris_vpu_bus_device;
> +	dev->bus =3D &iris_vpu_bus_type;
> +	dev->parent =3D parent_device;
> +	dev->coherent_dma_mask =3D dma_mask;
> +	dev->dma_mask =3D &dev->coherent_dma_mask;
> +
> +	dev_set_name(dev, "%s", name);

Is it safe to ignore the return value of dev_set_name() here?

If memory allocation fails, dev_set_name() returns -ENOMEM and leaves the
device name as NULL. The subsequent call to device_register() handles this
gracefully by returning -EINVAL rather than propagating the original -ENOME=
M.

While this does not cause a crash, could dropping the accurate error code
obscure the root out-of-memory cause during debugging?

> +	dev_set_drvdata(dev, (void *)iommu_fid);
> +
> +	ret =3D device_register(dev);
> +	if (ret) {
> +		put_device(dev);
> +		return ERR_PTR(ret);
> +	}
> +
> +	return dev;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260509-glymur-v5-=
0-7fbb340c5dbd@oss.qualcomm.com?part=3D1

