Return-Path: <devicetree+bounces-306512-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ygYqCLmvIGrE6gAAu9opvQ
	(envelope-from <devicetree+bounces-306512-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 00:50:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EAE63BA99
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 00:50:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=PIa38V6w;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306512-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306512-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9FCDE303C67F
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 22:50:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2340C3C8C71;
	Wed,  3 Jun 2026 22:50:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9BB4C041D
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 22:50:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780527009; cv=none; b=HOL6WyFg4pxYLfVTFsdkFMegSRB8MSrtxmUYTRi6mh4vm+N4xFEIlBHICQ31WwG15+ihqC1LN3aEi8OP07SRLtNg5f8DV7BMRIHmXynz/XKIbqWXrKvXxh8BKdRnwDOE67laQ7QiOI0cRE8Fuhr+/qordQNg/dTGD4tdC0eCGrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780527009; c=relaxed/simple;
	bh=C1mLVJMm5xmdM7o7pjc1xe7MnKq2KqK4G82m4TKk/SA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Uo6KAamQCotjEGhfGM5cEte9uyHd+kXyHpbxvdVVP5HZd6MAcGSgY8eYTHu7Tr+YSCltSuxmzrqHodTeWRmKPzrE2qNqCEmoduAavFc5NFCbvvHDc28jBSejiyP/96rt1X1qE1+WrFrKs8S1eSgY4X1ccp8QchKQSIJL07BODxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIa38V6w; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 171E71F00893;
	Wed,  3 Jun 2026 22:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780527001;
	bh=F2SbYYXy5VLR2xjzonbuJkc/9RUxXJvX5jDbiunvFTk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=PIa38V6wA4Y5SXyjwQ91scGfIcjnbc21U2R6rs5DTM8HhCOcZ3+bbVy8uxo2NOrS5
	 4zAte/DzDng2NHcqrrViwsH1k3v/m/sMXCil+Ju/GwqWINhXaEv9T/zOoxIjIwJ1JT
	 OiQkzIpo3fIly1JSVYJOAO2eXzCpRuLBNtnsHqF0H6SS/vvudlRLmWK5aliI66zUBI
	 m90pUOF6Hvq1S+DUbzMYyxj5kXNRV/p8tT/DbRV46cjMqoK6ROZJELttUjIDmStXNs
	 IiC7G2uFDszpUetD4h5rxscF2XQmBM0UPTVTuS1irX4F5vCEe3lZX8m6fX63zdlkAW
	 /+BXzjGpSiwbw==
Date: Wed, 3 Jun 2026 17:49:59 -0500
From: Rob Herring <robh@kernel.org>
To: Sang-Heon Jeon <ekffu200098@gmail.com>
Cc: saravanak@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] of: reserved_mem: prevent OOB when too many dynamic
 regions are defined
Message-ID: <20260603224959.GA2317076-robh@kernel.org>
References: <20260603152709.941788-1-ekffu200098@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260603152709.941788-1-ekffu200098@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306512-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ekffu200098@gmail.com,m:saravanak@kernel.org,m:devicetree@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A5EAE63BA99

On Thu, Jun 04, 2026 at 12:27:09AM +0900, Sang-Heon Jeon wrote:
> On boot, fdt_scan_reserved_mem() saves each dynamically-placed
> /reserved-memory subnode into a local array of size
> MAX_RESERVED_REGIONS.
> 
> If the device tree declares more than MAX_RESERVED_REGIONS
> dynamically-placed regions, fdt_scan_reserved_mem() writes past the
> end of the local array.
> 
> Add a bounds check that logs an error and skips the excess regions,
> restoring the original behavior.
> 
> Fixes: 8a6e02d0c00e ("of: reserved_mem: Restructure how the reserved memory regions are processed")
> Signed-off-by: Sang-Heon Jeon <ekffu200098@gmail.com>
> ---
> QEMU-based test results
> 
> - With 65(MAX_RESERVED_REGIONS + 1) dynamically-placed region DTB
> 
> 1) AS-IS (before-fix)
> [    0.000000] OF: reserved mem: 0x000000043ffff000..0x000000043fffffff (4 KiB) map non-reusable rgn00
> [    0.000000] OF: reserved mem: 0x000000043fffe000..0x000000043fffefff (4 KiB) map non-reusable rgn01
> 
> ...
> 
> [    0.000000] OF: reserved mem: 0x000000043ffc1000..0x000000043ffc1fff (4 KiB) map non-reusable rgn62
> [    0.000000] OF: reserved mem: 0x000000043ffc0000..0x000000043ffc0fff (4 KiB) map non-reusable rgn63
> [    0.000000] OF: reserved mem: not enough space for all defined regions.
> [    0.000000] Kernel panic - not syncing: stack-protector: Kernel stack is corrupted in: fdt_scan_reserved_mem+0x5f0/0x610
> [    0.000000] CPU: 0 UID: 0 PID: 0 Comm: swapper Not tainted 7.1.0-rc1-00022-gcf5d7a55d3b6 #6 PREEMPT 
> [    0.000000] Hardware name: linux,dummy-virt (DT)
> [    0.000000] Call trace:
> [    0.000000]  show_stack+0x18/0x24 (C)
> [    0.000000]  dump_stack_lvl+0x34/0x8c
> [    0.000000]  dump_stack+0x18/0x24
> [    0.000000]  vpanic+0x47c/0x4dc
> [    0.000000]  do_panic_on_target_cpu+0x0/0x1c
> [    0.000000]  __stack_chk_fail+0x20/0x24
> [    0.000000]  fdt_scan_reserved_mem+0x5f0/0x610
> [    0.000000]  early_init_fdt_scan_reserved_mem+0x50/0x124
> [    0.000000]  arm64_memblock_init+0x188/0x2b8
> [    0.000000]  setup_arch+0x24c/0x5f4
> [    0.000000]  start_kernel+0x70/0x848
> [    0.000000]  __primary_switched+0x88/0x90
> [    0.000000] ---[ end Kernel panic - not syncing: stack-protector: Kernel stack is corrupted in: fdt_scan_reserved_mem+0x5f0/0x610 ]---
> 
> 2) TO-BE (after-fix)
> [    0.000000] OF: reserved mem: not enough space for all dynamic regions.
> [    0.000000] OF: reserved mem: 0x000000043ffff000..0x000000043fffffff (4 KiB) map non-reusable rgn00
> [    0.000000] OF: reserved mem: 0x000000043fffe000..0x000000043fffefff (4 KiB) map non-reusable rgn01
> 
> ...
> 
> [    0.000000] OF: reserved mem: 0x000000043ffc1000..0x000000043ffc1fff (4 KiB) map non-reusable rgn62
> [    0.000000] OF: reserved mem: 0x000000043ffc0000..0x000000043ffc0fff (4 KiB) map non-reusable rgn63
> 
> ---
> Hello,
> 
> I found a bug introduced by a previous patch, so I am sending this
> fix as quickly as possible after testing. Although we are at the end
> of the 7.1 -rc cycle, I do not want to rush this patch.
> 
> Thank you as always for the thoughtful review.
> 
> Best Regards,
> Sang-Heon Jeon
> ---
>  drivers/of/of_reserved_mem.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
> index ce1d5530ec0f..4efd521adee0 100644
> --- a/drivers/of/of_reserved_mem.c
> +++ b/drivers/of/of_reserved_mem.c
> @@ -346,6 +346,12 @@ int __init fdt_scan_reserved_mem(void)
>  		err = __reserved_mem_reserve_reg(child, uname);
>  		if (!err)
>  			count++;
> +
> +		if (dynamic_nodes_cnt == MAX_RESERVED_REGIONS) {
> +			pr_err("not enough space for all dynamic regions.\n");

It would be more useful to print the node name(s) that we skip.

Sashiko's analysis looks correct to me.

Rob

