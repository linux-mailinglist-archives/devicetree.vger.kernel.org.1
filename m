Return-Path: <devicetree+bounces-300522-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Ko9Ff2UDWpczwUAu9opvQ
	(envelope-from <devicetree+bounces-300522-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 13:03:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6D658C10B
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 13:03:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5926C301586C
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 11:03:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 605B13A380A;
	Wed, 20 May 2026 11:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtxEl3Jg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E88A3D6465
	for <devicetree@vger.kernel.org>; Wed, 20 May 2026 11:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779275003; cv=none; b=Nxdaq/kCZNAn9OKkrF3KZrCAAkC3QnCV8K7w0G/tz7hwhVSSkb7lFjUigwqJXVZadgK3gYAVqtAe+T4OospFkYbeezzoYBiW2yDSpRvkQ/BRfF8J+fswmaPwigMYmcX7fyKEjSTkl3VKmksIL6YM8vck4ukUjPbRWjeduvr8owk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779275003; c=relaxed/simple;
	bh=p33Er+C7ONvJ0cc9dj/Bpyiwp3Uvj1H7b3eF1V6NcGw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=BhNnwQMdEwIu/BJU5d4F2eWMEBOkW/rH82R0dolHALlN81KjKSmW7lN+6yr1LvwSz8Z9VISPFnGDRLlZcUEbHW6hDNTEadRRLMGAvhRp6gDo17rZH3V4De+UYG7gRniA99B4dkDNnKpylCjljDOPyLdNQkUtoojtH1Bp4Woc7Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtxEl3Jg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A23C1F000E9;
	Wed, 20 May 2026 11:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779275001;
	bh=fZ/a5PTW+5yC65ZRpUwYTSwsgSCoMwnlvSLINVpq9C4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=DtxEl3Jgghm/Fxt0eXJEwLsemgKYsl3YBk8B7U7AKqvUWklaoZYHzhc4YYFVTLpDG
	 xcks+tfwXaL1UyyL3yugKifOS0mRWlOZNqMwDbY3IMngRXOxJAnK84VrWiopIIE3i4
	 RmsE8QaQCjhA1rHw6cHuA8KEPb7JrMAqjhKJ6q9bnG0cF+yoc8SFsQq0i4USpWpvcT
	 0bAVKAM4EQJYsxtvJR1vhEsxIBgeNNYz0DAN4RWhBiv70ge8UDQen5ha3f9AsrUYaY
	 Bwo/zu7QM9uiNGQjviRvkPPZUd7uzfkne6k8U4hZFHTmge1QzXT3lKZ9WawfpP/ELw
	 +5FsNEhVr51VQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 5/8] of: reserved_mem: add kdump helpers to exclude
 non-dumpable regions
Reply-To: sashiko-reviews@lists.linux.dev
To: "Wandun Chen" <chenwandun1@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260520091844.592753-6-chenwandun@lixiang.com>
References: <20260520091844.592753-6-chenwandun@lixiang.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 May 2026 11:03:20 +0000
Message-Id: <20260520110321.2A23C1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
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
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-300522-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: EB6D658C10B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Use-After-Free when accessing `reserved_mem` during kexec load on =
systems with `/memreserve/` but no `/reserved-memory` node.
--

commit f3d66a3fdb2eb02781d662efcbf6e92d5a51228e
Author: Wandun Chen <chenwandun1@gmail.com>

of: reserved_mem: add kdump helpers to exclude non-dumpable regions

This commit adds two helpers to exclude non-dumpable reserved memory
regions during kdump. These helpers calculate the number of excluded
ranges and perform the actual exclusion by iterating over the
reserved_mem array.

> diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
> --- a/drivers/of/of_reserved_mem.c
> +++ b/drivers/of/of_reserved_mem.c

[ ... ]

> +/* Exclude non-dumpable reserved regions from @cmem. */
> +int of_reserved_mem_kdump_exclude(struct crash_mem *cmem)
> +{
> +	unsigned int i;
> +	int ret;
> +
> +	for (i =3D 0; i < reserved_mem_count; i++) {
> +		struct reserved_mem *r =3D &reserved_mem[i];

[Severity: High]
Can accessing reserved_mem here cause a use-after-free on systems that have
/memreserve/ entries but no /reserved-memory node?

The global pointer reserved_mem initially points to reserved_mem_array,
which is marked with __initdata. During early boot, if there is no
/reserved-memory node, fdt_scan_reserved_mem_late() returns early without
dynamically allocating a permanent array.

However, fdt_reserved_mem_save_memreserve_entries() unconditionally
populates /memreserve/ entries into this __initdata array and increments
reserved_mem_count.

After boot completes, the __initdata section is freed.

When a kexec image is later loaded, won't these helpers iterate over
reserved_mem_count and read fields like size, dumpable, and base from
the freed init memory?

> +
> +		if (!r->size || r->dumpable)
> +			continue;
> +		ret =3D crash_exclude_mem_range(cmem, r->base,
> +					      r->base + r->size - 1);
> +		if (ret)
> +			return ret;
> +	}
> +	return 0;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260520091844.5927=
53-1-chenwandun@lixiang.com?part=3D5

