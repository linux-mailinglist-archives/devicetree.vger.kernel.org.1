Return-Path: <devicetree+bounces-310123-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id azSfI/5IKmpLlwMAu9opvQ
	(envelope-from <devicetree+bounces-310123-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:34:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB5A66EA25
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:34:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=A4WhkDeM;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310123-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-310123-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A8D54308AAF5
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 05:19:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E94082F5485;
	Thu, 11 Jun 2026 05:19:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D72A7243956
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 05:19:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781155160; cv=none; b=JK9HrJS3vHDnlttQdss3FMprEGi3KprTQjz/hN+GSngDPLiApohngZenNyqalSfylh80sBmFlmMQMMfvVkPPyilpOzoheRY/DGbMDkCwr9xpIeQUVyJsC06zYhPmwWvXMHKLNNIXbjC3+VlJ6pved5D4amAlGkIxhVQLVjzSriU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781155160; c=relaxed/simple;
	bh=kDdJ4grYPqZOg3T95KRW4KDYGU3d/caT26GssAUmRv8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=NQQUyodacqvVxL8obJ73tWtHh76hlpp4QSi9n7sxK6/JU7yF+6ILFVUsWCzD+vzjO6l1gSTWzaO0MEfHT8382Fv56DQskjSI7VzeHneHy4/AHBq3PNqCVzEEkeLzYRpGdfjYnvubvUyaFhbyjtxDFlTTdfcEJp9sUZXOEYJlob0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4WhkDeM; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26DA11F00893;
	Thu, 11 Jun 2026 05:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781155157;
	bh=AGDCQKA58tloGTt5TtTHKWvOc5GgY6zzniKk9ITOYt0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=A4WhkDeMoeKrBJwtPIBeioyD+WqHoDpE2hlbgJml/gMFApS9fnE7vcEDrmqRSdBiF
	 gRNdmQoFq8+iL2LFQNatF+iRU3xDV6t13gIC39DDa03kR3VjD3eayPKXgn7tarwlDN
	 amo0Hyhv5Ye1Rz9RHqayDv/a8beTpv2xIxXs5/cXehcG72WJ+4kpnx2H5+6gBLjUw5
	 nbYSwQcVRf8i9E9tlcB7b8GTAXr5sp0e0jk5HGM7wuxKuZ73WllU0et7Mei8YVfJ84
	 aVG5rvuHemuptZwnuYckqOD2h9zfAIYsOmobRLB4Jn6L35HL+pDaMC7NJVXOQBLPyD
	 7p5UD5YXrQM0w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 26/37] arm64: dts: qcom: sc8180x: Move PCIe phy and
 GPIOs to root port node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260611-wake-v2-26-2744251b1181@oss.qualcomm.com>
References: <20260611-wake-v2-26-2744251b1181@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Jun 2026 05:19:16 +0000
Message-Id: <20260611051917.26DA11F00893@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-310123-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CBB5A66EA25

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Commit message and code mismatch regarding the `phy-names` prope=
rty.
--

commit 3bba776bd4c695d8130ddad562efe19bc319bd91
Author: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

arm64: dts: qcom: sc8180x: Move PCIe phy and GPIOs to root port node

This patch relocates the PCIe PHY references and perst/wake GPIO properties
from the root complex controller nodes to the root port nodes. It also assi=
gns
labels to the root port nodes and updates the respective board files.

> diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/=
qcom/sc8180x.dtsi
> --- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
[ ... ]
> @@ -1779,13 +1779,11 @@ pcie0: pcie@1c00000 {
>  					<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_PCIE_0 0>;
>  			interconnect-names =3D "pcie-mem", "cpu-pcie";
> =20
> -			phys =3D <&pcie0_phy>;
> -			phy-names =3D "pciephy";
>  			dma-coherent;
> =20
>  			status =3D "disabled";
> =20
> -			pcie@0 {
> +			pcie0_port0: pcie@0 {
>  				device_type =3D "pci";
>  				reg =3D <0x0 0x0 0x0 0x0 0x0>;
>  				bus-range =3D <0x01 0xff>;
> @@ -1793,6 +1791,8 @@ pcie@0 {
>  				#address-cells =3D <3>;
>  				#size-cells =3D <2>;
>  				ranges;
> +
> +				phys =3D <&pcie0_phy>;
>  			};

[Severity: Medium]
The commit message mentions "Move phys and phy-names from the controller to
pcie0_port0, pcie1_port0, pcie2_port0, and pcie3_port0...", but does this
actually move the phy-names property?

It looks like phy-names is removed entirely from the controller and not add=
ed
alongside phys in the pcie0_port0 node (or the other port nodes).

If dropping phy-names is intentional because it is no longer required for
single-PHY nodes, could the commit message be updated to clarify that it is
being removed rather than moved?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260611-wake-v2-0-=
2744251b1181@oss.qualcomm.com?part=3D26

