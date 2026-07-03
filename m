Return-Path: <devicetree+bounces-320210-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id N3D2JQvNR2oPfgAAu9opvQ
	(envelope-from <devicetree+bounces-320210-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 16:54:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CD6703A04
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 16:54:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JsgUdde7;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320210-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320210-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 435163013241
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 14:46:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79CED3F4824;
	Fri,  3 Jul 2026 14:46:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5030D3C5848
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 14:46:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783089979; cv=none; b=UD+hNrvb/Q3pAli28pEcWt95YxcQrQAmn8EMDmOEkrdS8r1+za6I8YpiCIdx0PVflzsn7LyXHskFaZ1a5cL8MKKu4aiVZRw3ODzXtx7Q5s/hhUhhQSXHp7q7RIGDhQbs4Dp09YrD4BIbnYq7ubwMcgnsUQB8s4UxBP+wLKR0fVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783089979; c=relaxed/simple;
	bh=AHbv1dtS+uemsUJu2UAz5W4VIWgnQX6tpPF7lWBMpBw=;
	h=From:Subject:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=sIOBmsmyl+J6bmyZ02wFMeCfYgrIlZId/ewSMLoSNP4O5vmgkrVGwOum4QmhRsWBmrBdaxePALrg1OYhx+mrDA0m8f7QxNdX4yyjxzjZ2VYrYBo6Vlya5mzJciy61JjHqTbOrDBPwR+TXZ06WH+7GpXD5/UomSSiF4Y8OIxk/4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsgUdde7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C92301F000E9;
	Fri,  3 Jul 2026 14:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783089978;
	bh=wdIK7ZddaF4exEX6+oxszYhVHl+uJLlAT1u97bw+rYc=;
	h=From:Subject:Reply-To:Cc:In-Reply-To:References:Date;
	b=JsgUdde7Vi2XEJdcn7EyZvwkuVHHotb1cqFu9PE5wuByxD3eu9dyvr9VBqPwhVhPj
	 iwltM6PNwDik+MIhsYPAmpYcNLGlTduQgZRdpJQw4vXHfsmj2/Ld0CPCln6AlnVh49
	 NP7doS5GsM6HqbOAdsF7njCa1wdRW8WbtXdjrfYpBlIklaFo9STva5naU5bCmTUBwC
	 SRsW7uIG6U1GUc2oJAUH/JzeTICPMom0XTrXJyOJtx8AimHJo3jZL51WUBDbEkLrEs
	 46yOwjAVMcqb9F1nZJA+N6i9981VXr64xq6qY+yMA7Ae+EaCMLed+dbrKMu0m7vVYL
	 9viPs18TCcFJw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/6] dt-bindings: remoteproc: k3-r5f: Add Jacinto LPM
 memory region
Reply-To: sashiko-reviews@lists.linux.dev
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260703143717.177362-2-richard.genoud@bootlin.com>
References: <20260703143717.177362-1-richard.genoud@bootlin.com>
 <20260703143717.177362-2-richard.genoud@bootlin.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 14:46:17 +0000
Message-Id: <20260703144617.C92301F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	MISSING_TO(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320210-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,smtp.kernel.org:mid,bootlin.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E6CD6703A04

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Mapping the firewalled `lpm-metadata` region risks speculative acc=
ess crashes (SError) in Linux.
--

commit 592574f765038d968e34daf0cc1a09b19f1b5e05
Author: Richard Genoud (TI) <richard.genoud@bootlin.com>

dt-bindings: remoteproc: k3-r5f: Add Jacinto LPM memory region

This commit defines a new carveout memory region layout for Jacinto devices
to store LPM metadata. It introduces the lpm-metadata reserved memory node
to save and restore ATF and OPTEE contexts during suspend and resume.

Link: https://software-dl.ti.com/tisci/esd/latest/2_tisci_msgs/pm/lpm.html#=
lpm-msg-lpm-save-addr

> diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc=
.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
> index 775e9b3a19387..fd6e087997e4f 100644
> --- a/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
> +++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml

[ ... ]

> @@ -174,6 +175,12 @@ patternProperties:
>                - description: LPM metadata
>                - description: LPM FS context data and reserved sections
>                - description: DM RM/PM trace and firmware code/data
> +          - description: Jacinto layout
> +            items:
> +              - description: region used for dynamic DMA allocations lik=
e vrings and
> +                             vring buffers
> +              - description: region reserved for firmware image sections
> +              - description: LPM metadata

[Severity: High]
The commit message notes that the LPM metadata area is firewalled to be
accessed only by TIFS. If it is added to the memory-region list here, won't
the remoteproc driver map it and risk a system crash?

In drivers/remoteproc/ti_k3_common.c:k3_reserved_mem_init(), the code
iterates over these memory regions and maps them using
devm_ioremap_resource_wc(). On ARM64 architectures, this creates a Normal
Non-Cacheable mapping that allows speculative CPU reads.

If the kernel maps this firewalled region, couldn't a speculative read from
the CPU trigger an asynchronous SError exception and crash the system?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703143717.1773=
62-1-richard.genoud@bootlin.com?part=3D1

