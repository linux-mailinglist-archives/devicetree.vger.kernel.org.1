Return-Path: <devicetree+bounces-306395-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qeHIClZLIGri0QAAu9opvQ
	(envelope-from <devicetree+bounces-306395-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 17:42:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFAC639537
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 17:42:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=R875jDan;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306395-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-306395-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C9E1C30A0FD6
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 15:36:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67F173B47CF;
	Wed,  3 Jun 2026 15:35:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C67C3932DC
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 15:35:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780500957; cv=none; b=mrIwjVERnsIULY6dtVNnEKDyoRoNsZbTzFrVI6fdg0nrT0cEHHhhqM74dE+jUq01gphwfsCC4gc/q32pNEUfQIx+FA62z8t2zF2SzX+44DWx2qP3qyiVQERCVWQu8rAKaQrS7f52e1hX7l/00P29b5CDX7hHunGvRzzdY5SXpSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780500957; c=relaxed/simple;
	bh=SLZYUd1GQ2vSSwaE8yqpvHIlLGm41bqfHGlzVMFJnLM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=oo7Fzpcs2qjwK1teC+GKJx6+F9KnX9U1nYZ4DWGQgUZxejv/2ypZJCN9mAb28R5tSGPjjjS5iiWRdt+XhQixBCBXs1tF5rMEjVddJnHX2nj0MW27LMDVGN+D+Ugq43qau9DhTSVQA+E5lG98C3Fuj/qrdI26fJsN7VOALEaEvFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R875jDan; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 194381F00893;
	Wed,  3 Jun 2026 15:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780500956;
	bh=Usd5TqPq1Z0ZNN2YYf7nDHlQfCbTXIKf+xjffJhIC3g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=R875jDanQMxj0HU+Nx5KW4TCA7AX1pXPkMTiUMHGoAlUMagixgk04YM+qrd4gmmIS
	 jqo0V6wSbKC3yHb4U/uHh0mr9KYdY/bhRmQ3Ak7z/fI/TAifRZzb6wKaz5KxjPpbcy
	 w4Det5Y4eFBXp8XdwPeJp36x6SD/PPESuu3TL8YqSsdrKBxBm8mH1mYiZ8MYnDBgu/
	 bxPN4RZSBujZNO9jMcYrbgxuvhJrQnxbjVcntaHWiYpfdaTYZ9YHFb84xtwKqHRTQs
	 GQfebWB2jZJzFmXSifYnlGe+X/ccxcvyQHtuvO3SgyCHM+zHDZwBUjVv68jyUj6UTn
	 qb46P5elK8UBQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 5/5] iommu/arm-smmu: Add qcom,shikra-mdss to Qualcomm
 SMMU client tables
Reply-To: sashiko-reviews@lists.linux.dev
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260603-shikra-display-v1-5-aeac1b94faa7@oss.qualcomm.com>
References: <20260603-shikra-display-v1-5-aeac1b94faa7@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Jun 2026 15:35:54 +0000
Message-Id: <20260603153555.194381F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306395-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:nabige.aala@oss.qualcomm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BCFAC639537

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The entries for `qcom,shikra-mdss` are inserted out of alphabetical=
 order in the device match tables.
--

commit c3b00b57dda4a11308898354c0f31b116dd3d96c
Author: Nabige Aala <nabige.aala@oss.qualcomm.com>

iommu/arm-smmu: Add qcom,shikra-mdss to Qualcomm SMMU client tables
   =20
Register the Shikra MDSS display subsystem in both the SMMU ACTLR
client table and the SMMU client match table.

> diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c b/drivers/iommu/a=
rm/arm-smmu/arm-smmu-qcom.c
> index e2c914fccd6fc..3dfee947e2c9f 100644
> --- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> +++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> @@ -45,6 +45,8 @@ static const struct of_device_id qcom_smmu_actlr_client=
_of_match[] =3D {
>  			.data =3D (const void *) (PREFETCH_DEFAULT | CMTLB) },
>  	{ .compatible =3D "qcom,qcm2290-mdss",
>  			.data =3D (const void *) (PREFETCH_SHALLOW | CPRE | CMTLB) },
> +	{ .compatible =3D "qcom,shikra-mdss",
> +			.data =3D (const void *) (PREFETCH_SHALLOW | CPRE | CMTLB) },

[Severity: Low]
This isn't a bug, but should this entry be placed in alphabetical order?

It looks like it was inserted right after qcm2290-mdss because it mirrors t=
he
hardware prefetch settings. However, it seems these match tables are usually
kept in strict alphabetical order to prevent merge conflicts and duplicates.
Would it be better placed between sc8280xp-mdss and sm6115-mdss?

>  	{ .compatible =3D "qcom,sa8775p-mdss",
>  			.data =3D (const void *) (PREFETCH_DEFAULT | CMTLB) },
>  	{ .compatible =3D "qcom,sc7280-mdss",

[ ... ]

> @@ -410,6 +412,7 @@ static const struct of_device_id qcom_smmu_client_of_=
match[] __maybe_unused =3D {
>  	{ .compatible =3D "qcom,mdp4" },
>  	{ .compatible =3D "qcom,mdss" },
>  	{ .compatible =3D "qcom,qcm2290-mdss" },
> +	{ .compatible =3D "qcom,shikra-mdss" },

[Severity: Low]
Similarly, should this be placed alphabetically between sdm845-mss-pil and
sm6115-mdss to maintain the list ordering?

>  	{ .compatible =3D "qcom,sar2130p-mdss" },
>  	{ .compatible =3D "qcom,sc7180-mdss" },
>  	{ .compatible =3D "qcom,sc7180-mss-pil" },

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260603-shikra-dis=
play-v1-0-aeac1b94faa7@oss.qualcomm.com?part=3D5

