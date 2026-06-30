Return-Path: <devicetree+bounces-317679-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 46bXN/+mQ2pReQoAu9opvQ
	(envelope-from <devicetree+bounces-317679-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:22:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BC26E388D
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:22:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=MGNhr8eN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317679-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317679-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D697730DAAFC
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:13:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A0B5403AE1;
	Tue, 30 Jun 2026 11:12:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F09E3FF1B1;
	Tue, 30 Jun 2026 11:12:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782817958; cv=none; b=UJvS6WASAzQ2y+ge16dSzBC6mzrFLmptJXtJywf42oT0l6xvmm08bBDGo7tvghaMLELQQkIXZaKvYuYzazGy3Hol8rerqJPBlfJwozDgfEPZUewABKQ0zcC3Q6ArZhroNfx+m9xo5V/xlAHKKS0WBr9Skuty6AGysmPw1l0XZHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782817958; c=relaxed/simple;
	bh=wSdswm4WAUokWVpQ0ajQi9HZ2N7zAq+9lR+NPAOEIx8=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=jwlLBlGNoiRPrclH30c3xPZeg0I25/Tn7Nish4FXB/tq0/dcD68orW5iVhVtzvOsRxH82hIJ3YmdW4NWORrvhkU8kGn73AF6GvVqcynh0OvcpVYMNcqUisSirYY1o3zB+RLqqQY2X5/LexvcdEicPbkZ+3w5tXnCJWOYQ99rUVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGNhr8eN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D92961F000E9;
	Tue, 30 Jun 2026 11:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782817957;
	bh=kFi2ufhS9A7S0N/yneP1QPCfIlIbo7VUsBbxmuAgBec=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=MGNhr8eNkW7digT0TFYt+epnd3BW/+YsO4q/eYHOhHz7227q1kCPu/CVHfYs/I4LI
	 iImDvzD+CnJnH7CqEqW/XrPImbYT9ptiNpLpvLD4AdrvLUw3YiFDRAyK6eJiIaRT/L
	 JhxLyvriaMRcYrkq0K/XDMQj9vGMNUQBiU+R8rNahF5oRZ1jxtDuY/aGxoQXEvrG5Q
	 9hyHAz62Sxg/kpxyVDYrXXapZ8OBaDtqmEJB9A61lTHrO7FNkmY4uFhkJQZyvzel2l
	 1MbHnImoQCt9VhcZlwlBYGj9EGHAnQ8aEgLQj6yfL92rZX/hhcgHNPJy1GrybDCrkG
	 fk/CJPKbEXU5Q==
From: Pratyush Yadav <pratyush@kernel.org>
To: Wandun Chen <chenwandun1@gmail.com>
Cc: chenhuacai@kernel.org,  kernel@xen0n.name,  pjw@kernel.org,
  palmer@dabbelt.com,  aou@eecs.berkeley.edu,  robh@kernel.org,
  saravanak@kernel.org,  bhe@redhat.com,  rppt@kernel.org,
  linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org,
  loongarch@lists.linux.dev,  linux-riscv@lists.infradead.org,
  devicetree@vger.kernel.org,  kexec@lists.infradead.org,
  iommu@lists.linux.dev,  zhaomeijing@lixiang.com,
  catalin.marinas@arm.com,  will@kernel.org,  alex@ghiti.fr,
  akpm@linux-foundation.org,  pasha.tatashin@soleen.com,
  pratyush@kernel.org,  ruirui.yang@linux.dev,  m.szyprowski@samsung.com,
  robin.murphy@arm.com
Subject: Re: [PATCH v4 09/10] riscv: kdump: exclude non-dumpable reserved
 memory regions from vmcore
In-Reply-To: <20260630074715.4126796-10-chenwandun1@gmail.com> (Wandun Chen's
	message of "Tue, 30 Jun 2026 15:47:13 +0800")
References: <20260630074715.4126796-1-chenwandun1@gmail.com>
	<20260630074715.4126796-10-chenwandun1@gmail.com>
Date: Tue, 30 Jun 2026 13:12:31 +0200
Message-ID: <2vxzechoi8o0.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:chenwandun1@gmail.com,m:chenhuacai@kernel.org,m:kernel@xen0n.name,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:robh@kernel.org,m:saravanak@kernel.org,m:bhe@redhat.com,m:rppt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:loongarch@lists.linux.dev,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,m:kexec@lists.infradead.org,m:iommu@lists.linux.dev,m:zhaomeijing@lixiang.com,m:catalin.marinas@arm.com,m:will@kernel.org,m:alex@ghiti.fr,m:akpm@linux-foundation.org,m:pasha.tatashin@soleen.com,m:pratyush@kernel.org,m:ruirui.yang@linux.dev,m:m.szyprowski@samsung.com,m:robin.murphy@arm.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[pratyush@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-317679-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pratyush@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lixiang.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 40BC26E388D

On Tue, Jun 30 2026, Wandun Chen wrote:

> From: Wandun Chen <chenwandun@lixiang.com>
>
> Apply the same non-dumpable reserved memory filtering to RISC-V kdump
> as was done for arm64. Use of_reserved_mem_kdump_exclude() to drop
> flagged regions from the elfcorehdr PT_LOAD segments, and
> of_reserved_mem_kdump_nr_ranges() to pre-size the crash_mem array.
>
> Signed-off-by: Wandun Chen <chenwandun@lixiang.com>
> ---
>  arch/riscv/kernel/machine_kexec_file.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/riscv/kernel/machine_kexec_file.c b/arch/riscv/kernel/machine_kexec_file.c
> index 59d4bbc848a8..25359d583bc3 100644
> --- a/arch/riscv/kernel/machine_kexec_file.c
> +++ b/arch/riscv/kernel/machine_kexec_file.c
> @@ -10,6 +10,7 @@
>  #include <linux/elf.h>
>  #include <linux/slab.h>
>  #include <linux/of.h>
> +#include <linux/of_reserved_mem.h>
>  #include <linux/libfdt.h>
>  #include <linux/types.h>
>  #include <linux/memblock.h>
> @@ -64,6 +65,7 @@ static int prepare_elf_headers(void **addr, unsigned long *sz)
>  
>  	nr_ranges = 1; /* For exclusion of crashkernel region */
>  	walk_system_ram_res(0, -1, &nr_ranges, get_nr_ram_ranges_callback);
> +	nr_ranges += of_reserved_mem_kdump_nr_ranges();
>  
>  	cmem = kmalloc_flex(*cmem, ranges, nr_ranges);
>  	if (!cmem)
> @@ -77,6 +79,8 @@ static int prepare_elf_headers(void **addr, unsigned long *sz)
>  
>  	/* Exclude crashkernel region */
>  	ret = crash_exclude_mem_range(cmem, crashk_res.start, crashk_res.end);
> +	if (!ret)
> +		ret = of_reserved_mem_kdump_exclude(cmem);
>  	if (!ret)
>  		ret = crash_prepare_elf64_headers(cmem, true, addr, sz);

Nit: can you do the usual pattern of if (err) goto err; instead?

So this would look like:

	/* Exclude crashkernel region */
	ret = crash_exclude_mem_range(cmem, crashk_res.start, crashk_res.end);
	if (ret)
		goto out;

	ret = of_reserved_mem_kdump_exclude(cmem);
	if (ret)
		goto out;
        
	ret = crash_prepare_elf64_headers(cmem, true, addr, sz);
out:
	...

With this,

Acked-by: Pratyush Yadav <pratyush@kernel.org>

-- 
Regards,
Pratyush Yadav

