Return-Path: <devicetree+bounces-319298-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zUmHAUdERmrINAsAu9opvQ
	(envelope-from <devicetree+bounces-319298-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:58:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 679F46F64D1
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:58:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZNF+9+zi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319298-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-319298-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 99F7431ADCE6
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 10:39:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D6D43C3BFE;
	Thu,  2 Jul 2026 10:39:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652DF35F165;
	Thu,  2 Jul 2026 10:39:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782988767; cv=none; b=bCW3n5Iz3Y99Ifs4kMyr8QWo6F4MDCCgSXROBK1wTt1icXEd2Mj2bc5EOAsfRhEP80ggwFnLWJRszpUA8RUqsP32d6jB0DnalbzhfcvjZ0ZChRK9Q6z4jSmHHYvZVBYC+N5rcRQEbFvMnn/l2jPDo7zjOaabCq6hGkECiJpgrtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782988767; c=relaxed/simple;
	bh=M3zCXTiKd0xTuXuc/XyUnoJt84FG38wsL6zfIQOJbSI=;
	h=MIME-Version:Content-Type:Subject:From:To:Cc:In-Reply-To:
	 References:Date:Message-Id; b=H31IQYqibjc+jyzHZ0H+aLl9MHnUXK2TS8XILhPmKFiY/YSp3bnFLOyYVW47pzGxSnXLWSu5eFKQ7BGNMcgHnCYoGSL/ps4naXjo/PSAIEAewUWLxPQSRjgYyQ/qIHq19YUH9CMVQhPw72+hNtEfLpvXQ86nwbVfRJQjUpo55bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNF+9+zi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9430D1F000E9;
	Thu,  2 Jul 2026 10:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782988766;
	bh=qB0O4+vj8xCBDUmgP9F3sg9bDprAJ1KugUxJjWFYxW8=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=ZNF+9+ziJrQ/6Oo+8v3bgxvCQyRZ8P1F5iaOuNZ/uKew2EQ+sAZngVvWED4ce4fwF
	 Fe/abxroPGxbacye/03crZyJam9aGojqEZLXIIvXnjY0JJJEK26BBnj62LJbSolewG
	 bIujxYUL3dG+0T0ZRQ4PQFyp0s8mnMJSX/4KtdJ+CaplU3ABVFxEX5mA3Xq04xKWRf
	 EidbKv9svobjGJn03LvNx5x19jaiLuT+NUxvuN7zuZQ63krup2Jog8lpagtxX/d8dg
	 yhEfKlSXj/9LUMD7BjcE/glgXumuJIe0V/Zr9f9VtScxxmNwpwYgEiJY6YzdWZLaH7
	 iOwN/tvumnjdQ==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH 0/9] treewide, numa_memblks: remove redundant work
 during NUMA init
From: Mike Rapoport <rppt@kernel.org>
To: Sang-Heon Jeon <ekffu200098@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, 
 Andy Lutomirski <luto@kernel.org>, Borislav Petkov <bp@alien8.de>, 
 Danilo Krummrich <dakr@kernel.org>, 
 Dave Hansen <dave.hansen@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Huacai Chen <chenhuacai@kernel.org>, Ingo Molnar <mingo@redhat.com>, 
 Mike Rapoport <rppt@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>, 
 Saravana Kannan <saravanak@kernel.org>, Thomas Gleixner <tglx@kernel.org>, 
 devicetree@vger.kernel.org, driver-core@lists.linux.dev, 
 "H. Peter Anvin" <hpa@zytor.com>, Len Brown <lenb@kernel.org>, 
 linux-acpi@vger.kernel.org, linux-mm@kvack.org, loongarch@lists.linux.dev, 
 WANG Xuerui <kernel@xen0n.name>, x86@kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260628135828.1393120-1-ekffu200098@gmail.com>
References: <20260628135828.1393120-1-ekffu200098@gmail.com>
Date: Thu, 02 Jul 2026 13:39:17 +0300
Message-Id: <178298875725.1436291.12024708198343441997.b4-review@b4>
X-Mailer: b4 0.16-dev
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ekffu200098@gmail.com,m:akpm@linux-foundation.org,m:luto@kernel.org,m:bp@alien8.de,m:dakr@kernel.org,m:dave.hansen@linux.intel.com,m:gregkh@linuxfoundation.org,m:chenhuacai@kernel.org,m:mingo@redhat.com,m:rppt@kernel.org,m:peterz@infradead.org,m:rafael@kernel.org,m:robh@kernel.org,m:saravanak@kernel.org,m:tglx@kernel.org,m:devicetree@vger.kernel.org,m:driver-core@lists.linux.dev,m:hpa@zytor.com,m:lenb@kernel.org,m:linux-acpi@vger.kernel.org,m:linux-mm@kvack.org,m:loongarch@lists.linux.dev,m:kernel@xen0n.name,m:x86@kernel.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	FORGED_SENDER(0.00)[rppt@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rppt@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-319298-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 679F46F64D1

Hi,

> Every existing numa_add_memblk() caller passes a valid node id and
> separately marks that node in numa_nodes_parsed with node_set(). In
> addition, numa_nodemask_from_meminfo() recomputes the same "nodes that own
> memory" set from numa_meminfo, which numa_nodes_parsed already contains.
> 
> This redundancy implicitly depends on the callers' node_set(). So, before
> removing the redundancy, make numa_add_memblk() set the node in
> numa_nodes_parsed explicitly. Then remove the per-caller node_set() and
> numa_nodemask_from_meminfo().
> 
> Also, since the generic numa_register_meminfo() already sets
> node_possible_map to numa_nodes_parsed, remove the duplicate assignment in
> arch_numa's numa_register_nodes().
> 
> Patch 1 adds the node_set() to numa_add_memblk() itself, so every memblk's
> node is set in numa_nodes_parsed on add.
> 
> Patches 2-6 depend on patch 1 and remove the redundant per-caller node_set()
> from all callers.
> 
> Patch 7 removes both numa_nodemask_from_meminfo() call sites and the unused
> function itself.
> 
> Patch 8 removes the duplicate node_possible_map assignment in arch_numa.
> 
> Patch 9 is a minor cleanup, using the existing numa_add_reserved_memblk()
> wrapper in numa_cleanup_meminfo().
> 
> No functional change.

Looks good to me.

Can you please address the small comment for patch 1?

-- 
Sincerely yours,
Mike.


