Return-Path: <devicetree+bounces-322014-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4E+mEbz2TGqrsgEAu9opvQ
	(envelope-from <devicetree+bounces-322014-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 14:53:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 804B571B8B8
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 14:53:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="jtxk/djS";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322014-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322014-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 47025307CA4E
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 12:49:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 977AE3FB07A;
	Tue,  7 Jul 2026 12:49:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 793413D891D
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 12:49:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783428570; cv=none; b=eBDq7C0aDH8k4NQ/nqe8pv65lGtJfaMjK8M6I+0nnh8VtFhXBWLYSISQoyUrdJcMN8dlKLfRzG3LcGKl98R1PtjNFTyXugVMgsHbdh9QG/SPjR0rWFOkD+Pyw1zbn4DTnP0ZxgaJ7oOLLs7LpseQReyJyiby6M0eEc7y6PJLyKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783428570; c=relaxed/simple;
	bh=iAwUkT0a8bQ7eLAOqcikcvuzRcGFlyfLd4py3k3bxnY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=M0McuJH3/dMXb8jBpKrS5YxGzfS6pBMjBmTdVUNMtvDMzVe2f51k3bNWZf24netLPO5IkAVQoSKb3Oor//Wj8ptXMoZkMsZFLPVShXivCBbbYFyfdt6mkoUKiTOOeKHC6e3Q9VYX5l8o2u3D5+xb1a53NWELVFOP2qIM4aio/a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtxk/djS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E491C1F000E9;
	Tue,  7 Jul 2026 12:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783428569;
	bh=IpnapHB5VYfF02X4E8RYzkhkgdvH9lOFmpg0OrKJN4g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jtxk/djSsHe7/PJk8N9KIhoVTlWXuRZ6hdr6MMsGTbkbGnEuvNsOnCGZ7AoXrqnLe
	 SSFmQcHRpv/++xtGkl0vsVZqxaeYLgK6Ptu8ujwJ5smtojLtx7QwfsEUCvpPGbFTxq
	 2jFlcUORlSZ6XwIPaSLGe29KSmUsjmK0GZMtPtTbYLm/lWli9BtrJhntTH1AqRn8yU
	 OK+olw2N39bWVHy4AFtw2e8Daadpmdcc/a73c6Ejc9Uny5IFUX997R1V9a4Fj6vRC0
	 7QCBlBBROrPgU7yMfpBU2Ph81y2cdYQt3ZQEqzN0WGOCUB/+JWf8FIiQy8azleHucN
	 dgZwPzRfp45cw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/4] arm64: dts: qcom: Add device tree for Nord
 SA8797P SoC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Shawn Guo" <shengchao.guo@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260707123902.3868016-3-shengchao.guo@oss.qualcomm.com>
References: <20260707123902.3868016-1-shengchao.guo@oss.qualcomm.com>
 <20260707123902.3868016-3-shengchao.guo@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 12:49:28 +0000
Message-Id: <20260707124928.E491C1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-322014-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:shengchao.guo@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 804B571B8B8

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Required SCMI providers (scmi11 and scmi3) are left disabled in =
the SoC DTSI, causing peripheral probe failures.
--

--- Patch [2]: [PATCH v4 2/4] arm64: dts: qcom: Add device tree for Nord SA=
8797P SoC ---
commit 59c8d1264399eb0988cc4614fe131ec99cdf308f
Author: Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>

arm64: dts: qcom: Add device tree for Nord SA8797P SoC

Add SoC-level device tree include for SA8797P, an automotive variant
of the Nord SoC family. The device tree introduces multiple peripherals
and SCMI-based firmware communication channels for power and performance
domain management.

> diff --git a/arch/arm64/boot/dts/qcom/nord-sa8797p.dtsi b/arch/arm64/boot=
/dts/qcom/nord-sa8797p.dtsi
> new file mode 100644
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/nord-sa8797p.dtsi
[ ... ]
> +&ufs_mem_hc {
> +	compatible =3D "qcom,sa8797p-ufshc",
> +		     "qcom,sa8255p-ufshc";
> +	reg =3D <0x0 0x01d44000 0x0 0x3000>;
> +	power-domains =3D <&scmi3_pd 0>;
> +};

[Severity: Medium]
Will this peripheral and others (like UART, SPI, and I2C) fail to probe
because their underlying SCMI providers remain disabled?

The scmi-common.dtsi file defines the SCMI instances with
status =3D "disabled";. While nord-sa8797p.dtsi adds references to scmi11_p=
d,
scmi11_dvfs, and scmi3_pd for these devices, it does not provide an
overriding status =3D "okay"; for &scmi11 and &scmi3.

Could this cause the device driver core to permanently defer probing for
these consumers due to the disabled power domain providers?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707123902.3868=
016-1-shengchao.guo@oss.qualcomm.com?part=3D2

