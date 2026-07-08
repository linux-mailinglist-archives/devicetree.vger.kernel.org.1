Return-Path: <devicetree+bounces-322581-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8lWcBwz+TWpZBQIAu9opvQ
	(envelope-from <devicetree+bounces-322581-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 09:36:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 797D9722B27
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 09:36:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=F+vAL2BR;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322581-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322581-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A7E9C30B4FE4
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 07:27:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ACC13EFFC3;
	Wed,  8 Jul 2026 07:27:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF373EA969
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 07:27:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783495644; cv=none; b=pbY2IammMa/UWnpacCT0Er7vbSwnlHW/ZzkTk9ffTiwsljXEHSUMlkec84NR08gXEhTuPc7lo/V/Uy3dWy8t1T45pmC93DVvnc/E/UBzFCDV++WEbV+YRGby/m30KJLq2YFNIbJjgOmIoymtC/Gv0bW90/+5sZhJJPabJxLkO8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783495644; c=relaxed/simple;
	bh=X+4ldqXjzT15XMm4SHOpHg9Pyu9wpCO6oUuJisIstrk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=h3wRNK8rLKd5j6pRx24G6rOoWu/e/JsJTi1cYzzgg/mcYlvjlOW94DG4Xtue+8jSNqoVKi8YkKWkP3iXsPD26AHJUfR4LNyGk12tz22q0Cw13wjYgD0RoFzW8BUy4GCldrZRVPslHZ6Unqp+UdZDWO99Ja0znzm6dXTbVIy4iso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+vAL2BR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DB4A1F00A3A;
	Wed,  8 Jul 2026 07:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783495632;
	bh=YZowCmXQ2dexLBD2nkq2ebYxTcgjFSdmUUG4FVajOXE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=F+vAL2BRe4hOfC8YO9xvlcreGeFwcm5xq8J7UGEHA+zJTasEdALal4B1JJbEv2Q0B
	 CcwX/72xwoy1y57qpafqJR06u9GxxChymUrxqQPhTfuuHOqTLt1iCvVNxO+LskStEv
	 ehP+gN11S//9heG1hx8M38lPlgXkTSuwTU/W3z7ZRxxV4c6LHmV4DfxLyFxOKykY8a
	 Kaofw84YgMZ4L79Dj7rpi8rRiP+Nmz5UPxJ+8dWc8mwEQDZaMoYRU9c0IJvfLfUkr/
	 ewYXrhYp3ZhBVnpYxmTqUaMfMiVfRTKSm++jW3Vud7Wlvjw24SPKjLDx86Q0DcKXHw
	 ljbDt5UdgY2Bg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 20/26] mm/sparse: Register information into
 meminspect
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mukesh Ojha" <mukesh.ojha@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260708-meminspect-v3-v3-20-7aa5a0a74d5c@oss.qualcomm.com>
References: <20260708-meminspect-v3-v3-0-7aa5a0a74d5c@oss.qualcomm.com>
 <20260708-meminspect-v3-v3-20-7aa5a0a74d5c@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 07:27:12 +0000
Message-Id: <20260708072712.7DB4A1F00A3A@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322581-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:mukesh.ojha@oss.qualcomm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 797D9722B27

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Missing meminspect registration for dynamically allocated mem_sect=
ion leaf arrays in CONFIG_SPARSEMEM_EXTREME.
--

--- Patch [20]: [PATCH v3 20/26] mm/sparse: Register information into memin=
spect ---
commit 0ac9689f8cff74569f53973955e06ebec50e2b81
Author: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>

mm/sparse: Register information into meminspect

Annotate vital static, dynamic information into meminspect for
debugging:
 - mem_section (static)
 - section (dynamic)

meminspect uses a different API to annotate variables for inspection,
and information about these variables is stored in the inspection table.

> diff --git a/mm/sparse.c b/mm/sparse.c
> index 058ef93003672..9e890fb6c43e1 100644
> --- a/mm/sparse.c
> +++ b/mm/sparse.c
[ ... ]
> @@ -206,6 +208,7 @@ static void __init memblocks_present(void)
>  	size =3D sizeof(struct mem_section *) * NR_SECTION_ROOTS;
>  	align =3D 1 << (INTERNODE_CACHE_SHIFT);
>  	mem_section =3D memblock_alloc_or_panic(size, align);
> +	meminspect_lock_register_va(mem_section, size);
>  #endif

[Severity: High]
The commit message mentions annotating "section (dynamic)", but this patch
only registers the root array mem_section. Should the dynamically allocated
leaf arrays in sparse_index_alloc() also be registered?

When CONFIG_SPARSEMEM_EXTREME is enabled, sparse_index_alloc() allocates
these leaf arrays:

mm/sparse.c:sparse_index_alloc() {
    ...
	if (slab_is_available()) {
		section =3D kzalloc_node(array_size, GFP_KERNEL, nid);
	} else {
		section =3D memblock_alloc_node(array_size, SMP_CACHE_BYTES,
					      nid);
		if (!section)
			panic("%s: Failed to allocate %lu bytes nid=3D%d\n",
			      __func__, array_size, nid);
	}
    ...
}

Without registering these leaf arrays, won't debug dumps relying on
meminspect miss the memory section data? This could prevent crash tools
from successfully mapping PFNs to struct page.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-meminspect=
-v3-v3-0-7aa5a0a74d5c@oss.qualcomm.com?part=3D20

