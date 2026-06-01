Return-Path: <devicetree+bounces-305022-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NGAKMJRHWpfYwkAu9opvQ
	(envelope-from <devicetree+bounces-305022-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 11:32:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0597B61C7E1
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 11:32:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3CFB03009531
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 09:26:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD17C38D6B5;
	Mon,  1 Jun 2026 09:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+wEc/We"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90B563905EA
	for <devicetree@vger.kernel.org>; Mon,  1 Jun 2026 09:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780306003; cv=none; b=GHkkGYxvFPR9eONPyYjdHtxdXb4Snp7TBxlSkII3rLUbRg3aajBlGRMSJrbpRXCiadNU9QEpPxgCL4LpNYm0BpLUybqCC34TyArG+Wqu67JRJ3X3srf3IKvurTp3fBCW3uJpsI77i7brUoYq2zin70GLmKMU1h6PpuzBwVe8NPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780306003; c=relaxed/simple;
	bh=cwA8OUQyZXUwqpF4hm5RolJy6KT7FywsKBOAHaLLuLo=;
	h=From:Subject:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=kRdqWdJDifQQgxMi7WszKzEVtRyxAKCRelMNfwbCvULTFlQYN3cr040J0E7eIxINVCPMZlVBwNn1Eb5nDjMYpNZBA13EC6iuuAN4y3VeQUZdH3g2lv/VthPRA3G/sASHvTbGl3NruHQT8wEzXL0x936z1ysftlzAav7+Hg1ny0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+wEc/We; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B71E1F00893;
	Mon,  1 Jun 2026 09:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780306002;
	bh=XwnxZpNa3Oph+66vPQujzDyd4nrDIcQQNq7MRlQYu3I=;
	h=From:Subject:Reply-To:Cc:In-Reply-To:References:Date;
	b=R+wEc/WeJQ6d2VdKv+ju4gwedr0d6UeWdu8DVm1zSxc4FcwMvS3JB3WRjIFhiqZix
	 kaS6naTImc2oDbAs695TcwQcebfrV6/iir6SovTPij1GmxGfApxpWclif132srzL/L
	 eisJsTsqVlxt2wQp3iIS1usZ+iX8IOx6cdADBCKBX6H8pIlI7yurHnl82lDV9ES1da
	 jZVxOFAmjC8XF8ECDsCXX0sIOl2kTdIAHdRh4NXuT27rIViLKiFMA7qw7gVCbBgkwG
	 F/LlDKOi/dY2qIUNlk8M4aWDIGWZgFkoQJfTxSmZb6V/qD6afC3D6ru2AixCp2Qcqo
	 6iiMcBPm7VLBQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 4/5] arm64: dts: ti: k3-am62p-ti-ipc-firmware: Split
 r5f memory region
Reply-To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260601-topic-am62a-ioddr-dt-v6-19-v5-4-3856a023aff2@baylibre.com>
References: <20260601-topic-am62a-ioddr-dt-v6-19-v5-4-3856a023aff2@baylibre.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Jun 2026 09:26:41 +0000
Message-Id: <20260601092642.1B71E1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.84 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	MISSING_TO(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305022-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,9c900000:email,baylibre.com:email,9c800000:email]
X-Rspamd-Queue-Id: 0597B61C7E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Fragmentation of the reserved memory region breaks backward compat=
ibility for firmware loading.
- [High] Board-specific firmware memory sizes are overwritten and duplicate=
d, causing overlapping reservations and memory starvation.
- [Medium] Encoding firmware-specific software layout policy into the hardw=
are description device tree.
--

commit c6bb6a1bb6896ca4a20a285fa611156e2c906d69
Author: Markus Schneider-Pargmann (TI) <msp@baylibre.com>
arm64: dts: ti: k3-am62p-ti-ipc-firmware: Split r5f memory region

This patch splits the firmware memory region in the AM62p IPC device tree
into multiple smaller parts. The stated goal is to describe where to find
specific information, such as LPM metadata, for bootloaders like U-Boot.

> diff --git a/arch/arm64/boot/dts/ti/k3-am62p-ti-ipc-firmware.dtsi b/arch/=
arm64/boot/dts/ti/k3-am62p-ti-ipc-firmware.dtsi
> index 12902231e58a7..437b1df02142c 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62p-ti-ipc-firmware.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62p-ti-ipc-firmware.dtsi
> @@ -24,9 +24,33 @@ wkup_r5fss0_core0_dma_memory_region: memory@9c800000 {
>  		no-map;
>  	};
> =20
> -	wkup_r5fss0_core0_memory_region: memory@9c900000 {
> +	wkup_r5fss0_core0_ipc_region: memory@9c900000 {
>  		compatible =3D "shared-dma-pool";
> -		reg =3D <0x00 0x9c900000 0x00 0xf00000>;
> +		reg =3D <0x00 0x9c900000 0x00 0x100000>;
> +		no-map;
> +	};

[Severity: High]
Does splitting this contiguous 15MB firmware region into smaller adjacent
sub-regions break backward compatibility for firmware loading?

Looking at k3_rproc_da_to_va() in drivers/remoteproc/ti_k3_common.c, there =
is
an exact check that enforces a loaded ELF segment must fit within a single
DT memory region:

if (da >=3D dev_addr && ((da + len) <=3D (dev_addr + size))) {
        offset =3D da - dev_addr;
        va =3D kproc->rmem[i].cpu_addr + offset;

If an existing firmware ELF segment (like .data or .bss) spans across these
new boundaries, it looks like it will fail this bounds check, returning NULL
and preventing the remote processor from booting.

[Severity: High]
Could this redefinition truncate or duplicate board-specific firmware memory
sizes?

This common dtsi file is typically included at the end of board-specific
device trees. For example, in arch/arm64/boot/dts/ti/k3-am62p-verdin.dtsi,
the board defines a 30MB region at memory@9c900000. This patch redefines
memory@9c900000 with a size of 1MB, which seems to silently truncate the
board's memory allocation.

Additionally, in arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi, the board
labels the node r5f-memory@9c900000:

wkup_r5fss0_core0_memory_region: r5f-memory@9c900000 {
        compatible =3D "shared-dma-pool";
        reg =3D <0x00 0x9c900000 0x00 0x01e00000>;
        no-map;
};

Because the node names differ (memory vs r5f-memory), both would be
instantiated at the same unit address, causing overlapping memory
reservations.

> +
> +	wkup_r5fss0_core0_lpm_fs_stub_region: memory@9ca00000 {

[ ... ]

> @@ -56,8 +80,14 @@ &wkup_r5fss0 {
>  &wkup_r5fss0_core0 {
>  	mboxes =3D <&mailbox0_cluster0 &mbox_r5_0>;
>  	memory-region =3D <&wkup_r5fss0_core0_dma_memory_region>,
> -			<&wkup_r5fss0_core0_memory_region>;
> -	memory-region-names =3D "dma", "firmware";
> +			<&wkup_r5fss0_core0_ipc_region>,
> +			<&wkup_r5fss0_core0_lpm_fs_stub_region>,
> +			<&wkup_r5fss0_core0_lpm_metadata_region>,
> +			<&wkup_r5fss0_core0_lpm_rest_region>,
> +			<&wkup_r5fss0_core0_dm_region>;
> +	memory-region-names =3D "dma", "ipc", "lpm-stub",
> +			      "lpm-metadata", "lpm-context",
> +			      "dm-firmware";

[Severity: High]
Will hardcoding the memory-region array here override board-level DT
configurations?

By explicitly redefining the memory-region array, it discards board-level
allocations. This appears to restrict the remoteproc driver to only 15MB of
mapped memory, which might starve the firmware on boards that require a
larger allocation.

[Severity: Medium]
Does hardcoding these specific memory sections encode firmware-specific
software layout policy into the hardware description?

The device tree is intended to describe hardware architecture and memory
reservations, not software layout. By defining granular sections like
lpm-stub and lpm-metadata here, the DT becomes tightly coupled to a
specific version of the firmware linker script.

If future firmware changes the internal memory layout, this would require a
device tree update. Should the bootloader locate metadata using an
in-memory structure or a fixed offset instead of fracturing the device
tree?

>  	status =3D "okay";
>  };
>

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260601-topic-am62=
a-ioddr-dt-v6-19-v5-0-3856a023aff2@baylibre.com?part=3D4

