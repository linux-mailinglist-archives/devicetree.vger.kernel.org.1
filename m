Return-Path: <devicetree+bounces-327116-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id osLCHXyYV2qpXgAAu9opvQ
	(envelope-from <devicetree+bounces-327116-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:26:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 156DD75F5A2
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:26:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BnaSCeOt;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-327116-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-327116-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B57E83044984
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:22:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D642D346E59;
	Wed, 15 Jul 2026 14:22:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB88B33F394
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 14:22:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784125367; cv=none; b=iLpL7zkGiW5LB8Umo5kXPXedQZDvTm68TrmSFNMDM2Qoxcan91LEwVefovkPKwdLZ+XaQvnceZ8MiHZwzFCGEGuWZpQHD7Kv8JKNbaLXM18Pze/GBwJxCC4fczGuNsspyhYuNw8+jXwPyqdHvIcKn9lz7Fxl3DE7lTkT5ThNmUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784125367; c=relaxed/simple;
	bh=k3nYVoAtfpCDTTURbSohMq0t11AzFKx5ZedQJLpBNw0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GmCNLCxex3GKmfrVLk3DkJuBZtziRHvYxI25tjSVWg3qz1Eil6ZtcXoM5I+/pusEDjPRhqdk6Z9YmtjroRcWs3fOfaOAVaJE9YmoquMJdkpa7YXUz/raXkZ2H8iMC8jttGMgH65zN3qSqJtx6mzh4b9+BFoJujXThRVhXcCQc9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnaSCeOt; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EACD01F000E9;
	Wed, 15 Jul 2026 14:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784125366;
	bh=MnOglET0Hf4vZd50XO6j5o6DU7yu4NCfkS2KLn6CuUI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BnaSCeOtEuxvbMGPMq+pi3EDzuxoqsKV2axNgCPRkADl3mH/wSjgtSAYCOzIpFC5j
	 TtsaBA8BmyLd6TAnsdrrAS/yiIURqaJzsLR3uueUY4gwI5ZoI4ZZtGqzSHGjKAJse4
	 H1vH/BJnMtxY+afTO0YGdEKt7iWJDwJmQ3siWPfrfmVmsGPI+O3N0MT50KRyAHbBsg
	 yo9iHo70EntENfr9eC1P4zUxrOMYQzh9yL6JRpq2XZM5kDEgx0BOcryBxXLGuLUw9S
	 NGYa2CbhDQmRO7S/fC17snSbkp0ePR35NQJRXY+gjxVTbLkyNxZPe6q0/Rlnn5Bv0e
	 JvamJupH0We7w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 05/14] media: iris: Skip DMA mask setting to core
 device when IOMMU is not mapped
Reply-To: sashiko-reviews@lists.linux.dev
To: "Vishnu Reddy" <busanna.reddy@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260715-glymur-v9-5-8cf2cbe12a07@oss.qualcomm.com>
References: <20260715-glymur-v9-0-8cf2cbe12a07@oss.qualcomm.com>
 <20260715-glymur-v9-5-8cf2cbe12a07@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 14:22:45 +0000
Message-Id: <20260715142245.EACD01F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-327116-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:busanna.reddy@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 156DD75F5A2
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] V4L2 video devices are registered before probe is complete, and th=
e main `core` structure is tied to the device lifetime via `devm_kzalloc()`=
, leading to race conditions and Use-After-Free vulnerabilities upon probe =
failure or unbind.
--

--- Patch [5]: [PATCH v9 05/14] media: iris: Skip DMA mask setting to core =
device when IOMMU is not mapped ---
commit 9521732c3739228afd507693479032190d343a3f
Author: Vikash Garodia <vikash.garodia@oss.qualcomm.com>

media: iris: Skip DMA mask setting to core device when IOMMU is not mapped

The non-pixel and pixel subnodes move the IOMMU streams away from the
iris parent device. As a result, the core device may not have an IOMMU
mapping, and setting its DMA mask is unnecessary.

> diff --git a/drivers/media/platform/qcom/iris/iris_probe.c b/drivers/medi=
a/platform/qcom/iris/iris_probe.c
> index 2594f5a67378a..c40c4ec44e83e 100644
> --- a/drivers/media/platform/qcom/iris/iris_probe.c
> +++ b/drivers/media/platform/qcom/iris/iris_probe.c
> @@ -310,9 +310,11 @@ static int iris_probe(struct platform_device *pdev)
> =20
>  	dma_mask =3D core->iris_platform_data->dma_mask;
> =20
> -	ret =3D dma_set_mask_and_coherent(dev, dma_mask);
> -	if (ret)
> -		goto err_vdev_unreg_enc;
> +	if (device_iommu_mapped(dev)) {
> +		ret =3D dma_set_mask_and_coherent(dev, dma_mask);
> +		if (ret)
> +			goto err_vdev_unreg_enc;
> +	}

[Severity: High]
This is a pre-existing issue, but does this probe sequence expose a
use-after-free regression if probe fails?

In iris_probe(), the core structure is allocated with devm_kzalloc(). Later,
video devices are registered before the hardware and PM runtime are fully
initialized.

If userspace opens the newly created video node during this window, it
obtains a file descriptor referencing the core structure:

iris_vidc.c:iris_open() {
    ...
    ret =3D pm_runtime_resume_and_get(core->dev);
    ...
}

If a subsequent step in iris_probe() fails (such as returning an error
after dma_set_mask_and_coherent), the driver returns an error and devres
automatically frees the core structure.

However, the userspace file descriptor remains open. When the process later
calls close(), the driver attempts to access the freed core structure:

iris_vidc.c:iris_close() {
    ...
    iris_check_num_queued_internal_buffers(inst, ...);
    ...
}

Could this be fixed by moving video device registration to the very end of
probe, or by managing the core structure lifetime via the v4l2 device
release callback instead of devres?

> =20
>  	dma_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32));
>  	dma_set_seg_boundary(&pdev->dev, DMA_BIT_MASK(32));

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260715-glymur-v9-=
0-8cf2cbe12a07@oss.qualcomm.com?part=3D5

