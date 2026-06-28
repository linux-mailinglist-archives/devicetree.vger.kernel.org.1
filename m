Return-Path: <devicetree+bounces-316572-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id z1ZjFtiRQWr7sAkAu9opvQ
	(envelope-from <devicetree+bounces-316572-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 23:27:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D2B6D5006
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 23:27:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="X/IgHEmf";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316572-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316572-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 760F2300B87F
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 21:27:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAAA8378D7B;
	Sun, 28 Jun 2026 21:27:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB45A800;
	Sun, 28 Jun 2026 21:27:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782682065; cv=none; b=a+r+C/46w8Fttc6tHS3F5QRTqyhB0UG5pMO6FVjhQj/cTopaoFtraFb6FPIGC5fiCcsvoK3zWp72EpYRNoa8ujatrukpyqzQjXPPwNgchMfm3yrykra9ll6S9Xu8JDzp51CoKqvGS6dgZw3yi2livr04e5zEp71icgEjFr4HkEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782682065; c=relaxed/simple;
	bh=ea4dVpezw/EbJhxV8uNz4U0rkQjeKs7ZqYUIWXA+CWg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jFEbb9jg4799NPOjk6pbPx+72Xh4h2y+WeyUXrwd777+/tRYM+aWdZVA/feEf5/EkvKOzFFFlzsIAyyIfrleqEfugHbugfxlwKG9wVquPfQR9hinJk/swngCV4zOzBGp6bJalhDdUbdCcdmKa1KXhiTSUuISNCByIEQzRdu0DMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/IgHEmf; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AD731F000E9;
	Sun, 28 Jun 2026 21:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782682064;
	bh=fJjer/LANUC2XilTj8XXLUPwp+ksw00Opp0yEV6FzSk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=X/IgHEmf3j1aDMZs+8FhWrvXXCGlJNBGmSdIdpWAWV8tONEIKdXzv5r2hLaKGDZJJ
	 hqGjZGAAg/EdtAKBYHAD43cI1Xv4+n/7dZ5y/Ldp2M9c5138PvnyVv3BP/xgiTSXIY
	 W2Ygnn/oh0xcjrqx+OSJBMBSIBbavQrtNs8doyJSsr8mPXwZno+eWAzE1O3YOmIt9w
	 qL09uzA/4nY3p2hWqPLuZTU5ZCBk4wiw6MhMnWP4+alAY2o0MBJQjURjW917yKs5T+
	 XpSndCxiAhDf8mdIOTOSq902hpRA+NsbmSMK2pF/5nu4mH3oyNZFgPkFcBkrMqIi9X
	 /fwXHdHv3+UUA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 8/8] riscv_cbqri: Add CBQRI capacity allocation
 platform driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Drew Fustini" <fustini@kernel.org>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rt-devel@lists.linux.dev
In-Reply-To: <20260628-dfustini-atl-sc-cbqri-dt-v3-8-c9c1342fe3cf@kernel.org>
References: <20260628-dfustini-atl-sc-cbqri-dt-v3-0-c9c1342fe3cf@kernel.org>
 <20260628-dfustini-atl-sc-cbqri-dt-v3-8-c9c1342fe3cf@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 28 Jun 2026 21:27:43 +0000
Message-Id: <20260628212744.1AD731F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-316572-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:fustini@kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rt-devel@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A7D2B6D5006

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] cbqri_capacity_probe() incorrectly uses get_cpu_cacheinfo_level(=
) to find the cacheinfo, which will fail for split caches (e.g., L1I/L1D).
--

commit 1a6b06fa1768e5d101b318b8e5167a959fc10696
Author: Drew Fustini <fustini@kernel.org>

riscv_cbqri: Add CBQRI capacity allocation platform driver

This commit adds a device-tree platform driver for the RISC-V CBQRI capacity
controller. It reads the cache level from the device tree and matches it
against the system's cacheinfo to get the resctrl domain ID and shared hart=
s.

> diff --git a/drivers/resctrl/cbqri_capacity.c b/drivers/resctrl/cbqri_cap=
acity.c
> new file mode 100644
> index 0000000000000..2172432eb3287
> --- /dev/null
> +++ b/drivers/resctrl/cbqri_capacity.c
[ ... ]
> +static int cbqri_capacity_probe(struct platform_device *pdev)
> +{
[ ... ]
> +	/*
> +	 * Associate the controller with its cache instance via
> +	 * cacheinfo. The matching cache provides the cache id and the
> +	 * set of harts that share the cache.
> +	 */
> +	cache_id =3D -1;
> +	cpus_read_lock();
> +	for_each_online_cpu(cpu) {
> +		struct cacheinfo *ci =3D get_cpu_cacheinfo_level(cpu, cache_level);

[Severity: Medium]
Could this fail to match split caches, like an L1 data cache?

The get_cpu_cacheinfo_level() function unconditionally returns the first
cacheinfo leaf it finds at the requested level and stops searching. If the
given level has multiple leaves (for example, L1 instruction and L1 data),
and the device tree node refers to the second leaf, this loop will miss it.
This would cause the fw_token check to fail and the probe to return -ENODEV.

> +
> +		if (ci && ci->fw_token =3D=3D cache_np) {
> +			cache_id =3D ci->id;
> +			cpumask_copy(cpu_mask, &ci->shared_cpu_map);
> +			break;
> +		}
> +	}
> +	cpus_read_unlock();

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260628-dfustini-a=
tl-sc-cbqri-dt-v3-0-c9c1342fe3cf@kernel.org?part=3D8

