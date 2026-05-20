Return-Path: <devicetree+bounces-300349-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eF4UOOE1DWrguQUAu9opvQ
	(envelope-from <devicetree+bounces-300349-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 06:17:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 855F9587781
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 06:17:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4BD773046823
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 04:17:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60E0B3033DA;
	Wed, 20 May 2026 04:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxrzCdKV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F56F2E285C;
	Wed, 20 May 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779250655; cv=none; b=B5jMtG6dAB2Y6ZdxVpLLWrW8bouaYsNgRYVzfIUNqJCdcpyClAeM9Gn17OLcWMEMmQsVMBwarrt5IxOIa0GaJbTg/vbRnZH3goaMcRE6Supi+f1BxorA060Vlhuuo1U3dYzJ/B/iLL5sqna26Z2d4nC7/nTxFYn6Y3qzXW/ZQMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779250655; c=relaxed/simple;
	bh=cxqIKo4VVQSTDFvtb5H+qmpfxhPfjXMK7rYoL4Xafnw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=krxcm2yc+LEgrM0LFeg8w5zPTP0yKOAGZtqoSjyCh/duNymrJFmwIinyXCsdKuVOgUoXheXLnApM6bGiQOmII0E+qG0RkWeQnI5TGTQCSSM2tkd85as7IOep9vgRLCmd6JyXPipztLvHQwHfQm7/w43yuht4B/yAkEt4C0lkhIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxrzCdKV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37E6D1F000E9;
	Wed, 20 May 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779250653;
	bh=YRTSFBr5Weg6KKfZECBjXyEKE1L59Al3eNTvmLe7+rM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LxrzCdKV5oKakBxz8/NpFXvtfUVnA0JoNPOFVERGHpa4TJ8iMSNaDG1ZCrDjQhFNl
	 JfjyJ8vLxUyDFShidGIwJHZvqtZjLA4/meY15DsFa5QH0rWmt/WygLFpFyg9CTOj3Z
	 7IUxe995n8M4eyUU0YSeLzyRFWfYg3X6WhUDlQZqMNp01nzkzHMHlYcGOahojGeKeK
	 3Q+03o281T4VZrQWlUx7bixG31HPcUDaRXEw+zz1bL84BINIXW6OZabAhXpI6L1KuE
	 g0lXYPlSoIMjlG6W4mgiXzYKgvrE+dz38H0DZ+czK7hR4dENkP9OykiVi25OTz6Lxo
	 NklO25GWPpHgA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7] arm64: dts: imx95: Correct PCIe outbound address
 space configuration
Reply-To: sashiko-reviews@lists.linux.dev
To: "Richard Zhu" <hongxing.zhu@nxp.com>
Cc: robh@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260520035642.2207511-1-hongxing.zhu@nxp.com>
References: <20260520035642.2207511-1-hongxing.zhu@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 May 2026 04:17:32 +0000
Message-Id: <20260520041733.37E6D1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-300349-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,4c300000:email,nxp.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,4c380000:email,smtp.kernel.org:mid];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 855F9587781
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The 32-bit non-prefetchable memory region is mapped to PCI bus add=
ress 0x00000000, which breaks identity mapping, risks BAR allocation at 0x0=
, and causes inbound DMA routing conflicts with low IOVAs.
--

commit e0f5ac7bad631db9fb55f3b3093d93a9bac757ae
Author: Richard Zhu <hongxing.zhu@nxp.com>

arm64: dts: imx95: Correct PCIe outbound address space configuration

This commit fixes the PCIe outbound memory ranges for both pcie0 and pcie1
controllers on i.MX95 by expanding the outbound address space window size.
It also relocates the 1MB I/O region to use a memory-mapped region instead
of I/O space.

> diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm64/boot/d=
ts/freescale/imx95.dtsi
> index 71394871d8dd0..2c058f6105550 100644
> --- a/arch/arm64/boot/dts/freescale/imx95.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
> @@ -1852,8 +1852,9 @@ pcie0: pcie@4c300000 {

[ ... ]

> -			ranges =3D <0x81000000 0x0 0x00000000 0x0 0x6ff00000 0 0x00100000>,
> -				 <0x82000000 0x0 0x10000000 0x9 0x10000000 0 0x10000000>;
> +			ranges =3D <0x43000000 0x9 0x00000000 0x9 0x00000000 0x0 0xe0000000>,
> +				 <0x82000000 0x0 0x00000000 0x9 0xe0000000 0x0 0x10000000>,

[Severity: High]
Does mapping the 32-bit non-prefetchable memory region to PCI bus address
0x00000000 break identity mapping and risk inbound DMA routing conflicts?

By assigning the PCI base address to 0x0, the PCIe Root Port's Type 1
configuration space will be programmed with a Memory Base of 0x0. If a
downstream device initiates inbound DMA to system RAM using an IOMMU-assign=
ed
IOVA that falls within this low address range, the Root Port might interpret
the transaction as a peer-to-peer access.

Could this cause the transaction to be routed back downstream to the PCIe
bus instead of being forwarded upstream to the system bus and IOMMU? To
prevent this, should the PCI address be set to a high non-zero value, such
as 0xe0000000, matching the lower 32 bits of the CPU address?

> +				 <0x81000000 0x0 0x00000000 0x9 0xf0000000 0x0 0x00100000>;
>  			#address-cells =3D <3>;

[ ... ]

> @@ -1927,8 +1928,9 @@ pcie1: pcie@4c380000 {

[ ... ]

> -			ranges =3D <0x81000000 0 0x00000000 0x8 0x8ff00000 0 0x00100000>,
> -				 <0x82000000 0 0x10000000 0xa 0x10000000 0 0x10000000>;
> +			ranges =3D <0x43000000 0xa 0x00000000 0xa 0x00000000 0x0 0xe0000000>,
> +				 <0x82000000 0x0 0x00000000 0xa 0xe0000000 0x0 0x10000000>,

[Severity: High]
Will this have the same DMA routing conflict with low IOVAs as the pcie0
controller above, since it is also mapped to PCI bus address 0x00000000?

> +				 <0x81000000 0x0 0x00000000 0xa 0xf0000000 0x0 0x00100000>;
>  			#address-cells =3D <3>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260520035642.2207=
511-1-hongxing.zhu@nxp.com?part=3D1

