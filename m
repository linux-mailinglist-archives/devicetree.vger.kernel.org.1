Return-Path: <devicetree+bounces-305002-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gA33L/hLHWphYgkAu9opvQ
	(envelope-from <devicetree+bounces-305002-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 11:08:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F6161C1FB
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 11:08:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B69B5300515B
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 09:02:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0EA338D3FF;
	Mon,  1 Jun 2026 09:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nio+t45J"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8709E288C81
	for <devicetree@vger.kernel.org>; Mon,  1 Jun 2026 09:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780304526; cv=none; b=n16C4SwCbIQmMUyVHn62PMGXoc9wJ5lil3eGeMFP/v8O0is0XHyf1bRr+gAzERYGQ0ZPRz7Hao+kQEwiyegGRfP6oTD1X5YI89ZpmzeBIqs0N/lSovazsruHAqfU/Hg1fnFQBcyWMOwZ7MOYy4O5NICSUIhVTxm9Sf8+QmoN31c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780304526; c=relaxed/simple;
	bh=/m/r3/MmD67npLVc5QoTfJhBG7yS7au6/SGGE0g9EZU=;
	h=From:Subject:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GGsPIehSjNn1R1IPDjm0I1lLsodHssBGPBYC1N28s8gTuNdZ9nSEOz+Srpm35UDN+zTD9D4YRJXDr/20bMLELTiMSEIBRqOC3k2S4afDL7J5ubKwEgJ1AF7PjDRYn4AZ6lVbGQEJ7+ivsqiY/+kZPqsuTdp5DcKxVelMSScPt3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nio+t45J; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 076BC1F00893;
	Mon,  1 Jun 2026 09:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780304525;
	bh=zsEtpWCO9tRQHIEn5l0DB8eeRdmMjiVVrS9JBiMf3HY=;
	h=From:Subject:Reply-To:Cc:In-Reply-To:References:Date;
	b=Nio+t45JPMQ0TXmnhhXHBFjHx6152qQAk+NReIhPhlvx1mk6vke/kntvGC4hm0EFv
	 6JaAn9zM6RXXo/tgAEdUZSZdCpl7heJ481tMpmQ168kP+dgBEBzkR0Af6gvyNZ081H
	 vOceigznbeKjclzoQXWSwC8q9ce5wuUXJUUBK/Q6KpUA0EHgaM0EC7cWa/LUKLfvQR
	 ZZ1G8GZ1XH4LyRtpCk3VD0JaNJCDDshoi1CibPFjHOH/cezldZhuhwdn2LGosyjm0/
	 AxYfZfKGe437a3+tXrakygjOGNkxRJYfW7O/NERoUpHIeAlrxtH4lzs+WTfYCZ80wi
	 40/C0+0WsMWDQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 2/5] arm64: dts: ti: k3-am62p-ti-ipc-firmware: Move
 wkup reserved memory
Reply-To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260601-topic-am62a-ioddr-dt-v6-19-v5-2-3856a023aff2@baylibre.com>
References: <20260601-topic-am62a-ioddr-dt-v6-19-v5-2-3856a023aff2@baylibre.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Jun 2026 09:02:04 +0000
Message-Id: <20260601090205.076BC1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.84 / 15.00];
	MISSING_TO(2.00)[];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-305002-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[9c900000:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,9c800000:email,9b900000:email,baylibre.com:email,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: 39F6161C1FB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Moving `wkup_r5fss0_core0_memory_region` to the shared `k3-am62p-t=
i-ipc-firmware.dtsi` silently truncates the reserved memory size for Verdin=
 boards from 30MB to 15MB.
- [Medium] Moving `wkup_r5fss0_core0_memory_region` to the shared `k3-am62p=
-ti-ipc-firmware.dtsi` causes fatal `dtc` duplicate label errors and overla=
pping reserved memory regions for Var-SOM boards.
--

commit 65cd200377411c4597f1b662700915ea23cfe5f8
Author: Markus Schneider-Pargmann (TI) <msp@baylibre.com>

arm64: dts: ti: k3-am62p-ti-ipc-firmware: Move wkup reserved memory

The commit moves the wkup_r5fss0_core0 memory regions to a common
k3-am62p-ti-ipc-firmware.dtsi file to combine identical definitions
across boards.

>     Move the reserved memory regions used for wkup_r5fss0_core0 to the
>     k3-am62p-ti-ipc-firmware.dtsi. These are all the same for the other
>     boards as well, so we can combine them here similar to what is already
>     done for the mcu_r5fss0_core0 memory regions.

[Severity: High]
Are these regions exactly the same for all other boards?

k3-am62p-verdin.dtsi explicitly defines the wkup_r5fss0_core0_memory_region
with a size of 30MB (0x01e00000):

wkup_r5fss0_core0_memory_region: memory@9c900000 {
	compatible =3D "shared-dma-pool";
	reg =3D <0x00 0x9c900000 0x00 0x01e00000>;
	no-map;
};

Because k3-am62p-verdin.dtsi includes k3-am62p-ti-ipc-firmware.dtsi at the
very end of the file, dtc cleanly merges the identically-named node paths, =
and
the new generic definition silently overrides the board-specific 30MB size
down to 15MB.

Does this halving of the available memory for IPC on Verdin boards cause
firmware load failures or runtime out-of-memory crashes on the R5 core?

(Note: A subsequent patch in the series 'arm64: dts: ti:
k3-am62p-ti-ipc-firmware: Split r5f memory region' changes the label and si=
ze
to 1MB, which further truncates the region without fixing the underlying
overwrite.)

> diff --git a/arch/arm64/boot/dts/ti/k3-am62p-ti-ipc-firmware.dtsi b/arch/=
arm64/boot/dts/ti/k3-am62p-ti-ipc-firmware.dtsi
> index 5d7f701420e2d..12902231e58a7 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62p-ti-ipc-firmware.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62p-ti-ipc-firmware.dtsi
> @@ -17,6 +17,18 @@ mcu_r5fss0_core0_memory_region: memory@9b900000 {
>  		reg =3D <0x00 0x9b900000 0x00 0xf00000>;
>  		no-map;
>  	};
> +
> +	wkup_r5fss0_core0_dma_memory_region: memory@9c800000 {
> +		compatible =3D "shared-dma-pool";
> +		reg =3D <0x00 0x9c800000 0x00 0x100000>;
> +		no-map;
> +	};

[Severity: Medium]
Will this cause dtc duplicate label errors and overlapping regions for
Var-SOM boards?

k3-am62p5-var-som.dtsi defines its reserved memory nodes using non-standard
node names (r5f-dma-memory@9c800000 and r5f-memory@9c900000):

wkup_r5fss0_core0_dma_memory_region: r5f-dma-memory@9c800000 {
	compatible =3D "shared-dma-pool";
	reg =3D <0x00 0x9c800000 0x00 0x00100000>;
	no-map;
};

Since the node names differ between the board file and the generic include
(r5f-dma-memory vs memory), dtc won't merge them.

Because both sets of nodes reuse the exact same node labels
(wkup_r5fss0_core0_dma_memory_region), could this trigger a fatal duplicate
label compilation error that breaks the build, or emit duplicate, overlappi=
ng
reserved-memory regions at boot if bypassed?

> +
> +	wkup_r5fss0_core0_memory_region: memory@9c900000 {
> +		compatible =3D "shared-dma-pool";
> +		reg =3D <0x00 0x9c900000 0x00 0xf00000>;
> +		no-map;
> +	};
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260601-topic-am62=
a-ioddr-dt-v6-19-v5-0-3856a023aff2@baylibre.com?part=3D2

