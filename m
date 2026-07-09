Return-Path: <devicetree+bounces-323835-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id luPnBEWtT2pkmgIAu9opvQ
	(envelope-from <devicetree+bounces-323835-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 16:16:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7716773217D
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 16:16:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=RrUDQRBy;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323835-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323835-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C688C311128E
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 13:52:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45D7D317150;
	Thu,  9 Jul 2026 13:43:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0474E31352A
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 13:43:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783604637; cv=none; b=l0YnQLsbw5V+4gLKq+3GWWC+zl1Q5CGvMwWuXhv8ZRQGGp8UJjnAt0BsPTZaniNWm82i5e5qeJ7gg3ekbTTlJ3wLPMZdx9fCR2V0BBKEKGE0+yVEYsQkPlctFjdwGkNiLnf8R4SMiXGT5QFg0HYP4kKbserZrGZmBCBJ2p5EGAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783604637; c=relaxed/simple;
	bh=uwSaBtPmo1IcTA9r5RkeJUSLhCDDtiD7eEzSarvNYKk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=g6oztAv9jpktXXxyiNd0GV2gDH4FQDMQaFTPgNMArIscJOtyh6Ua0WlfIWUb2+ZEVQVrq81Ak3txg1MLcj8egLeSuJyJJDhdwsOj4R2TgkQOrT9QFzw6TRuqkGF4M61qkdqpZk2hejP9Qy9bMvkFcaEIqF3nMwp27/g2n7EjmbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RrUDQRBy; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FA4F1F00A3F;
	Thu,  9 Jul 2026 13:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783604635;
	bh=grSiAbfZOyG31cRFV87nYIAQlbouKdWXQ62/VCPDWZA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RrUDQRByBBVqF0F0FZueurhjMtctvuBBzHlN6GRx4N1Wyj2HqTP7vBWqYSBIevhAE
	 5Hx7YG7uYl4Z2fYZ6Y8IGTdTl4bOEH1vI29JaUWYYfrteKqiff81KCDf76ql3Iy2O1
	 WrGX2GkKf4TkkUxVTZ/1t0MQ9cRSus/u3MZ65k8D8IG7xyvn0ejt6cLwhaU86wFMHz
	 kY8U4VUIYC7PoBhusQwCdSUTdVLY87XAjlSmRLiGrkLkgyGT4raHAVupfI3BM4Vp/0
	 OuKGzc/qdmQxRMRMuDXekTGIKfcQeKQQoMtrOnfDcSFoursXu3nv198qZ1rT+5Jjyz
	 f65xSGNb4T8Nw==
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH 05/11] media: iris: Skip DMA mask setting to core
 device when IOMMU is not mapped
Reply-To: sashiko-reviews@lists.linux.dev
To: "Vikash Garodia" <vikash.garodia@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260709-vpu_iommu_iova_handling-v1-5-72bb62cb2dfd@oss.qualcomm.com>
References: <20260709-vpu_iommu_iova_handling-v1-0-72bb62cb2dfd@oss.qualcomm.com>
 <20260709-vpu_iommu_iova_handling-v1-5-72bb62cb2dfd@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 13:43:54 +0000
Message-Id: <20260709134355.3FA4F1F00A3F@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323835-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:vikash.garodia@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,qualcomm.com:email,sashiko.dev:url,smtp.kernel.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7716773217D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing DMA segment size configuration for newly introduced subnode=
s.
--

--- Patch [5]: [RFC PATCH 05/11] media: iris: Skip DMA mask setting to core=
 device when IOMMU is not mapped ---
commit 767f9e3fe023f5e91b49d0a9ac0e6e7678556f9b
Author: Vikash Garodia <vikash.garodia@oss.qualcomm.com>

media: iris: Skip DMA mask setting to core device when IOMMU is not mapped

This commit conditionally skips setting the DMA mask on the core device
if it does not have an IOMMU mapping. This addresses platforms where
subnodes are used for IOMMU streams instead of the parent device.

> diff --git a/drivers/media/platform/qcom/iris/iris_probe.c b/drivers/medi=
a/platform/qcom/iris/iris_probe.c
> index 0bce4fb1786bc..828e020fc79a7 100644
> --- a/drivers/media/platform/qcom/iris/iris_probe.c
> +++ b/drivers/media/platform/qcom/iris/iris_probe.c
> @@ -309,9 +309,11 @@ static int iris_probe(struct platform_device *pdev)
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
> =20
>  	dma_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32));
>  	dma_set_seg_boundary(&pdev->dev, DMA_BIT_MASK(32));

[Severity: Low]
Since the DMA mask is conditionally skipped for the parent device when
subnodes are in use, do we also need to set these max segment size and
boundary limits on the subnode devices that are actually performing the
DMA?

If an application imports a large dma-buf for video streaming, the subnode
devices appear to inherit the default 64KB maximum segment size limit. When
vb2_dma_contig() calls dma_map_sgtable() using the subnode device, the IOMMU
driver might attempt to process segments larger than the unconfigured 64KB
default.

Could this trigger a DMA API debug warning ("mapping sg segment longer
than device claims to support") and introduce unnecessary CPU overhead
as the IOMMU driver evaluates splitting the mapping?

Would it make sense to configure these DMA parameters for the subnodes
in iris_create_cb_dev() as well?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-vpu_iommu_=
iova_handling-v1-0-72bb62cb2dfd@oss.qualcomm.com?part=3D5

