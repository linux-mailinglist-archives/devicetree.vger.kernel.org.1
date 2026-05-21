Return-Path: <devicetree+bounces-301197-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFvDMz/hDmqnCwYAu9opvQ
	(envelope-from <devicetree+bounces-301197-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 12:41:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D29945A3786
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 12:41:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6ED64303A275
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 10:27:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4321738238B;
	Thu, 21 May 2026 10:27:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhK5++h8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D7337B01A;
	Thu, 21 May 2026 10:27:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779359265; cv=none; b=TSpdp7B7qbvqgjxcGoiR3SxXid1zhmq4YlGEHwkma09WbDEOBYo9uqIAJQiJEvVW2b19A51GnjvHH8/jXEXBwBLEEm0aLlyuKLj/PQYBu9RA0NIRdlB0XQu+X2Ir2rOPeb/7PW8HaPVbtw9EA76nDNFtZm37SLuFYwV4eH6pjdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779359265; c=relaxed/simple;
	bh=QY4O08p8UeC3Kl35zmcup7N0ufYR7vG7/tcw5xu3lHw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hBmvk9bnphapkx2UIwOCtPfCqW/Qj+kxtNQSNgratLlI641wj1JEypBJdM5GH1RL8GTPbVxN9GlAOlZ9toEM9dCx5YNDZSahSmyUu/fqW6QdLr/I8VDQqsgRanTDHqqcvy24aGTBINWKjAMF56nOFeDI5sJDmTY//oNVbSA/nI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhK5++h8; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D0981F000E9;
	Thu, 21 May 2026 10:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779359263;
	bh=ti2ZJxV50WoEVbvDumX+anVxC8PQ556LK3yAqXg+5bA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fhK5++h8Hl/bE2ZV7bIB+nCbGP1gvHxdgyi6R0dequCqp3HSSggM1w6/j1EFNj6AB
	 qI2MGNUYlaryZFggwMlBlw619kxRLs7oKd5GpfR71FEQ/eeJ5/mED5tjfC/hlz9KfC
	 KFLeaKKBAa9EZHwETarLf51KGOahzTlpRtU3l1kn2cijYX2xJmgU/OQNjtBd+q4nPq
	 kLDnqcTZPF2BKYEQ8ZqPYUMlCxt3eRp9QJGwNXtlaU+CCzvBx/lCgsK0ONH/+SsFKn
	 Hax3kT0RKRCov/L+v59eKBH0Y8J/JMOl3fPgLTCayVGQWN8nc9WyK1FT5LQvAx13dv
	 ragY7LD3FpDWg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 2/3] arm64: dts: imx95: Add dma, intr, aer and pme
 interrupts for PCIe
Reply-To: sashiko-reviews@lists.linux.dev
To: "Richard Zhu" <hongxing.zhu@nxp.com>
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org, imx@lists.linux.dev, conor+dt@kernel.org, robh@kernel.org, Frank.Li@kernel.org
In-Reply-To: <20260521093255.61585-3-hongxing.zhu@nxp.com>
References: <20260521093255.61585-3-hongxing.zhu@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 May 2026 10:27:42 +0000
Message-Id: <20260521102743.3D0981F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-301197-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,4c300000:email]
X-Rspamd-Queue-Id: D29945A3786
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The pcie0 node is missing the msi-map-mask property, which can cau=
se MSI mapping failures for downstream devices on higher bus numbers.
--

commit 0e2b46336a5b22c94438abb01ead59266994b86b
Author: Richard Zhu <hongxing.zhu@nxp.com>

arm64: dts: imx95: Add dma, intr, aer and pme interrupts for PCIe

This commit updates the device tree configurations for pcie0 and pcie1
on imx95 to include additional interrupts for dma, intr, aer, and pme.
These new interrupt definitions enable advanced PCIe functionality beyond
basic MSI support.

> diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm64/boot/d=
ts/freescale/imx95.dtsi
> index 71394871d8dd0..6896d9c15bf53 100644
> --- a/arch/arm64/boot/dts/freescale/imx95.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
> @@ -1861,8 +1861,12 @@ pcie0: pcie@4c300000 {
>  			bus-range =3D <0x00 0xff>;
>  			num-lanes =3D <1>;
>  			num-viewport =3D <8>;
> -			interrupts =3D <GIC_SPI 310 IRQ_TYPE_LEVEL_HIGH>;
> -			interrupt-names =3D "msi";
> +			interrupts =3D <GIC_SPI 310 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 311 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 310 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 310 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 310 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names =3D "msi", "dma", "intr", "aer", "pme";

[Severity: High]
This is a pre-existing issue, but I noticed the pcie0 node is missing an
msi-map-mask property. The node defines an iommu-map-mask but lacks a
corresponding msi-map-mask.

Without msi-map-mask, of_map_id() applies a default mask of 0xffffffff to
the PCI requestor ID during MSI allocation. If a PCIe switch is connected
and downstream devices are enumerated on a bus number >=3D 2, their request=
or
IDs (e.g., 0x200, 0x300) might fail to match the defined msi-map entries
which only cover 0x0 and 0x100 ranges.

Could this cause of_map_id to bypass translation, leaving the msi domain
unassigned and breaking MSI functionality for downstream topologies beyond
the first bus?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260521093255.6158=
5-1-hongxing.zhu@nxp.com?part=3D2

