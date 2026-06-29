Return-Path: <devicetree+bounces-317256-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hLLrISjBQmpeAgoAu9opvQ
	(envelope-from <devicetree+bounces-317256-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 21:02:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D146DE30D
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 21:01:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=HRXGnlRd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317256-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317256-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C2E6330713BE
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 18:59:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DECA2436371;
	Mon, 29 Jun 2026 18:59:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92762428822
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 18:59:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782759553; cv=none; b=p+u8yRLwXOCBetPJRbBG8HhtteiBugIcZojuAatNzm9ptmMSlmXL3T8a0M113aeyrcno66Ro/aujOETym0YbMrTnQMj5uZx7gyiK70N42PwdAYIqgRWQA+H0y7Gc8ZYRELy68UL53VeIeOu5AFIxLi3x3FipTcORPcGn2rSMWm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782759553; c=relaxed/simple;
	bh=fRyQzJ7jgG7gaqG1AJ59J89QgeONZCU6Se1a/VvLy0c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=qq7JCoKeCXHy81QxMpsCvUrXprS1wcRcaRDu9BbhKHEsl5fPtzORDHS5G7+ZMtoZCvX6q0NNhYZb+PQypqZPIlp8qNOtaZZfFgbSBmGcMsQ68LW0UymZUSWBI4VnKTiF9cAFobeDAlUz8zc7EWM5vfTBSvWtu5CFM3QgOegMcv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRXGnlRd; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94DDF1F00A3A;
	Mon, 29 Jun 2026 18:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782759552;
	bh=jMN9H/0XPByd4U7U67zB2IZ3/8gSdHukVZGb1oTQJNM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HRXGnlRdLulquxz25eJOUaibrOldfpRbPtGCocJFgTSWS/1ZATSVmfk2aWDN79qs1
	 BdIHd55cEX2rb6plTmROlxGPxY4DcDtiw4dQNNewz189RrXb1q7ZHAJ8SkaadIOqIW
	 8ac+/Sk4BmcWeAKnXWQ1C867c4vlbENRQ5wMSLnCk99HIGkQURX0pydOQww0A6aoPH
	 NpihCJyWVsH7POGexOtVAfyPK/HYMsaA0Hhs2Fzc3Eijjy52JqwreJTfwMmWPqug2V
	 ayQ74hKTrGovv3kxMCRa4cZm6USSMxyCAiGlWpH2LEaurfGbhIiKgHmbkG5MudNyMe
	 q0RhQVUGMOLpg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/2] remoteproc: add AMD BRAM-based remote processor
 driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ben Levinsky" <ben.levinsky@amd.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260629164003.3940208-3-ben.levinsky@amd.com>
References: <20260629164003.3940208-1-ben.levinsky@amd.com>
 <20260629164003.3940208-3-ben.levinsky@amd.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 18:59:11 +0000
Message-Id: <20260629185911.94DDF1F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317256-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ben.levinsky@amd.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,amd.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D4D146DE30D

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [High] Missing `.find_loaded_rsc_table` callback in `rproc_ops` breaks fi=
rmware IPC initialization.
- [Low] Undefined functions used in driver cause immediate build failure.

Pre-existing issues:
- [Critical] Integer overflow in `rproc_coredump()` leads to a massive heap=
 buffer overflow.
--

commit 114ec0b0402b4fa78538fad8bece1af5eac1df59
Author: Ben Levinsky <ben.levinsky@amd.com>

remoteproc: add AMD BRAM-based remote processor driver

Add a remoteproc driver for AMD soft-core processor subsystems using BRAM
for firmware storage. The driver parses the memory window from devicetree,
registers the carveout, and controls the processor via reset GPIO and clock.

> diff --git a/drivers/remoteproc/amd_bram_rproc.c b/drivers/remoteproc/amd=
_bram_rproc.c
> new file mode 100644
> index 0000000000000..a595875f9ce8c
> --- /dev/null
> +++ b/drivers/remoteproc/amd_bram_rproc.c
[ ... ]
> +static int amd_bram_rproc_prepare(struct rproc *rproc)
> +{
[ ... ]
> +	mem =3D rproc_mem_entry_init(priv->dev, NULL, (dma_addr_t)res.start,
> +				   resource_size(&res), da,
> +				   rproc_mem_entry_ioremap_wc,
> +				   rproc_mem_entry_iounmap,
> +				   dev_name(priv->dev));

[Severity: Low]
Are rproc_mem_entry_ioremap_wc and rproc_mem_entry_iounmap defined anywhere
in the kernel tree? It appears these functions are missing, which would cau=
se
the driver to fail to compile and link.

> +	if (!mem)
> +		return -ENOMEM;
> +
> +	rproc_add_carveout(rproc, mem);
> +	rproc_coredump_add_segment(rproc, da, resource_size(&res));

[Severity: Critical]
This is a pre-existing issue, but does adding an unbounded coredump segment
size here risk an integer overflow in the remoteproc core?

In drivers/remoteproc/remoteproc_coredump.c:rproc_coredump(), segment sizes
are accumulated into data_size without overflow checks:

        if (dump_conf =3D=3D RPROC_COREDUMP_ENABLED)
                data_size +=3D segment->size;

If a massive size (approaching U32_MAX on 32-bit systems) is provided from
the devicetree reg property, this could wrap around, leading to a much
smaller vmalloc allocation. Later, rproc_copy_segment() is called with the
original massive size, writing blindly into the undersized heap buffer.

> +
> +	return 0;
> +}
[ ... ]
> +static int amd_bram_rproc_parse_fw(struct rproc *rproc,
> +				   const struct firmware *fw)
> +{
> +	rproc_elf_load_rsc_table_optional(rproc, fw, dev_dbg,
> +					  "no resource table found\n");

[Severity: Low]
Is rproc_elf_load_rsc_table_optional defined anywhere? Similar to the
allocator callbacks above, this function appears to be missing from the tre=
e.

> +	return 0;
> +}
> +
> +static const struct rproc_ops amd_bram_rproc_ops =3D {
> +	.prepare	=3D amd_bram_rproc_prepare,
> +	.start		=3D amd_bram_rproc_start,
> +	.stop		=3D amd_bram_rproc_stop,
> +	.load		=3D rproc_elf_load_segments,
> +	.sanity_check	=3D rproc_elf_sanity_check,
> +	.get_boot_addr	=3D rproc_elf_get_boot_addr,
> +	.parse_fw	=3D amd_bram_rproc_parse_fw,
> +};

[Severity: High]
Will firmware IPC initialize correctly without a .find_loaded_rsc_table
callback?

When the core loads a firmware with a resource table, rproc_fw_boot() calls
rproc_find_loaded_rsc_table(). Since .find_loaded_rsc_table is omitted here,
it returns NULL. This causes the core to silently skip copying the updated
rproc->cached_table to the device's loaded table in memory, leaving the
firmware to use uninitialized or FW_RSC_ADDR_ANY addresses for
communication.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629164003.3940=
208-1-ben.levinsky@amd.com?part=3D2

