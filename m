Return-Path: <devicetree+bounces-321589-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jSIGBGwmTGrWgwEAu9opvQ
	(envelope-from <devicetree+bounces-321589-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 00:04:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7BB715DFD
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 00:04:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=G7KVjv2G;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321589-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-321589-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F161730078AF
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 22:04:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D46C23A168E;
	Mon,  6 Jul 2026 22:04:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B227835836B;
	Mon,  6 Jul 2026 22:04:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783375465; cv=none; b=DiQLav2va6J333ea32LCa7frqS1KPlILWBcu1oWg3gRVYbK6SdY75Lb8akT+wCGJ6mNtr9fc5dirchpi31nTMXVGg2C1RQ4A3fC2i4rzkXaDNTV/jxZqAR1krIHr9fmKXbei4Qq5RLTNjDjai1sy70IBpe1VkH8NmVx8eKsGXU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783375465; c=relaxed/simple;
	bh=4onJwKnE5CQaUEj+tNQUulsZgCAkphLTDv5KajhsFD4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Mjc1zKpGGiUhsWu+w/eJDE+jkpoOVneD/WVUieTtXARVe+FlhTEwbmryu9ETJd3PKKsdHKrE388WLcgGhukyOQ+eNiMZdVrzdbn+k6ewNrkL8ZpoE2s7l1UZYfGJRfU/RefPrh3aaaWFcTVK06JVvDu7DS2w4tUz2Pou6l1BC3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7KVjv2G; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0CEE1F000E9;
	Mon,  6 Jul 2026 22:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783375464;
	bh=c4MB6edk3cDxXGN87p2A+S2ms5ifyZNAH3jki7fsAe8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=G7KVjv2G7XHvQCboXX0AbuAWag0MCU0tdGg7q7NLtHuWGcJUgmJqsQW9aUmtH90d+
	 V4ld2DCKPOVYuYFwxSxMbLq7iSr79OgsFbIJXmb3K4Y6SSMLx1oug8m1Iy9UzYiewZ
	 NBXSD+SJF8opkzxAXj0JW0h+vK6BMVX0JrdPXNbJmPd3BMCJVKHi9aKDwekNTS/qn7
	 YPEhwdHNLIvEi3NQnBBLoJk+/w+qdi/8uOZfXFj6WG6AWtBuA4TDvd/Ig+ixOqL9sJ
	 NOHzNzB1QWZAsZ1sEBeOZLbxu59akxW+kg5b37gyDnJi+uscRar+GwHRI0k/STqIhf
	 sUab9co4V3EUw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: imx8qm-ss-lsio: add lsio mu6,8,8b
Reply-To: sashiko-reviews@lists.linux.dev
To: Frank.Li@oss.nxp.com
Cc: conor+dt@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260706-qm_dts-v1-3-14117a48fbdb@nxp.com>
References: <20260706-qm_dts-v1-0-14117a48fbdb@nxp.com>
 <20260706-qm_dts-v1-3-14117a48fbdb@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 22:04:23 +0000
Message-Id: <20260706220423.D0CEE1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-321589-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,nxp.com:email];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@oss.nxp.com,m:conor+dt@kernel.org,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8B7BB715DFD

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Redundant re-declaration of the `lsio_mu6` node and label.
--

--- Patch [3]: [PATCH 3/4] arm64: dts: imx8qm-ss-lsio: add lsio mu6,8,8b ---
commit e95e394180e13045095ad2b094d537158b113f5c
Author: Frank Li <Frank.Li@nxp.com>

arm64: dts: imx8qm-ss-lsio: add lsio mu6,8,8b

This commit adds mu6, 8, and 8b mailbox nodes to the imx8qm-ss-lsio
device tree.

> diff --git a/arch/arm64/boot/dts/freescale/imx8qm-ss-lsio.dtsi b/arch/arm=
64/boot/dts/freescale/imx8qm-ss-lsio.dtsi
> index b483134f84d18..fb503c93447d1 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qm-ss-lsio.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qm-ss-lsio.dtsi
> @@ -3,6 +3,35 @@
>   * Copyright 2019-2020 NXP
>   *	Dong Aisheng <aisheng.dong@nxp.com>
>   */
> +&lsio_subsys {
> +	lsio_mu6: mailbox@5d210000 {
> +		compatible =3D "fsl,imx8qm-mu", "fsl,imx6sx-mu";
> +		reg =3D <0x5d210000 0x10000>;
> +		interrupts =3D <GIC_SPI 185 IRQ_TYPE_LEVEL_HIGH>;
> +		#mbox-cells =3D <2>;
> +		power-domains =3D <&pd IMX_SC_R_MU_6A>;
> +	};

[Severity: Low]
Is this full node definition for lsio_mu6 redundant?

The properties defined here, such as reg, interrupts, #mbox-cells, and
power-domains, appear to already be inherited from the base imx8-ss-lsio.dt=
si
file. Furthermore, the QM-specific compatibles are already applied via a
reference at the bottom of this file.

Could this block be safely omitted to avoid duplication? As it currently
stands, it also does not override the status =3D "disabled" property from t=
he
base file, which might mean the mailbox is still left disabled.

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706-qm_dts-v1-=
0-14117a48fbdb@nxp.com?part=3D3

