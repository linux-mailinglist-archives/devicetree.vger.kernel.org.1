Return-Path: <devicetree+bounces-314238-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WLxkFuPeOGrAjQcAu9opvQ
	(envelope-from <devicetree+bounces-314238-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 09:06:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9962F6AD217
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 09:06:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=TrMFtab3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314238-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314238-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 767E1301CA57
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 07:05:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED67135E1C8;
	Mon, 22 Jun 2026 07:05:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA4102DC791
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 07:05:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782111944; cv=none; b=cbsCNZgIH9+AUeLtwn67EipubtmNnIqHENMIjf6QeaWFzyPf4ZpXqbnrxIUOYxZOSL3RZ/0Ni54qZl8QPCGmvPD7/S3RK3/mD0epNq4ZZwZqfR8EAa1ze56miOhctAVEZ4irtCszjlosIh0AK3lCW9WYbeAAakWEiQv4giyYClY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782111944; c=relaxed/simple;
	bh=HbAwRpaLFaILJXiEF+GSvD/X+qrIPflB0YHPjal1qog=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=o9nl02pnh+1/kLkAoVIqbkeXyZ3mpSrkXuR/921AAeQV6SVdZjfZ1npPQyv8PjLfan5xOiTF4pauEdf4J6Iag8UBWubRxcHCLvOpzsue5VVovVKv8kYIhaVuu3iVc6T8gSJy56VgFDDoV8jQfS5wkAa0eKzGOHzoMF/t7ZPTto0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrMFtab3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58C501F000E9;
	Mon, 22 Jun 2026 07:05:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782111943;
	bh=VNr2kMcS63Kfa6/RJUT/pS+jcnBmTYd/r8tSTzYy1as=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TrMFtab32SLFRfqB9/6ecPr/r//jhrVUCjCPiEJMx8s7rKB3m/eNz+xps1Bt7kGnD
	 ulCOy0+RzoQ1h/RVjL0qAFpVwNqAlTLRThLTfYUiIT6EDSqrYgmrEFxCBR0dezqF1n
	 oOnpI3ox8nRDPUBEH3TaNF8b52DzBwozOaTSjRJWCphg/0FS1Z4vdoMmsAZHgLVYB8
	 VwohgWYV2tt7qQUBx4C+5L8TshV9DGmpmA41p/YCYXgaw5pcfDsBI36ibz1uaPeUX5
	 3AsujIlK4llBm1Xz/btFrNbadiXohSY0cJMTMDPv+37zCZB+pW51y1QYIEe3pAL38H
	 YLW20Pj87PbzA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/7] gpu: host1x: Add Tegra264 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mikko Perttunen" <mperttunen@nvidia.com>
Cc: conor+dt@kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260622-t264-host1x-v2-4-ff7364d9ff7b@nvidia.com>
References: <20260622-t264-host1x-v2-0-ff7364d9ff7b@nvidia.com>
 <20260622-t264-host1x-v2-4-ff7364d9ff7b@nvidia.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Jun 2026 07:05:42 +0000
Message-Id: <20260622070543.58C501F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-314238-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,nvidia.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mperttunen@nvidia.com,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9962F6AD217

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] In `hw_host1x10_uclass.h`, the macro definition following `host1x_u=
class_indoff_rwn_read_v` incorrectly redefines `HOST1X_UCLASS_INDOFF_INDROF=
FSET_F` instead of defining `HOST1X_UCLASS_INDOFF_RWN_READ_V`.
--

commit 6528bd5a94c6539553c675b4b4c0ced0e30024a6
Author: Santosh BS <santoshb@nvidia.com>

gpu: host1x: Add Tegra264 support

This commit adds device data and chip headers for Tegra264.

> diff --git a/drivers/gpu/host1x/hw/hw_host1x10_uclass.h b/drivers/gpu/hos=
t1x/hw/hw_host1x10_uclass.h
> new file mode 100644
> index 0000000000000..abe83e67fa837
> --- /dev/null
> +++ b/drivers/gpu/host1x/hw/hw_host1x10_uclass.h
[ ... ]
> +static inline u32 host1x_uclass_indoff_indroffset_f(u32 v)
> +{
> +	return (v & 0xffff) << 2;
> +}
> +#define HOST1X_UCLASS_INDOFF_INDROFFSET_F(v) \
> +	host1x_uclass_indoff_indroffset_f(v)
> +static inline u32 host1x_uclass_indoff_rwn_read_v(void)
> +{
> +	return 1;
> +}
> +#define HOST1X_UCLASS_INDOFF_INDROFFSET_F(v) \
> +	host1x_uclass_indoff_indroffset_f(v)

[Severity: Low]
Does this code accidentally redefine HOST1X_UCLASS_INDOFF_INDROFFSET_F?

It looks like this might be a copy-paste error where
HOST1X_UCLASS_INDOFF_RWN_READ_V should have been defined instead, calling
host1x_uclass_indoff_rwn_read_v().

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260622-t264-host1=
x-v2-0-ff7364d9ff7b@nvidia.com?part=3D4

