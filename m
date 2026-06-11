Return-Path: <devicetree+bounces-310060-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id J+wlFQUZKmrwigMAu9opvQ
	(envelope-from <devicetree+bounces-310060-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 04:10:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD7C66DC0F
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 04:10:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=F2R8c6pn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310060-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310060-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8518D30C57AD
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 02:09:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F3AC259CB9;
	Thu, 11 Jun 2026 02:09:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD12B1E7C2E
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 02:09:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781143790; cv=none; b=tMDMhPojY2lqYZbyhqpEQpY3PA0FNAUHDSt/3cbyOoWEf1iqGZ6UoADZ/8qoUgTFW5Eo/lC8f9a1CuDNObz2XtTa9Hii3uiJOoF2AzFETchu4/YeH37Pt+QqZd2n5j1NhvyGFMg+b/iT8lt7te0B5sGfKu84Qy9+Mgv/SFmnFAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781143790; c=relaxed/simple;
	bh=7IoqrrsIUXvxJNgaFncXuFymv5csPW4jbxzDZ4eJZ3I=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=FL0dK1g8t5vCdA2OD0TUQNp0f+rhMI5G5i7f/HiLgtJXfMO2kDp2ofyhtu6Hw/f8ELMOi69HarWFzjIAdckKVcISaFe4CV8BKVTMHcu4B/OjYXJyUCbsRIun8M/E2uCi4PCnvXNitCiYw05Xb4GVFJRomZUPU6btHnZuCNuRCXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=F2R8c6pn; arc=none smtp.client-ip=209.85.214.195
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-2c31212104cso145585ad.2
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 19:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781143789; x=1781748589; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rrKKxjQkCCq7BO+0b9GvAXj1oVgaGXMfePrho45byEA=;
        b=F2R8c6pnxOeRZ3PNmGTvOfpL3xUzEnPlHJPsfvYcVwqsO0XVLBrLqVM4s/XYsS/eLv
         Ss+v99BA4rNrZkGaJFLSBicgTXvvcD1M2j6eyYtdCKP0g5ToKZArDwjc++m0YLrkvp7w
         zK1T5LbeiMySlOt/sxt9RrfOtiJH1iIttPuOdanXJlNUtLjcx7B3vd9hX/sqr5JSuueR
         FbFXBKubqYeQINV/heipk725mkylmZXxu2Vu5K5b7h/L3uHfitwcmtR+QwfGbdHR5Pk8
         MoBMNpwtrVYGWMqX4q3xi3rpsK1nsx+XPdg6oNSMx4yR8ZkfjDmQzGthZ2G8y+baxeR9
         q+dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781143789; x=1781748589;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rrKKxjQkCCq7BO+0b9GvAXj1oVgaGXMfePrho45byEA=;
        b=XvgCglM/770Ocr/OgIf8aO9kc2+U485fWOnaHwNjOLNjIlyWinZH8/TclQ6r+hiwEj
         +3T7mFasRsL+gG+p65tR6DTzuwik3MAFiFYEmwG8o8OJ4Sh34NBuYcKgRd+8Bgy/tAv+
         v9KqNQpNZiUhs7hLXxSWfqs5gXK+PzzvKv/q6hBWm9wS8DTC1pl2ny4j3X2ItxJnimps
         roYrCr4yRtYOnsk29ATS9WyTo2CpYTYXEj/QNpYyuAsMVuO9zvJEPn5sSGVhzyKVctAp
         ddfmfCEVRsx8fJO/AKsx+BqOvAtFN0dQ30crJhPYh68EMdk/ZogjHOwrd9Im7SNhxLW7
         ZbGA==
X-Forwarded-Encrypted: i=1; AFNElJ8VRn8iRre9gBkOr/brakverRKPxEpw46PasrnqBLu7PYNh1zKVVeTJHfQa3lh+Hva/Pwwou/ndEtz5@vger.kernel.org
X-Gm-Message-State: AOJu0YxwS9OHd/jJrq6A2GiRo7I5hxgzkI6VA1YoHZzJnqm5oXOCCIyn
	A7QqoN+gOEhRUtPyGjurfvt7Qf/9c4QbH1AImk7TvE44WzjIZPzj9SC7
X-Gm-Gg: Acq92OHOC846cA5fUqMUAgJXwpaIiMg9eooa6dc4JQr0I6Q2PNiwT7UUI7eVhA81kn0
	XyaZkWOhPQ4qp/ufX1GmgLFnyAF3trRUkjBObuh8vvIZqdbJm5gEDpg+kyavuQ0cWn7cY0P2vtW
	vRfe45eV/uiSKeJM03eGkIeClDdf5H5B76lJNoRorGADE4PqZPwDTcacZnmimWDUGJ3VGkGlpbK
	vgus8kn2TEDzydrSZH+U/yVDnIuLYdzF7FWl8tTEyLZH46qQjEPwKvnvmgF062jx/YT1In5F4hk
	yJiOZt2WoI8Se09Z02CjKTTFTkelh+fUfqk9k0jCeNDMWsGHtd/z4ZKAzBzPDfDKda4z/1goygM
	HSWUO+aSR7LQwBvyOP4nHNRS6gOQq70h4/MMLDLm57ObGr/vSQ720PV3fNuTBEbgjBfbi5Y5zOd
	B5YhoHZHXXWK/pKdCnYIk2mtNHk1Mkhk3p4c6uuzem7A==
X-Received: by 2002:a17:903:acd:b0:2c1:f29a:b554 with SMTP id d9443c01a7336-2c2f21a11f5mr7037195ad.21.1781143789049;
        Wed, 10 Jun 2026 19:09:49 -0700 (PDT)
Received: from [10.125.112.20] ([210.184.73.204])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164fa404fsm256644005ad.37.2026.06.10.19.09.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jun 2026 19:09:48 -0700 (PDT)
Message-ID: <7ed207fa-4c86-426a-8570-495902ce04c3@gmail.com>
Date: Thu, 11 Jun 2026 10:09:37 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 00/11] kdump: reduce vmcore size and capture time
From: Wandun <chenwandun1@gmail.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 loongarch@lists.linux.dev, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, kexec@lists.infradead.org,
 iommu@lists.linux.dev, zhaomeijing@lixiang.com, Rob Herring
 <robh@kernel.org>, saravanak@kernel.org, bhe@redhat.com, rppt@kernel.org,
 pjw@kernel.org, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 chenhuacai@kernel.org, kernel@xen0n.name
Cc: catalin.marinas@arm.com, will@kernel.org, alex@ghiti.fr,
 akpm@linux-foundation.org, pasha.tatashin@soleen.com, pratyush@kernel.org,
 ruirui.yang@linux.dev, m.szyprowski@samsung.com, robin.murphy@arm.com
References: <20260527032917.3385849-1-chenwandun1@gmail.com>
Content-Language: en-US
In-Reply-To: <20260527032917.3385849-1-chenwandun1@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310060-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:loongarch@lists.linux.dev,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,m:kexec@lists.infradead.org,m:iommu@lists.linux.dev,m:zhaomeijing@lixiang.com,m:robh@kernel.org,m:saravanak@kernel.org,m:bhe@redhat.com,m:rppt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:chenhuacai@kernel.org,m:kernel@xen0n.name,m:catalin.marinas@arm.com,m:will@kernel.org,m:alex@ghiti.fr,m:akpm@linux-foundation.org,m:pasha.tatashin@soleen.com,m:pratyush@kernel.org,m:ruirui.yang@linux.dev,m:m.szyprowski@samsung.com,m:robin.murphy@arm.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[chenwandun1@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chenwandun1@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AAD7C66DC0F



On 5/27/26 11:29, Wandun Chen wrote:
> From: Wandun Chen <chenwandun@lixiang.com>
>
> On SoCs that carve out large firmware-owned reserved memory (GPU
> firmware, DSP, modem, camera ISP, NPU, ...), kdump currently dumps
> those carveouts as part of system RAM even though their contents are
> firmware state that is not useful for kernel crash analysis.
>
> This series introduces an opt-in 'dumpable' flag [1] on struct
> reserved_mem and uses it to filter the elfcorehdr PT_LOAD ranges on
> DT-based architectures (arm64, riscv, loongarch). By default reserved
> regions are treated as non-dumpable; CMA regions are explicitly opted
> in because their pages are returned to the buddy allocator and may
> carry key crash-analysis data.
>
> The series is organized as follows:
> Patches 1-3: Pre-existing fixes and a small prep change.
> Patches 4-5: Restructure to allow appending /memreserve/ entries.
> Patches 6-7: Add a dumpable flag and append /memreserve/ entries.
> Patch 8: Add generic kdump helpers.
> Patches 9-11: Wire the helpers into arm64, riscv and loongarch kdump
>                elfcorehdr preparation.
Hi,

Gentle ping on this series.

Status summary:
-patch 03: respun separately per Rob's suggestion, picked up for 7.2
-patch 06: Acked-by: Marek Szyprowski -patch 09: Acked-by: Will Deacon 
The remaining patches (01, 02, 04, 05, 07, 08, 10, 11) are still 
awaiting review. your feedback would be greately appreciated. I know we 
are at the end of 7.1 -rc cycle, I don't want to rush this series, just 
collecting more feedback, and will send next version based on 7.2-rc1. 
If spliting the series into smaller logical group would make review 
easier, please let me know. Best regards, Wandun
>
> v2 --> v3:
> 1. Fix out-of-bounds issue if device tree lacks /reserved-memory node.[2]
> 2. Fix UAF issue when alloc_reserved_mem_array() fails.
> 3. Add some prepare patches.
>
> v1 --> v2:
> 1. v1 added an opt-out DT property ('linux,no-dump'). Per Rob's
>     feedback [1], v2 drop that property and exclude reserve memory
>     by default.
> 2. Split some prepared patches from the original patches.
> 3. Address coding-style comments on patch 5 from Rob.
>
> [1] https://lore.kernel.org/lkml/20260506144542.GA2072596-robh@kernel.org/
> [2] https://sashiko.dev/#/patchset/20260520091844.592753-1-chenwandun%40lixiang.com?part=4
>
> Wandun Chen (11):
>    of: reserved_mem: handle NULL name in of_reserved_mem_lookup()
>    kexec/crash: provide crash_exclude_mem_range() stub when
>      CONFIG_CRASH_DUMP=n
>    of: reserved_mem: avoid post-init UAF when alloc_reserved_mem_array()
>      fails
>    of: reserved_mem: zero total_reserved_mem_cnt if no valid
>      /reserved-memory entry
>    of: reserved_mem: split alloc_reserved_mem_array() from
>      fdt_scan_reserved_mem_late()
>    of: reserved_mem: add dumpable flag to opt-in vmcore
>    of: reserved_mem: save /memreserve/ entries into the reserved_mem
>      array
>    of: reserved_mem: add kdump helpers to exclude non-dumpable regions
>    arm64: kdump: exclude non-dumpable reserved memory regions from vmcore
>    riscv: kdump: exclude non-dumpable reserved memory regions from vmcore
>    loongarch: kdump: exclude non-dumpable reserved memory regions from
>      vmcore
>
>   arch/arm64/kernel/machine_kexec_file.c     |   6 ++
>   arch/loongarch/kernel/machine_kexec_file.c |   6 ++
>   arch/riscv/kernel/machine_kexec_file.c     |   4 +
>   drivers/of/fdt.c                           |  11 +-
>   drivers/of/of_private.h                    |   3 +
>   drivers/of/of_reserved_mem.c               | 117 +++++++++++++++++++--
>   include/linux/crash_core.h                 |   6 ++
>   include/linux/of_reserved_mem.h            |  15 +++
>   kernel/dma/contiguous.c                    |   1 +
>   9 files changed, 157 insertions(+), 12 deletions(-)
>


