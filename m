Return-Path: <devicetree+bounces-325130-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iw+sEscGVGomhAMAu9opvQ
	(envelope-from <devicetree+bounces-325130-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 23:27:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 926F1745F84
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 23:27:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="I/FyVo8o";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325130-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325130-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5FC46300B06D
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 21:27:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D04F3769FE;
	Sun, 12 Jul 2026 21:27:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 733603769EF
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 21:27:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783891652; cv=none; b=GYaWu+AuFi8mC6HsecFeLswzxrMssJbuw0NRQqO8FqOkODCq5FuhhmIHhVpBbL+z1waUrxlpWIxXRFQHukUUVmnNVmWkQBMVLOX/PN+K+GBxNZNFvhLEeoYr664XEUJN/RcgOO8CiuJwCHi0nSsbG79TgyWR2g6XGmd9JUp6Vko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783891652; c=relaxed/simple;
	bh=7bjRAKwg6kUGzeS8zCQOrxnwlZBVRwRb9V5lS/UAx1M=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=qT3CWgu9deHH1nGu4wOxONsL8+SgYZEP+0azkVYTXZz1wi3G3jCTYTBpAHutPvDne+815F84+oTXab02Zl8KL6VWF2NhCHTsHBstD+nrpK4t3AhlOKj2gc/O2TB7m6JlR7D1qnQiDoGmDtYWpTXPwEjOVVBXFHTmxxLpI9fUAO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/FyVo8o; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B86141F000E9;
	Sun, 12 Jul 2026 21:27:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783891651;
	bh=PvBSmgUyprjhAosZGfrginfheRz9DLRHW4xjHxNlrxo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=I/FyVo8oktiwZ9C5ZY0LsAPW+g4QHTK2W1S2oxxApduxsJrygABDjMZplfDa0ENhh
	 Pdipc+/yY7AFKURmjEJ+opOs+mUoVxnZPd9os78xr0u2hVKYxSIY/+qw1mc9e9BwkZ
	 v80JTk4N13huADba3L12G5nfaHFdxGaMLQ1KDyZx4sX2ZEU4NeO3s9e52156WhKvv8
	 hRj44kjQxBwok+eGemPPSpIHduSM6v93doM6bKBydjGyxrPUW8QzfLFhyojbosBNAk
	 LJ2maMKItROohLNUHoKHx5pAwqqCQK4zrS7lJQm2FNuoelQnnz0RwHAH+rEyGtsEIs
	 wgRrSR3tyyzzQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 6/6] arm64: dts: broadcom: bcm2712: Add GPU IOMMU and
 IOMMU cache nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Daniel Drake" <dan@reactivated.net>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260712-bcm2712-iommu-submit-v1-6-80e10cdde2ea@reactivated.net>
References: <20260712-bcm2712-iommu-submit-v1-0-80e10cdde2ea@reactivated.net>
 <20260712-bcm2712-iommu-submit-v1-6-80e10cdde2ea@reactivated.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Jul 2026 21:27:30 +0000
Message-Id: <20260712212730.B86141F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-325130-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dan@reactivated.net,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[reactivated.net:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 926F1745F84

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Device tree node name unit-addresses do not match their `reg` prope=
rty base addresses for `iommu4` and `iommuc`.
--

--- Patch [6]: [PATCH 6/6] arm64: dts: broadcom: bcm2712: Add GPU IOMMU and=
 IOMMU cache nodes ---
commit e5ff2e7025bd202974b9df36bf104c8bc98df79f
Author: Daniel Drake <dan@reactivated.net>

arm64: dts: broadcom: bcm2712: Add GPU IOMMU and IOMMU cache nodes

This commit adds devicetree nodes for the IOMMU and IOMMU cache on the
Broadcom BCM2712 SoC. It also configures the vc4 GPU to utilize the
newly defined IOMMU.

> diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/=
dts/broadcom/bcm2712.dtsi
> index 761c59d90ffc9..ed3178db8acbd 100644
> --- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
> +++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
> @@ -626,6 +626,20 @@ pcie2: pcie@1000120000 {
>  			status =3D "disabled";
>  		};
> =20
> +		iommu4: iommu@5200 {

[Severity: Low]
This isn't a bug, but does this unit-address truncate the upper 32 bits
of the address defined in the reg property below?

The reg property specifies a base address of 0x10 0x5200, which evaluates
to 1000005200. Naming the node iommu@5200 instead of iommu@1000005200
typically triggers dtc simple_bus_reg warnings for mismatched unit
addresses.

> +			/* IOMMU for VC4 (HVS & MPL/TXP), Unicam, PISP-FE, MiniBVN */
> +			compatible =3D "brcm,bcm2712-iommu";
> +			reg =3D <0x10 0x5200 0x0 0x80>;
> +			#iommu-cells =3D <0>;
> +			brcm,iommu-cache =3D <&iommuc>;
> +			brcm,iova-window =3D /bits/ 64 <0xa00000000 0x100000000>;
> +		};
> +
> +		iommuc: iommuc@5b00 {

[Severity: Low]
Similarly, does this node name truncate the upper 32 bits?

The reg property base address is 0x10 0x5b00 (1000005b00), but the unit
address is written as 5b00.

> +			compatible =3D "brcm,bcm2712-iommuc";
> +			reg =3D <0x10 0x5b00 0x0 0x80>;
> +		};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260712-bcm2712-io=
mmu-submit-v1-0-80e10cdde2ea@reactivated.net?part=3D6

