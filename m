Return-Path: <devicetree+bounces-295987-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLfTIESrAmqkvQEAu9opvQ
	(envelope-from <devicetree+bounces-295987-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 06:23:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4B25198E8
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 06:23:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5D42C3024183
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 04:23:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C5BE309F09;
	Tue, 12 May 2026 04:23:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soAv6Lii"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF772D9EE4
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 04:23:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778559799; cv=none; b=IAYz6lnQ3BciKrxXybIit38fXCpU6EOVfPS2AG7qTz065fOsCt9U7nNXENQpRA2nb9luc1TMhH9JW557f2dZhQxNdwZ6tkvkHhhvb6BquurR/g+pJHZbhJ4hyZ7nRBgrucnLFmks6kxsWh0GRpSPQocS/cUvBy+0dbPzvvlRyUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778559799; c=relaxed/simple;
	bh=4j+pTSc3MORiwDJRrazf9I2eVZj2MhC7iRrFTZzTjFM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Y6aY7RMV0eDLOSaXBA184cOOvkYaAN0OPzIY7PCYVZoaI/YAHY7LJ++UvxM6chZTLOO07OgntMwGzqP8bpIGeXjcKRp6Z06WHAhINbh1Z+IX5MHryx3QHo5wM9hd9gl5WUYDuYg19P5EBt9O5SmhFTISGxPF1a9nF+CaS4MIO9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=soAv6Lii; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0660C2BCB0;
	Tue, 12 May 2026 04:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778559799;
	bh=4j+pTSc3MORiwDJRrazf9I2eVZj2MhC7iRrFTZzTjFM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=soAv6LiiHj5Yb8y/O0K815C32Ynjxw0vwUwgasmyWgrbnFmiYuXnz5Kps1Mkiz7xg
	 C254EAwmC3NJvhASJnIjhWt4ZYfnQFcxt9PJ8/LbRpkdAv2ApNEBilajv0Vid/gqaY
	 AShmM0dT2TpG7f13P53bCw4gYPxglKl2IX/+A+W5MCUAz5gTo/IjBjUGit8vgq4Gs+
	 ZVc3LeaYtKp9Kn7K1FyYydb44W4q9bF+fVwuuk/V4dMXfHtJgC92v5EmP3zbPbAboJ
	 mEB0McCRNXqAQNrFHsLdTMtKqLD5Eiy3HOy1mHTD1/3YBczWKHjKdL4n7dvGrpQ2ic
	 nDIjYhh+OgdoQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 08/15] crash: Add crash_prepare_headers() to exclude
 crash kernel memory
Reply-To: sashiko@lists.linux.dev
To: "Jinjie Ruan" <ruanjinjie@huawei.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260511030454.1730881-9-ruanjinjie@huawei.com>
References: <20260511030454.1730881-9-ruanjinjie@huawei.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 May 2026 04:23:18 +0000
Message-Id: <20260512042318.C0660C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: EE4B25198E8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295987-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Calling `get_online_mems()` inside `crash_prepare_headers()` creat=
es an AA self-deadlock when executed from the memory hotplug notifier path.
--

commit 40b18d3ef2c2d34f758c8077fa6b20ad0d951107
Author: Jinjie Ruan <ruanjinjie@huawei.com>

crash: Add crash_prepare_headers() to exclude crash kernel memory

This commit introduces a common crash_prepare_headers() helper to consolida=
te
crash memory allocation and exclusion logic across architectures. It adds
three new architecture-specific functions to gather memory ranges and builds
the ELF core headers for the crash kernel.

> diff --git a/kernel/crash_core.c b/kernel/crash_core.c
> index 2c1a3791e4101..c50c25937d7d4 100644
> --- a/kernel/crash_core.c
> +++ b/kernel/crash_core.c

[ ... ]

> +int crash_prepare_headers(int need_kernel_map, void **addr, unsigned lon=
g *sz,
> +			  unsigned long *nr_mem_ranges)
> +{
> +	unsigned int max_nr_ranges;
> +	struct crash_mem *cmem;
> +	int ret;
> +
> +	get_online_mems();

Could this cause an AA self-deadlock when crash_prepare_headers() is used
by arch_crash_handle_hotplug_event() to handle memory hotplug events?

When memory is hotplugged, online_pages() or offline_pages() trigger the
memory_notify() chain. online_pages() is invoked with the mem_hotplug_lock
already held for write via mem_hotplug_begin() (which maps to
percpu_down_write(&mem_hotplug_lock)).

If the hotplug notifier invokes the crash handler to update the ELF headers,
the current thread attempts to acquire the same lock for read here in
get_online_mems().

Since the Linux percpu_rw_semaphore does not support recursive read-lock
acquisition by the active writer, will the thread fail the trylock and sleep
indefinitely in percpu_rwsem_wait(), causing a deadlock?

> +	max_nr_ranges =3D arch_get_system_nr_ranges();
> +	if (!max_nr_ranges) {
> +		put_online_mems();
> +		return -ENOMEM;
> +	}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511030454.1730=
881-1-ruanjinjie@huawei.com?part=3D8

