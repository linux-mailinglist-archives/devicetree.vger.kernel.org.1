Return-Path: <devicetree+bounces-320716-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id P3TQDjSwSmp9GAEAu9opvQ
	(envelope-from <devicetree+bounces-320716-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 21:27:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 971A870AFCA
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 21:27:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SZ9b63J3;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320716-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320716-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 63E583009151
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 19:27:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBB713559C9;
	Sun,  5 Jul 2026 19:27:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93ACF1CAA78
	for <devicetree@vger.kernel.org>; Sun,  5 Jul 2026 19:27:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783279665; cv=none; b=GfZbAuT0/IZ9k+kDGVW0eym32ZBrlMy6RQ6DjDfaY2ZSftIe+pHPBdcqdK8+4N+W8WuJkk28/zWy2GLUVXA8GNjpvI55eCw3P2zzEg+w+o3h+SoacA8ogUNeMuZNNRbBRMVNu09fkSaRINT/+vantxEDyUH/axKFJMVOA9QGdI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783279665; c=relaxed/simple;
	bh=Nu98y5LRhsK6eOcfLB0OznryAI4feLJKewdB4oDMg9M=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QOgRGR1XugIEU7UHEmKGLJLt889xdwTESgMcLW73JavxR3osdRWZxXOBjllrcnGP9QfyrIt5bueC8qipNzEPZC9Bu9gZcTYqbBfqZ5V7Rghh50raG+Fan2T66NyH7ZIhyp2GrMpZzL+ryxR/sicntSGByCzT7JaGWSXABpEkHWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZ9b63J3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8C601F000E9;
	Sun,  5 Jul 2026 19:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783279664;
	bh=5l7TkDtDZByEM0gcU7gMKoUylmhIi3qx8UyaeY6blDY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SZ9b63J3z97mb+MI638PD2x3u0mzvRutsbi6cn40LFuI178Igoiu/R2jQnAyRKMj7
	 J3jDYoH45amMkruNgeH4wfELoKTJq16bGGuRqiezTBMaOK2tY/dnyb5S6HvBqWOfiC
	 ccMMibql9RLPrOzkRyt510XvuuT5FAHKAW3xHLcDfc0o5ESacVifS7gW4gNGnweFmJ
	 HROE2vzSZIDEjz7v8+4tMXlnwx5zM/9bVLlVhBhSn4Xiyc0InGhbeIETvb3RJ0DZLL
	 eDqtUTVq3aLARFGVjCyBY0gOvCaAMezYPnMC0SRbvuIeco9RdUrm0YeCDZgwxrGTey
	 GKJqvV52s+/Jg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC 07/13] iommu: arm-smmu-qcom: Fixed mapping between
 sid and cb for gpu and lpac
Reply-To: sashiko-reviews@lists.linux.dev
To: "Anna Maniscalco" <anna.maniscalco2000@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
In-Reply-To: <20260705-descriptive-name-lpac-upstream-v1-7-01d50c3e0c99@gmail.com>
References: <20260705-descriptive-name-lpac-upstream-v1-0-01d50c3e0c99@gmail.com>
 <20260705-descriptive-name-lpac-upstream-v1-7-01d50c3e0c99@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 05 Jul 2026 19:27:43 +0000
Message-Id: <20260705192743.E8C601F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320716-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:anna.maniscalco2000@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:annamaniscalco2000@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 971A870AFCA

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The context bank allocation logic assigns Context Bank 1 instead o=
f Context Bank 0 to legacy unified GPU devices that declare both SID 0 and =
SID 1, breaking GPU hardware pagetable switching.
--

commit ae389e90eddaec7861c0838f081fce60156d8874
Author: Anna Maniscalco <anna.maniscalco2000@gmail.com>

iommu: arm-smmu-qcom: Fixed mapping between sid and cb for gpu and lpac

This patch updates the context bank allocation logic for Adreno SMMU device=
s.
It introduces device identification functions and modifies the context bank
allocator to map context bank 0 to SID 0 and context bank 1 to SID 1.

> diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c b/drivers/iommu/a=
rm/arm-smmu/arm-smmu-qcom.c
> index ae6152bddf8fe..e605a535f328f 100644
> --- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> +++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> @@ -225,6 +225,25 @@ static void qcom_adreno_smmu_set_prr_addr(const void=
 *cookie, phys_addr_t page_a
>  #define QCOM_ADRENO_SMMU_GPU_SID 0
>  #define QCOM_ADRENO_SMMU_LPAC_SID 1
> =20
> +static bool qcom_adreno_smmu_is_lpac_device(struct device *dev)
> +{
> +	struct iommu_fwspec *fwspec =3D dev_iommu_fwspec_get(dev);
> +	int i;
> +
> +	/*
> +	 * The GPU will always use SID 0 so that is a handy way to uniquely
> +	 * identify it and configure it for per-instance pagetables
> +	 */
> +	for (i =3D 0; i < fwspec->num_ids; i++) {
> +		u16 sid =3D FIELD_GET(ARM_SMMU_SMR_ID, fwspec->ids[i]);
> +
> +		if (sid =3D=3D QCOM_ADRENO_SMMU_LPAC_SID)
> +			return true;
> +	}
> +
> +	return false;
> +}
> +

[ ... ]

> @@ -312,13 +331,12 @@ static int qcom_adreno_smmu_alloc_context_bank(stru=
ct arm_smmu_domain *smmu_doma
>  	 * switch pagetables
>  	 */
>  	if (qcom_adreno_smmu_is_gpu_device(dev)) {
> -		start =3D 0;
> -		count =3D 2;
> +		start =3D !!qcom_adreno_smmu_is_lpac_device(dev);
> +		count =3D start + 1;

[Severity: High]
Does this break context bank allocation for legacy unified GPU devices?

When probing older supported SoCs where a single unified primary GPU device
node declares both SID 0 and SID 1, qcom_adreno_smmu_is_lpac_device() will
return true because one of the SIDs matches QCOM_ADRENO_SMMU_LPAC_SID.

This calculates start =3D 1 and count =3D 2. The __arm_smmu_alloc_bitmap() =
call
will then search exclusively in the [1, 2) range and allocate Context Bank 1
for the primary GPU domain, completely skipping Context Bank 0.

Since the Adreno GPU hardware natively expects and hardcodes Context Bank 0
for its main pagetable switching via its internal APERTURE, allocating
Context Bank 1 instead of 0 violates hardware constraints. Will this result
in SMMU faults and a frozen GPU on those legacy platforms?

>  	} else {
>  		start =3D 2;
>  		count =3D smmu->num_context_banks;
>  	}
> -
>  	return __arm_smmu_alloc_bitmap(smmu->context_map, start, count);
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260705-descriptiv=
e-name-lpac-upstream-v1-0-01d50c3e0c99@gmail.com?part=3D7

