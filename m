Return-Path: <devicetree+bounces-294819-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cHlUEge3/mlxvQAAu9opvQ
	(envelope-from <devicetree+bounces-294819-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 06:24:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1C14FE0DD
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 06:24:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C2D4300A3B5
	for <lists+devicetree@lfdr.de>; Sat,  9 May 2026 04:23:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 817E33112BC;
	Sat,  9 May 2026 04:23:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaxGhwKf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5A330E0E9
	for <devicetree@vger.kernel.org>; Sat,  9 May 2026 04:23:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778300624; cv=none; b=ctNzXeQ+ZukyP8tCflZ2jxz+nYYfF0tkHnLJ5zQCjoRELXDrvUYmj9gxCO/0ZQ0HugTA5/mXkUGhgh+UBKHt/N6vLi/J/5tYGhAYWVkiqiMWaSFin1zhPazCbWfixKWHhWke7zlrAG5z4wBlgBlhPpsQHVgtlmpyZZWqlGxJWoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778300624; c=relaxed/simple;
	bh=/fEZDaSs1b/6yXP1suR6EjU5FcBUokdxJR8XXE7pWyw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=HAfXeDDYjDUzAPWuit9LYBzwVbcm/9gv9cgMr0Ifj9THWpOPLhqilV6LBHo/thuovGfE93wtrzhwIflRAuynEhMce7Qnbjs8UYnD5lUX+a4N6bMzA2KTBsBq+uyUW+VMqvN8AfeNauQf+a4bvgezIw1dELu5yOrH6a3iLrtmyvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaxGhwKf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B902C2BCB2;
	Sat,  9 May 2026 04:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778300623;
	bh=/fEZDaSs1b/6yXP1suR6EjU5FcBUokdxJR8XXE7pWyw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=AaxGhwKfLAFhlk7EhqJAzAbChTnnLkv5HNZg/TP1Vp1BwzAC5SNHOf1OiEKHQ3+6j
	 WjZcduobkgKXWu79dn6CqKFbkJvvMmK9jmxGT+Y9KzgN9HxMxG2t1MOLxHeWO1c6qZ
	 tWxGbNY/5xmL4sr8eQl/NT+ECY0YPvyHfTC6CqlMKdjIYx3MU/pBeHE0YGhS++2tYT
	 trNTctU2g73qIoiBcub6ovQ+jjszS616mMfeUMbvElQUh1q8JxPG2d7257qv/p5AkX
	 6Wf2YS/HyNEJOgOmSJUorgoNoqbsXwOCkBYgw8eDOG+BUKfcrn0PsCnb4pxnyc2T/a
	 /psl8ZGFQy5mg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 12/14] media: iris: Add platform data for glymur
Reply-To: sashiko@lists.linux.dev
To: "Vishnu Reddy" <busanna.reddy@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260509-glymur-v5-12-7fbb340c5dbd@oss.qualcomm.com>
References: <20260509-glymur-v5-12-7fbb340c5dbd@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 09 May 2026 04:23:43 +0000
Message-Id: <20260509042343.9B902C2BCB2@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 8A1C14FE0DD
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-294819-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Stack use-after-return / dangling pointer due to storing a local v=
ariable's address in device driver data.
--

commit 93f713f9565a33672387c6d251540a853b65cebf
Author: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>

media: iris: Add platform data for glymur
   =20
On glymur platform, the iris core shares most properties with the iris core
on the SM8550 platform, but integrates two codec cores instead of one. Add
glymur specific platform data, reusing SM8550 definitions wherever applicab=
le.

> diff --git a/drivers/media/platform/qcom/iris/iris_platform_glymur.c b/dr=
ivers/media/platform/qcom/iris/iris_platform_glymur.c
> new file mode 100644
> index 0000000000000..f16155b7dc997
> --- /dev/null
> +++ b/drivers/media/platform/qcom/iris/iris_platform_glymur.c

[ ... ]

> +int iris_glymur_init_cb_devs(struct iris_core *core)
> +{
> +	u64 dma_mask =3D core->iris_platform_data->dma_mask;
> +	const u32 fw_fid =3D IOMMU_FID_IRIS_FIRMWARE;
> +	struct device *dev;
> +
> +	dev =3D create_iris_vpu_bus_device(core->dev, "iris-firmware", dma_mask=
, &fw_fid);

Does this leave a dangling pointer in the device driver data?

Looking at create_iris_vpu_bus_device(), it calls dev_set_drvdata() to store
the address of fw_fid in the newly registered device.

Since fw_fid is a local variable on the stack, its lifetime ends when
iris_glymur_init_cb_devs() returns. Any later dereference of this pointer
from the device's driver data will read invalid stack memory.

Could fw_fid be declared as static, or its lifetime otherwise tied to the
device?

> +	if (IS_ERR(dev))
> +		return PTR_ERR(dev);
> +
> +	if (device_iommu_mapped(dev))
> +		core->fw_dev =3D dev;
> +	else
> +		device_unregister(dev);
> +
> +	return 0;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260509-glymur-v5-=
0-7fbb340c5dbd@oss.qualcomm.com?part=3D12

