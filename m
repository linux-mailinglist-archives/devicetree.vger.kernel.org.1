Return-Path: <devicetree+bounces-322501-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id U0xsGR7lTWou/wEAu9opvQ
	(envelope-from <devicetree+bounces-322501-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 07:50:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9975C72205A
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 07:50:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bVIYxfWk;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322501-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322501-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2BE05300A62D
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 05:50:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C501376A0B;
	Wed,  8 Jul 2026 05:50:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE8031355C
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 05:50:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783489819; cv=none; b=kBr2z9k8CpNRbitwxI5bh/2SUO41yHpqwA5XmY02x9SeQb3vuGQL3TzcN7GwlGPbq0eNT5juGGtmzJBSjuLHjFZTGIhPau5367rYZcHB3YAGZDMqehsSWvoqYxJqX5cU9eSX4XJQrUTntwtazy/glUm5I4bW+anvnG9JncIKl3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783489819; c=relaxed/simple;
	bh=ii+a+u3w+h1uLc7MHadhzulLGZYx9LbH1c+1aaSRwgs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=WiC1WV1pgCt8lmRQe9VWYCOKhmN8n30ZHpl6vcIZxtZFng4dTjsnaaMetbCHO7lwz+8j9Ztn+mpXIFuLJLO4KYc0R++WpBV7eU8VZS+E0IAbG528RyPU8/y85NAd0jMHgOnH7hjrBLIMW1Ipf5QgkVkxQhLURGI06sI0kBWhYKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVIYxfWk; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A90C91F000E9;
	Wed,  8 Jul 2026 05:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783489818;
	bh=pr4gNT/19Zou1KeFEFEC1pzLL21JwJaxml6zXNvWwcs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bVIYxfWkxS3i2rygfkuvyKsZnMUr/pmcS9aP99ws1KDdQeVSVYlwmB0aE8bSPHZGp
	 qansaQ9eZm4zwelg3WBB7KTP0CNyPElD1UYqEhEPPQjdqmLJR++QzvRubdYEnVUJcY
	 ar+p1dy5LRufHoB7C6OzOJDWB8eiMEtVzoFClvXZzTFsA8amf9Xr3dgkAjR0L+ljY6
	 J+TB9wKFfDFmDnG+UKHSxh+J/9GVKTtgQDd9ltmr++aoFUojpDd0EV7K9XUMzVAOkT
	 TI536W92fBDGQDUg1LyQxf6M/a06eyKo8Tylr/xA4wWFVmMnWOMVrPrf/b9QeOzXWA
	 wcEy31QPy53wA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: eliza: Add PCIe PHY and controller
 nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260708-eliza_dt-v2-1-e6281da26408@oss.qualcomm.com>
References: <20260708-eliza_dt-v2-1-e6281da26408@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 05:50:17 +0000
Message-Id: <20260708055017.A90C91F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-322501-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:krishna.chundru@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9975C72205A

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The `interrupts`, `interrupt-map`, and `iommu-map` properties are =
incorrectly swapped between the `pcie0` and `pcie1` nodes.
- [High] Missing `msi-map` and `msi-map-mask` properties in both `pcie0` an=
d `pcie1` controller nodes.
--

--- Patch [1]: [PATCH v2] arm64: dts: qcom: eliza: Add PCIe PHY and control=
ler nodes ---
commit 3e6d0e6b1d707ae4bb730aa1670a7c5e1a2690b4
Author: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

arm64: dts: qcom: eliza: Add PCIe PHY and controller nodes

Eliza supports two PCIe instances: one 8GT/s x1 (PCIe0) and one 8GT/s x2
(PCIe1). Add PCIe controller and PHY nodes for both instances, and update
the GCC clock references to use the newly added PHY nodes instead of
placeholder zeros.

> diff --git a/arch/arm64/boot/dts/qcom/eliza.dtsi b/arch/arm64/boot/dts/qc=
om/eliza.dtsi
> index 977de44b816e4..7cfd242bc1929 100644
> --- a/arch/arm64/boot/dts/qcom/eliza.dtsi
> +++ b/arch/arm64/boot/dts/qcom/eliza.dtsi

[ ... ]

> @@ -1786,6 +1786,367 @@ mmss_noc: interconnect@1780000 {
>  			#interconnect-cells =3D <2>;
>  		};
> =20
> +		pcie0: pcie@1c00000 {
> +			device_type =3D "pci";
> +			compatible =3D "qcom,eliza-pcie", "qcom,pcie-sm8550";

[ ... ]

> +			interrupts =3D <GIC_SPI 376 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 478 IRQ_TYPE_LEVEL_HIGH>,

[ ... ]

> +			iommu-map =3D <0 &apps_smmu 0x1480 0x1>,
> +				    <0x100 &apps_smmu 0x1481 0x1>;

[Severity: High]
Are the interrupts, interrupt-map, and iommu-map properties swapped between
the pcie0 and pcie1 controllers?

Looking at both nodes, pcie0 claims GIC_SPI 376 and iommu-map 0x1480, while
pcie1 (at 0x1c08000) claims GIC_SPI 141 and iommu-map 0x1400. If these are
reversed, hardware interrupts and IOMMU Stream IDs will be cross-wired.=20
This could cause DMA transactions to trigger SMMU context faults and route
endpoint interrupts to the wrong handler.

> +
> +			interrupt-map =3D <0 0 0 1 &intc 0 0 0 564 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 2 &intc 0 0 0 565 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 3 &intc 0 0 0 566 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 4 &intc 0 0 0 567 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-map-mask =3D <0 0 0 0x7>;
> +			#interrupt-cells =3D <1>;

[Severity: High]
Should msi-map and msi-map-mask properties be included for this controller?

Without the msi-map property, the PCI core cannot map requester IDs to the
GIC ITS device IDs. This will force a fallback to the internal DesignWare
MSI controller, limiting the system to 32 standard MSIs and preventing
MSI-X support.

[ ... ]

> +		pcie1: pcie@1c08000 {
> +			device_type =3D "pci";
> +			compatible =3D "qcom,eliza-pcie", "qcom,pcie-sm8550";

[ ... ]

> +			interrupt-map =3D <0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 2 &intc 0 0 0 150 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 3 &intc 0 0 0 151 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 4 &intc 0 0 0 152 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-map-mask =3D <0 0 0 0x7>;
> +			#interrupt-cells =3D <1>;

[Severity: High]
Are msi-map and msi-map-mask properties also missing here for pcie1?

Similar to pcie0, missing these properties will break MSI-X support for
devices connected to this controller.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-eliza_dt-v=
2-1-e6281da26408@oss.qualcomm.com?part=3D1

