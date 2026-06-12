Return-Path: <devicetree+bounces-311007-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id p1K5NpkaLGrsLQQAu9opvQ
	(envelope-from <devicetree+bounces-311007-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:41:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DFB67A479
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:41:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=fpZHwZpF;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311007-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311007-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 64E1F3108F07
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 14:41:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CC90385D9B;
	Fri, 12 Jun 2026 14:41:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75E4127E1A1;
	Fri, 12 Jun 2026 14:41:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781275284; cv=none; b=nJ01kPRb4+yRrNyTdrx1yvns3xCSe4MafJ25FwMTxLTSGEAcId07Xga7bGxOHY5cJVX6XKUz6IcZufobUUHTvEAnz9Ae/8XqPFZL6VD+OaFyee7LxfGi1grzGwNP9DxexH7voDgj90hZF6T2laQQ9v60Jl6c68FVqsEgtwb9inc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781275284; c=relaxed/simple;
	bh=n5+Cmdgm2jLPDbj7FRnkvAE18YhMQLHXALFOzU1uQTA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FRLJTB5h/atLtqu3eTcBbI3Lq3xCU0NOgtr22Vlo8Kic3dSRaQPSNatCQBJHySs7ObvZxvJ898PF1kEz8CK1hvskfhLSFzsRqzPmSSUVWCvpq49hm5cE7KA/8IlO+GWr1Lxhv5JHmIZTbbSmKJGhpLxVoVATAFElqfq014SB1s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpZHwZpF; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A1B61F00A3A;
	Fri, 12 Jun 2026 14:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781275283;
	bh=hmAXHxNUwUqsynWpUSTF048mwQXqT/HeYN0OxRXzNeU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=fpZHwZpFSlFKHdhrHL86Fm31xIkwf0H4w8rmAoLhBCpFarhQbgz1y1KdDDny+d2sW
	 susCcVgWIy78O5jtOqfUedAA7WR1FePmSBXfBRk+R1QpKN865CL2/9Pu1gxXaTRBD1
	 zVRchja2vC9CymI6zJsjihLL+LMuUvIVbPrgKZSeG3uuI/D1jJUHlOVfSsVmfMT5ua
	 nvq7iwjkRhZlpWc+G09dcxbLATjEYGRqCZsCf/wSws1+zdTthAh4aZ/aM3NkufQA/8
	 U+EsuVdjp/ODco/aPFY0X3QPqSkhWFg1aUTUQNjzMarRSr1pV2t7Syd1vl9wvU8qB4
	 FaocY33c9ejVg==
Date: Fri, 12 Jun 2026 09:41:22 -0500
From: Rob Herring <robh@kernel.org>
To: Wandun Chen <chenwandun1@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	loongarch@lists.linux.dev, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, kexec@lists.infradead.org,
	iommu@lists.linux.dev, zhaomeijing@lixiang.com,
	catalin.marinas@arm.com, will@kernel.org, chenhuacai@kernel.org,
	kernel@xen0n.name, pjw@kernel.org, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, alex@ghiti.fr, saravanak@kernel.org,
	akpm@linux-foundation.org, bhe@redhat.com, rppt@kernel.org,
	pasha.tatashin@soleen.com, pratyush@kernel.org,
	ruirui.yang@linux.dev, m.szyprowski@samsung.com,
	robin.murphy@arm.com, quic_obabatun@quicinc.com
Subject: Re: [PATCH v3 05/11] of: reserved_mem: split
 alloc_reserved_mem_array() from fdt_scan_reserved_mem_late()
Message-ID: <20260612144122.GA974326-robh@kernel.org>
References: <20260527032917.3385849-1-chenwandun1@gmail.com>
 <20260527032917.3385849-6-chenwandun1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260527032917.3385849-6-chenwandun1@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:chenwandun1@gmail.com,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:loongarch@lists.linux.dev,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,m:kexec@lists.infradead.org,m:iommu@lists.linux.dev,m:zhaomeijing@lixiang.com,m:catalin.marinas@arm.com,m:will@kernel.org,m:chenhuacai@kernel.org,m:kernel@xen0n.name,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:saravanak@kernel.org,m:akpm@linux-foundation.org,m:bhe@redhat.com,m:rppt@kernel.org,m:pasha.tatashin@soleen.com,m:pratyush@kernel.org,m:ruirui.yang@linux.dev,m:m.szyprowski@samsung.com,m:robin.murphy@arm.com,m:quic_obabatun@quicinc.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-311007-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 66DFB67A479

On Wed, May 27, 2026 at 11:29:11AM +0800, Wandun Chen wrote:
> From: Wandun Chen <chenwandun@lixiang.com>
> 
> Prepare for storing /memreserve/ entries in the reserved_mem array.
> alloc_reserved_mem_array is skipped if the device tree lacks a
> /reserved-memory node, pointer 'reserved_mem' continues to reference
> the reserved_mem_array which lives in __initdata, storing
> /memreserve/ entries into reserved_mem_array would result in metadata
> loss, and an out-of-bounds memory access will occur if the device
> tree contains more than MAX_RESERVED_REGIONS /memreserve/ entries.
> 
> So split alloc_reserved_mem_array() from fdt_scan_reserved_mem_late(),
> and call alloc_reserved_mem_array() whether or not there is a
> /reserved-memory node.
> 
> No functional change.
> The actual /memreserve/ population is added in a follow-up patch.
> 
> Signed-off-by: Wandun Chen <chenwandun@lixiang.com>
> ---
>  drivers/of/fdt.c             | 7 +++++--
>  drivers/of/of_private.h      | 1 +
>  drivers/of/of_reserved_mem.c | 6 +-----
>  3 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index 82f7327c59ea..83a2a474831e 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -1284,8 +1284,11 @@ void __init unflatten_device_tree(void)
>  {
>  	void *fdt = initial_boot_params;
>  
> -	/* Save the statically-placed regions in the reserved_mem array */
> -	fdt_scan_reserved_mem_late();
> +	/* Attempt dynamic allocation of a new reserved_mem array */
> +	if (fdt && alloc_reserved_mem_array()) {
> +		/* Save the statically-placed regions in the reserved_mem array */
> +		fdt_scan_reserved_mem_late();

Can we make this just:

alloc_reserved_mem_array();
fdt_scan_reserved_mem_late();

We already check !fdt in fdt_scan_reserved_mem_late().

Rob

