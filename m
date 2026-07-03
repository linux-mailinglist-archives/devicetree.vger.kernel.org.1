Return-Path: <devicetree+bounces-320212-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jix8C0rNR2okfgAAu9opvQ
	(envelope-from <devicetree+bounces-320212-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 16:55:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 76865703A33
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 16:55:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=cZdhKHu0;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320212-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320212-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 30F9530429A6
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 14:48:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E29D3F822C;
	Fri,  3 Jul 2026 14:48:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9A23F6C46
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 14:48:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783090089; cv=none; b=GTvF+wQKMOeIOYFPNP0s4ZbQBN4KNwmsesZlpVD716XHUwQOrup9Sa6HFpqNTNvoe4/3v4D4GUOFP4ACka2hT3MXhRzVCCi1vacTJHKMH8bU4gMFq6TAaeDC6W+DsC0NO0GHtyQJOXSxWbJMgJ+h5SClwHTmPrSTHvdMikmdinU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783090089; c=relaxed/simple;
	bh=j87a3f+1HOPr6QDQ84j/bK9X5Lyy0AMZgELaaXkfSOI=;
	h=From:Subject:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=itThQNBL5ZXTX9CZhyeajEB5xF1ik4nlZUTnsTEsqH2GVozSf5IzvO31HwUsrU0s/3MPRNANnTEy6ngBqbJMHK+PmFGgaTYpafkP2A88Oa8LW8b5V87lESruOOrcgrnnw+ObwkT+OEIsutJtvedD8UW9vewDBN5dfK2NlRzaz+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZdhKHu0; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEFCF1F000E9;
	Fri,  3 Jul 2026 14:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783090086;
	bh=B7nsfFwSUjWvJqGMSRd+hThOQHVb7aBY7DjOLmpKvtc=;
	h=From:Subject:Reply-To:Cc:In-Reply-To:References:Date;
	b=cZdhKHu0I7UTWQ/WxGIG7/KUZF9Jj+HqSxrgmBThUrQS7Lmyg9L5Z2YQFZMMpo2Ov
	 UhhH+cGhq06XAJEbsb+mbfdE2Qx111tF9MVBnisQP/otT7Y6IG3uoBfPBLtQgDq8kU
	 bISltFm2MsHUuLwHJPXCsdkX9r70Q7j870kvWRllxzMOaZyYClExVbgwkm7yHWSaV9
	 VR+rtUdx7Bk0P07giPxIcas02s2PeUpKXJfwvzJfoRGtIXcssACBa7fgmD/Z9qPj1F
	 A1Y/ZUbcIJouoI+WZkHkTKqZlmAFQBgkUZZL4zWRaWw181rwaV74vv+L6StqZ3IT55
	 qFZSVi9J5wMwQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/6] arm64: dts: ti: k3-j721s2-ti-ipc-firmware:
 Reserve memory for LPM metadata
Reply-To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260703143717.177362-4-richard.genoud@bootlin.com>
References: <20260703143717.177362-1-richard.genoud@bootlin.com>
 <20260703143717.177362-4-richard.genoud@bootlin.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 14:48:05 +0000
Message-Id: <20260703144805.CEFCF1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320212-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,smtp.kernel.org:mid,ti.com:url,bootlin.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 76865703A33

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The newly added firewalled LPM metadata region is unconditionally =
mapped as Normal Non-Cacheable memory by the Linux remoteproc driver, allow=
ing speculative CPU reads to trigger a firewall violation (SError kernel pa=
nic).
--

commit ef1894ecf6dc370114f8c92e828b6141293dd4f0
Author: Richard Genoud (TI) <richard.genoud@bootlin.com>

arm64: dts: ti: k3-j721s2-ti-ipc-firmware: Reserve memory for LPM metadata

This commit declares a carveout memory region to store LPM metadata on
J721S2. It adds the lpm_memory_region to the mcu_r5fss0_core0 memory-region
array so U-Boot R5 SPL can access it to save and restore context across
suspend and resume.

Link: https://software-dl.ti.com/tisci/esd/latest/2_tisci_msgs/pm/lpm.html#=
lpm-msg-lpm-save-addr

> diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-ti-ipc-firmware.dtsi b/arch=
/arm64/boot/dts/ti/k3-j721s2-ti-ipc-firmware.dtsi
> index 5253d028da094..010d20d56927c 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721s2-ti-ipc-firmware.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721s2-ti-ipc-firmware.dtsi

[ ... ]

> @@ -189,8 +195,10 @@ &mcu_r5fss0 {
>  &mcu_r5fss0_core0 {
>  	mboxes =3D <&mailbox0_cluster0 &mbox_mcu_r5fss0_core0>;
>  	memory-region =3D <&mcu_r5fss0_core0_dma_memory_region>,
> -			<&mcu_r5fss0_core0_memory_region>;
> -	memory-region-names =3D "dma", "firmware";
> +			<&mcu_r5fss0_core0_memory_region>,
> +			<&lpm_memory_region>;
> +	memory-region-names =3D "dma", "firmware", "lpm-metadata";
> +	bootph-pre-ram;
>  	status =3D "okay";
>  };

[Severity: High]
Will adding this firewalled region to the memory-region list cause an
SError kernel panic due to speculative CPU accesses?

During kernel boot, the Linux remoteproc driver unconditionally iterates
over the memory regions to create mappings:

drivers/remoteproc/ti_k3_common.c:k3_reserved_mem_init() {
    ...
    kproc->rmem[i].cpu_addr =3D devm_ioremap_resource_wc(dev, &res);
    if (IS_ERR(kproc->rmem[i].cpu_addr)) {
    ...
}

On ARM64, devm_ioremap_resource_wc() creates a Write-Combine mapping
(PROT_NORMAL_NC). Because it is mapped as Normal memory, the architecture
permits the CPU to perform speculative data fetches.

Since this LPM metadata area is hardware-firewalled to be accessed only by
TIFS, won't any speculative access by the Cortex-A CPU hit the firewall
and trigger an asynchronous external abort (SError)?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703143717.1773=
62-1-richard.genoud@bootlin.com?part=3D3

