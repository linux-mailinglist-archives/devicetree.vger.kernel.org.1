Return-Path: <devicetree+bounces-323292-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZAgvNpkfT2qZawIAu9opvQ
	(envelope-from <devicetree+bounces-323292-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 06:12:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 498E672C85C
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 06:12:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kLYVXJwE;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323292-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-323292-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3ADDA30164AD
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 04:12:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A0E2388E45;
	Thu,  9 Jul 2026 04:12:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0AAB2CCB9;
	Thu,  9 Jul 2026 04:12:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783570325; cv=none; b=dHjnZK2Ybz92vqK7PO0tYqUxctBUXtCUihTe9as+VYzFVOIYMowpCgGkkHeewsHTCOcG+izNLuWihLMMxFfXocwqX1vPnQ91r1ThQdXWt1ML3nyjoLlPoy6ZIWGACO6PStpFOuVgpaDO4v4cVuc5wx0MErCAAaIO4F1vY8qC4Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783570325; c=relaxed/simple;
	bh=aasVeW0gUIoeDEIU0h4FVXCVuXH4x7zDXo5AIHel890=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ufEWDPU8UzlCCthFbg1bCCvUfGkpve8Hc5JtLAdJ71gQZQZuORN8ANB2MC8TN5ABt7g9BvvT1m2VJqsdGO+9Y4kRoYFClQjc2QuA1kNbKD8Nektd3ba96COmvURwWHif+dqDmQ8L6O50LBx1sqwIpHQtSeKAyiUodbzs0KfxFFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLYVXJwE; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A7A01F000E9;
	Thu,  9 Jul 2026 04:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783570324;
	bh=6p67w3yyaoOLwx0GJ94SQRmKCv2bdHwh7YgPLCvytNY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kLYVXJwEWOsFSD9PszBWrzFM4G+/RgOR8oItUnyuFc8d3UIWM5G+JBumVj1S/z/wY
	 5+lc0Y+hfcVioIEGhaSPM3FuMaIl3CFzF54uDe9IEQJCV3uBVRGLs+7qzQ6DbFbFXB
	 JH3mRwAvQuXlJ6LPbtahyui6Jq0e1f0hl6h6mGBDlrS8+LM22vCUrfJHSJ3Dk8DpSR
	 xnXvCjbmVdpblqyJvFd8poc1YGzNtzUWxfc10RITzDhdjCrW2i9zdLEmoMuSGm4drE
	 e03LHmnSUKhoCbCkZ8hRtK2WiV2pNlPKOwq1KJZV7Jkei1NWDH7VUXsacioQB6PoAq
	 +5gPH6XqqEj4g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 6/6] PCI: spacemit-k1: Add Spacemit K3 PCIe host
 controller support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Inochi Amaoto" <inochiama@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, linux-pci@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260709040027.958400-7-inochiama@gmail.com>
References: <20260709040027.958400-1-inochiama@gmail.com>
 <20260709040027.958400-7-inochiama@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 04:12:03 +0000
Message-Id: <20260709041204.5A7A01F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:inochiama@gmail.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-323292-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 498E672C85C

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] k3_pcie_parse_port() accesses memory-mapped registers before the h=
ardware clocks are enabled and resets are deasserted, causing a synchronous=
 external abort.
- [High] k3_pcie_msi_host_init() misuses the .msi_init callback to configur=
e general AXI cache coherency, which breaks DMA coherency if MSI is disable=
d.
- [Medium] The K3 controller reuses k1_pcie_deinit() for its .deinit callba=
ck, which uses an incompatible mechanism to assert PERST#, leaving the PCIe=
 endpoint without a proper hard reset upon driver unbind or probe failure.
- [Low] Misleading copy-pasted comment regarding root complex mode and Vaux=
 configuration.
--

--- Patch [6]: [PATCH v4 6/6] PCI: spacemit-k1: Add Spacemit K3 PCIe host c=
ontroller support ---
commit b7987f86bd7e30a14ad7fab3615f89d71ad70fed
Author: Inochi Amaoto <inochiama@gmail.com>

PCI: spacemit-k1: Add Spacemit K3 PCIe host controller support

This commit adds support for the PCIe controller on the Spacemit K3 SoC. It
introduces the K3-specific initialization sequence, operations, and interru=
pt
handling, while reusing the existing Spacemit K1 driver structure.

> diff --git a/drivers/pci/controller/dwc/pcie-spacemit-k1.c b/drivers/pci/=
controller/dwc/pcie-spacemit-k1.c
> index 31aac056b68ed..680acc93f5395 100644
> --- a/drivers/pci/controller/dwc/pcie-spacemit-k1.c
> +++ b/drivers/pci/controller/dwc/pcie-spacemit-k1.c

[ ... ]

> @@ -340,6 +354,109 @@ static int k1_pcie_parse_port(struct k1_pcie *k1)
>  	return ret;
>  }
> =20
> +static int k3_pcie_init(struct dw_pcie_rp *pp)
> +{

[ ... ]

> +	/*
> +	 * Put the controller in root complex mode, and indicate that
> +	 * Vaux (3.3v) is present.
> +	 */
> +	regmap_set_bits(k1->pmu, k1->pmu_off + PCIE_CONTROL_LOGIC,
> +			PCIE_PERSTN_OUT | PCIE_PERSTN_OE);

[Severity: Low]
This isn't a bug, but does this comment match the code beneath it?

The code seems to only toggle PERST# via PCIE_PERSTN_OUT and PCIE_PERSTN_OE,
whereas the comment states it is putting the controller in root complex
mode and indicating Vaux is present.

> +
> +	val =3D dw_pcie_readl_dbi(pci, GEN3_EQ_CONTROL_OFF);

[ ... ]

> +static int k3_pcie_msi_host_init(struct dw_pcie_rp *pp)
> +{
> +	struct dw_pcie *pci =3D to_dw_pcie_from_pp(pp);
> +	u32 val;
> +
> +	dw_pcie_dbi_ro_wr_en(pci);
> +
> +	val =3D dw_pcie_readl_dbi(pci, COHERENCY_CONTROL_3_OFF);
> +	val =3D u32_replace_bits(val, K3_CACHE_MSTR_AWCACHE_BEHAVIOR,
> +			       K3_CACHE_MSTR_AWCACHE_MODE);
> +	dw_pcie_writel_dbi(pci, COHERENCY_CONTROL_3_OFF, val);

[Severity: High]
Does configuring general AXI DMA coherency inside an MSI-specific hook break
DMA coherency if the system is booted with 'pci=3Dnomsi'?

dw_pcie_host_init() only calls the .msi_init callback if pci_msi_enabled() =
is
true. If MSI is disabled, this initialization is skipped and standard DMA
coherency attributes might not be applied.

> +
> +	dw_pcie_dbi_ro_wr_dis(pci);
> +
> +	return 0;
> +}
> +
> +static const struct dw_pcie_host_ops k3_pcie_host_ops =3D {
> +	.init		=3D k3_pcie_init,
> +	.deinit		=3D k1_pcie_deinit,

[Severity: Medium]
Will this properly hard-reset the K3 PCIe endpoint during driver unbind or
probe failure?

The K3 controller reuses k1_pcie_deinit() here, which asserts PCIE_RC_PERST
in PCIE_CLK_RESET_CONTROL. However, k3_pcie_init() shows that K3 requires
PERST# to be asserted via PCIE_PERSTN_OE and PCIE_PERSTN_OUT in
PCIE_CONTROL_LOGIC.

> +	.msi_init	=3D k3_pcie_msi_host_init,
> +};

[ ... ]

> +static void k3_pcie_clear_irq_status(struct k1_pcie *k1,
> +				     u32 *status0, u32 *status1, u32 *status2)
> +{
> +	*status0 =3D readl_relaxed(k1->link + K3_PHY_AHB_IRQSTATUS_INTX);
> +	*status1 =3D readl_relaxed(k1->link + INTR_STATUS);
> +	*status2 =3D readl_relaxed(k1->link + K3_ADDR_INTR_STATUS1);
> +
> +	writel_relaxed(*status0, k1->link + K3_PHY_AHB_IRQSTATUS_INTX);
> +	writel_relaxed(*status1, k1->link + INTR_STATUS);
> +	writel_relaxed(*status2, k1->link + K3_ADDR_INTR_STATUS1);
> +}
> +
> +static int k3_pcie_parse_port(struct k1_pcie *k1)
> +{
> +	u32 status0, status1, status2;
> +
> +	k3_pcie_clear_irq_status(k1, &status0, &status1, &status2);

[Severity: High]
Can accessing these memory-mapped registers here cause a synchronous
external abort?

During probe, k1_pcie_probe() calls data->parse_port() before calling
dw_pcie_host_init(). However, the hardware clocks are enabled and resets are
deasserted later, inside dw_pcie_host_init(), when it invokes the .init
callback (k3_pcie_init()). Accessing the k1->link registers before they are
clocked may crash the system.

> +
> +	return k1_pcie_parse_port(k1);
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709040027.9584=
00-1-inochiama@gmail.com?part=3D6

