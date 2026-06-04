Return-Path: <devicetree+bounces-306876-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5utFHZKJIWqIIQEAu9opvQ
	(envelope-from <devicetree+bounces-306876-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 16:20:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C62FB640C62
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 16:20:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ebFYczjO;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306876-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306876-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0740130FA6DD
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 14:04:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D918933BBA2;
	Thu,  4 Jun 2026 14:04:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6C63E2751
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 14:04:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780581873; cv=none; b=ubzfpif/6Gbe2alzeotM7Z2Vb/V8Sg3XYhUg7sUs6HBCCz8IbjxSUTltXx0JdVvdpiDKbfCdFPrUvg3uwXDtyVugKZRQQyTN8Tp+ggwa9wbX1Xr5+gHdg49OkQHzoApltsVNtiH2m7tmVJ5yBhsSuvv8i+GuPse9DMJr1pelAOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780581873; c=relaxed/simple;
	bh=sMeC/zKdhGg1Giq7Fg6iO1GvaisDltaHwjgMoLKufWg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=MLq/JuMBFRSXIShy51o+iYPQ/4F59vV68J+3TyiCmNi8pGHLQlCn+WutnmB7o6A+rl5DZxDkxgDSZtFr9W/Ev9K8Z6tQscqsphjBdcJANDlgu1iWYDcTevyUflkPdIZzQtxFu6FVXnO1h+UvgEhJpgBlwZJgIv9AxBIIgcxRl6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebFYczjO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B4771F00893;
	Thu,  4 Jun 2026 14:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780581872;
	bh=25cbMgPk5RbMB0zgQn52YgaiZnbZnNYLgFuy17++Xwk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ebFYczjOlEWnP0tsoXb1an+IeO1cDcxD9hRiuCFVzs5R43T+XwAy/osfePshYqlRB
	 Avxq5r1xMgOcqOnzepRj18xN0fkUt7jWeGbVhH3TxdBIhF4HM17POQL+SkzZhyvwGc
	 yl7exOIWtwizum/L7rnpjGeF1uXvuvtsA8vH8ageKHaiyOv0nKk6IZmK4g4z0/1ISQ
	 nq2CXr/fRq9NKIk0+ixeXAutXpIdzvZNgfXSRBY3kCYyGmPq5XwErynm19piR30ufM
	 N9+9t/4UAAy4/6tZfnRNFylkfaTi7AdCC4BeoEi5ysSX/nvQkEoy/5ex72w7WNwd+0
	 WQJRXrlKWdGXQ==
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH v3 6/9] iommu/rockchip: Clear AUTO_GATING bit 1 on
 the RK356x v1 IOMMU
Reply-To: sashiko-reviews@lists.linux.dev
To: "Midgy BALON" <midgy971@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260604135255.62682-7-midgy971@gmail.com>
References: <20260604135255.62682-7-midgy971@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 14:04:31 +0000
Message-Id: <20260604140432.0B4771F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306876-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:midgy971@gmail.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C62FB640C62

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The patch writes 0x2 to RK_MMU_AUTO_GATING to clear bit 1, but thi=
s value actually sets bit 1 and clears bit 0, doing the exact opposite of t=
he intended behavior.
- [High] An SoC-specific workaround is applied unconditionally to all Rockc=
hip IOMMUs using a brittle hardcoded register overwrite.
--

commit 86bf3e3b9a68d419b8e6ba9d4d3cf8afb0c324bb
Author: Midgy BALON <midgy971@gmail.com>

iommu/rockchip: Clear AUTO_GATING bit 1 on the RK356x v1 IOMMU

This commit aims to fix a hardware lockup on the RK356x v1 IOMMU by
clearing bit 1 of the RK_MMU_AUTO_GATING register. This change is intended
to prevent auto clock-gating of the page-table walker.

> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iomm=
u.c
> index 0013cf196c573..7d40ecb26123f 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -952,6 +952,18 @@ static int rk_iommu_enable(struct rk_iommu *iommu)
> =20
>  	ret =3D rk_iommu_enable_paging(iommu);
> =20
> +	if (!ret) {
> +		/*
> +		 * RK356x v1 IOMMU: RK_MMU_AUTO_GATING bit 1 enables page-walker
> +		 * auto clock-gating; the walker's AXI master then loses its clock
> +		 * between transactions and a TLB-miss page walk never completes,
> +		 * leaving the IOMMU stuck (PAGING_ENABLED, never IDLE).  Clear
> +		 * bit 1 (keep bit 0, the slave-port gate) once paging is enabled.
> +		 */
> +		for (i =3D 0; i < iommu->num_mmu; i++)

[Severity: High]
Will this loop unconditionally apply the RK356x v1 workaround to all SoCs
supported by the rockchip-iommu driver? It seems older variants like the
RK3288 or RK3399 might unexpectedly receive this register write in
rk_iommu_enable() without a check for the specific SoC version.

> +			rk_iommu_write(iommu->bases[i], RK_MMU_AUTO_GATING, 0x2);

[Severity: High]
Does writing 0x2 here achieve the intended result?=20

The comment mentions clearing bit 1 and keeping bit 0. Since the register
resets to 0x3 (binary 11), writing 0x2 (binary 10) actually sets bit 1 and
clears bit 0. This seems to do the exact opposite of what is described,
keeping the buggy page-walker auto clock-gating enabled and inadvertently
disabling the working slave-port gate. Should this be 0x1 instead?

Additionally, because rk_iommu_write() completely overwrites the register,
could this clobber other bits in RK_MMU_AUTO_GATING? Would it be safer to
use a read-modify-write pattern here?

> +	}
> +
>  out_disable_stall:
>  	rk_iommu_disable_stall(iommu);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260604135255.6268=
2-1-midgy971@gmail.com?part=3D6

