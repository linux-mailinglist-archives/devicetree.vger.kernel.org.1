Return-Path: <devicetree+bounces-320219-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +KIbDqTNR2o9fgAAu9opvQ
	(envelope-from <devicetree+bounces-320219-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 16:56:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C89FA703A77
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 16:56:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LNr5MElc;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320219-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320219-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 46DC830055AE
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 14:56:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D1331990C7;
	Fri,  3 Jul 2026 14:56:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DD383F8ED2
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 14:56:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783090592; cv=none; b=FIK1JXVhMxUCgneFOxswwRD6cOaMePc+FjdO5U+vbgZMdPRQPpgeMc2JG9qUPcVNIuUJfIpr1d2BRfohIpqVC4EPt4EZNkhw8MkHevj5vBiyj2aDlwI7YJ9egOpKgZ4wh2UDw3staQ7fHG0na2TK1kAWGzhgXQObRlSRKt0020Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783090592; c=relaxed/simple;
	bh=vXr/GnXNxbFr+TC9zt0LBP9/OZnm6Xl08eYAeiCQ7rE=;
	h=From:Subject:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=b3SxILnwvWUvWfZllxxRC29tlXqtsAXUm1C0OBPnORPDtPcPDLdatZcsPvF+W7NSXuRV/sk5UNcfA4nwDBmsk2mot/hl/tyXeLKuXZWRMcfDNNjLUG8fMnRk8NsEIp4hTFC69RjpDznsz8mGloQEaTbzVrzjJhWuEXWtDv179YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNr5MElc; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD3541F000E9;
	Fri,  3 Jul 2026 14:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783090591;
	bh=P9HvP6ywqJjW4lIX5czkkb83efOhJUOJ41xBcbxpRSk=;
	h=From:Subject:Reply-To:Cc:In-Reply-To:References:Date;
	b=LNr5MElcgFRMzzKWt0tqELmCdj7b+qJH6fp1S4VnXgCBSUVq9PHvbSmd6yOblJOMb
	 XhvR5ei8+B6DzzJuGdvM9UG+2DU9HWoa68/axra2zrzzBm8gnllt7hPthOqM7nVMqo
	 gdMg/+b439azYWZpgBdV1YoH9a2np3lhBq8u5+JHkHXNaGP6jTmF/vzBaepCYgvJk5
	 drNeiokdkLJLjpeWbEe0Ye1V1Tmq/a+3ymqbIa36FOPaOQtzdcAJSomn/7Zg2oFcaY
	 7sTUuxBHebGBTdbwz8VY/3J1TF6baTbl4JaIinATb9dsE2PlnTIqS/zCr9cNqQ9IIN
	 H8/6K0PdOkkvg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 5/6] arm64: dts: ti: k3-j722s-ti-ipc-firmware:
 Reserve memory for LPM metadata
Reply-To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260703143717.177362-6-richard.genoud@bootlin.com>
References: <20260703143717.177362-1-richard.genoud@bootlin.com>
 <20260703143717.177362-6-richard.genoud@bootlin.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 14:56:30 +0000
Message-Id: <20260703145630.AD3541F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320219-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,smtp.kernel.org:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C89FA703A77

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The patch exposes a firewalled memory region (`lpm_memory_region`)=
 in the `memory-region` array of the `wkup_r5fss0_core0` node, which will c=
ause the Linux remoteproc driver to blindly map it using `ioremap_wc()`. Th=
is triggers a firewall exception (SError) on the host CPU due to speculativ=
e memory accesses.
--

commit 8c35130aa389f76c596e95178c0c218fbc983b2b
Author: Richard Genoud (TI) <richard.genoud@bootlin.com>

arm64: dts: ti: k3-j722s-ti-ipc-firmware: Reserve memory for LPM metadata

Declare a carveout memory region to store LPM metadata on J722S.
For Jacinto devices, this memory region is needed for saving ATF context
and the certificate information of ATF and OPTEE and DM image.

> diff --git a/arch/arm64/boot/dts/ti/k3-j722s-ti-ipc-firmware.dtsi b/arch/=
arm64/boot/dts/ti/k3-j722s-ti-ipc-firmware.dtsi
> --- a/arch/arm64/boot/dts/ti/k3-j722s-ti-ipc-firmware.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j722s-ti-ipc-firmware.dtsi

[ ... ]

> @@ -122,8 +128,10 @@ &wkup_r5fss0 {
>  &wkup_r5fss0_core0 {
>  	mboxes =3D <&mailbox0_cluster0 &mbox_wkup_r5_0>;
>  	memory-region =3D <&wkup_r5fss0_core0_dma_memory_region>,
> -			<&wkup_r5fss0_core0_memory_region>;
> -	memory-region-names =3D "dma", "firmware";
> +			<&wkup_r5fss0_core0_memory_region>,
> +			<&lpm_memory_region>;

[Severity: High]
Will adding this firewalled region to the memory-region list cause an SError
panic on the host CPU during driver probe?

Looking at the remoteproc driver, it unconditionally iterates through all
memory-region elements beyond index 0 and creates a Normal Non-Cacheable
mapping:

drivers/remoteproc/ti_k3_common.c:k3_reserved_mem_init() {
    ...
		ret =3D of_reserved_mem_region_to_resource(np, i + 1, &res);
		if (ret)
			return ret;
    ...
		kproc->rmem[i].cpu_addr =3D devm_ioremap_resource_wc(dev, &res);
    ...
}

Because devm_ioremap_resource_wc() creates a Normal memory mapping, the
ARM64 architecture permits speculative instruction or data fetches to this
region. Since the commit message mentions this memory area is firewalled to
be accessed only by TIFS, speculative fetches by the Linux core could trigg=
er
a hardware firewall violation and lead to an asynchronous SError.

Can this region either be hidden from the OS memory-region array, or should
the remoteproc driver be updated first to explicitly skip the "lpm-metadata"
region?

> +	memory-region-names =3D "dma", "firmware", "lpm-metadata";
> +	bootph-pre-ram;
>  	status =3D "okay";
>  };
>

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703143717.1773=
62-1-richard.genoud@bootlin.com?part=3D5

